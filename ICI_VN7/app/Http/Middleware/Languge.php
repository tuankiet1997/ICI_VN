<?php

namespace App\Http\Middleware;

use Closure;
use App;

class Languge
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
        // if(session()->has('locale')){
        //     App::setlocale(session()->get('locale'));
        // }
        // return $next($request);
        if (session()->has('applocale') AND array_key_exists(session()->get('applocale'), config('languages'))) {
            App::setLocale(session()->get('applocale'));
        }
        else {
            App::setLocale(config('app.fallback_locale'));
        }
        return $next($request);
    }
}
