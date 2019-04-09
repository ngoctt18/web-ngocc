<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\User;
use App\Services\SocialAccountService;
use Socialite;
use App\Http\Resources\UserResource;
use Response;

class SocialAuthController extends Controller
{
	// redirectToProvider
	public function redirect($social)
	{
		return Socialite::driver($social)->redirect();
	}

	/**
     * Obtain the user information from social.
     * handleProviderCallback
     * @return \Illuminate\Http\Response
     */
	public function callback($social)
	{
		$socialUser = Socialite::driver($social)->user();


		// if ($socialUser->email == null) {
		// 	return Response::json([
		// 		'message' => 'Vui lòng cho phép xem email.',
		// 		'error' => 'Email not null',
		// 		'redirect' => route('web.login.social', [$social]),
		// 	], 404);
		// }

		// Service SocialAccountService để xử lý tạo mới user hoặc get user từ database
		$user = SocialAccountService::createOrGetUser($socialUser, $social);
		// dump('socialUser');
		// dump($socialUser);

		// dump('user');
		// dump($user);
		
		// Auth::attempt(['phone' => '0987193299', 'password' => '0987193299']);
		Auth::login($user, true);

		// dump('thisUser');
		// dump($thisUser);
		return redirect()->route('web.homepage');
	}
}
