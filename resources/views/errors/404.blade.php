@extends('vendor.voyager-frontend.layouts.default')
@section('meta_title', __('404.error_text'))
@section('content')

<div class="background-ripples drop4">
    <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop4.svg" alt="">
</div>
<div class="background-ripples drop3">
    <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/drop3.svg" alt="">
</div>
<div class="error-main-block ">
<p class="error-main-block__title">{{ __('404.heading_title') }}<br><span class="error-main-block__text">{{ __('404.error_text') }}</span></p>
<img class="error-img shakeBlock wow tada" src="{{ url('/') }}/img/png/error-splash.png">
</div>
<a href="{{ url(app()->getLocale()) }}" class="error-main-block__link">{{ __('404.back2main') }}</a>

@stop