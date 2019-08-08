<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Product extends Model
{
    use Translatable;
    protected $translatable = [
    	'name',
    	'description',
    	'meta_description',
    	'meta_keywords',
    	'seo_title'
    ];

    protected $fillable = [
		'name',
    	'description',
    	'meta_description',
    	'meta_keywords',
    	'seo_title',
    	'category_id',
	];

	public function categoryId() {
		return $this->belongsTo(Category::class, 'category_id');
	}

    public function badges()
    {
        return $this->belongsToMany(Badge::class, 'badge_products');
    }

    public function sizes()
    {
        return $this->belongsToMany(Size::class, 'product_sizes');
    }
}
