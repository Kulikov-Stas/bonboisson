@extends('vendor.voyager-frontend.layouts.default')
@section('meta_title', __('projects.heading_title'))
@section('meta_description', '')
@section('content')

<div class="section-about">
    <div class="site-width">
        <div class="container-fluid wow bounceInUp"  data-wow-duration="2s" data-wow-offset="150">
            <!-- MAIN CONTENT START -->
            <div class="social-main-block">
                <div class="social-main__title">
                    <h1>{{ __('projects.heading_title') }}</h1>
                </div>
                <div class="main-block__wrapper">
                    @foreach($projects as $project)
                    <a href="{!! url(app()->getLocale() . '/projects/' . $project->slug) !!}" class="social-main-block__social">
                        <div class="social-main-block__social-img">
                            <img src="{{ imageUrl($project->image, 275, 205, ['crop' => true]) ?: url('/img/noimage.jpg') }}" alt="{!! $project->title !!}">
                        </div>
                        @php 
                            $date = new Date($project->created_at);
                        @endphp
                        <div class="social-main-block__social-discription">
                            <p>{!! $date->format('j F Y') !!}</p>
                            <h2 >{!! $project->title !!}</h2>
                            <p>{!! $project->description !!}</p>
                        </div>
                    </a>
                    @endforeach
                </div>
                <section>
                    <div class="container">
                        <div class="row">
                            <div class=" btn-block page-block btn-news button-left">
                                <button data-src='projects' data-lang='{{ app()->getLocale() }}' class="more btn btn-primary">{{ __('projects.more') }}</button>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

@stop