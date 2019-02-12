<?php

namespace App\Http\Controllers\Admin\Distribute;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Distribute;
use App\Http\Requests\Admin\StoreDistributeRequest;
use App\Http\Requests\Admin\UpdateDistributeRequest;
use Session;

class DistributeController extends Controller
{
	public function index()
	{
		$distributions = Distribute::latest()->paginate();
		return view('admin.distributions.index', compact('distributions'));
	}

	public function create()
	{
		return view('admin.distributions.create');
	}

	public function store(StoreDistributeRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		Distribute::create($data);
		Session::flash('success', 'Tạo nhà phân phối thành công');
		return redirect()->route('admin.distributions.index');
	}

	public function edit(Distribute $distribute)
	{
		return view('admin.distributions.edit', compact('distribute'));
	}

	public function update(Distribute $distribute, UpdateDistributeRequest $request)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		$distribute->update($data);
		Session::flash('success', 'Cập nhật nhà phân phối thành công');
		return redirect()->route('admin.distributions.index');
	}

	public function destroy(Distribute $distribute)
	{
		$distribute->delete();
		Session::flash('success', 'Xoá nhà phân phối thành công');
		return redirect()->route('admin.distributions.index');
	}
}
