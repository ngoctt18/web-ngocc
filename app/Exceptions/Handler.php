<?php
namespace App\Exceptions;
use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Auth\AuthenticationException;
use Auth;
class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];
    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];
    /**
     * Report or log an exception.
     *
     * @param  \Exception  $exception
     * @return void
     */
    public function report(Exception $exception)
    {
        parent::report($exception);
    }
    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {
        if ($this->isHttpException($exception)) {
            switch ($exception->getStatusCode()) {
                case '404':
                    return redirect()->route('web.404');
                    break;
                
                default:
                    return $this->renderHttpException($exception);
                    break;
            }
        } else {
            return parent::render($request, $exception);
        }
    }
    // Chuyển hướng đúng type guard khi đăng xuất,...
    // Chuyển hướng sang trang login khi chưa đăng nhập theo url 
    protected function unauthenticated($request, AuthenticationException $exception)
    {
        if ($request->expectsJson()) {
            return response()->json(['error' => 'Unauthenticated.'], 401);
        }
        if ($request->is('admin') || $request->is('admin/*')) {
            return redirect()->guest('/admin/login');
        }
        if ($request->is('writer') || $request->is('writer/*')) {
            return redirect()->guest('/writer/login');
        }
        if ($request->is('') || $request->is('/*')) {
            return redirect()->guest('/login');
        }
        return redirect()->guest(route('web.login'));
    }
}