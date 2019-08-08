@extends('vendor.voyager-frontend.layouts.sidebar')
@section('meta_title', $product->name)
@section('meta_description', '')
@section('meta_keywords', '')
@section('page_id', 'product')
@section('sidebar_title', 'Продукция')



@section('sidebar_menu_mobile')
    <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{!! $category_name !!}</a>
    <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
        @php $categories = App\Category::orderBy('sort', 'asc')->get(); @endphp
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

<div class="products-main-block__wrapper">
  <!-- <div class="back-button">
     <div class="back-button-arrow">
        <a href="products.html">
        <span class="icon-Vector-1"></span>
        </a>
     </div>
     
     <p class="back-button-text"><a href="{{ url(app()->getLocale() . '/products') }}">Назад к продукции</a></p>
  </div> -->
  <div class="opened-products-title">
     <h1>
        {!! $product->getTranslatedAttribute('name') !!}
     </h1>
  </div>
  <div class="slider-mobile-block">
      <img class="__products-img-big" src="{{ imageUrl($product->image, null, 445, ['crop' => false]) ?: '/default.png' }}">
  </div>
  <div class="opened-products-discription">
     {!! $product->getTranslatedAttribute('description') !!}
  </div>
  @if (count($related_products))
  <div class="opened-products-choice-slider">
     <div class="owl-carousel owl-theme">
        @foreach($related_products as $r_product)
        <div class="column">
            <div class="taste-img">
                <div class="__taste-img">
                    <a href="{!! url(app()->getLocale() . '/products/' . $category_slug . '/' . $r_product->slug) !!}">
                        <img class="__wonder-garden-baikal-small" src="{{ imageUrl($r_product->image, null, 210, ['crop' => false]) ?: '/default.png' }}">
                    </a>
                </div>
            </div>
            <div class="taste-p">
                <p class="__taste-p">{{ $r_product->getTranslatedAttribute('name') }}</p>
            </div>
        </div>
        @endforeach
     </div>
  </div>
  @endif
  <div class="opened-products-icons-block">
    @if (count($product->badges))
     <div class="icons-block__round">
        @foreach($product->badges as $badge)
        <img src="{{Voyager::image($badge->image)}}" alt="{{ $badge->name }}" class="round-img shakeBlock">
        @endforeach
     </div>
     @endif
     @if (count($product->sizes))
     <div class="icons-block__bottles">
        <!--
        <p class="volume">Объем:</p>
        -->
         <div class="bottle-block">
             @foreach($all_sizes as $size)
                 @php
                     $matches = preg_replace("/[^0-9]/","",$size);
                     $class = 'vol-' . $matches;
                     //if($matches == 5)
                     //$class .= ' icon-5';
                     if($matches == 20)
                     $class .= ' icon-20';
                     else
                     $class .= ' icon-105';
                 @endphp
                 <div class="icon-wrapper show-bottle">
                     <span class="bottle-ico {{ $class }}@php if (in_array($size, $all_product_size)) echo ' active-color'; @endphp">
                         {!!  $svgs[$loop->index] !!}
                     </span>
                     <p@php if (in_array($size, $all_product_size)) echo ' class="active-color"'; @endphp>{{ $size }}</p>
                 </div>
             @endforeach
         </div>
     </div>
     @endif
  </div>
  
  @if ($product->site || $product->facebook || $product->instagram)
  <div class="join-us-block column">
     <div class="join-us-p">
        <p class="__join-us-p">
           Присоединяйтесь к нам:
        </p>
     </div>
     <div class="split">
        <div class="join-us-web-site">
            @if ($product->site)
            <a href="{{ $product->site }}" target="_blank">{{ $product->site }}</a>
            @endif
            @if ($product->facebook)
            <a href="{{ $product->facebook }}" class="icon-icon shakeBlock" target="_blank"></a>
            @endif
            @if ($product->instagram)
            <a href="{{ $product->instagram }}" class="icon-Gro3up shakeBlock" target="_blank"></a>
            @endif
        </div>
     </div>
  </div>
  @endif
</div>
<div class="products-main-block__bottle">
  <div class="products-img-big position-rel">
     <div class="background-ripples dropYellowBig">
        <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/dropYellow.svg" alt="">
     </div>
     <img class="__products-img-big" src="{{ imageUrl($product->image, null, 755, ['crop' => false]) ?: '/default.png' }}">
  </div>
</div>

@stop

@section('content_bottom')
@if (count($carousel))
<div class="slider-bottom-wrapper wow bounceInUp" data-wow-duration="2s" data-wow-offset="150">
   <div id="sliderBottomIndicators" class="carousel slide bottomSlider" data-ride="carousel" data-interval="3000">
      <div class="carousel-inner slider-bottom">
          @foreach($carousel as $i => $slide)
          <div class="slider-bottom-item carousel-item {{ $i > 0 ? '' : 'active' }}">
            <div class="slider-text" @if(!empty($slide->image)) style="background-image: url('{{Voyager::image($slide->image)}}');" @endif>
               <p>{{ $slide->text }}</p>
            </div>
          </div>
         @endforeach
         <ol class="carousel-indicators">
            @foreach($carousel as $i => $slide)
            <li data-target="#sliderBottomIndicators" data-slide-to="{{ $i }}" class="{{ $i > 0 ? '' : 'active' }}"></li>
            @endforeach
         </ol>
      </div>
   </div>
</div>
@endif
@stop