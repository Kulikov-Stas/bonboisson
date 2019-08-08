@extends('vendor.voyager-frontend.layouts.default')
@section('meta_title', $product->name)
@section('content')

<div class="background-ripples dropRed">
<img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/dropRed.svg" alt="">
</div>
<div class="background-ripples dropGreen">
<img class="shakeBlock-main" src="{{ url('/') }}/img/svg/dropGreen.svg" alt="">
</div>
<div class="background-ripples dropRed2">
<img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/dropRed.svg" alt="">
</div>
<div class="section-about position-rel">
<div class="site-width">
    <div class="container-fluid">
       <!-- SIDEBAR SART -->
        <!-- SIDEBAR MOBILE START -->
        <div class="products-main-title_mobile">
            <p class="__products-title">О компании</p>
        </div>
        <div class="dropdown open about-main__drop-menu">
            <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Напитки Чудо-Сад</a>
            <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" href="#">Минеральная вода1</a>
                <a class="dropdown-item" href="#">Классические лимонады</a>
                <a class="dropdown-item" href="#">Сокосодержащие напитки</a>
                <a class="dropdown-item" href="#">Лимонады Бон Лимон</a>
                <a class="dropdown-item" href="products-one-new.html">Hапиток Black</a>
                <a class="dropdown-item" href="products-opened-test.html">Напитки Чудо-Сад</a>
                <a class="dropdown-item" href="#">Детская вода Карапуз</a>
                <a class="dropdown-item" href="#">Квас Боярский</a>
                <a class="dropdown-item" href="#">С/а коктейли Tropic bar</a>
                <a class="dropdown-item" href="#">Black alco energy</a>
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
            <div class="products-opened-test-main-block ">
                <div class="products-main-block__wrapper">
                    <div class="back-button">
                        <div class="back-button-arrow">
                            <a href="{{ url('/products') }}">
                                <img src="{{ url('/') }}/img/svg/arrow-vector.svg" alt="">
                            </a>
                        </div>
                        <p class="back-button-text"><a href="{{ url('/products') }}">Назад к продукции</a></p>
                    </div>
                    <div class="opened-products-title wow bounceInUp" data-wow-duration="1s" data-wow-offset="150">
                        <p class="__opened-products-title">
                            {!! $product->name !!}
                        </p>
                    </div>
                    <div class="slider-mobile-block">
                        <div id="carousel-example-generic" class="carousel slide slider-mobile" data-ride="carousel" data-interval="false">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="6"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="7"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="8"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="9"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                                <div class="carousel-item">
                                    <img class="__products-img-big" src="{{ url('/') }}/img/png/wonder-garden-baikal.png">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <span class="icon-prev" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <span class="icon-next" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                            <div class="slider-mobile-block__left">
                                <svg width="41" height="9" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M1 4.5h40m-40 0l4-4m-4 4l4 4" stroke="#000" /></svg>
                            </div>
                            <div class="slider-mobile-block__right">
                                <svg width="41" height="9" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M1 4.5h40m-40 0l4-4m-4 4l4 4" stroke="#000" /></svg>
                            </div>
                        </div>
                    </div>
                    <div class="opened-products-discription wow bounceInUp" data-wow-duration="1s" data-wow-offset="150">
                       {!! $product->description !!}
                    </div>
                    <div class="opened-products-icons-block wow slideInLeft">
                        <div class="icons-block__round">
                            <img src="{{ url('/') }}/img/png/round-sighns-sugar.png" alt="" class="round-img shakeBlock">
                            <img src="{{ url('/') }}/img/png/juice.png" alt="" class="round-img shakeBlock">
                            <img src="{{ url('/') }}/img/png/natural.png" alt="" class="round-img shakeBlock">
                        </div>
                        <div class="icons-block__bottles">
                            <p class="volume">Объем:</p>
                            <div class="bottle-block">
                                <div class="icon-wrapper show-bottle">
                                    <span class="bottle-ico icon-105 vol-05"></span>
                                    <p>0.5л</p>
                                </div>
                                <div class="icon-wrapper show-bottle">
                                    <span class="bottle-ico icon-105 vol-1"></span>
                                    <p>1л</p>
                                </div>
                                <div class="icon-wrapper show-bottle">
                                    <span class="bottle-ico icon-105 vol-15"></span>
                                    <p>1.5л</p>
                                </div>
                                <div class="icon-wrapper">
                                    <span class="bottle-ico icon-105"></span>
                                    <p>2л</p>
                                </div>
                                <div class="icon-wrapper">
                                    <span class="bottle-ico icon-5"></span>
                                    <p>5л</p>
                                </div>
                                <div class="icon-wrapper">
                                    <span class="bottle-ico icon-20"></span>
                                    <p>20л</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @if (count($related_products))
                    <div class="opened-products-choice-slider wow slideInRight">
                        <div class="owl-carousel owl-theme">
                            @foreach($related_products as $r_product)
                            <div class="column">
                                <div class="taste-img">
                                    <div class="__taste-img">
                                        <a href="{!! url('/products/' . $r_product->slug) !!}">
                                            <img class="__wonder-garden-baikal-small" src="{{ imageUrl($r_product->image, 60, null, ['crop' => false]) ?: '/default.png' }}">
                                        </a></div>
                                </div>
                                <div class="taste-p">
                                    <p class="__taste-p">{{ $r_product->name }}</p>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    @endif
                    @if ($product->site || $product->facebook || $product->instagram)
                    <div class="join-us-block column wow bounceInUp" data-wow-duration="1s" data-wow-offset="250">
                        <div class="join-us-p">
                            <p class="__join-us-p">
                                Присоеденяйтесь к нам:
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
                    <div class="products-img-big wow bounceInUp" data-wow-duration="1s" data-wow-offset="250">
                        <div class="background-ripples dropYellow">
                            <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/dropYellow.svg" alt="">
                        </div>
                        <img class="__products-img-big" src="{{ imageUrl($product->image, 263, null, ['crop' => false]) ?: '/default.png' }}">
                    </div>
                </div>
            </div>
            <div class="slider-bottom-wrapper wow bounceInUp" data-wow-duration="1s" data-wow-offset="250">
                <div id="sliderBottomIndicators" class="carousel slide bottomSlider" data-ride="carousel" data-interval="3000">
                    <div class="carousel-inner slider-bottom">
                        <div class="slider-bottom-item carousel-item active">
                            <div class="slider-bottom__num">
                                <span>04</span>
                            </div>
                            <div class="slider-text mask-slider__grapefruit">
                                <p>Европейские<br> ингридиенты</p>
                            </div>
                            <div class="slider-bottom__discription">
                                <p> Сладкие напитки производятся исключительно на европейских ингредиентах</p>
                            </div>
                            <div class="main-block-url-container">
                                <a class="slider-bottom__link" href="news.html">Все новости...</a>
                            </div>
                        </div>
                        <div class="slider-bottom-item carousel-item">
                            <div class="slider-bottom__num">
                                <span>04</span>
                            </div>
                            <div class="slider-text mask-slider__water">
                                <p>Европейские<br> ингридиенты</p>
                            </div>
                            <div class="slider-bottom__discription">
                                <p> Сладкие напитки производятся исключительно на европейских ингредиентах</p>
                            </div>
                            <div class="main-block-url-container">
                                <a class="slider-bottom__link" href="news.html">Все новости...</a>
                            </div>
                        </div>
                        <div class="slider-bottom-item carousel-item">
                            <div class="slider-bottom__num">
                                <span>04</span>
                            </div>
                            <div class="slider-text mask-slider__pineapple">
                                <p>Европейские<br> ингридиенты</p>
                            </div>
                            <div class="slider-bottom__discription">
                                <p> Сладкие напитки производятся исключительно на европейских ингредиентах</p>
                            </div>
                            <div class="main-block-url-container">
                                <a class="slider-bottom__link" href="news.html">Все новости...</a>
                            </div>
                        </div>
                        <ol class="carousel-indicators">
                            <li data-target="#sliderBottomIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#sliderBottomIndicators" data-slide-to="1"></li>
                            <li data-target="#sliderBottomIndicators" data-slide-to="2"></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@stop