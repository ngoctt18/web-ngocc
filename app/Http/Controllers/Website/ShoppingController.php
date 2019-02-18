<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Catagory;
use App\CatagoriesType;
use App\Order;
use App\OrderDetail;
use Carbon;
use Session;
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
				'discount' => $product->discount,
				'price_old' => $product->price,
			]
			// Liên kết giỏ hàng với Model Product
		])->associate('App\Product');
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

	public function checkout()
	{
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		// return $contents;
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		return view('website.shopping.checkout', compact('catagoriesTypes','contents','total'));
	}

	public function storeCheckout(Request $request)
	{
		// return $request->all();
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		//                               Cart::store($request->checkout['email']);
		// return $request->checkout['shipping_address']['phone'];



		try {
			$order = Order::create([
				'name' => $request->checkout['shipping_address']['first_name'], 
				'phone' => $request->checkout['shipping_address']['phone'], 
				'email' => $request->checkout['email'], 
				'address' => $request->checkout['shipping_address']['address1'].', '.$request->checkout['shipping_address']['city'], 
				'input_date' => Carbon\Carbon::now()->toDateTimeString(),
				'sum_money' => Cart::subtotal(0,'',''), 
				'user_id' => Auth::id(), 
				'note' => $request->note, 
			]);
			// return $order;

			if (count($contents) >0) {
				foreach ($contents as $key => $item) {
					OrderDetail::create([
						'quantity' => $item->qty, 
						'product_id' => $item->id, 
						'order_id' => $order->id, 
					]);
				}
			}
          	// del
			Cart::destroy();

		} catch (Exception $e) {
			echo $e->getMessage();
		}

		// return $contents;
		Session::flash('success', 'Đặt hàng thành công! Đơn hàng của bạn đang được xử lý.');
		return redirect()->route('web.cart');
	}
}
