<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateDistributeRequest extends FormRequest
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
            'name' => 'required|unique:distributions,name,'.request('id'), 
            'email' => 'required|email|unique:distributions,email,'.request('id'), 
            'phone' => 'required|regex:/^(0)\d{9}\b/|unique:distributions,phone,'.request('id'),
            'address' => 'required|max:200', 
            'description' => 'required', 
            'status' => 'required', 
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên nhà phân phối', 
            'email' => 'Email', 
            'phone' => 'Điện thoại',
            'address' => 'Địa chỉ', 
            'description' => 'Mô tả', 
            'status' => 'Trạng thái', 
        ];
    }
}
