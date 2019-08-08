<?php

namespace App\Http\Middleware;

use Closure;
use App;
use Carbon\Carbon;
use Jenssegers\Date\Date;

class SetLocale
{
    public function handle($request, Closure $next)
    {
        App::setLocale($request->segment(1));
        Date::setLocale($request->segment(1));
        return $next($request);
    }
}
