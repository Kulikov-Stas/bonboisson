@extends('vendor.voyager-frontend.layouts.sidebar')
@section('meta_title', 'Продукция')
@section('meta_description', '')
@section('meta_keywords', '')
@section('page_id', 'product')
@section('sidebar_title', 'Продукция')

@section('sidebar_menu_mobile')
    <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ $categories->shift()->title }}</a>
    <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
        @foreach($categories as $category)
        <a class="dropdown-item" href="{!! url(app()->getLocale() . '/products/' . $category->slug) !!}">{!! $category->title !!}</a>
        @endforeach
    </div>
@stop
@php $categories = App\Category::orderBy('sort', 'asc')->get(); @endphp
@section('sidebar_menu')
    <ul>
        @foreach($categories as $category)
        <li><a href="{!! url(app()->getLocale() . '/products/' . $category->slug) !!}">{!! $category->title !!}</a></li>
        @endforeach
    </ul>
@stop

@section('content')

@foreach($categories as $category)
<a class="products-block wow bounceInUp" data-wow-duration="3s" data-wow-offset="150" href="{!! url(app()->getLocale() . '/products/' . $category->slug) !!}">
    <div class="products-img">
        <div class="productsBubbleBlock">
            <img class="__products-img shakeBlock" src="{{ imageUrl($category->image, 380, 380, ['crop' => true]) ?: url('/img/noimage.jpg') }}">
            <div class="bubblesContainer">
                <div class="bubbleWrapper bubble1">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble2">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble3">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble4">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble5">
                    <div class="bubble"></div>
                </div>
                <!--
                <div class="bubbleWrapper bubble6">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble7">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble8">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble9">
                    <div class="bubble"></div>
                </div>
                <div class="bubbleWrapper bubble10">
                    <div class="bubble"></div>
                </div>
                -->
            </div>
        </div>
    </div>
    <div class="products-main column">
        <div class="animateTitle aboutCompanyAnimClass  mask-mineral-water" style="background-image: url({{Voyager::image($category->background)}})">
            <h2 class="__products-title products-block-title_margin">{!! $category->getTranslatedAttribute('title') !!}</h2>
        </div>
        <p>
            {!! $category->getTranslatedAttribute('description') !!}
        </p>
    </div>
</a>
@endforeach


@stop