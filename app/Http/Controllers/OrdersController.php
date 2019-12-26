<?php

namespace App\Http\Controllers;

use App\Events\OrderReviewed;
use App\Exceptions\InvalidRequestException;
use App\Http\Requests\ApplyRefundRequest;
use App\Http\Requests\OrderRequest;
use App\Http\Requests\SendReviewRequest;
use App\Jobs\CloseOrder;
use App\Models\CouponCode;
use App\MOdels\ProductSku;
use App\Models\User;
use App\Models\UserAddress;
use App\Models\Order;
use http\Exception\InvalidArgumentException;
use App\Exceptions\CouponCodeUnavailableException;
use Illuminate\Http\Request;
use Carbon\Carbon;


class OrdersController extends Controller
{
    public function store(OrderRequest $request,CouponCode $coupon)
    {
        $user = $request->user();
        $coupons = $request->coupon_code;
        if ($coupons){
            $coupons = CouponCode::where('code',$coupons)->first();
            if (!$coupons){
                throw new InvalidRequestException('优惠券不存在');
            }
            $coupons->checkAvailable($user);
        }
        // 开启一个数据库事务
        $data = $request->post();
        $price = [];
        foreach ($data['items'] as $item) {
            $price [] = $item['price'];
        }
        $price = array_sum($price);
        $order = \DB::transaction(function () use ($user, $request, $price, $coupon) {
            $address = UserAddress::find($request->input('address_id'));
            // 更新此地址的最后使用时间
            $address->update(['last_userd_at' => Carbon::now()]);
            // 创建一个订单
            $order = new Order([
                'address'      => [
                    'address'       => $address->full_address,
                    'zip'           => $address->zip,
                    'contact_name'  => $address->contact_name,
                    'contact_phone' => $address->contact_phone,
                ],
                'remark'       => $request->input('remark'),
                'total_amount' => 0,
            ]);
            $order->user()->associate($user);

            $order->save();

            $totalAmount = 0;
            $items = $request->input('items');
            foreach ($items as $data) {
                $sku = ProductSku::find($data['sku_id']);
                $item = $order->items()->make([
                    'amount' => $data['amount'],
                    'price'  => $sku->price,
                ]);
                $item->amount = $data['amount'];
                $item->product()->associate($sku->product_id);
                $item->productSku()->associate($sku);
                $item->save();
            }
            $totalAmount += $sku->price * $data['amount'];
            $coupons = $request->coupon_code;
            if ($coupons){
                $coupons = CouponCode::where('code',$coupons)->first();
                if (!$coupons){
                    throw new InvalidRequestException('优惠券不存在');
                }
                $coupons->checkAvailable($user,$totalAmount);
                // 把订单金额修改为优惠后的金额
                $totalAmount = $coupons->getAdjustedPrice($totalAmount);
                // 将订单与优惠券关联
                $order->couponCode()->associate($coupons);
                // 增加优惠券的用量，需判断返回值
                if ($coupons->changeUsed() <= 0) {
                    throw new CouponCodeUnavailableException('该优惠券已被兑完');
                }
            }
            if ($sku->decreaseStock($data['amount']) <= 0) {
                throw new InvalidArgumentException('该商品库存不足');
            }
            $order->update(['total_amount' => $totalAmount]);
            $skuIds = collect($items)->pluck('sku_id');
            $user->cartItems()->whereIn('product_sku_id', $skuIds)->delete();

//            $this->dispatch(new CloseOrder($order, config('app.order_ttl')));
            return $order;

        });
        return $order;
    }

    public function index(Request $request)
    {
        $orders = Order::query()
            ->with(['items.product', 'items.productSku'])
            ->where('user_id', $request->user()->id)
            ->orderBy('created_at', 'desc')
            ->paginate();
        return view('orders.index', ['orders' => $orders]);
    }

    public function show(Order $order)
    {
        $this->authorize('own', $order);
        return view('orders.show', ['order' => $order->load(['items.product', 'items.productSku'])]);
    }

    public function received(Order $order, Request $request)
    {
        $this->authorize('own', $order);
        if ($order->ship_status !== order::SHIP_STATUS_DELIVEDRED) {
            throw new InvalidRequestException('发货状态不正确');
        }
        $order->update(['ship_status' => Order::SHIP_STATUS_RECEIVED]);

        return $order;
    }

    public function review(Order $order)
    {
        $this->authorize('own', $order);
        if (!$order->paid_at) {
            throw new InvalidRequestException('该订单未支付不可评价');
        }
        return view('orders.review', ['order' => $order->load(['items.productSku', 'items.product'])]);
    }

    public function sendReview(Order $order, SendReviewRequest $request)
    {
        // 校验权限
        $this->authorize('own', $order);
        if (!$order->paid_at) {
            throw new InvalidRequestException('该订单未支付，不可评价');
        }
        // 判断是否已经评价
        if ($order->reviewed) {
            throw new InvalidRequestException('该订单已评价，不可重复提交');
        }
        $reviews = $request->input('reviews');
        // 开启事务
        \DB::transaction(function () use ($reviews, $order) {
            // 遍历用户提交的数据
            foreach ($reviews as $review) {
                $orderItem = $order->items()->find($review['id']);
                // 保存评分和评价
                $orderItem->update([
                    'rating'      => $review['rating'],
                    'review'      => $review['review'],
                    'reviewed_at' => Carbon::now(),
                ]);
            }
            // 将订单标记为已评价
            $order->update(['reviewed' => true]);
            event(new OrderReviewed($order));
        });

        return redirect()->back();
    }

    public function applyRefund(Order $order, ApplyRefundRequest $request)
    {
        // 校验订单是否属于当前用户
        $this->authorize('own', $order);
        // 判断订单是否已付款
        if (!$order->paid_at) {
            throw new InvalidRequestException('该订单未支付，不可退款');
        }
        // 判断订单退款状态是否正确
        if ($order->refund_status !== Order::REFUND_STATUS_PENDING) {
            throw new InvalidRequestException('该订单已经申请过退款，请勿重复申请');
        }
        // 将用户输入的退款理由放到订单的 extra 字段中
        $extra                  = $order->extra ?: [];
        $extra['refund_reason'] = $request->input('reason');
        // 将订单退款状态改为已申请退款
        $order->update([
            'refund_status' => Order::REFUND_STAUS_ADDLIED,
            'extra'         => $extra,
        ]);

        return $order;
    }
}