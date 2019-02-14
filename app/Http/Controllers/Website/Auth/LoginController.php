<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
	public function showUserLoginForm()
	{
		return view('website.auth.login');
	}

	public function userLogin()
	{

	}

	public function showUserRegisterForm()
	{
		return view('website.auth.register');
	}

	public function userRegister()
	{
		
	}
}
