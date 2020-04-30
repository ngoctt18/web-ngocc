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
        $total = Cart::subtotal(0, '', '.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
        return view('website.auth.login', compact('total', 'catagoriesTypes', 'news_popular'));
    }

    public function userLogin(LoginWebsiteRequest $request)
    {
        // Kiểm tra xem thông tin đăng nhập là email hay là chuỗi
        $login_type = filter_var($request->phone, FILTER_VALIDATE_EMAIL) ? 'email' : 'phone';
        // Thêm vào request data
        $request->merge([
            $login_type => $request->phone,
        ]);

        // dd( $request->all());
        if (Auth::attempt($request->only($login_type, 'password'), $request->input('remember', false))) {
            // Khôi phục giỏ hàng của user
            // Cart::instance('default')->restore(Auth::user()->email);
            // Cart::instance('wishlist')->restore('wishlist_'.Auth::user()->email);

            // Lưu luôn các instance vào db
            // Cart::instance('default')->store(Auth::user()->email);
            // Cart::instance('wishlist')->store('wishlist_'.Auth::user()->email);

            Session::flash('success', 'Đăng nhập thành công.');
            return redirect()->back();
        }

        return redirect()->back()
            ->withInput($request->only('phone', 'remember'))
            ->withErrors([
                'phone' => 'These credentials do not match our records.',
            ]);
    }


    public function logout(Request $request)
    {
        Auth::logout();
        return redirect()->guest('/login');
    }

    public function showUserRegisterForm()
    {
        $total = Cart::subtotal(0, '', '.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
        return view('website.auth.register', compact('total', 'news_popular', 'catagoriesTypes'));
    }

    // store xu ly dang ky tai khoan
    public function userRegister(StoreRegisterRequest $request)
    {
        $data = $request->all();
        $data['verification_code'] = str_random(64);
        $user = User::create($data);
        // This method gets called automatically after a user is registered
        // job gửi mail kích hoạt tk, có thể bật lên nhưng phải setup mail trước!
        // dispatch(new SendEmailRegisterJob($user));
        // queue send email

        $total = Cart::subtotal(0, '', '.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

        Session::flash('userRegistered', 'ĐĂNG KÝ THÀNH CÔNG! VUI LÒNG KIỂM TRA EMAIL ĐỂ XÁC NHẬN TÀI KHOẢN.');
        return view('website.auth.registered', compact('total', 'news_popular', 'catagoriesTypes'));
    }


    public function confirmRegistered($token)
    {
        $total = Cart::subtotal(0, '', '.');
        $catagoriesTypes = CatagoriesType::where('status', '1')->get();
        $news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

        $user = User::where('verification_code', $token)->firstOrFail();

        $user->verified_at = Carbon\Carbon::now()->toDateTimeString();
        $user->verified = true;
        $user->verification_code = null;
        $user->save();

        Session::flash('confirmRegistered', 'XÁC NHẬN EMAIL THÀNH CÔNG. ');
        return view('website.auth.confirmed', compact('total', 'news_popular', 'catagoriesTypes'));
    }


}
