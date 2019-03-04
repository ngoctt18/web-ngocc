<?php

namespace App\Http\Controllers\Admin\CatagoryType;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CatagoriesType;
use App\Http\Requests\Admin\StoreCatagoryTypeRequest;
use App\Http\Requests\Admin\UpdateCatagoryTypeRequest;
use Session;

class CatagoryTypeController extends Controller
{
	public function index(Request $request)
	{
		$name = $request->query('name', NULL);
		$status = $request->query('status', NULL);
		$catagoryTypes = CatagoriesType::query();
		if ($name != NULL) {
			$catagoryTypes = $catagoryTypes->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($status != NULL) {
			$catagoryTypes = $catagoryTypes->where('status', $status);
		}
		$catagoryTypes = $catagoryTypes->latest()->paginate()
		->appends([
			'name' => $name,
			'status' => $status,
		]);
		return view('admin.catagories_types.index', compact('catagoryTypes'));
	}

	public function create()
	{
		return view('admin.catagories_types.create');
	}

	public function store(StoreCatagoryTypeRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		CatagoriesType::create($data);
		Session::flash('success', 'Tạo nhóm danh mục thành công');
		return redirect()->route('admin.catagory-types.index');
	}

	public function edit(CatagoriesType $catagoryType)
	{
		return view('admin.catagories_types.edit', compact('catagoryType'));
	}

	public function update(CatagoriesType $catagoryType, UpdateCatagoryTypeRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		$catagoryType->update($data);
		Session::flash('success', 'Cập nhật nhóm danh mục thành công');
		return redirect()->route('admin.catagory-types.index');
	}

	public function destroy(CatagoriesType $catagoryType)
	{
		$catagoryType->delete();
		Session::flash('success', 'Xoá nhóm danh mục thành công');
		return redirect()->route('admin.catagory-types.index');
	}
}
