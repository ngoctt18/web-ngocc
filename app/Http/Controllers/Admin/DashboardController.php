<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Order;
use App\Product;
use App\News;

class DashboardController extends Controller
{
	public function admin()
	{
		$userCount = User::all()->count();
		$orderCount = Order::all()->count();
		$productCount = Product::all()->count();
		$newsCount = News::all()->count();
		return view('admin.dashboard', ['url' => 'admin'], compact('userCount','orderCount','productCount','newsCount'));
	}
}
