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
            'phone' => 'bail|required|exists:users,phone',
            'password' => 'required|min:6'
        ];
    }
    
    public function withValidator($validator){
        if($validator->fails()) return;

        $validator->after(function($validator){
            $user = User::where('phone', request('phone'))->first();
            // dd(request('phone'));
            if(!$user->isVerified()){
                $validator->errors()->add('phone', 'Tài khoản chưa được kích hoạt.');
                return;
            }
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
