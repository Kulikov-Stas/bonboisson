@include('voyager-frontend::partials.meta')
@include('voyager-frontend::partials.header')

<main id="@yield('page_id')" class="position-rel overflow-hide">
    @yield('content')
</main>

@include('voyager-frontend::partials.footer')
