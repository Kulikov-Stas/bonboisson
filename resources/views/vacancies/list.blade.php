@extends('vendor.voyager-frontend.layouts.sidebar')
@section('meta_title', __('vacancies.heading_title'))
@section('meta_description', '')
@section('meta_keywords', '')
@section('page_id', 'page')
@section('sidebar_title', __('vacancies.sidebar_title'))

@section('sidebar_menu_mobile')
    <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ __('vacancies.heading_title') }}</a>
    <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
        {{ menu('sidebar', 'voyager-frontend::partials.menu-mobile-sidebar') }}
    </div>
@stop

@section('sidebar_menu')
    <ul>
        {{ menu('sidebar', 'voyager-frontend::partials.menu-left') }}
    </ul>
@stop

@section('content')

<div class="vacancies__title">
    <h2>{{ isset($cur_city->name) ? $cur_city->name : __('vacancies.cities') }} <svg width="10" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg" style="display: inline-block; width: 10px; height: 10px;">
            <path d="M14 2L8 8" stroke="black" stroke-width="2" stroke-miterlimit="10" stroke-linecap="square" stroke-linejoin="bevel" />
            <path d="M8 8L2 2" stroke="black" stroke-width="2" stroke-miterlimit="10" stroke-linecap="square" stroke-linejoin="bevel" />
        </svg>
    </h2>
    <!-- <img class="openImg" src="assets/img/svg/open.svg" alt=""> -->
</div>
<div class="vacancies__city-block">
    <ul class="sity-choise">
        @foreach($cities as $city)
        @php
        if(isset($cur_city->name) && $city->name == $cur_city->name)
        $active_class = 'sidebar-active-item';
        else
        $active_class = '';
        @endphp
        <li class="city-item"><a class="{{ $active_class }}" href="{{ url(app()->getLocale() . '/vacancies/' . $city->slug) }}">{{ $city->name }}</a></li>
        @endforeach
    </ul>
</div>
<div class="contacts-link-block">
    <p>{{ __('vacancies.text') }} <a href="{{ url(app()->getLocale() . '/contacts') }}">{{ __('vacancies.contacts') }}</a> </p>
</div>

@if(count($vacancies) > 0)
<div class="main-block__wrapper">
    @foreach($vacancies as $vacancy)
    <div class="one-vacance-block">
        <div class="city">
            <img src="{{ url('/') }}/img/png/vector.png" alt="">
            <a href="{{ url(app()->getLocale() . '/vacancies/' . $vacancy->cityId->slug) }}" class="city-link">{{ $vacancy->cityId->name }}</a>
        </div>
        <div class="one-vacance__title">
            <h2><a href="{!! url(app()->getLocale() . '/vacancies/' . $vacancy->cityId->slug . '/' . $vacancy->slug) !!}">{{ $vacancy->title }}</a></h2>
        </div>
        <div class="one-vacanse-discription">
            {!! str_limit(strip_tags($vacancy->requirements), $limit = 300, $end = '...') !!}
        </div>
    </div>
    @endforeach
    <section>
        <div class="container">
            <div class="row">
                <div class=" btn-block page-block btn-news button-left">
                    <button data-src='vacancies' data-city="{{ $cur_city }}" data-lang='{{ app()->getLocale() }}' class="more btn btn-primary">{{ __('vacancies.more') }}</button>
                </div>
            </div>
        </div>
    </section>
</div>
@else
    <p>На данный момент мы не ищем сотрудников.</p>
@endif




@stop