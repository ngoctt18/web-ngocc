<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class StoreProductRequest extends FormRequest
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
            'name' => 'required|max:100', 
            'price' => 'required|numeric', 
            'discount' => 'required|numeric|max:50', 
            'product_avatar' => 'required', // Chỉ là input:text tên của ảnh
            // 'product_details[]' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:3072',
            'brand' => 'required|max:50', 
            'description' => 'required', 
            'intro' => 'required', 
            'catagory_id' => 'required|exists:catagories,id',
            'distribution_id' => 'required|exists:distributions,id',
            'status' => 'required', 
            'qty_remain' => 'required|numeric',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên sản phẩm', 
            'price' => 'Giá', 
            'discount' => 'Giảm giá', 
            'product_avatar' => 'Ảnh đại diện', 
            'brand' => 'Thương hiệu', 
            'description' => 'Mô tả ngắn', 
            'intro' => 'Giới thiệu sản phẩm', 
            'catagory_id' => 'Danh mục sản phẩm',
            'distribution_id' => 'Nhà phân phối',
            'status' => 'Trạng thái', 
            'qty_remain' => 'Số lượng hàng',
        ];
    }
}
