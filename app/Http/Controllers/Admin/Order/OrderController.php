<?php

namespace App\Http\Controllers\Admin\Order;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Order;
use Session;


class OrderController extends Controller
{
	public function index()
	{
		$orders = Order::latest()->paginate();
		return view('admin.orders.index', compact('orders'));
	}

	public function edit(Order $order)
	{
		return view('admin.orders.edit', compact('order'));
	}

	public function show(Order $order)
	{
		return view('admin.orders.show', compact('order'));
	}

	public function update(UpdateDistributeRequest $request, Order $order)
	{
		$data = $request->all();
		// dd($data);
		$order->update($data);
		Session::flash('success', 'Cập nhật đơn hàng thành công');
		return redirect()->route('admin.orders.index');
	}

	public function destroy(Order $order)
	{
		$order->delete();
		Session::flash('success', 'Xoá đơn hàng thành công');
		return redirect()->route('admin.orders.index');
	}
}
