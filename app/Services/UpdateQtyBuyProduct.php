<?php

namespace App\Services;
use App\Product;

class UpdateQtyBuyProduct
{
    public function handleUpdateQtyBuyProduct($id, $qty)
    {
        $thatProduct = Product::findOrFail($id);
        $thatProduct->increment('count_buys', $qty);
        $thatProduct->increment('count_views', $qty);
        $thatProduct->decrement('qty_remain', $qty);
    }
}