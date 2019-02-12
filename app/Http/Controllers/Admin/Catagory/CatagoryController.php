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
	public function index()
	{
		$catagories = Catagory::latest()->paginate();
		return view('admin.catagories.index', compact('catagories'));
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
