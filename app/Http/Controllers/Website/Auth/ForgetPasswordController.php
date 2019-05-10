<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Website\ForgetPasswordRequest;
use App\Http\Requests\Website\UpdateForgetPasswordRequest;
use App\PasswordReset;
use App\User;
use App\Jobs\SendEmailForgetPassJob;
use Validator;

class ForgetPasswordController extends Controller
{
	public function forgetPassword(ForgetPasswordRequest $request)
	{
		$email = $request->email;
		// Kiểm tra email có trog bảng password_resets chưa
		$findUser = PasswordReset::where('email', $email)->first();
        //Tạo ra token dùng để đổi mật khẩu.
		if ($findUser) {
			$timeCreate = strtotime($findUser->updated_at.' + 5 minutes');
			$timeNow = time();
			// Nếu thời gian hiện tại nhỏ hơn tgian +5p thì tạm ko cho gửi nữa
			if ($timeCreate > $timeNow) {
				return redirect()->route('web.login', ['email_sent' => 'true', 'email' => $email, 'wait_more' => 'true'])
				->withInput()
				->withErrors(['Vui lòng đợi 5 phút mới được gửi tiếp.']);
			} else {
				$findUser->update(['token' => str_random(40)]);
			}
		} else {
			$findUser = PasswordReset::create([
				'email' => $email,
				'token' => str_random(40),
			]);
		}

		try {
			// Send email
			$user = User::whereEmail($findUser->email)->first();
        	// This method gets called automatically after a user is forget pass
			dispatch(new SendEmailForgetPassJob($findUser, $user));
        	// queue send email
			return redirect()->route('web.login', ['email_sent' => 'true', 'email' => $email])
			->withInput()
			->withErrors(['Đã gửi link đổi mật khẩu về email.']);
		}catch(Exception $ex){
			return redirect()->route('web.login', ['email_sent' => 'true', 'email' => $email])
			->withInput()
			->withErrors([$ex->getMessage()]);
		}
		
	}

	public function getChangePassword($token){
		$clause = PasswordReset::where('token', $token)->first();
		if($clause){
			$timeCreate = strtotime($clause->updated_at.' + 1 days');
			$timeNow = time();
			if($timeCreate > $timeNow){
				return view('website.forget_passwords.index');
			}else{
				$clause->delete();
				return redirect()->route('web.get.change-password.error');
			}
		}else{
			return redirect()->route('web.get.change-password.error');
		}
	}

	public function postChangePassword(UpdateForgetPasswordRequest $request,$token){
		$clause = PasswordReset::where('token', $token)->first();
		if($clause){
            // Token tồn tại trong vòng 1 ngày.
			$timeCreate = strtotime($clause->updated_at.' + 1 days');
			$timeNow = time();
			if($timeCreate > $timeNow){
				$user = User::where('email',$clause->email)->first();
				$user->password = $request->password;
				$user->save();
				$clause->delete();
				return redirect()->route('web.get.change-password.success');
			}else{
				$clause->delete();
				return redirect()->route('web.get.change-password.error');
			}
		}else{
			return redirect()->route('web.get.change-password.error');
		}
	}

	public function getSuccess(){
		return view('website.forget_passwords.success');
	}

	public function getError(){
		return view('website.forget_passwords.error');
	}
}
