<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Order;
use App\Product;
use App\News;
use Carbon;
use DB;
use Illuminate\Support\Facades\Input;

class DashboardController extends Controller
{
	public function admin()
	{
		// return now();
		$userCount = User::all()->count();
		$orderCount = Order::all()->count();
		$productCount = Product::all()->count();
		$newsCount = News::all()->count();
		$orders = Order::all();
		$orders_today = Order::whereDate('input_date', Carbon\Carbon::today())->get();
		return view('admin.dashboard', ['url' => 'admin'], compact('userCount','orderCount','productCount','newsCount','orders','orders_today'));
	}

	public function chartRangeDay(Request $request)
	{
  		// Get the number of days to show data for, with a default of 7
		$days = $request->get('days', 7);
		$range = Carbon\Carbon::now()->subDays($days);
		$stats = Order::where('input_date', '>=', $range)
		->groupBy('date')
		->orderBy('date', 'ASC')
		->get([
			DB::raw('DATE_FORMAT(input_date, "%d/%m/%Y") as date'),
			DB::raw('COUNT(*) as orders')
		]);
		return $stats;
	}

	public function chartRevenueRangeDay(Request $request)
	{
  		// Get the number of days to show data for, with a default of 7
		$days = $request->get('days', 7);
		// return $days;
		$range = Carbon\Carbon::now()->subDays($days);
		$stats = Order::where('input_date', '>=', $range)
		->groupBy('date')
		->orderBy('date', 'ASC')
		->get([
			DB::raw('DATE(input_date) as date'),
			DB::raw('SUM(sum_money) as revenue'),
		]);
		return $stats;
	}
}
