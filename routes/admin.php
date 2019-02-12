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
	Route::resource('users', 'User\UserController');


});


Route::middleware(['guest:admin'])->group(function(){
	Route::get('login', 'Auth\LoginController@showAdminLoginForm')->name('login');
	Route::post('login', 'Auth\LoginController@adminLogin');

});
