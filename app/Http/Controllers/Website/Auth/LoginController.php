<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Website\LoginWebsiteRequest;
use App\Http\Requests\Website\StoreRegisterRequest;
use App\Jobs\SendEmailRegisterJob;

use App\Product;
use App\Catagory;
use App\CatagoriesType;
use App\Order;
use App\OrderDetail;
use App\News;
use App\User;
use App\Subscribe;
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
        */
        // Login rồi thì sẽ ko vào đc các function ở đây nữa ngoại trừ: logout
        $this->middleware('guest:web')->except('logout');
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
            // Khôi phục giỏ hàng
            Cart::restore(Auth::user()->email);

            Session::flash('success', 'Đăng nhập thành công.');
            return redirect()->back();
        }
        return back()->withInput($request->only('phone', 'remember'));
    }

    public function logout(Request $request){
    	Auth::logout();
    	return redirect()->guest('/homepage/login');
    }




    public function showUserRegisterForm()
    {
        $total = Cart::subtotal(0,'','.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
        return view('website.auth.register', compact('total','news_popular','catagoriesTypes'));
    }

    // store xu ly dang ky tai khoan
    public function userRegister(StoreRegisterRequest $request)
    {
        $data = $request->all();
        $data['verification_code'] = str_random(64);
        $user = User::create($data);
        // This method gets called automatically after a user is registered
        dispatch(new SendEmailRegisterJob($user));
        // queue send email

        $total = Cart::subtotal(0,'','.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

        Session::flash('userRegistered', 'ĐĂNG KÝ THÀNH CÔNG! VUI LÒNG KIỂM TRA EMAIL ĐỂ XÁC NHẬN TÀI KHOẢN.');
        return view('website.auth.registered', compact('total','news_popular','catagoriesTypes'));
    }


    public function confirmRegistered($token)
    {
        $total = Cart::subtotal(0,'','.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

        $user = User::where('verification_code', $token)->firstOrFail();

        $user->verified_at = Carbon\Carbon::now()->toDateTimeString();
        $user->verified = true;
        $user->verification_code = null;
        $user->save();

        Session::flash('confirmRegistered', 'XÁC NHẬN EMAIL THÀNH CÔNG. ');
        return view('website.auth.registered', compact('total','news_popular','catagoriesTypes'));
    }

    public function signUpEmail(Request $request)
    {
        $total = Cart::subtotal(0,'','.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

        // sign up email
        $sessionSignUp = Session::get('signUpEmail');
        // nếu chưa có session
        // if (!$sessionSignUp) { 
            Session::put('signUpEmail', 1); // Tạo, Set giá trị cho session

            $this->validate($request,
                [
                    'email' => 'required|email|unique:subscribes,email',
                ],
                [
                    'required' => ':attribute Không được để trống',
                    'email' => ':attribute Không đúng định dạng',
                    'max' => ':attribute Không được lớn hơn :max',
                    'unique' => ':attribute này đã được đăng ký rồi',
                ],
                [
                    'email' => 'Email',
                ]

            );
            Subscribe::create($request->all());
            Session::flash('signUpEmailOK', 'ĐĂNG KÝ NHẬN TIN TỨC QUA EMAIL THÀNH CÔNG. ');
        // } else {
            // Session::flash('signUpEmailDuplicate', 'BẠN ĐÃ ĐĂNG KÝ NHẬN TIN TỨC QUA EMAIL RỒI. ');
        // }
            return view('website.emails.sign_up_email', compact('total','news_popular','catagoriesTypes'));
        }
    }
