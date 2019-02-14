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
	Route::get('logout', 'Auth\LoginController@logout')->name('logout');

	// 
	Route::resource('catagory-types', 'CatagoryType\CatagoryTypeController');
	Route::resource('catagories', 'Catagory\CatagoryController');
	Route::resource('distributions', 'Distribute\DistributeController');
	Route::resource('products', 'Product\ProductController');
	
	// Upload một file ảnh lên thư mục tạm trên server.
	Route::post('uploadImage', 'Product\ProductController@uploadImage')->name('uploadImage');
	Route::resource('users', 'User\UserController');
	Route::resource('orders', 'Order\OrderController')->except(['create','store']);

    // Thay đổi mật khẩu user đang đăng nhập
	Route::post('checkPassword', 'Auth\LoginController@checkPassword')->name('check_password');
	Route::post('changePassword', 'Auth\LoginController@changePassword')->name('change_password');

});


Route::middleware(['guest:admin'])->group(function(){
	Route::get('login', 'Auth\LoginController@showAdminLoginForm')->name('login');
	Route::post('login', 'Auth\LoginController@adminLogin');

});
