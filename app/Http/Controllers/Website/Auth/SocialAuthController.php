<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Services\SocialAccountService;
use Socialite;

class SocialAuthController extends Controller
{
	public function redirect($social)
	{
		return Socialite::driver($social)->redirect();
	}

	public function callback($social)
	{
		$user = SocialAccountService::createOrGetUser(Socialite::driver($social)->user(), $social);
		return $user;
		auth()->login($user);
		$data = 'ngoctt';
		return redirect()->to('https://milkstore.com')->with( ['data' => $data] );
		return auth()->user();
		return redirect()->route('web.homepage')->with( ['data' => $data] );
	}
}
