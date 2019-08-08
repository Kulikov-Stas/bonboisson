 <!-- HEADER START -->
<nav>
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
        <a href="{{ url(app()->getLocale()) }}">
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
    <div class="hide-block-header"></div>
</header>
<!-- HEADER END -->