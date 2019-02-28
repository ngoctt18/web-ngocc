<?php

namespace App\Http\Controllers\Admin\Catagory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Catagory;
use App\CatagoriesType;
use App\Http\Requests\Admin\StoreCatagoryRequest;
use App\Http\Requests\Admin\UpdateCatagoryRequest;
use Session;

class CatagoryController extends Controller
{
	public function index(Request $request)
	{
		$name = $request->query('name', NULL);
		$catagory_type_id = $request->query('catagory_type_id', NULL);
		$status = $request->query('status', NULL);
		$catagories = Catagory::query();
		if ($name != NULL) {
			$catagories = $catagories->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($catagory_type_id != NULL) {
			$catagories = $catagories->where('catagory_type_id', $catagory_type_id);
		}
		if ($status != NULL) {
			$catagories = $catagories->where('status', $status);
		}
		$catagories = $catagories->latest()->paginate()
		->appends([
			'name' => $name,
			'catagory_type_id' => $catagory_type_id,
			'status' => $status
		]);
		$catagoryTypes = CatagoriesType::all();
		return view('admin.catagories.index', compact('catagories','catagoryTypes'));
	}

	public function create()
	{
		$catagoryTypes = CatagoriesType::where('status', '1')->get();
		return view('admin.catagories.create', compact('catagoryTypes'));
	}

	public function store(StoreCatagoryRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		Catagory::create($data);
		Session::flash('success', 'Tạo danh mục thành công');
		return redirect()->route('admin.catagories.index');
	}

	public function edit(Catagory $catagory)
	{
		$catagoryTypes = CatagoriesType::where('status', '1')->get();
		return view('admin.catagories.edit', compact('catagory', 'catagoryTypes'));
	}

	public function update(Catagory $catagory, UpdateCatagoryRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		$catagory->update($data);
		Session::flash('success', 'Cập nhật danh mục thành công');
		return redirect()->route('admin.catagories.index');
	}

	public function destroy(Catagory $catagory)
	{
		$catagory->delete();
		Session::flash('success', 'Xoá danh mục thành công');
		return redirect()->route('admin.catagories.index');
	}
}
