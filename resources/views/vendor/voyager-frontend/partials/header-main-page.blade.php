 <!-- HEADER START -->
<nav>
    <div class="show-1328 burger" id="burg"><span></span></div>
    <ul class="main">
        {{ menu('primary', 'voyager-frontend::partials.menu-mobile') }}
    </ul>
</nav>
<div class="overlay hide"></div>
<header>
    <div class="main-menu hide-menu">
        <div class="menu-wrapepr">
            {{ menu('top_left', 'voyager-frontend::partials.menu-top') }}
        </div>
        <a href="{{ url('/') }}">
            <div class="logoBlock">
                <div class="logoWhite">
                    <div class="logoBlue">
                        <img src="{{ url('/') }}/img/svg/logo.svg?ver=29-07-2019">
                    </div>
                </div>
            </div>
        </a>
        <div class="menu-wrapepr">
            {{ menu('top_right', 'voyager-frontend::partials.menu-top') }}
        </div>
        @php 
            $segments = Request::segments();
            array_shift($segments);
        @endphp
        <div class="menu-wrapepr-lang">
            @foreach(config('voyager.multilingual.locales') as $lang)
                @if (app()->getLocale() == $lang)
                <span>{{ strtoupper($lang) }}</span>
                @else
                <a href="{{ url($lang, $segments) }}">{{ strtoupper($lang) }}</a>
                @endif
            @endforeach
        </div>
    </div>
    <div class="main-menu__mobile">
        <div class="show-1328 burger" id="burgShow"><span></span></div>
        <a href="{{ url(app()->getLocale()) }}">
            <img class="header-logo" src="{{ url('/') }}/img/svg/logoMobile.svg?ver=29-07-2019" alt=" ">
        </a>
        <div class="menu-wrapepr-lang">
            @foreach(config('voyager.multilingual.locales') as $lang)
            <a href="{{ url($lang, $segments) }}">{{ strtoupper($lang) }}</a>
            @endforeach
        </div>
    </div>
    @php 
        $slides = \App\Slider::all(); 
        $slides = $slides->translate(\App::getLocale());
    @endphp
    <div class="main-page-header-slider">
        <div id="mainSliderIndicators" data-interval="10000" class="carousel slide " data-ride="carousel" data-pause="false">
            <div class="carousel-inner topSlider">
                <ol class="carousel-indicators" id="first-slider">
                    @foreach($slides as $key => $slide)
                    <li data-target="#mainSliderIndicators" data-slide-to="{{ $key }}" class="{{ $key > 0 ? '' : 'active' }}"></li>
                    @endforeach
                </ol>
                @foreach($slides as $key => $slide)
                <div class="carousel-item main-page-header-slider__first {{ $key > 0 ? '' : 'active' }}" style="background-image: url({{ Voyager::image( $slide->image ) }});">
                    <div class="slider-discription">
                        <h1 class="main-block-title">{{ $slide->title }}</h1>
                        <p class="main-block-discription-1">{!! nl2br(e($slide->text)) !!}</p>
                        @if($slide->btn_text)
                        <div class="main-block-url-container">
                            <a class=" main-block-url" href="{{ $slide->btn_link }}">{{ $slide->btn_text }}</a>
                        </div>
                        @endif
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</header>
<!-- HEADER END -->