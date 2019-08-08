@include('voyager-frontend::partials.meta')
@include('voyager-frontend::partials.header')
@section('meta_title', __('contacts.sidebar_title'))

<main id="contacts">
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
	<div class="contacts-main-block">
	    <div class="left-col wow slideInLeft" data-wow-duration="2s" data-wow-offset="150">
	        <div class="left-col__title">
	            {{ __('contacts.sidebar_title') }}
	        </div>
	        <div class="left-col__discription">
	            <h2 class="discription__title">{{ __('contacts.head_office') }}</h2>
	            @php 
	            	$offices = \App\Office::where('office_type', 1)->get();
	            @endphp
	            @foreach($offices as $office)
	            <div class="office">
	            	<p class="discription__city">{{ $office->cityId->name }}</p>
		            <p class="discription__text">{{ $office->street }}</p>
		            @php $phones = explode(',', $office->phone); @endphp
		            @foreach($phones as $phone)
                    <p class="discription__text">{{ $phone }}</p>
                    @endforeach
                    @if(!empty($office->email))
                    <a class="discription__text" href="mailto:{{ $office->email }}">{{ $office->email }}</p>
                    @endif
	            </div>
	            @endforeach
	        </div>
	    </div>
	    <!--  <div class="right-col"> -->
	    <div class="right-col__form wow bounceInUp" data-wow-duration="2s" data-wow-offset="150">
	        <p class="form-title">{{ __('contacts.heading_title') }}</p>
	        @include('voyager-frontend::partials.contact_form')
	    </div>
	    <div class="right-col-contacts wow slideInRight" data-wow-duration="2s" data-wow-offset="150">
	        <p class="right-col__title">{{ __('contacts.production') }}</p>
	        @php 
            	$offices = \App\Office::where('office_type', 2)->get();
            @endphp
            @foreach($offices as $office)
	        <div class="right-col__ardress">
	            <p class="ardress-title">{{ $office->cityId->name }}</p>
	            <p>{{ $office->street }}</p>
	            <p class="ardress-phone">{{ $office->phone }}</p>
	        </div>
	        @endforeach
	    </div>
	    <!-- </div> -->
	</div>
	<div class="hideBlock__discription mfp-hide" id="hideBlock">
        <div class="hideBlock__discription__title">
            <p>Политика конфиденциальности</p>
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
</main>

@include('voyager-frontend::partials.footer')
