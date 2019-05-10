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
		$userCount = User::all()->count();
		$orderCount = Order::all()->count();
		$productCount = Product::all()->count();
		$newsCount = News::all()->count();
		$orders = Order::all();
		$orders_today = Order::whereDate('input_date', Carbon\Carbon::today())->get();
		return view('admin.dashboard', ['url' => 'admin'], compact('userCount','orderCount','productCount','newsCount','orders','orders_today'));
	}

	// Thống kê Số đơn hàng theo ngày
	public function chartRangeDay(Request $request)
	{
  		// Get the number of days to show data for, with a default of 7
		$days = $request->get('days', 7);
		$range = Carbon\Carbon::now()->subDays($days);
		$stats = Order::where('input_date', '>=', $range)
		// ->where('status', '2')
		->groupBy('date')
		->orderBy('date', 'ASC')
		->get([
			DB::raw('DATE(input_date) as date'),
			DB::raw('COUNT(*) as orders')
		]);
		return $stats;
	}

	// 0: Đang chờ xử lý, 1: Đang giao hàng, 2: Giao hàng thành công, 3: Giao hàng thất bại, 4: Đã hủy
	// Thống kê Doanh thu theo ngày
	public function chartRevenueRangeDay(Request $request)
	{
  		// Get the number of days to show data for, with a default of 7
		$days = $request->get('days', 7);
		// return $days;
		$range = Carbon\Carbon::now()->subDays($days);
		$stats = Order::where('input_date', '>=', $range)
		->where('status', '2')
		->groupBy('date')
		->orderBy('date', 'ASC')
		->get([
			DB::raw('DATE(input_date) as date'),
			DB::raw('SUM(sum_money) as revenue'),
		]);
		return $stats;
	}

	// Thống kê theo tháng
	public function statisticsMonth()
	{
		// $revenueMonth = DB::table('orders')->max('sum_money');
		$monthly_uploaded_product = DB::table('orders')
		->select(DB::raw('MONTH(input_date) as month'), DB::raw('SUM(sum_money) as revenue'))
		->where('status', '2')
		->groupBy('month')
		->get();
		$revenue_year = array(
			[ 'month' => 'Tháng 1'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 2'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 3'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 4'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 5'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 6'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 7'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 8'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 9'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 10'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 11'	, 'revenue' => 0 ],
			[ 'month' => 'Tháng 12'	, 'revenue' => 0 ],
		);

		foreach($monthly_uploaded_product as $key)
			$revenue_year[$key->month-1]['revenue'] = (int)$key->revenue;

		return $revenue_year;


	}
}
