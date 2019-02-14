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

});


Route::middleware(['guest:web'])->group(function(){
	Route::get('/', 'WebsiteController@homepage')->name('homepage');

	Route::get('login', 'Auth\LoginController@showUserLoginForm')->name('login');
	Route::post('login', 'Auth\LoginController@userLogin');

	Route::get('register', 'Auth\LoginController@showUserRegisterForm')->name('register');
	Route::post('register', 'Auth\LoginController@userRegister');

	Route::get('product/{id}/{name}', 'WebsiteController@productDetail')->name('product_detail');
	

});