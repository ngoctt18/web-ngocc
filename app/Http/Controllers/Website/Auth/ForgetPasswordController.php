<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Website\ForgetPasswordRequest;
use App\PasswordReset;

class ForgetPasswordController extends Controller
{
	public function forgetPassword(ForgetPasswordRequest $request)
	{
		$email = $request->email;
		// Kiểm tra email có trog bảng password_resets chưa
		$findUser = PasswordReset::where('email', $email)->first();

		if ($findUser) {
			$findUser->update('token', str_random(40));
		} else {
			PasswordReset:create([
				'email' => $email,
				'token' => str_random(40),
			]);
		}
		// Gửi email reset password
		
	}
}
