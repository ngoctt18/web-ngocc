<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Website\UpdateInfoUserRequest;

use App\CatagoriesType;
use App\News;
use App\User;
use App\Order;
use Auth;
use Cart;
use Session;

class UserController extends Controller
{
	public function index($username)
	{
		if ($username === Auth::user()->username) {
			$user = User::whereUsername($username)->firstOrFail();
			// return $user->orders;
			$total = Cart::subtotal(0,'','.');
			$catagoriesTypes = CatagoriesType::where('status', '1')->get();
			$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
			return view('website.users.profile', compact('total','news_popular','catagoriesTypes','user'));
		} else {
			return redirect()->route('web.404');
		}
	}

	public function postUpdateInfo(UpdateInfoUserRequest $request, $username)
	{
		$user = User::whereUsername($username)->firstOrFail();
		$user->update($request->all());
        // Update password nếu nó ko rỗng. còn ko thì ko động tới
		if ($request->password_confirm != null) {
			$user->update(['password' => $request->password_confirm]);
		}
        // Cập nhật đại diện (nếu có)
		if($request->hasFile('avatar')) {
			$user->clearMediaCollection('user_avatar');
			$user->addMediaFromRequest('avatar')->toMediaCollection('user_avatar');
		}

		Session::flash('success', 'Cập nhật thông tin cá nhân thành công.');
		return redirect()->route('web.users', [$user->username]);
	}

	public function orders($username)
	{
		if ($username === Auth::user()->username) {
			$user = User::whereUsername($username)->firstOrFail();
			// return $user->orders;
			$total = Cart::subtotal(0,'','.');
			$catagoriesTypes = CatagoriesType::where('status', '1')->get();
			$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
			return view('website.users.orders', compact('total','news_popular','catagoriesTypes','user'));
		} else {
			return redirect()->route('web.404');
		}
	}

	public function ordersDetail($username, $order_id)
	{
		if ($username === Auth::user()->username) {
			$user = User::whereUsername($username)->firstOrFail();
			$order = Order::findOrFail($order_id);
			// return $order;
			$total = Cart::subtotal(0,'','.');
			$catagoriesTypes = CatagoriesType::where('status', '1')->get();
			$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
			return view('website.users.orders_detail', compact('total','news_popular','catagoriesTypes','user','order'));
		} else {
			return redirect()->route('web.404');
		}
	}

	public function address($username)
	{
		if ($username === Auth::user()->username) {
			$user = User::whereUsername($username)->firstOrFail();
			// return $user->orders;
			$total = Cart::subtotal(0,'','.');
			$catagoriesTypes = CatagoriesType::where('status', '1')->get();
			$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
			return view('website.users.address', compact('total','news_popular','catagoriesTypes','user'));
		} else {
			return redirect()->route('web.404');
		}
	}


}
