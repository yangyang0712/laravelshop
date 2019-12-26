<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddCartRepuest;
use App\Models\CartItem;
use App\MOdels\ProductSku;
use Illuminate\Http\Request;

class CartController extends Controller
{
    protected $cartService;
    public function index(Request $request)
    {
        $cartItems = $request->user()->cartItems()->with(['productSku.product'])->get();
        $addresses = $request->user()->address()->orderBy('last_used_at', 'desc')->get();
        return view('cart.index', ['cartItems' => $cartItems,'addresses'=>$addresses]);
    }

    public function add(AddCartRepuest $repuest)
    {
        $user = $repuest->user();
        $skuId = $repuest->input('sku_id');
        $amount = $repuest->input('amount');
        if ($cart = $user->cartItems()->where('product_sku_id', $skuId)->first()) {
            $cart->update([
                'amount' => $cart->amount + $amount,
            ]);
        } else {
            //创建一个新的购物车记录
            $cart = new CartItem(['amount' => $amount]);
            $cart->user()->associate($user);
            $cart->productSku()->associate($skuId);
            $cart->save();
        }

        return [];
    }

    public function remove(ProductSku $sku,Request $request)
    {
        $request->user()->cartItems()->where('product_sku_id',$sku->id)->delete();
        return [];
    }
}
