<?php

namespace App\Listeners;

use App\Events\OrderReviewed;
use App\Models\Order;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class UpdateProductRating implements ShouldQueue
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  OrderReviewed $event
     * @return void
     */
    public function handle(OrderReviewed $event)
    {
        $items = $event->getOrder()->items()->with(['product'])->get();
        foreach ($items as $item) {
            $result = Order::query()
                ->where('product_id', $item->product_id)
                ->whereHas('order', function ($query) {
                    $query->whereNouNull('paid_at');
                })
                ->first([
                    \DB::raw('coun(*) as review_cunt'),
                    \DB::raw('avg(rating) as rating')
                ]);
            $item->product->update([
                'rating'       => $result->rating,
                'review_count' => $result->review_conunt
            ]);
        }
    }
}
