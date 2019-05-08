<?php

namespace App\Http\Controllers\Admin\Product;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
// use App\Services\ImageUploadService;
use App\Http\Requests\Admin\StoreProductRequest;
use App\Http\Requests\Admin\UpdateProductRequest;
use App\Product;
use App\Catagory;
use App\Distribute;
use Session;

class ProductController extends Controller
{

	// public function __construct()
	// {
	// 	$this->imageUploadService = new ImageUploadService();
	// }


	public function index(Request $request)
	{
		$name = $request->query('name', NULL);
		$catagory_id = $request->query('catagory_id', NULL);
		$distribution_id = $request->query('distribution_id', NULL);
		$status = $request->query('status', NULL);
		$products = Product::query();
		if ($name != NULL) {
			$products = $products->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($catagory_id != NULL) {
			$products = $products->where('catagory_id', $catagory_id);
		}
		if ($distribution_id != NULL) {
			$products = $products->where('distribution_id', $distribution_id);
		}
		if ($status != NULL) {
			$products = $products->where('status', $status);
		}
		$catagories = Catagory::where('status', '1')->get();
		$distributions = Distribute::where('status', '1')->get();
		$products = $products->latest()->paginate()
		->appends([
			'name' => $name,
			'catagory_id' => $catagory_id,
			'distribution_id' => $distribution_id,
			'status' => $status,
		]);
		return view('admin.products.index', compact('products','distributions','catagories'));
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

		// if($request->has('product_avatar')) {
		// 	$dir = 'uploads/products';
		// 	$image = $this->imageUploadService->handleUploadedImage($request->file('product_avatar'), $dir);
		// 	$product->update(['image' => $image]);
		// }

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
		$pathDirectory = storage_path(\App\Product::TMP_DIRECTORY);	// đường dẫn thư mục tạm
		$imageFile = $request->file('image');	// Get ảnh đó
		$fileName = time().'-'.$imageFile->getClientOriginalName();	// Tạo tên ảnh - unique
		$fileUpload = $imageFile->move($pathDirectory, $fileName); // Di chuyển ảnh đến thư mục tạm vs tên ảnh - unique


		// Tối ưu ảnh tinyPNG
		try {
			\Tinify\setKey(env('TINIFY_APIKEY', 'bSLFdSwc89G5bGZTG9Hp6dFR81HCLmCB'));
			$source = \Tinify\fromFile($pathDirectory.'/'.$fileName);
			$source->toFile($pathDirectory.'/'.$fileName);
		} catch(\Tinify\AccountException $e) {
		    // Verify your API key and account limit.
			return $e->getMessage();
		} catch(\Tinify\ClientException $e) {
		    // Check your source image and request options.
			return $e->getMessage();
		} catch(\Tinify\ServerException $e) {
		    // Temporary issue with the Tinify API.
			return $e->getMessage();
		} catch(\Tinify\ConnectionException $e) {
		    // A network connection error occurred.
			return $e->getMessage();
		} catch(Exception $e) {
		    // Something else went wrong, unrelated to the Tinify API.
			return $e->getMessage();
		}


		if(!$fileUpload) abort(500);
		return response()->json([
			'filename' => $fileName,
			'url' => asset('storage/tmp-share-images/'.$fileName),
		]);
	}

	// Thùng rác
	public function trash(Request $request)
	{
		$name = $request->query('name', NULL);
		$catagory_id = $request->query('catagory_id', NULL);
		$distribution_id = $request->query('distribution_id', NULL);
		$status = $request->query('status', NULL);
		$products = Product::query();
		if ($name != NULL) {
			$products = $products->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($catagory_id != NULL) {
			$products = $products->where('catagory_id', $catagory_id);
		}
		if ($distribution_id != NULL) {
			$products = $products->where('distribution_id', $distribution_id);
		}
		if ($status != NULL) {
			$products = $products->where('status', $status);
		}
		$catagories = Catagory::where('status', '1')->get();
		$distributions = Distribute::where('status', '1')->get();
		$products = $products->onlyTrashed()->latest()->paginate()->appends([
			'name' => $name,
			'catagory_id' => $catagory_id,
			'distribution_id' => $distribution_id,
			'status' => $status,
		]);
		return view('admin.products.trash', compact('products','distributions','catagories'));
	}

	public function restore($id)
	{
		$product = Product::onlyTrashed()->findOrFail($id);
		$product->restore();
		Session::flash('success', 'Khôi phục sản phẩm thành công.');
		return redirect()->route('admin.products.trash');
	}

	public function forcedelete($id)
	{
		$product = Product::onlyTrashed()->findOrFail($id);
		$product->forcedelete();
		Session::flash('success', 'Sản phẩm đã được xóa vĩnh viễn.');
		return redirect()->route('admin.products.trash');
	}
}
