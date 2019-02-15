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
			'price' => $product->price-$product->price*$product->discount/100, 
			'options' => [
				'img' => $product->ThumbProduct,
				'slug' => $product->slug,
				'discount' => $product->discount,
				'price_old' => $product->price,
			]
		]);
		$content = Cart::content();
		return redirect()->route('web.cart');
	}

	public function getCart()
	{
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		// return $contents;
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		return view('website.shopping.cart', compact('catagoriesTypes','contents','total'));
	}

	public function delItemInCart($rowId)
	{
		Cart::remove($rowId);
		return redirect()->route('web.cart');
	}

	public function updateQuantity(Request $request)
	{
		$qty = $request->get('qty');
		$rowId = $request->get('rowId');
		Cart::update($rowId, $qty); // Will update the quantity
		$price = Cart::get($rowId)->subtotal(0,'','.');
		$total = Cart::subtotal(0,'','.');
		return response()->json([
			'price' => $price, 
			'total' => $total
		]);
	}
}
