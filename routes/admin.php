<?php

/*
|--------------------------------------------------------------------------
| admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register admin routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "admin" middleware group. Now create something great!
|
*/

Route::redirect('/', '/admin/dashboard')->name('index');
Auth::routes();

Route::middleware(['auth:admin'])->group(function(){
	Route::get('dashboard', 'DashboardController@admin')->name('dashboard');
	// Chart
	Route::get('chartRangeDay', 'DashboardController@chartRangeDay')->name('dashboard.chart_range_day');
	Route::get('chartRevenueRangeDay', 'DashboardController@chartRevenueRangeDay')->name('dashboard.chart_revenue_range_day');

	Route::get('statistics-month', 'DashboardController@statisticsMonth')->name('dashboard.statistics_month');


	Route::get('logout', 'Auth\LoginController@logout')->name('logout');
	// Manage
	Route::resource('catagory-types', 'CatagoryType\CatagoryTypeController');
	Route::resource('catagories', 'Catagory\CatagoryController');
	Route::resource('distributions', 'Distribute\DistributeController');

	Route::get('products/trashes', 'Product\ProductController@trash')->name('products.trash');
	Route::get('products/{products}/restore', 'Product\ProductController@restore')->name('products.restore');
	Route::delete('forcedelete/{products}', 'Product\ProductController@forcedelete')->name('products.forcedelete');
	Route::resource('products', 'Product\ProductController');

	Route::get('news/trashes', 'News\NewsController@trash')->name('news.trash');
	Route::get('news/{news}/restore', 'News\NewsController@restore')->name('news.restore');
	Route::delete('forcedelete/{news}', 'News\NewsController@forcedelete')->name('news.forcedelete');
	Route::resource('news', 'News\NewsController');
	
	// Ajax Upload một file ảnh lên thư mục tạm trên server.
	Route::post('uploadImage', 'Product\ProductController@uploadImage')->name('uploadImage');

	Route::resource('users', 'User\UserController');
	Route::resource('orders', 'Order\OrderController')->except(['create','store']);
	Route::get('orders-pending', 'Order\OrderController@ordersPending')->name('orders.orders_pending');
	Route::get('orders-deliver', 'Order\OrderController@ordersDeliver')->name('orders.orders_deliver');
	Route::get('orders-success', 'Order\OrderController@ordersSuccess')->name('orders.orders_success');
	Route::get('orders-error', 'Order\OrderController@ordersError')->name('orders.orders_error');
	Route::get('orders-cancel', 'Order\OrderController@ordersCancel')->name('orders.orders_cancel');
	Route::get('orders/report/{id}', 'Order\OrderController@generateReport')->name('orders.report');
	Route::get('orders/print/{id}', 'Order\OrderController@generatePrint')->name('orders.print');
	// Update quantity in admin cartOrder 
	Route::post('orders/update-qty', 'Order\OrderController@updateQuantity')->name('update_qty');
	Route::post('orders/del-item', 'Order\OrderController@delItemInCart')->name('del_item');
	Route::post('orders/update-order/{id}', 'Order\OrderController@updateOrder')->name('update_order');

	Route::resource('contacts', 'Contact\ContactController')->only(['index','destroy']);
	Route::post('contacts-detail', 'Contact\ContactController@contactDetail')->name('contact_detail');

    // Thay đổi mật khẩu Admin đang đăng nhập
	Route::post('checkPassword', 'Auth\LoginController@checkPassword')->name('check_password');
	Route::post('changePassword', 'Auth\LoginController@changePassword')->name('change_password');





});


Route::middleware(['guest:admin'])->group(function(){
	Route::get('login', 'Auth\LoginController@showAdminLoginForm')->name('login');
	Route::post('login', 'Auth\LoginController@adminLogin');

});





