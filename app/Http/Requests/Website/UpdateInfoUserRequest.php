<?php

namespace App\Http\Requests\Website;

use Illuminate\Foundation\Http\FormRequest;

class UpdateInfoUserRequest extends FormRequest
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
            'name' => 'required|min:8',
            'username' => 'required|min:6|unique:users,username,'.request('id'),
            'address' => 'required|min:20|max:200',
            'password' => 'nullable|min:6|max:12',
            'password_confirm' => 'nullable|min:6|max:12|same:password',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Họ và tên',
            'username' => 'UserName',
            'address' => 'Địa chỉ',
            'password' => 'Password',
            'password_confirm' => 'Password Confirm',
        ];
    }
}
