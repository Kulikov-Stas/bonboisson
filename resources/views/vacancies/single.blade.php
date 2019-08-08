@extends('vendor.voyager-frontend.layouts.sidebar')
@section('meta_title', $vacancy->title)
@section('meta_description', '')
@section('meta_keywords', '')
@section('page_id', 'page')
@section('sidebar_title', __('vacancies.sidebar_title'))

@section('sidebar_menu_mobile')
    <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ __('vacancies.heading_title') }}</a>
    <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
        {{ menu('sidebar', 'voyager-frontend::partials.menu-mobile-sidebar') }}
    </div>
@stop

@section('sidebar_menu')
    <ul>
        {{ menu('sidebar', 'voyager-frontend::partials.menu-left') }}
    </ul>
@stop

@section('content')


<a href="{{ url(app()->getLocale() . '/vacancies') }}" class="vacance-open__backArrow">
    <img src="{{ url('/') }}/img/svg/arrow-vector.svg" alt="">
    <span>{{ __('vacancies.back') }}</span>
</a>
<div class="vacancies__title wow fadeIn" data-wow-duration="2s" data-wow-offset="100">
    <h1 class="select-city">{{ $vacancy->title }}</h1>
</div>
<div class="one-vacance-block">
    <div class="city">
        <img src="{{ url('/') }}/img/png/vector.png" alt="">
        <a href="{{ url(app()->getLocale() . '/vacancies/' . $vacancy->cityId->slug) }}" class="city-link">{{ $vacancy->cityId->name }}</a>
    </div>
    <h2 >Вимоги:</h2>
    <div>
        {!! $vacancy->requirements !!}
    </div>
    <h2>Обов’язки:</h2>
    <div>
        {!! $vacancy->responsibilities !!}
    </div>
    <div class="main-block-url-container wow tada" data-wow-duration="2s" data-wow-offset="100">
        <a class=" main-block-url popup-content" id="showHideForm" href="#contactForm">{{ __('vacancies.submit') }}</a>
    </div>

    <p class="send-manager">{{ __('vacancies.contact2manager') }}</p>
    @include('vacancies.manager')
</div>

<div class="mfp-hide white-popup" id="contactForm">
    @include('voyager-frontend::partials.contact_form')
</div>
<div id="hideBlock" class="mfp-hide">
    <div class="hideBlock__discription">
        <div class="hideBlock__discription__title">
            <p>Политика конфиденциальности</p>
            <img class="closeBtn" src="{{ url('/') }}/img/png/close.png" alt="">
        </div>
        <div class="hideBlock__discription__text">
            <p><span>1. Определение терминов</span></p>
            <p> 1.1 В настоящей Политике конфиденциальности используются следующие термины:</p>
            <p> 1.1.1. «Администрация сайта Интернет-магазина (далее – Администрация сайта) » – уполномоченные сотрудники на управления сайтом, действующие от имени Название организации, которые организуют и (или) осуществляет обработку персональных данных, а также определяет цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.</p>
            <p> 1.1.2. «Персональные данные» - любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных).</p>
            <p>1.1.3. «Обработка персональных данных» - любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.</p>
            <p>1.1.4. «Конфиденциальность персональных данных» - обязательное для соблюдения Оператором или иным получившим доступ к персональным данным лицом требование не допускать их распространения без согласия субъекта персональных данных или наличия иного законного основания. </p>
            <p><span>2. Общие положения</span> </p>
            <p>2.1. Использование Пользователем сайта Интернет-магазина означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя. </p>
            <p>2.2. В случае несогласия с условиями Политики конфиденциальности Пользователь должен прекратить использование</p>
        </div>
    </div>
</div>
           
@stop