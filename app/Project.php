<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Project extends Model
{
    use Translatable;
    protected $translatable = [
    	'title',
    	'description',
    	'body',
    	'meta_description',
    	'meta_keywords',
    	'seo_title'
    ];
}
