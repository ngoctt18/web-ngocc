<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\Admin\LoginAdminRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;
use Hash;
use App\Admin;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        /*
        * Các Middleware sẽ cho khách dùng đc showAdminLoginForm và adminLogin
        * Nhưng không dùng đc các function ->except('logout','checkPassword','changePassword');
        * guest sẽ không cần đăng nhập.
        * auth ( đã đăng nhập)
        * guest ( ko đăng nhập)
        */
        $this->middleware('guest')->except('logout','checkPassword','changePassword');
        $this->middleware('guest:admin')->except('logout','checkPassword','changePassword');
        $this->middleware('guest:writer')->except('logout','checkPassword','changePassword');
    }

    public function showAdminLoginForm()
    {
        return view('admin.admin_login', ['url' => 'admin']);
    }

    public function adminLogin(LoginAdminRequest $request)
    {
        $loginInfo = [
            'phone' => $request->phone, 
            'password' => $request->password
        ];
        if (Auth::guard('admin')->attempt($loginInfo, $request->input('remember', false))) {
            Session::flash('success', 'Đăng nhập thành công.');
            return redirect()->route('admin.dashboard');
        }
        return back()->withInput($request->only('phone', 'remember'));
    }
    
    public function logout(Request $request){
        Auth::guard('admin')->logout();
        return redirect()->guest('/admin/login');
    }

    public function checkPassword(Request $request){
        $password = $request->get('password', NULL);
        if (Hash::check($password, Auth::user()->password)) {
            // Nhập đúng mật khẩu
            return "TRUE";
        } else {
            return "FALSE";
        }
    }

    public function changePassword(Request $request){
        Auth::user()->update([
            'password' => $request->re_password,
        ]);
        Session::flash('success', 'Thay đổi mật khẩu thành công!');
        return redirect()->route('admin.dashboard');
    }
}
