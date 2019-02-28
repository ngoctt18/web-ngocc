<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShoppingCart extends Model
{
	protected $table = 'shoppingcart';

	protected $fillable = [
		'identifier', 'instance', 'content', 
	];

	public $timestamps = true;
}
