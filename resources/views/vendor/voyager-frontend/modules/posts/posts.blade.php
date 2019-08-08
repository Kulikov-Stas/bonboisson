@extends('vendor.voyager-frontend.layouts.sidebar')
@section('meta_title', __('news.heading_title'))
@section('meta_description', '')
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
        {{ menu('sidebar', 'voyager-frontend::partials.menu-left') }}
    </ul>
@stop

@section('content')

    @if (count($posts) > 0)
    <div class="main-block__wrapper">
    @foreach($posts as $post)
    <a href="{!! url(app()->getLocale() . '/news/' . $post->slug) !!}" class="news-main-block__news wow bounceInUp" data-wow-duration="2s" data-wow-offset="150">
        <div class="news-main-block__news-img">
            <img src="{{Voyager::image($post->thumbnail('small'))}}" alt="{{ $post->title }}">
        </div>
        <div class="news-main-block__news-discription">
            @php 
                $date = new Date($post->published_date);
            @endphp
            <p>{!! $date->format('j F Y') !!}</p>
            <h2>{{ $post->title }}</h2>
            @if ($post->excerpt)
            <p>{{ str_limit($post->excerpt, 200, '...') }}</p>
            @endif
        </div>
    </a>
    @endforeach
    </div>
    <section>
        <div class="container">
            <div class="row">
                <div  class=" btn-block page-block btn-news button-left">
                    <button data-src='news' data-lang='{{ app()->getLocale() }}' class="more btn btn-primary">{{ __('news.more') }}</button>
                </div>
            </div>
        </div>
    </section>
    @endif


@stop