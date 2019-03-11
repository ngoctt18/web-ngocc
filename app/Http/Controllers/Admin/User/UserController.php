<?php

namespace App\Http\Controllers\Admin\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Http\Requests\Admin\StoreUserRequest;
use App\Http\Requests\Admin\UpdateUserRequest;
use Session;
use Carbon;

class UserController extends Controller
{
	public function index(Request $request)
	{
		$name = $request->query('name', NULL);
		$phone = $request->query('phone', NULL);
		$email = $request->query('email', NULL);
		$status = $request->query('status', NULL);
		$users = User::query();
		if ($name != NULL) {
			$users = $users->where('name', 'LIKE', '%'.$name.'%');
		}
		if ($phone != NULL) {
			$users = $users->where('phone', 'LIKE', '%'.$phone.'%');
		}
		if ($email != NULL) {
			$users = $users->where('email', 'LIKE', '%'.$email.'%');
		}
		if ($status != NULL) {
			$users = $users->where('status', $status);
		}
		$users = $users->latest()->paginate()
		->appends([
			'name' => $name,
			'phone' => $phone,
			'email' => $email,
			'status' => $status,
		]);
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
		Session::flash('success', 'Tạo khách hàng thành công.');
		return redirect()->route('admin.users.index');
	}

	public function edit(User $user)
	{
		return view('admin.users.edit', compact('user'));
	}

	public function update(User $user, UpdateUserRequest $request)
	{
		$user->update($request->except(['password', 'password_confirm', 'verified']));
		// dd($request->except(['password', 'password_confirm', 'verified']));
        // Cập nhật đại diện (nếu có)
		if($request->hasFile('avatar')){
			$user->clearMediaCollection('user_avatar');
			$user->addMediaFromRequest('avatar')->toMediaCollection('user_avatar');
		}
        // Update password nếu nó ko rỗng. còn ko thì ko động tới
		if ($request->password_confirm != null) {
			$user->update(['password' => $request->password_confirm]);
		}
		// Nếu chọn kích hoạt tài khoản
		if ($request->verified == '1') {
			$user->update([
				'verified' => '1',
				'verified_at' => now(),
				'verification_code' => null,
			]);
		}
		Session::flash('success', 'Cập nhật khách hàng thành công.');
		return redirect()->route('admin.users.index');
	}

	public function destroy(User $user)
	{
		$user->delete();
		Session::flash('success', 'Xoá khách hàng thành công.');
		return redirect()->route('admin.users.index');
	}
}
