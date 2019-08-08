<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Manager extends Model
{
    use Translatable;
    protected $translatable = ['name', 'position'];
}
