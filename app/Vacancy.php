<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Vacancy extends Model
{
	use Translatable;
    protected $translatable = [
    	'title',
    	'requirements',
    	'responsibilities'
    ];

	protected $fillable = [
		'title',
		'requirements',
		'responsibilities',
		'city_id',
		'manager_id'
	];

	public function cityId() {
		return $this->belongsTo(City::class, 'city_id');
	}

	public function managerId() {
		return $this->belongsTo(Manager::class, 'manager_id');
	}
    
}
