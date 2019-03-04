<?php

namespace App\Http\Controllers\Writer\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\Writer\LoginWriterRequest;
use Illuminate\Http\Request;
use Auth;
use Hash;
use Session;

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
        $this->middleware('guest')->except('logout','checkPassword','changePassword');
        $this->middleware('guest:admin')->except('logout','checkPassword','changePassword');
        $this->middleware('guest:writer')->except('logout','checkPassword','changePassword');
    }

    public function showWriterLoginForm()
    {
        return view('admin.admin_login', ['url' => 'writer']);
    }

    public function writerLogin(LoginWriterRequest $request)
    {
        $loginInfo = [
            'phone' => $request->phone,
            'password' => $request->password,
        ];
        // dd($loginInfo);
        if (Auth::guard('writer')->attempt($loginInfo, $request->input('remember', false))) {
            Session::flash('success', 'Đăng nhập thành công.');
            return redirect()->route('writer.dashboard');
        }
        // return back()->withInput($request->only('email', 'remember'));
    }

    public function logout(Request $request){
        Auth::guard('writer')->logout();
        return redirect()->guest('/writer/login');
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
        return redirect()->route('writer.dashboard');
    }
}
