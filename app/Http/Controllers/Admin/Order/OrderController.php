<?php

namespace App\Http\Controllers\Admin\Order;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Order;
use Session;


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

	public function update(Request $request, Order $order)
	{
		$order->update($request->all());
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
		return view('admin.orders.orders-pending', compact('orders'));
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
		return view('admin.orders.orders-deliver', compact('orders'));
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
		return view('admin.orders.orders-success', compact('orders'));
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
		return view('admin.orders.orders-error', compact('orders'));
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
		return view('admin.orders.orders-cancel', compact('orders'));
	}
}
