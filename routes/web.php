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


Route::get('/', 'WebsiteController@homepage')->name('homepage');

Route::get('login', 'Auth\LoginController@showUserLoginForm')->name('login');
Route::post('post-login', 'Auth\LoginController@userLogin')->name('post_login');

Route::get('register', 'Auth\LoginController@showUserRegisterForm')->name('register');
Route::post('register', 'Auth\LoginController@userRegister');
// Route::get('registered', 'Auth\LoginController@userRegistered')->name('registered');
Route::get('confirm/{token}', 'Auth\LoginController@confirmRegistered')->name('confirm');
Route::post('sign-up', 'Auth\LoginController@signUpEmail')->name('sign_up_email');


Route::get('product/{id}/{name}', 'WebsiteController@productDetail')->name('product_detail');
Route::get('catagory-types/{id}/{name}', 'WebsiteController@catagoryTypes')->name('catagory_types');
Route::get('catagories/{id}/{name}', 'WebsiteController@Catagories')->name('catagories');


Route::post('add-to-cart/{id}/{name}', 'ShoppingController@addToCart')->name('add_cart');
Route::get('cart', 'ShoppingController@getCart')->name('cart');
Route::get('cart/del-item/{rowId}', 'ShoppingController@delItemInCart')->name('del_item');

Route::post('update-qty', 'ShoppingController@updateQuantity')->name('update_qty');

Route::get('contact', 'WebsiteController@contact')->name('contact');
Route::post('contact', 'WebsiteController@postContact');
Route::get('404', 'Auth\ErrorController@NotFound404')->name('404');


Route::get('news', 'News\NewsController@index')->name('news');
Route::get('news/view/{id}/{slug}', 'News\NewsController@view')->name('news.view');
Route::get('news/tagged/{slug}', 'News\NewsController@tagged')->name('news.tagged');
Route::get('news/author/{username}', 'News\NewsController@author')->name('news.author');


	// Route::get('ajax-pagination','WebsiteController@ajaxPagination')->name('ajax.pagination');


Route::get('search', 'Search\SearchController@index')->name('search');
Route::get('autocomplete', 'Search\SearchController@autocomplete')->name('search.autocomplete');

// Route::get('email-test', function(){

// 	$details['email'] = 'your_email@gmail.com';

// 	dispatch(new App\Jobs\SendEmailRegisterJob($details));

// 	dd('done');
// });