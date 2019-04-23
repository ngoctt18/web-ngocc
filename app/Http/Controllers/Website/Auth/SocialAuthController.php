<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Services\SocialAccountService;
use Illuminate\Support\Facades\Log;
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
		auth()->login($user);

		return redirect()->route('web.homepage');
	}
}
