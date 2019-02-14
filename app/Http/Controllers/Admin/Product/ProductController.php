<?php

namespace App\Http\Controllers\Admin\Product;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreProductRequest;
use App\Http\Requests\Admin\UpdateProductRequest;
use App\Product;
use App\Catagory;
use App\Distribute;
use Session;

class ProductController extends Controller
{
	public function index()
	{
		$products = Product::latest()->paginate();
		return view('admin.products.index', compact('products'));
	}

	public function create()
	{
		$catagories = Catagory::where('status', '1')->get();
		$distributions = Distribute::where('status', '1')->get();
		return view('admin.products.create', compact('catagories', 'distributions'));
	}

	public function store(StoreProductRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		$product = Product::create($data);
		// Thêm Ảnh đại diện của sản phẩm
		if($request->product_avatar != NULL){
			$pathToFile = storage_path(\App\Product::TMP_DIRECTORY.'/'.$request->product_avatar);
			if(file_exists($pathToFile)){
				$product->addMedia($pathToFile)->toMediaCollection('product_avatar');
			}
		}
        // Lấy các input name tên của ảnh chi tiết để thêm vào media
		$images = $request->product_details;
		foreach($images as $image){
			if ($image != NULL) {
				$pathToFile = storage_path(\App\Product::TMP_DIRECTORY.'/'.$image);
				if(file_exists($pathToFile)){
					$product->addMedia($pathToFile)->toMediaCollection('product_details');
				}
			}
		}

		Session::flash('success', 'Tạo sản phẩm thành công');
		return redirect()->route('admin.products.index');
	}

	public function edit(Product $product)
	{
		$catagories = Catagory::where('status', '1')->get();
		$distributions = Distribute::where('status', '1')->get();
		return view('admin.products.edit', compact('product', 'catagories', 'distributions'));
	}

	public function update(Product $product, UpdateProductRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		$product->update($data);

		// Thay đổi Ảnh đại diện của sản phẩm (nếu có)
		if($request->product_avatar != NULL){
			$pathToFile = storage_path(\App\Product::TMP_DIRECTORY.'/'.$request->product_avatar);
			if(file_exists($pathToFile)){
				$product->clearMediaCollection('product_avatar');
				$product->addMedia($pathToFile)->toMediaCollection('product_avatar');
			}
		}
        // Cập nhật ảnh details
        // Xóa các ảnh cũ đã chọn thay đổi
		$indexs = $request->index;
		$mediaOld = \Spatie\MediaLibrary\Models\Media::where([
			'model_id' => $product->id, 
			'collection_name' => 'product_details',
		])->get();
		foreach($indexs as $index){
			if ($index != NULL) {
				if (isset($mediaOld[$index])) {
					$mediaOld[$index]->delete();
				}
			}
		}
        // Lấy các input name tên của ảnh để thêm vào media
		$images = $request->product_details;
		foreach($images as $image){
			if ($image != NULL) {
				$pathToFile = storage_path(\App\Product::TMP_DIRECTORY.'/'.$image);
				if(file_exists($pathToFile)){
					$product->addMedia($pathToFile)->toMediaCollection('product_details');
				}
			}
		}
		Session::flash('success', 'Cập nhật sản phẩm thành công');
		return redirect()->route('admin.products.index');
	}

	public function destroy(Product $product)
	{
		$product->delete();
		Session::flash('success', 'Xoá sản phẩm thành công');
		return redirect()->route('admin.products.index');
	}


	// Upload một file ảnh lên thư mục tạm trên server.
	public function uploadImage(Request $request){
		$request->validate([
			'image' => 'required|image'
		]);
		$pathDirectory = storage_path(\App\Product::TMP_DIRECTORY);
		$imageFile = $request->file('image');
		$fileName = time().'-'.$imageFile->getClientOriginalName();
		$fileUpload = $imageFile->move($pathDirectory, $fileName);
		if(!$fileUpload) abort(500);
		return response()->json([
			'filename' => $fileName,
			'url' => asset('storage/tmp-share-images/'.$fileName)
		]);
	}
}
