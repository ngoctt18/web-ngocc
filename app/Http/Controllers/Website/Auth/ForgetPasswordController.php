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
        //Tạo ra token dùng để đổi mật khẩu.
		if ($findUser) {
			$findUser->update('token', str_random(40));
		} else {
			PasswordReset:create([
				'email' => $email,
				'token' => str_random(40),
			]);
		}
		try {
			$validator->errors()->add('email', 'Đã gửi link đổi mật khẩu về email.');
            //Trả về json cho client.
			return response()->json([
				'message' => 'Đã gửi link đổi mật khẩu về email',
				'error' => null
			], 200);
		}catch(Exception $ex){
            //Trả về json cho client.
			return response()->json([
				'message' => null,
				'error' => $ex->getMessage()
			], 401);
		}
		
	}
}
