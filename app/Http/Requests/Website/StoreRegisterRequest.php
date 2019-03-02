<?php

namespace App\Http\Requests\Website;

use Illuminate\Foundation\Http\FormRequest;

class StoreRegisterRequest extends FormRequest
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
            'username' => 'required|min:6|unique:users,username',
            'phone' => 'required|min:10|max:15|unique:users,phone',
            'email' => 'required|email|unique:users,email',
            'address' => 'required|max:200',
            'password' => 'required|min:6|max:12',
            'password_confirm' => 'required|min:6|max:12|same:password',
        ];
    }
}
