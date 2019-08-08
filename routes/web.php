<?php

use TCG\Voyager\Events\Routing;
use TCG\Voyager\Events\RoutingAdmin;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::group(['as' => 'voyager.'], function () {

		$namespacePrefix = '\\'.config('voyager.controllers.namespace').'\\';

		Route::group(['middleware' => 'admin.user'], function () {
	        // Admin Media
	        Route::group([
	            'as'     => 'media.',
	            'prefix' => 'media',
	        ], function () {
	            Route::post('remove', ['uses' => 'MediaController@remove', 'as' => 'remove']);
	        });
	    });
	});
});

/*Route::get('locale', function () {
    return \App::getLocale();
});

Route::get('locale/{locale}', function ($locale) {
    \Session::put('locale', $locale);
    return redirect()->back();
});*/


/*Route::group([
  'prefix' => '{locale}', 
  'where' => ['locale' => '[a-zA-Z]{2}'], 
  'middleware' => 'setlocale'], function() {

	Route::group([
		'prefix'=>'projects',
		'as'=>'project.'], function(){
		Route::get('/', ['uses' => 'ProjectController@getProjects', 'as' => 'list']);
		Route::get('{slug}', ['uses' => 'ProjectController@getProject', 'as' => 'project']);
	});

	Route::group(['prefix'=>'products','as'=>'product.'], function(){
		Route::get('/', ['uses' => 'CategoryController@index', 'as' => 'list']);
		Route::get('{category_slug}', ['uses' => 'CategoryController@index', 'as' => 'category']);
		Route::get('{category_slug}/{slug}', ['uses' => 'ProductController@getProduct', 'as' => 'product']);
	});

	Route::group(['prefix'=>'vacancies','as'=>'vacancy.'], function(){
		Route::get('/', ['uses' => 'VacancyController@getVacancies', 'as' => 'list']);
		Route::get('{city_slug}', ['uses' => 'VacancyController@getVacancies', 'as' => 'list']);
		Route::get('{city_slug}/{slug}', ['uses' => 'VacancyController@getVacancy', 'as' => 'vacancy']);
	});

	Route::get('offices', 'OfficeController@getOffices');

	Route::get('history', 'HistoryController@getHistory');
});

//Route::get('/contacts', 'ContactController@index');
Route::get('/', function () {
    return redirect(app()->getLocale());
});*/

/*$currentLocale = App::getLocale();

foreach (config('voyager.multilingual.locales') as $locale) {
	App::setLocale($locale);
	Route::prefix($locale)->group(function()
	{
	    Route::get('history', 'HistoryController@getHistory');
	    Route::get('offices', 'OfficeController@getOffices');
	    Route::get('products', 'CategoryController@index');
	    Route::get('products/{category_slug}', 'CategoryController@index');
	    Route::get('products/{category_slug}/{slug}', 'ProductController@getProduct');
	});
}*/

Route::get('/', function () {
    return redirect(app()->getLocale());
});

Route::get('ajax', 'AjaxController@getData');

Route::group([
	'prefix' => '{locale}', 
	'where' => ['locale' => '[a-zA-Z]{2}'], 
	'middleware' => 'setlocale'], function() {
  		Route::get('history', 'HistoryController@getHistory');
	    Route::get('offices', 'OfficeController@getOffices');
	    Route::get('products', 'CategoryController@index');
	    Route::get('products/{category_slug}', 'CategoryController@index');
	    Route::get('products/{category_slug}/{slug}', 'ProductController@getProduct');
	    Route::get('projects', ['uses' => 'ProjectController@getProjects', 'as' => 'projects']);
	    Route::get('projects/{slug}', 'ProjectController@getProject');
	    Route::get('vacancies', 'VacancyController@getVacancies');
	    Route::get('vacancies/{city_slug}', 'VacancyController@getVacancies');
		Route::get('vacancies/{city_slug}/{slug}', 'VacancyController@getVacancy');
		Route::get('news', 'PostController@getPosts');
		Route::get('news/{slug}', 'PostController@getPost');
		Route::get('{slug?}', 'PageController@getPage');

		Route::post('/contacts', 'ContactController@store');
		Route::post('vacancies/{city_slug}/{slug}', 'VacancyController@store');
});

Route::get('{slug?}', function ($slug) {
    return redirect(app()->getLocale().'/'.$slug);
});