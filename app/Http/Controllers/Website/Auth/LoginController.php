<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use  App\Http\Requests\Website\LoginWebsiteRequest;

use App\Product;
use App\Catagory;
use App\CatagoriesType;
use App\Order;
use App\OrderDetail;
use App\News;
use Carbon;
use Session;
use Cart;
use Auth;

class LoginController extends Controller
{
	use AuthenticatesUsers;

	public function __construct()
	{
        /*
        * Các Middleware sẽ cho khách dùng đc showAdminLoginForm và adminLogin
        * Nhưng không dùng đc các function ->except('logout');
        * 
        */
        // Login rồi thì sẽ ko vào đc các function ở đây nữa ngoại trừ: logout
        $this->middleware('guest')->except('logout');
    }

    public function showUserLoginForm()
    {
    	$total = Cart::subtotal(0,'','.');
    	$catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
    	return view('website.auth.login', compact('total','catagoriesTypes','news_popular'));
    }

    public function userLogin(LoginWebsiteRequest $request)
    {
    	$loginInfo = [
    		'phone' => $request->phone, 
    		'password' => $request->password
    	];
		// return $loginInfo;
    	if (Auth::attempt($loginInfo, $request->input('remember', false))) {
    		Session::flash('success', 'Đăng nhập thành công.');
    		return redirect()->route('web.checkout');
    	}
    }

    public function logout(Request $request){
    	Auth::logout();
    	return redirect()->guest('/homepage/');
    }




    public function showUserRegisterForm()
    {
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
    	return view('website.auth.register');
    }

    public function userRegister()
    {
    	
    }
}
