<!doctype html>
<html>
    <head>
        @include('includes.head')
    </head>

    <body>

        <!-- HEADER START-->

        <header>

            @include('includes.header')

        </header>

        <!-- HEADER END -->

        <!-- MAIN START-->
        <main>



            @yield('content')


        </main>
        <!-- MAIN END -->

        @include('includes.footer')
    </body>

</html>