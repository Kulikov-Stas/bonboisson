<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Category extends Model
{
   	use Translatable;
    protected $translatable = [
    	'title',
    	'seo_title',
    	'description',
    	'meta_description',
    	'meta_keywords',
    ];

    protected $fillable = [
		'title',
    	'seo_title',
    	'description',
    	'meta_description',
    	'meta_keywords',
    	'parent_id',
    	'slug'
	];

	public function parentId() {
		return $this->belongsTo(Category::class, 'parent_id');
	}
}
