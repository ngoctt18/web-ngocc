<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\CatagoriesType;
use App\News;
use App\User;
use Auth;
use Cart;

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
			return view('website.users.index', compact('total','news_popular','catagoriesTypes','user'));
		} else {
			return redirect()->route('web.404');
		}
	}
}
