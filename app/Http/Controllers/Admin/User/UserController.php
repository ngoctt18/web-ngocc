<?php

namespace App\Http\Controllers\Admin\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Http\Requests\Admin\StoreUserRequest;
use App\Http\Requests\Admin\UpdateUserRequest;
use Session;

class UserController extends Controller
{
	public function index()
	{
		$users = User::latest()->paginate();
		return view('admin.users.index', compact('users'));
	}

	public function create()
	{
		return view('admin.users.create');
	}

	public function store(StoreUserRequest $request)
	{
		// dd($request->all());
        // Thêm ảnh đại diện
		$user = User::create($request->all());
		if($request->hasFile('avatar')){
			$user->addMediaFromRequest('avatar')->toMediaCollection('user_avatar');
		}
		Session::flash('success', 'Tạo khách hàng thành công');
		return redirect()->route('admin.users.index');
	}

	public function edit(User $user)
	{
		return view('admin.users.edit', compact('user'));
	}

	public function update(User $user, UpdateUserRequest $request)
	{
		$user->update($request->all());
        // Cập nhật đại diện (nếu có)
        if($request->hasFile('avatar')){
        	$user->clearMediaCollection('user_avatar');
        	$user->addMediaFromRequest('avatar')->toMediaCollection('user_avatar');
        }
        // Update password nếu nó ko rỗng. còn ko thì ko động tới
		if ($request->password_confirm != null) {
			$user->update(['password' => $request->password_confirm]);
		}
		Session::flash('success', 'Cập nhật khách hàng thành công');
		return redirect()->route('admin.users.index');
	}

	public function destroy(User $user)
	{
		$user->delete();
		Session::flash('success', 'Xoá khách hàng thành công');
		return redirect()->route('admin.users.index');
	}
}
