<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Config;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class LanguageController extends Controller
{
    public function switchLang($lang)
    {
        var_dump($lang);
        foreach(config('voyager.multilingual.locales') as $av_lang)
        {
            if ( $av_lang == $lang )
            {
                app()->setLocale($av_lang);
                Session::put('applocale', $av_lang);
            }
        }
        return Redirect::back();
    }
}
