@extends('vendor.voyager-frontend.layouts.default')
@section('content')

<div class="background-ripples drop2">
    <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop2.svg" alt="">
</div>
<div class="background-ripples dropYellow">
    <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/dropYellow.svg" alt="">
</div>
<div class="background-ripples dropGreen">
    <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/dropGreen.svg" alt="">
</div>
<div class="background-ripples dropRed">
    <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/dropRed.svg" alt="">
</div>
<div class="background-ripples drop1">
    <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/drop1.svg" alt="">
</div>
<div class="background-ripples dropYellow2">
    <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/dropYellow.svg" alt="">
</div>
<div class="section-about">
    <div class="site-width">
        <div class="container-fluid">
            <!-- SIDEBAR SART -->
            <!-- SIDEBAR MOBILE START -->
            <div class="products-main-title_mobile">
                <p class="__products-title">О компании</p>
            </div>
            <div class="dropdown open about-main__drop-menu">
                <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Минеральная вода</a>
                <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
                    @foreach($categories as $category)
                    <a class="dropdown-item" href="{!! url(app()->getLocale() . '/products/' . $category->slug) !!}">{{ $category->title }}</a>
                    @endforeach
                </div>
            </div>
            <!-- SIDEBAR MOBILE END -->
            <div class="row main-wrapper">
                <div class="sidebar-title col-10">
                    <p>О компании</p>
                </div>
                <div class="sidebar-wrapper">
                    @include('products.sidebar')
                </div>
                <!-- SIDEBAR END -->
                <div class="products-main-block">
                    @foreach($products as $product)
                    <a class="products-block wow bounceInUp" data-wow-duration="2s" data-wow-offset="150" href="{!! url(app()->getLocale() . '/products/' . $product->slug) !!}">
                        <div class="products-img">
                            <img class="__products-img shakeBlock" src="{{ imageUrl($product->image, 380, 380, ['crop' => true]) ?: '/default.png' }}">
                        </div>
                        <div class="products-main column">
                            <div class="products-title mask-mineral-water">
                                <p class="__products-title products-block-title_margin">
                                    {!! $product->title !!}
                                </p>
                            </div>
                            <div class="products-discription">
                                <p class="__products-discription">
                                    {!! $product->description !!}
                                </p>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>

@stop