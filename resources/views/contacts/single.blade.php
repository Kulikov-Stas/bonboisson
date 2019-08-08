@extends('vendor.voyager-frontend.layouts.contacts')
@section('content')


<div class="background-ripples drop1">
    <img class="shakeBlock-main" src="{{ url('/') }}/img/svg/drop1.svg" alt="">
</div>
<div class="background-ripples drop2">
    <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop2.svg" alt="">
</div>
<div class="background-ripples drop4">
    <img class="shakeBlockTwo" src="{{ url('/') }}/img/svg/drop4.svg" alt="">
</div>
<div class="contacts-main-block">
    <div class="left-col wow slideInLeft" data-wow-duration="2s" data-wow-offset="150">
        <div class="left-col__title">
            <p>Контакты</p>
        </div>
        <div class="left-col__discription">
            <h2 class="discription__title">Главный офис</h2>
            <p class="discription__city">Днепр</p>
            <p class="discription__text">Симферопольская, 17</p>
            <p class="discription__text">+ 38 056 376 71 63</p>
            <a class="discription__text" href="#">sekretar@bon-boisson.com.ua</a>
        </div>
    </div>
    <!--  <div class="right-col"> -->
    <div class="right-col__form wow bounceInUp" data-wow-duration="2s" data-wow-offset="150">
        <p class="form-title">Cвязатся с нами</p>
        <form action="" method="POST" id="formContacts">
            <p class="inp-title">Выбор отдела</p>
            <select name="department" id="department" required>
                @foreach($departments as $department)
                <option value="{{ $department->id }}">{{ $department->name }}</option>
                @endforeach
            </select>
            <p class="inp-title">Имя</p>
            <input type="text" name="name" placeholder="Артем Загорулько">
            <p class="inp-title">Телефон</p>
            <input type="text" name="name" id="phone" placeholder="+38 (067) 48 59 852">
            <p class="inp-title">E-mail</p>
            <input type="email" name="name" placeholder="user@mail.com">
            <p class="inp-title">Текст сообщения</p>
            <textarea name="message" id="message" cols="30" rows="10" placeholder="Компания «Бон Буассон» ведущий лидер по производству минеральной воды и безалкогольных напитков. Портфель брендов компании включает в себя ТМ БОН БУАССОН, Bon Lemon, Чудо-Сад, Black, Квас Боярский. Главный принцип компании - традиции и качество!"></textarea>
            <input type="checkbox" name="privacy" id="checkbox" class="checkbox">
            <label for="checkbox" class="checkbox-style">
                <p>Я соглашаюсь с <a id="showHideBlock" href="#"> политикой конфиденциальности</a></p>
            </label>
            <label for="addFile" class="addFile">
                <p>Прикрепить файл</p> <span id="fileNme"></span>
            </label>
            <input type="file" id="addFile">
            <input type="submit">
        </form>
    </div>
    <div class="right-col-contacts wow slideInRight" data-wow-duration="2s" data-wow-offset="150">
        <p class="right-col__title">Производство</p>
        <div class="right-col__ardress">
            <p class="ardress-title">Черкассы</p>
            <p>ул. Пацаєва, 2/1</p>
            <p class="ardress-phone">+38 (047) 271-13-91</p>
            <p>+38 (047) 271-05-80</p>
        </div>
        <div class="right-col__ardress">
            <p class="ardress-title">Новомосковск</p>
            <p>ул. Жукова, 1а</p>
            <p class="ardress-phone">+38 (056) 767-57-20</p>
        </div>
    </div>
    <!-- </div> -->
</div>
<div id="hideBlock">
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