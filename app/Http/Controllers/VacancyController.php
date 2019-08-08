<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Vacancy;
use App\City;
use App\Department;
use Mail;
use App\Mail\ContactMail;

class VacancyController extends Controller
{
    /**
     * Route: Gets all vacancies and passes data to a view
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getVacancies(Request $request)
    {
        $data = array();
        $cur_city = 0;
        $city_slug = $request->city_slug;

        if($city_slug) {
            $cur_city = City::where([
                    ['slug', '=', $city_slug],
                ])->firstOrFail();

            $vacancies = Vacancy::where('city_id', $cur_city->id)->orderBy('created_at', 'desc')
            ->paginate(12);
        } else {
            $vacancies = Vacancy::orderBy('created_at', 'desc')
            ->paginate(12);
        }

        $vacancies = $vacancies->translate(\App::getLocale());

        $cities_id = Vacancy::orderBy('created_at', 'desc')->pluck('city_id');
        $cities_id->all();

        $cities = City::find($cities_id);
        $cities = $cities->translate(\App::getLocale());

        $data['vacancies'] = $vacancies;
        $data['cities'] = $cities;
        $data['cur_city'] = $cur_city;

        return view("/vacancies/list", $data);
    }

    /**
     * Route: Gets a single vacancy and passes data to a view
     *
     * @param $slug
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getVacancy(Request $request)
    {
        // The vacancy
        $vacancy_info = array();
        $departments = Department::all();
        $vacancy = Vacancy::where([
                ['slug', '=', $request->slug],
            ])->firstOrFail();

        $vacancy_info['vacancy'] = $vacancy;
        $vacancy_info['departments'] = $departments;

        return view("/vacancies/single", $vacancy_info);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required',
            'privacy' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);

        $vacancy_info = Vacancy::where([
                ['slug', '=', $request->slug],
            ])->firstOrFail();

        $requestData = $request->all();
        $requestData['to'] = $vacancy_info->managerId->email;
        $requestData['subject'] = 'Отклик на вакансию: ' . $vacancy_info->title;

        Mail::send(new ContactMail($requestData));

        return back()->with('success', 'Ваш запрос успешно отправлен');
    }
}
