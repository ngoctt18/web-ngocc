<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class LogUserActivity
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check()) {
            $expireAt = now()->addMinutes(1);
            cache(['user_online_'.Auth::id() => true], $expireAt);
        }
        return $next($request);
    }
}
