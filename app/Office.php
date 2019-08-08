<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Spatial;
use TCG\Voyager\Traits\Translatable;

class Office extends Model
{
    use Spatial;
    use Translatable;

    protected $spatial = ['coordinates'];

    protected $translatable = [
    	'street',
    ];

    protected $fillable = [
        'street',
        'phone',
        'coordinates',
        'city_id',
        'office_type'
    ];

    public function cityId() {
		return $this->belongsTo(City::class, 'city_id');
	}

	public function city() {
		return $this->hasOne(City::class);
	}
}
