<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use App\Department;

class ComposerServiceProvider extends ServiceProvider
{
    public function boot()
    {
        View::composer('voyager-frontend::modules.pages.default', function($view) {
            $view->with(['departments' => Department::get()]);
        });
    }

    public function register()
    {
        //
    }
}