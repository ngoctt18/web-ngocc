<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/





Route::middleware(['auth:web'])->group(function(){
	Route::get('checkout', 'ShoppingController@checkout')->name('checkout');
	Route::post('checkout', 'ShoppingController@storeCheckout')->name('checkout.store');

	Route::get('logout', 'Auth\LoginController@logout')->name('logout');
});


// CÁI middleware NÀY LÀM CHO SAI
// Route::middleware(['guest:web'])->group(function(){
	Route::get('/', 'WebsiteController@homepage')->name('homepage');

	Route::get('login', 'Auth\LoginController@showUserLoginForm')->name('login');
	Route::post('post-login', 'Auth\LoginController@userLogin')->name('post_login');

	Route::get('register', 'Auth\LoginController@showUserRegisterForm')->name('register');
	Route::post('register', 'Auth\LoginController@userRegister');

	Route::get('product/{id}/{name}', 'WebsiteController@productDetail')->name('product_detail');
	Route::get('catagory-types/{id}/{name}', 'WebsiteController@catagoryTypes')->name('catagory_types');
	Route::get('catagories/{id}/{name}', 'WebsiteController@Catagories')->name('catagories');


	Route::post('add-to-cart/{id}/{name}', 'ShoppingController@addToCart')->name('add_cart');
	Route::get('cart', 'ShoppingController@getCart')->name('cart');
	Route::get('cart/del-item/{rowId}', 'ShoppingController@delItemInCart')->name('del_item');
	
	Route::post('update-qty', 'ShoppingController@updateQuantity')->name('update_qty');
// });