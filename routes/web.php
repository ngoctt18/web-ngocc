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

Route::middleware(['LogUserActivity'])->group(function(){
	Route::middleware(['auth:web'])->group(function(){
		Route::middleware(['checkCartEmpty'])->group(function(){
			Route::get('checkout', 'ShoppingController@checkout')->name('checkout');
			Route::post('checkout', 'ShoppingController@storeCheckout')->name('checkout.store');
		});

		Route::get('users/{username}', 'Auth\UserController@index')->name('users');
		Route::put('users/{username}', 'Auth\UserController@postUpdateInfo')->name('post_update_info');
		Route::get('users/{username}/orders', 'Auth\UserController@orders')->name('orders');
		Route::get('users/{username}/orders-detail/{order_id}', 'Auth\UserController@ordersDetail')->name('orders_detail');
		Route::put('users/{username}/orders-detail/{order_id}/cancel', 'Auth\UserController@ordersCancel')->name('orders_cancel');
		Route::get('users/{username}/address', 'Auth\UserController@address')->name('address');
		Route::get('logout', 'Auth\LoginController@logout')->name('logout');
	});

	Route::get('/', 'WebsiteController@homepage')->name('homepage');
	Route::get('login', 'Auth\LoginController@showUserLoginForm')->name('login');
	Route::post('post-login', 'Auth\LoginController@userLogin')->name('post_login');

	// Social login
	Route::get('login/redirect/{social}', 'Auth\SocialAuthController@redirect')->name('login.social');
	Route::get('login/callback/{social}', 'Auth\SocialAuthController@callback');

	// Forget password
	Route::post('forget-pass', 'Auth\ForgetPasswordController@forgetPassword')->name('forget_pass');

	Route::get('register', 'Auth\LoginController@showUserRegisterForm')->name('register');
	Route::post('register', 'Auth\LoginController@userRegister');
	// Route::get('registered', 'Auth\LoginController@userRegistered')->name('registered');
	Route::get('confirm/{token}', 'Auth\LoginController@confirmRegistered')->name('confirm');
	Route::post('sign-up', 'WebsiteController@signUpEmail')->name('sign_up_email');


	Route::get('product/{id}/{name}', 'WebsiteController@productDetail')->name('product_detail');
	Route::get('catagory-types/{id}/{name}', 'WebsiteController@catagoryTypes')->name('catagory_types');
	Route::get('catagories/{id}/{name}', 'WebsiteController@Catagories')->name('catagories');
	Route::get('distribute/{id}/{name}', 'WebsiteController@Distribute')->name('distribute');
	Route::get('best-seller', 'WebsiteController@bestSeller')->name('best_seller');
	Route::get('best-discount', 'WebsiteController@bestDiscount')->name('best_discount');
	Route::get('latest-product', 'WebsiteController@latestProduct')->name('latest_product');


	Route::post('add-to-cart/{id}/{name}', 'ShoppingController@addToCart')->name('add_cart');
	Route::get('cart', 'ShoppingController@getCart')->name('cart');
	Route::get('cart/del-item/{rowId}', 'ShoppingController@delItemInCart')->name('del_item');
	Route::post('update-qty', 'ShoppingController@updateQuantity')->name('update_qty');

	Route::post('add-to-wishlist/{id}/{name}', 'ShoppingController@addToWishList')->name('add_wishlist');
	Route::get('wishlist', 'ShoppingController@getWishList')->name('wishlist');
	Route::get('wishlist/del-item/{rowId}', 'ShoppingController@delItemInWishList')->name('del_item_wishlist');
	Route::get('wishlist/switch-to-cart/{rowId}', 'ShoppingController@switchToCart')->name('switch_to_cart');


	Route::get('contact', 'WebsiteController@contact')->name('contact');
	Route::post('contact', 'WebsiteController@postContact');
	Route::get('404', 'Auth\ErrorController@NotFound404')->name('404');


	Route::get('news', 'News\NewsController@index')->name('news');
	Route::get('news/view/{id}/{slug}', 'News\NewsController@view')->name('news.view');
	Route::get('news/tagged/{slug}', 'News\NewsController@tagged')->name('news.tagged');
	Route::get('news/author/{username}', 'News\NewsController@author')->name('news.author');




	Route::get('search', 'Search\SearchController@index')->name('search');
	Route::get('autocomplete', 'Search\SearchController@autocomplete')->name('search.autocomplete');

});




