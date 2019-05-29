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


		// comment
		Route::post('product/comment', 'CommentController@store')->name('product.comment.store');
		Route::post('news/comment', 'CommentController@storeNewsComment')->name('news.comment.store');

	});

	Route::get('/', 'WebsiteController@homepage')->name('homepage');
	Route::get('login', 'Auth\LoginController@showUserLoginForm')->name('login');
	Route::post('post-login', 'Auth\LoginController@userLogin')->name('post_login');

	// Social login
	Route::get('login/redirect/{social}', 'Auth\SocialAuthController@redirect')->name('login.social');
	Route::get('login/callback/{social}', 'Auth\SocialAuthController@callback');

	// Forget password
	Route::post('forget-pass', 'Auth\ForgetPasswordController@forgetPassword')->name('forget_pass');
	Route::get('/change-password/{token}','Auth\ForgetPasswordController@getChangePassword')->name('get.change-password');
	Route::post('/change-password/{token}','Auth\ForgetPasswordController@postChangePassword')->name('post.change-password');
	Route::get('/change/error','Auth\ForgetPasswordController@getError')->name('get.change-password.error');
	Route::get('/change/success','Auth\ForgetPasswordController@getSuccess')->name('get.change-password.success');


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
	Route::get('cart/switch-to-wishlist/{rowId}', 'ShoppingController@switchToWishList')->name('switch_to_wishlist');
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





	// Test route
	Route::get('/updateDateOrder', function(){
		$orders = App\Order::all();
		foreach ($orders as $order) {
			$order->update([
				'created_at' => $order->input_date,
				'updated_at' => $order->input_date,
			]);
		}
		dd('updateDateOrder done!');
	});

	Route::get('/randomDateComment', function(){
		$comments = App\Comment::all();
		foreach ($comments as $comment) {
			$min = strtotime('2019-03-01 12:12:12');
			$max = strtotime('2019-05-12 10:12:12');
			$int = mt_rand($min, $max);
			$string = date("Y-m-d H:i:s", $int);
			$comment->update([
				'created_at' => $string,
				'updated_at' => $string,
			]);
		}

		$commentNews = App\CommentNews::all();
		foreach ($commentNews as $commentNew) {
			$min = strtotime('2019-03-01 12:12:12');
			$max = strtotime('2019-05-07 12:12:12');
			$int = mt_rand($min, $max);
			$string = date("Y-m-d H:i:s", $int);
			$commentNew->update([
				'created_at' => $string,
				'updated_at' => $string,
			]);
		}
		dd('randomDateComment done!');
	});

	Route::get('/mail', function(){
		$user = App\User::find(1);
		$findUser = App\User::find(1);
		$order = App\Order::find(304);
		// return view('website.forget_passwords.mail', compact('user'));
		// return view('website.emails.register_email', compact('user', 'findUser'));
		return view('website.emails.order_email', compact('order'));
	});

	Route::get('/test-download', function(App\News $news){
		// $files = array('favicon.ico', 'index.php', 'robots.txt');
		// $zip_name = 'huhuhu.zip';
		// $zip = new ZipArchive();
		// $zip->open($zip_name, ZipArchive::CREATE);
		// foreach ($files as $img) {
		// 	$zip->addFile(public_path().'/'.$img);                       
		// }

		// Response::download($zip, $zip_name, array(
		// 	'content-type'          => 'application/zip',
		// 	'Content-disposition:'  =>  'attachment; filename=filename.zip',
		// 	'Content-Length:'       => filesize($zip_name)
		// ));

		// $zip->close();
		// response()->download($pathToFile, $name, $headers);
		$news = App\News::all();
		// $path = $news->getFirstMedia('news_image')->getPath();
		// return response()->download($path, 'hihihi.png');

		// Let's get some media.
		$downloads = $news->getMedia('news_image');

        // Download the files associated with the media in a streamed way.
        // No prob if your files are very large.
		return Spatie\MediaLibrary\MediaStream::create('my-files.zip')->addMedia($downloads);
	});

	Route::get('soft-delete', function(){
		$user = App\CommentNews::findOrFail(1);
		return $user->news;
	});
});





