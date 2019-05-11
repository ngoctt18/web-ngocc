<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateUserRequest extends FormRequest
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
            'name' => 'required|max:30',
            'username' => 'required|unique:users,username,'.request('id').'|alpha_num',
            'phone' => 'required|unique:users,phone,'.request('id').'|regex:/^(0)\d{9}\b/',
            'email' => 'required|unique:users,email,'.request('id').'|email',
            'avatar' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:3072',
            'address' => 'required|max:200',
            'status' => 'required',
            'password' => 'nullable|min:6',
            'password_confirm' => 'nullable|min:6|same:password',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên khách hàng',
            'username' => 'Username',
            'phone' => 'Điện thoại',
            'email' => 'Email',
            'avatar' => 'Ảnh đại diện',
            'address' => 'Địa chỉ',
            'status' => 'Trạng thái',
            'password' => 'Mật khẩu',
            'password_confirm' => 'Xác nhận mật khẩu',
        ];
    }
}
