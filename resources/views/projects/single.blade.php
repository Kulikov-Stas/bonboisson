@php 
    $date = new Date($project->created_at);
@endphp
@extends('vendor.voyager-frontend.layouts.default')
@section('meta_title', $project->title)
@section('meta_description', $project->meta_description)
@section('meta_keywords', $project->meta_keywords)
@section('content')
<div class="section-about">
    <div class="site-width">
        <div class="container-fluid">
            <div class="row main-wrapper">
                <!-- SIDEBAR END -->
                <!-- MAIN CONTENT START -->
                <div class="social-open-main-block wow bounceInUp" data-wow-duration="2s" data-wow-offset="150">
                    <a href="{{ url(app()->getLocale() . '/projects') }}" class="news-open__backArrow">
                        <img src="{{ url('/') }}/img/svg/arrow-vector.svg" alt="{ __('projects.back') }}">
                        <span>{{ __('projects.back') }}</span></a>
                    <h1>{!! $project->title !!}</h1>
                    <p>{!! $date->format('j F Y') !!}</p>
                    <div class="news-open-discription-block">
                        {!! $project->body !!}
                    </div>
                    <div class="news-open-share-block">
                        <p>{{ __('projects.share') }}</p>
                        <a href="https://plus.google.com/share?url={{ url()->current() }}"
                           onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=350,width=480');return false;"
                           target="_blank" title="Share on Google+">
                           <img src="{{ url('/') }}/img/svg/google-plus.svg" class="shakeBlock" alt="">
                        </a>
                        <a href="https://www.linkedin.com/shareArticle?mini=true&url={{ url()->current() }}&title={!! $project->title !!}&summary=Some%20Summary&source={{ setting('site.title') }}" 
                            target="_blank" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;">
                            <img src="{{ url('/') }}/img/svg/linkedin.svg" class="shakeBlock" alt="">
                        </a>
                        <a href="https://twitter.com/share?url={{ url()->current() }}&via=TWITTER_HANDLE&text={!! $project->title !!}"
                           onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;"
                           target="_blank" title="Share on Twitter">
                           <img src="{{ url('/') }}/img/svg/twitter.svg" class="shakeBlock" alt="">
                        </a>
                    </div>
                </div>
                <!-- MAIN CONTENT END -->
            </div>
        </div>
    </div>
</div>
@stop