<?php

/*
|--------------------------------------------------------------------------
| writer Routes
|--------------------------------------------------------------------------
|
| Here is where you can register writer routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "writer" middleware group. Now create something great!
|
*/

Route::redirect('/', '/writer/dashboard')->name('index');
Auth::routes();

Route::middleware(['auth:writer'])->group(function(){
	Route::get('dashboard', 'DashboardController@writer')->name('dashboard');
	Route::get('logout', 'Auth\LoginController@logout')->name('logout');

	
    // Thay đổi mật khẩu user đang đăng nhập
	Route::post('checkPassword', 'Auth\LoginController@checkPassword')->name('check_password');
	Route::post('changePassword', 'Auth\LoginController@changePassword')->name('change_password');
});


Route::get('login', 'Auth\LoginController@showWriterLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@writerLogin');


