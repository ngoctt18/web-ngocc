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
            'username' => 'required|alpha_num|unique:users,username,'.request('id'),
            'phone' => 'required|regex:/(0)[0-9]{9}/|unique:users,phone,'.request('id'),
            'email' => 'required|email|unique:users,email,'.request('id'),
            'avatar' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:3072',
            'address' => 'required|max:200',
            'status' => 'required',
            'password' => 'nullable|min:6',
            'password_confirm' => 'nullable|min:6|same:password',
        ];
    }
}
