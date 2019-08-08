<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Office;
use App\City;

class OfficeController extends Controller
{
    public function getOffices()
    {
        // Get all offices
        $cities = Office::orderBy('city_id', 'desc')
        		//->join('cities', 'cities.id', '=', 'offices.city_id')
        		->get()
                ->groupBy('city_id');

        $offices = Office::all();

        foreach ($offices as $office) {
         	$office_coordinates = $office->getCoordinates();
         	$city = $this->getCity($office->city_id);

         	$coordinates[] = array(
         		(float) $office_coordinates[0]['lat'],
         		(float) $office_coordinates[0]['lng'],
         		$city->name . '<br>' . $office->street . '<br>' . $office->phone,
         	);
        } 
               
        return view("/offices/list", [
            'cities' => $cities,
            'coordinates' => json_encode($coordinates, JSON_HEX_APOS)
        ]);
    }

    public static function getCity($city_id)
    {
    	$city = City::find($city_id);

    	return $city;
    }
}
