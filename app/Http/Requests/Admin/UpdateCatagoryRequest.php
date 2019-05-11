<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCatagoryRequest extends FormRequest
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
            'name' => 'required|unique:catagories,name,'.request('id'),
            'description' => 'nullable|max:255',
            'catagory_type_id' => 'required|exists:catagories_types,id',
            'status' => 'required',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên danh mục',
            'description' => 'Mô tả',
            'catagory_type_id' => 'Nhóm danh mục',
            'status' => 'Trạng thái',
        ];
    }
}
