@include('voyager-frontend::partials.meta')
@include('voyager-frontend::partials.header')

<main id="@yield('page_id')">
    <div class="background-ripples drop1">
        <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/drop1.svg" alt="">
    </div>
    <div class="background-ripples drop2">
        <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop2.svg" alt="">
    </div>
    <div class="background-ripples drop3">
        <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop3.svg" alt="">
    </div>
    <div class="background-ripples drop4">
        <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop4.svg" alt="">
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
    <div class="site-width">
        <div class="container-fluid">
            <!-- SIDEBAR SART -->
            <!-- SIDEBAR MOBILE START -->
            <div class="products-main-title_mobile">
                @yield('sidebar_title')
            </div>
            <div class="dropdown open about-main__drop-menu">
                @yield('sidebar_menu_mobile')
            </div>
            <!-- SIDEBAR MOBILE END -->
            <div class="row main-wrapper">
                <div class="sidebar-title col-10">
                    @yield('sidebar_title')
                </div>
                <div class="sidebar-wrapper">
                    <div class="sideBlock">
                        <div class="sidebar  col-2">
                            @yield('sidebar_menu')
                        </div>
                    </div>
                </div>
                <!-- SIDEBAR END -->

                
                 <div class="main-block  wow bounceInUp" data-wow-duration="2s" data-wow-offset="350">
                    @yield('content')
                </div>
                 @yield('content_bottom')
            </div>
        </div>
    </div>
</main>

@include('voyager-frontend::partials.footer')
