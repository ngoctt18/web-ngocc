<?php

namespace App\Http\Controllers\Admin\Order;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\OrderDetail;
use App\Order;
use Session;
use PDF;
use Cart;
use App\Jobs\SendEmailOrderJob;


class OrderController extends Controller
{
	public function index(Request $request)
	{
		$name = $request->query('name', NULL);
		$dateFrom = $request->query('dateFrom', NULL);
		$dateTo = $request->query('dateTo', NULL);
		$status = $request->query('status', NULL);

		$orders = Order::query();
		if ($name != NULL) {
			$orders = $orders->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($dateFrom != NULL) {
			$orders = $orders->SearchDateFrom($dateFrom);
		}
		if ($dateTo != NULL) {
			$orders = $orders->SearchDateTo($dateTo);
		}
		if ($status != NULL) {
			$orders = $orders->where('status', $status);
		}
		$orders = $orders->latest()->paginate()
		->appends([
			'name' => $name,
			'dateFrom' => $dateFrom,
			'dateTo' => $dateTo,
			'status' => $status,
		]);
		return view('admin.orders.index', compact('orders'));
	}

	public function show(Order $order)
	{
		return view('admin.orders.show', compact('order'));
	}

	public function edit(Order $order)
	{
		Cart::instance('cartOrder')->destroy();
		foreach ($order->orderDetails as $item) {
			Cart::instance('cartOrder')->add([
				'id' => $item->product->id, 
				'name' => $item->product->name, 
				'qty' => $item->quantity, 
				'price' => $item->price, 
				'price' => $item->price-$item->price*$item->discount/100, 
				'options' => [
					'discount' => $item->discount,
					'price_pro' => $item->product->price,
					'detail_id' => $item->id,
				]
			])->associate('App\Product');
		}
		$cartOrder = Cart::instance('cartOrder')->content();
		// return $cartOrder;
		return view('admin.orders.edit', compact('order', 'cartOrder'));
	}

	// Update quantity in admin cartOrder 
	public function updateQuantity(Request $request)
	{
		$qty = $request->get('qty');
		$rowId = $request->get('rowId');
		Cart::instance('cartOrder')->update($rowId, $qty); // Will update the quantity
		$price = Cart::instance('cartOrder')->get($rowId)->subtotal(0,'','.');

		return response()->json([
			'price' => $price, 
		]);
	}

	public function delItemInCart(Request $request)
	{
		// return $request['rowId'];
		Cart::instance('cartOrder')->remove($request['rowId']);
		return 'true';
	}

	// Update order in admin cartOrder
	public function updateOrder(Request $request, $id)
	{
		$listDetail_id = $request->detail_id;
		$listKeep = [];
		// return $listDetail_id;
		$orderDetails = OrderDetail::where('order_id', $id)->get();
		// return $orderDetails;
		// return Cart::instance('cartOrder')->subtotal(0,'','');
		foreach ($orderDetails as $key => $item) {
			if(!in_array($item->id, $listDetail_id)){
				$item->delete();
			} else {
				$listKeep[] = $item->id;
			}
		}
		// return $listKeep;
		// return Cart::instance('cartOrder')->content();
		Order::find($id)->update(['sum_money' => Cart::instance('cartOrder')->subtotal(0,'','')]);
		foreach (Cart::instance('cartOrder')->content() as $key => $item) {
			if (in_array($item->options->detail_id, $listKeep)) {
				OrderDetail::find($item->options->detail_id)->update([
					'quantity' => $item->qty, 
				]);
				// return $item->options->detail_id;
			} else {
				OrderDetail::create([
					'quantity' => $item->qty, 
					'price' => $item->price,
					'discount' => $item->options->discount,
					'product_id' => $item->id, 
					'order_id' => $id, 
				]);
			}
		}
		Cart::instance('cartOrder')->destroy();
		return redirect()->route('admin.orders.edit', [$id]);
	}






	public function update(Request $request, Order $order)
	{
		$order->update(['status' => $request->status]);

		if ($request->status == '1') {
			// Chỗ này phải check sao cho gửi mail 1 lần thui
			// dispatch(new SendEmailOrderJob($order));
		}
        // queue send email

		Session::flash('success', 'Cập nhật trạng thái đơn hàng thành công');
		return redirect()->back();
	}

	public function destroy(Order $order)
	{
		$order->delete();
		Session::flash('success', 'Xoá đơn hàng thành công');
		return redirect()->route('admin.orders.index');
	}


	public function ordersPending(Request $request)
	{
		$name = $request->query('name', NULL);
		$dateFrom = $request->query('dateFrom', NULL);
		$dateTo = $request->query('dateTo', NULL);
		$status = $request->query('status', NULL);

		$orders = Order::query();
		if ($name != NULL) {
			$orders = $orders->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($dateFrom != NULL) {
			$orders = $orders->SearchDateFrom($dateFrom);
		}
		if ($dateTo != NULL) {
			$orders = $orders->SearchDateTo($dateTo);
		}
		if ($status != NULL) {
			$orders = $orders->where('status', $status);
		}
		$orders = $orders->where('status', '0')->latest()->paginate()
		->appends([
			'name' => $name,
			'dateFrom' => $dateFrom,
			'dateTo' => $dateTo,
			'status' => $status,
		]);
		return view('admin.orders.orders-type.orders-pending', compact('orders'));
	}

	public function ordersDeliver(Request $request)
	{
		$name = $request->query('name', NULL);
		$dateFrom = $request->query('dateFrom', NULL);
		$dateTo = $request->query('dateTo', NULL);
		$status = $request->query('status', NULL);

		$orders = Order::query();
		if ($name != NULL) {
			$orders = $orders->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($dateFrom != NULL) {
			$orders = $orders->SearchDateFrom($dateFrom);
		}
		if ($dateTo != NULL) {
			$orders = $orders->SearchDateTo($dateTo);
		}
		if ($status != NULL) {
			$orders = $orders->where('status', $status);
		}
		$orders = $orders->where('status', '1')->latest()->paginate()
		->appends([
			'name' => $name,
			'dateFrom' => $dateFrom,
			'dateTo' => $dateTo,
			'status' => $status,
		]);
		return view('admin.orders.orders-type.orders-deliver', compact('orders'));
	}

	public function ordersSuccess(Request $request)
	{
		$name = $request->query('name', NULL);
		$dateFrom = $request->query('dateFrom', NULL);
		$dateTo = $request->query('dateTo', NULL);
		$status = $request->query('status', NULL);

		$orders = Order::query();
		if ($name != NULL) {
			$orders = $orders->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($dateFrom != NULL) {
			$orders = $orders->SearchDateFrom($dateFrom);
		}
		if ($dateTo != NULL) {
			$orders = $orders->SearchDateTo($dateTo);
		}
		if ($status != NULL) {
			$orders = $orders->where('status', $status);
		}
		$orders = $orders->where('status', '2')->latest()->paginate()
		->appends([
			'name' => $name,
			'dateFrom' => $dateFrom,
			'dateTo' => $dateTo,
			'status' => $status,
		]);
		return view('admin.orders.orders-type.orders-success', compact('orders'));
	}

	public function ordersError(Request $request)
	{
		$name = $request->query('name', NULL);
		$dateFrom = $request->query('dateFrom', NULL);
		$dateTo = $request->query('dateTo', NULL);
		$status = $request->query('status', NULL);

		$orders = Order::query();
		if ($name != NULL) {
			$orders = $orders->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($dateFrom != NULL) {
			$orders = $orders->SearchDateFrom($dateFrom);
		}
		if ($dateTo != NULL) {
			$orders = $orders->SearchDateTo($dateTo);
		}
		if ($status != NULL) {
			$orders = $orders->where('status', $status);
		}
		$orders = $orders->where('status', '3')->latest()->paginate()
		->appends([
			'name' => $name,
			'dateFrom' => $dateFrom,
			'dateTo' => $dateTo,
			'status' => $status,
		]);
		return view('admin.orders.orders-type.orders-error', compact('orders'));
	}

	public function ordersCancel(Request $request)
	{
		$name = $request->query('name', NULL);
		$dateFrom = $request->query('dateFrom', NULL);
		$dateTo = $request->query('dateTo', NULL);
		$status = $request->query('status', NULL);

		$orders = Order::query();
		if ($name != NULL) {
			$orders = $orders->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($dateFrom != NULL) {
			$orders = $orders->SearchDateFrom($dateFrom);
		}
		if ($dateTo != NULL) {
			$orders = $orders->SearchDateTo($dateTo);
		}
		if ($status != NULL) {
			$orders = $orders->where('status', $status);
		}
		$orders = $orders->where('status', '4')->latest()->paginate()
		->appends([
			'name' => $name,
			'dateFrom' => $dateFrom,
			'dateTo' => $dateTo,
			'status' => $status,
		]);
		return view('admin.orders.orders-type.orders-cancel', compact('orders'));
	}

	public function generatePrint($id)
	{
		$order = Order::findOrFail($id);
		return view('admin.orders.print', compact('order'));
	}

	// download PDF
	public function generateReport($id)
	{
		$order = Order::find($id);

		return $order->getPdf('download');	// Returns the PDF as download
		// return $order->getPdf();	// Returns stream default
		// return view('admin.orders.order-pdf', compact('order'));
	}



}
