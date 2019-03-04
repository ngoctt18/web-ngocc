<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
	protected $table = 'order_details';

	protected $fillable = [
		'quantity', 'price', 'discount', 'product_id', 'order_id', 
	];

	public $timestamps = true;

	public function order(){
		return $this->belongsTo(Order::class, 'order_id', 'id')->withDefault();
	}

	public function product(){
		return $this->belongsTo(Product::class, 'product_id', 'id')->withDefault();
	}
}
