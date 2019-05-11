<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCatagoryTypeRequest extends FormRequest
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
            'name' => 'required|unique:catagories_types,name,'.request('id'),
            'status' => 'required',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên nhóm danh mục',
            'status' => 'Trạng thái',
        ];
    }
}
