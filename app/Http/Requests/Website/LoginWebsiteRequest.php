<?php

namespace App\Http\Requests\Website;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Hash;
use App\User;

class LoginWebsiteRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'phone' => 'required',
            'password' => 'required'
        ];
    }

    public function withValidator($validator){
        if($validator->fails()) return;

        $validator->after(function($validator){
            $login_type = filter_var(request('phone'), FILTER_VALIDATE_EMAIL ) ? 'email' : 'phone';
            if ($login_type === 'email') {
                $user = User::where('email', request('phone'))->first();
            } elseif ($login_type === 'phone') {
                $user = User::where('phone', request('phone'))->first();
            }
            if (!$user) {
                $validator->errors()->add('phone', 'Email hoặc số điện thoại không tồn tại.');
                return;
            }
            // check user đã kích hoạt email sau khi đăng ký hay chưa
            // có thể bật lên nhưng phải check job gửi email trước
            /*if(!$user->isVerified()){
                $validator->errors()->add('phone', 'Tài khoản chưa được kích hoạt.');
                return;
            }*/
            if(!$user->isActive()){
                $validator->errors()->add('phone', 'Tài khoản hiện không được hoạt động.');
                return;
            }
            if(!Hash::check(request('password'), $user->password)){
                $validator->errors()->add('password', 'Mật khẩu không chính xác.');
                return;
            }
        });
    }
}
