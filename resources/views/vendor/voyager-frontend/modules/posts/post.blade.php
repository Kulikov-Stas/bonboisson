@php 
    $date = new Date($post->published_date);
@endphp
@extends('vendor.voyager-frontend.layouts.sidebar')
@section('meta_title', $post->title)
@section('meta_description', $post->meta_description)
@section('meta_keywords', '')
@section('page_id', 'news')
@section('sidebar_title', __('news.sidebar_title'))

@section('sidebar_menu_mobile')
    <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ __('news.heading_title') }}</a>
    <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
        {{ menu('sidebar', 'voyager-frontend::partials.menu-mobile-sidebar') }}
    </div>
@stop

@section('sidebar_menu')
    <ul>
        {{ menu('sidebar', 'voyager-frontend::partials.menu-mobile') }}
    </ul>
@stop

@section('content')


<a href="{{ url(app()->getLocale() . '/news') }}" class="news-open__backArrow">
    <img src="{{ url('/') }}/img/svg/arrow-vector.svg" alt="">
    <span>{{ __('news.back') }}</span></a>
<h1 class="news-open__title">{{ $post->title }}</h1>
<p class="news-open__date wow bounceInUp" data-wow-duration="2s" data-wow-offset="150">{!! $date->format('j F Y') !!}</p>
<div class="news-open-discription-block ">
    {!! $post->body !!}
</div>
<div class="news-open-share-block">
    <p>{{ __('news.share') }}</p>
    <a href="https://plus.google.com/share?url={{ url()->current() }}"
       onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=350,width=480');return false;"
       target="_blank" title="Share on Google+">
       <img src="{{ url('/') }}/img/svg/google-plus.svg" class="shakeBlock" alt="">
    </a>
    <a href="https://www.linkedin.com/shareArticle?mini=true&url={{ url()->current() }}&title={!! $post->title !!}&summary=Some%20Summary&source={{ setting('site.title') }}" 
        target="_blank" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;">
        <img src="{{ url('/') }}/img/svg/linkedin.svg" class="shakeBlock" alt="">
    </a>
    <a href="https://twitter.com/share?url={{ url()->current() }}&via=TWITTER_HANDLE&text={!! $post->title !!}"
       onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;"
       target="_blank" title="Share on Twitter">
       <img src="{{ url('/') }}/img/svg/twitter.svg" class="shakeBlock" alt="">
    </a>
</div>
           
@stop