<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Catagory;
use App\CatagoriesType;
use Cart;

class ShoppingController extends Controller
{
	public function addToCart(Request $request, $id)
	{
		$product = Product::findOrFail($id);
		Cart::add([
			'id' => $id, 
			'name' => $product->name, 
			'qty' => $request->quantity, 
			'price' => $product->price, 
			'options' => [
				'img' => $product->ThumbProduct,
			]
		]);
		$content = Cart::content();
		return redirect()->route('web.cart');
	}

	public function getCart()
	{
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		return view('website.shopping.cart', compact('catagoriesTypes'));
	}
}
