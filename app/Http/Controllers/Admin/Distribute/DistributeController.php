<?php

namespace App\Http\Controllers\Admin\Distribute;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreDistributeRequest;
use App\Http\Requests\Admin\UpdateDistributeRequest;
use App\Distribute;
use Session;

class DistributeController extends Controller
{
	public function index(Request $request)
	{
		$name = $request->query('name', NULL);
		$status = $request->query('status', NULL);
		$distributions = Distribute::query();
		if ($name != NULL) {
			$distributions = $distributions->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($status != NULL) {
			$distributions = $distributions->where('status', $status);
		}
		$distributions = $distributions->latest()->paginate()
		->appends([
			'name' => $name,
			'status' => $status
		]);
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

	public function edit($id)
	{
		$distribute = Distribute::findOrFail($id);
		return view('admin.distributions.edit', compact('distribute'));
	}

	public function update(UpdateDistributeRequest $request, $id)
	{
		$data = $request->all();
		$data['slug'] = $request->name;
		// dd($data);
		Distribute::findOrFail($id)->update($data);
		Session::flash('success', 'Cập nhật nhà phân phối thành công');
		return redirect()->route('admin.distributions.index');
	}

	public function destroy($id)
	{
		Distribute::findOrFail($id)->delete();
		Session::flash('success', 'Xoá nhà phân phối thành công');
		return redirect()->route('admin.distributions.index');
	}
}
