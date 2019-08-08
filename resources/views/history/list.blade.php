@extends('vendor.voyager-frontend.layouts.sidebar')
@section('meta_title', __('history.heading_title'))
@section('meta_description', '')
@section('meta_keywords', '')
@section('page_id', 'vacancies')
@section('sidebar_title', __('vacancies.sidebar_title'))

@section('sidebar_menu_mobile')
    <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ __('history.heading_title') }}</a>
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

<div class="col-table">
    <div class="mainBlockTitle">
        <h1>{{ __('history.heading_title') }}</h1>
    </div>
    <div class="mainBlockTitle">    
        <h2>{{ __('history.subtitle') }}</h2>
    </div>
    <div class="mainBlock-historyWrapper">
        @foreach($history as $record)
        <div class="mainBlock-historyWrapper__block wow bounceInUp @if(!$record->align)) left @endif" data-wow-duration="2s" data-wow-offset="150">
            <p>{{ $record->year }}</p>
            <img src="{{ imageUrl($record->image, 270, 290, ['crop' => false]) ?: url('/img/noimage.jpg') }}" alt=''>
            <p>{{ $record->getTranslatedAttribute('text') }}</p>
        </div>
        @endforeach
    </div>
    

</div>

@stop