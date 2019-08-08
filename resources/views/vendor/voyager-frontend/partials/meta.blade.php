<!doctype html>
<html lang="{{ config('app.locale') }}" class="no-js">
<head>
		<title>@yield('meta_title', setting('site.title'))</title>
		<meta name="description" content="@yield('meta_description', setting('site.description')) - {{ setting('site.title') }}">
		<meta name="keywords" content="@yield('meta_keywords')">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="csrf-token" content="{{ csrf_token() }}">

		<!-- Open Graph -->
		<meta property="og:site_name" content="{{ setting('site.title') }}" />
		<meta property="og:title" content="@yield('meta_title')" />
		<meta property="og:type" content="website" />
		<meta property="og:url" content="{{ url(app()->getLocale()) }}" />
		<meta property="og:image" content="@yield('meta_image', url('/') . '/images/apple-touch-icon.png?ver=23.07.2019')" />
		<meta property="og:description" content="@yield('meta_description', setting('site.description'))" />

		<!-- Icons -->
		<meta name="msapplication-TileImage" content="{{ url('/') }}/ms-tile-icon.png" />
		<meta name="msapplication-TileColor" content="#8cc641" />
		<link rel="shortcut icon" href="{{ url('/') }}/images/favicon.png?ver=23.07.2019" />
		<link rel="apple-touch-icon-precomposed" href="{{ url('/') }}/images/apple-touch-icon.png?ver=23.07.2019" />

		<!-- Styles -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    	<link rel="stylesheet" href="{{ url('/') }}/css/style.css?ver=02-08-2019">

    	<!-- map  -->
	    <link href="https://unpkg.com/leaflet@1.0.1/dist/leaflet.css" rel="stylesheet" />
	    <script src="https://unpkg.com/leaflet@1.0.1/dist/leaflet.js"></script>
	    <!-- map -->

	    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	    <script src="https://cdn.rawgit.com/briangonzalez/rgbaster.js/b2fb235b/rgbaster.min.js"></script>
	    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.ripples/0.5.3/jquery.ripples.min.js'></script>
	    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js'></script>
	    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js'></script>
	    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>
	    <script src='https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js'></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js'></script>
	    <script  src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js'></script>
	    <script  src='https://cdnjs.cloudflare.com/ajax/libs/masonry/4.2.2/masonry.pkgd.min.js'></script>
	    <script  src='https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js'></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js"></script>
	    <script src='{{ url('/') }}/js/script.js?ver=29-07-2019'></script>

        <script type="application/ld+json">
		 {
		   "@context": "http://schema.org",
		   "@type": "Organization",
		   "url": "http://www.bon-boisson.ua",
		   "logo": "https://www.bon-boisson.ua/img/svg/logo.svg"
		 }
		</script>

		@if (setting('site.google_analytics_tracking_id'))
				<!-- Google Analytics (gtag.js) -->
				<script async src="https://www.googletagmanager.com/gtag/js?id={{ setting('site.google_analytics_tracking_id') }}"></script>
				<script>
						window.dataLayer = window.dataLayer || [];
						function gtag(){dataLayer.push(arguments);}
						gtag('js', new Date());

						gtag('config', '{{ setting('site.google_analytics_tracking_id') }}');
				</script>
		@endif

        @if (setting('admin.google_recaptcha_site_key'))
            <script src='https://www.google.com/recaptcha/api.js' async defer></script>
            <script>
                function setFormId(formId) {
                    window.formId = formId;
                }

                function onSubmit(token) {
                    document.getElementById(window.formId).submit();
                }
            </script>
     @endif
</head>
<body>
	<div class="loderPage" id="preloader">
        <div class="background-ripples drop1">
            <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/drop1.svg" alt="">
        </div>
        <div class="background-ripples drop2">
            <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop2.svg" alt="">
        </div>
        <div class="background-ripples drop3">
            <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop3.svg" alt="">
        </div>
        <div class="loaderWrapper">
            <div class="logoBlock preloader">
                <div class="logoWhite">
                    <div class="logoBlue">
                        <img src="{{ url('/') }}/img/svg/logo.svg?ver=29-07-2019">
                    </div>
                </div>
            </div>
        </div>
    </div>
