<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Website\LoginWebsiteRequest;
use App\Http\Requests\Website\StoreRegisterRequest;

use Illuminate\Support\Facades\Mail;
use App\Mail\SendEmailRegister;

use App\Product;
use App\Catagory;
use App\CatagoriesType;
use App\Order;
use App\OrderDetail;
use App\News;
use App\User;
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
    		return redirect()->back();
    	}
    }

    public function logout(Request $request){
    	Auth::logout();
    	return redirect()->guest('/homepage/');
    }




    public function showUserRegisterForm()
    {
        $total = Cart::subtotal(0,'','.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
        return view('website.auth.register', compact('total','news_popular','catagoriesTypes'));
    }

    // store ly dang ky tai khoan
    public function userRegister(StoreRegisterRequest $request)
    {
    	// return $request->all();
        $data = $request->all();
        $data['verification_code'] = str_random(64);

        User::create($data);
        Session::flash('success', 'Đăng ký thành công. Đăng nhập để tiếp tục.');
        return redirect()->route('web.registered');
    }

    // Tra ve view thong bao da dang ky thanh cong
    public function userRegistered()
    {
        $total = Cart::subtotal(0,'','.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
        Session::flash('userRegistered', 'ĐĂNG KÝ THÀNH CÔNG! VUI LÒNG KIỂM TRA EMAIL ĐỂ XÁC NHẬN TÀI KHOẢN.');
        return view('website.auth.registered', compact('total','news_popular','catagoriesTypes'));
    }

    // This method gets called automatically after a user is registered
    public function registered(Request $request, $user)
    {
        Mail::to($user->email)->send(new SendEmailRegister($user));
    }

    public function confirmRegistered($token)
    {
        $total = Cart::subtotal(0,'','.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

        $user = User::where('verification_code', $token)->firstOrFail();
        $user->verified_at = now();
        $user->verified = true;
        $user->verification_code = null;
        $user->save();

        Session::flash('confirmRegistered', 'XÁC NHẬN EMAIL THÀNH CÔNG. ĐĂNG NHẬP ĐỂ TIẾP TỤC.');
        return view('website.auth.registered', compact('total','news_popular','catagoriesTypes'));
    }
}
