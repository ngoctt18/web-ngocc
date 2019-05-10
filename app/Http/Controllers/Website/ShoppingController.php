<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Catagory;
use App\CatagoriesType;
use App\Order;
use App\OrderDetail;
use App\News;
use Carbon;
use Session;
use Cart;
use Auth;
use DB;
use App\Services\UpdateQtyBuyProduct;

class ShoppingController extends Controller
{

	public function __construct()
	{
		$this->updateQtyBuyProduct = new UpdateQtyBuyProduct();
	}

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

		$this->storeCartByUser();
		return redirect()->route('web.cart');
	}

	public function getCart()
	{
		$contents = Cart::content();
		foreach ($contents as $key => $item) {
			if ($item->model->qty_remain <= $item->qty) {
				Session::flash('error', 'Một số sản phẩm đã hết hàng. Vui lòng xóa bỏ để tiếp tục thanh toán!');
			}
		}
		$total = Cart::subtotal(0,'','.');
		// return $contents;
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$breadcrumb = 'Cart';
		return view('website.shopping.cart', compact('catagoriesTypes','contents','total','news_popular','breadcrumb'));
	}

	public function delItemInCart($rowId)
	{
		$cart = Cart::get($rowId);
		Session::flash('success_cart', '"'.$cart->model->name.'" đã được xóa khỏi giỏ hàng.');
		Cart::remove($rowId);

		$this->storeCartByUser();
		return redirect()->route('web.cart');
	}

	public function updateQuantity(Request $request)
	{
		$qty = $request->get('qty');
		$rowId = $request->get('rowId');
		Cart::instance('default')->update($rowId, $qty); // Will update the quantity
		$price = Cart::instance('default')->get($rowId)->subtotal(0,'','.');
		$total = Cart::instance('default')->subtotal(0,'','.');
		$num_item = Cart::instance('default')->count();

		$this->storeCartByUser();
		return response()->json([
			'price' => $price, 
			'total' => $total,
			'num_item' => $num_item,
		]);
	}

	public function checkout()
	{
		$contents = Cart::content();
		foreach ($contents as $key => $item) {
			if ($item->model->qty_remain <= $item->qty) {
				Session::flash('error', 'Sản phẩm đã hết hàng. Vui lòng xóa bỏ để tiếp tục thanh toán!');
				Session::flash('product_id', 'Sản phẩm đã hết hàng. Vui lòng xóa bỏ để tiếp tục thanh toán!');
				return redirect()->route('web.cart');
			}
		}
		$total = Cart::subtotal(0,'','.');
		// return $contents;
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		return view('website.shopping.checkout', compact('catagoriesTypes','contents','total','news_popular'));
	}

	public function storeCheckout(Request $request)
	{
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		// Cart::store($request->checkout['email']);
		// return $request->checkout['shipping_address']['phone'];

		try {
			$order = Order::create([
				'name' => $request->checkout['shipping_address']['first_name'], 
				'phone' => $request->checkout['shipping_address']['phone'], 
				'email' => $request->checkout['email'], 
				'address' => $request->checkout['shipping_address']['address1'].' '.$request->checkout['shipping_address']['city'], 
				'input_date' => Carbon\Carbon::now()->toDateTimeString(),
				'sum_money' => Cart::subtotal(0,'',''), 
				'user_id' => Auth::id(), 
				'note' => $request->note, 
			]);
			// return $order;
			if (count($contents) >0) {
				foreach ($contents as $key => $item) {
					// Nếu sl còn lại của sp lớn hơn sl mua thì mới cho mua
					if ($item->model->qty_remain > $item->qty) {
						// Xử lý giảm sl sp còn qty_remain, tăng count_buys và count_views
						$this->updateQtyBuyProduct->handleUpdateQtyBuyProduct($item->id, $item->qty);
						OrderDetail::create([
							'quantity' => $item->qty, 
							'price' => $item->model->price,
							'discount' => $item->model->discount,
							'product_id' => $item->id, 
							'order_id' => $order->id, 
						]);
					} else {
						// Nếu hết hàng thì trừ tiền đó trog order tổng
						$order->decrement('sum_money', $item->model->price*$item->qty);
					}
				}
			}
          	// del Cart
			Cart::instance('default')->destroy();

		} catch (Exception $e) {
			echo $e->getMessage();
		}

		$this->storeCartByUser();
		Session::flash('success', 'Đặt hàng thành công! Đơn hàng của bạn đang được xử lý.');
		return redirect()->route('web.cart');
	}

	// wishlist
	public function getWishList()
	{
		$wishlists = Cart::instance('wishlist')->content();
		// return $total;
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$breadcrumb = 'Wish List';
		return view('website.shopping.wishlist', compact('catagoriesTypes','news_popular','breadcrumb','wishlists'));
	}

	public function addToWishList(Request $request, $id)
	{
		$product = Product::findOrFail($id);
		Cart::instance('wishlist')->add([
			'id' => $id, 
			'name' => $product->name, 
			'qty' => $request->wish_qty, 
			'price' => $product->price-$product->price*$product->discount/100, 
			'options' => [
				'discount' => $product->discount,
				'price_old' => $product->price,
			]
			// Liên kết giỏ hàng với Model Product
		])->associate('App\Product');

		$this->storeWishlistByUser();
		return redirect()->back();
	}

	public function delItemInWishList($rowId)
	{
		Cart::instance('wishlist')->remove($rowId);

		$this->storeWishlistByUser();
		Session::flash('success_cart', 'Xóa sản phẩm thành công.');
		return redirect()->route('web.wishlist');
	}

	public function switchToCart($rowId)
	{
		$wishlist = Cart::instance('wishlist')->get($rowId);
		$product = Product::findOrFail($wishlist->id);

		Cart::instance('default')->add([
			'id' => $wishlist->id, 
			'name' => $product->name, 
			'qty' => 1, 
			'price' => $product->price-$product->price*$product->discount/100, 
			'options' => [
				'discount' => $product->discount,
				'price_old' => $product->price,
			]
			// Liên kết giỏ hàng với Model Product
		])->associate('App\Product');
		Cart::instance('wishlist')->remove($rowId);

		$this->storeCartByUser();
		$this->storeWishlistByUser();
		Session::flash('success_cart', '"'.$product->name.'" đã được chuyển sang giỏ hàng.');
		return redirect()->route('web.wishlist');
	}

	public function switchToWishList($rowId)
	{
		$cart = Cart::instance('default')->get($rowId);
		$product = Product::findOrFail($cart->id);

		Cart::instance('wishlist')->add([
			'id' => $cart->id, 
			'name' => $product->name, 
			'qty' => 1, 
			'price' => $product->price-$product->price*$product->discount/100, 
			'options' => [
				'discount' => $product->discount,
				'price_old' => $product->price,
			]
			// Liên kết giỏ hàng với Model Product
		])->associate('App\Product');
		Cart::instance('default')->remove($rowId);

		$this->storeCartByUser();
		$this->storeWishlistByUser();
		Session::flash('success_cart', '"'.$product->name.'" đã được chuyển sang danh sách sản phẩm mua sau.');
		return redirect()->route('web.cart');
	}






	// storeCartByUser in database
	public function storeCartByUser()
	{
		// if (Auth::check()) {
		// 	DB::table('shoppingcart')->where('identifier', Auth::user()->email)->delete();
		// 	Cart::instance('default')->store(Auth::user()->email);
		// }
	}

	// storeWishlistByUser in database
	public function storeWishlistByUser()
	{
		// if (Auth::check()) {
		// 	DB::table('shoppingcart')->where('identifier', 'wishlist_'.Auth::user()->email)->delete();
		// 	Cart::instance('wishlist')->store('wishlist_'.Auth::user()->email);
		// }
	}
}
