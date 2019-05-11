<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateNewsRequest extends FormRequest
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
            'title' => 'required|max:150',
            'news_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:3072',
            'new_tags' => 'required|exists:tags,id',
            'content' => 'required',
            'status' => 'required',
        ];
    }

    public function attributes()
    {
        return [
            'title' => 'Tiêu đề bài viết',
            'news_image' => 'Ảnh hiển thị',
            'new_tags' => 'Tags',
            'content' => 'Nội dung bài viết',
            'status' => 'Trạng thái',
        ];
    }
}
