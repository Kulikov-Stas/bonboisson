@if(Session::has('success'))
   <div class="alert alert-success">
     {{ Session::get('success') }}
   </div>
@endif
<form action="{{ url()->current() }}" method="POST" id="formContacts" enctype="multipart/form-data">
    <p class="inp-title">{{ __('contacts.department_selection') }}</p>
    @csrf
    @if(!empty($departments))
    <select name="department" id="department" required>
        @foreach($departments as $department)
        <option value="{{ $department->email }}">{{ $department->name }}</option>
        @endforeach
    </select>
    @endif
    <p class="inp-title">{{ __('contacts.name') }}</p>
    <input type="text" name="name" placeholder="Артем Загорулько" required>
    <span class="text-danger">{{ $errors->first('name') }}</span>
    <p class="inp-title">{{ __('contacts.phone') }}</p>
    <input type="text" name="phone" id="phone" placeholder="+38 (067) 48 59 852" required>
    <p class="inp-title">E-mail</p>
    <input type="email" name="email" placeholder="user@mail.com" required>
    <span class="text-danger">{{ $errors->first('email') }}</span>
    <p class="inp-title">{{ __('contacts.text_message') }}</p>
    <textarea name="message" id="message" cols="30" rows="5" required placeholder="Компания «Бон Буассон» ведущий лидер по производству минеральной воды и безалкогольных напитков. Портфель брендов компании включает в себя ТМ БОН БУАССОН, Bon Lemon, Чудо-Сад, Black, Квас Боярский. Главный принцип компании - традиции и качество!"></textarea>
    <span class="text-danger">{{ $errors->first('message') }}</span>
    <input type="checkbox" name="privacy" id="checkbox" class="checkbox" required>
    <label for="checkbox" class="checkbox-style">
        <p>{{ __('contacts.agree') }} <a class="simple-ajax-popup" href="{{ url(app()->getLocale().'/politika-konfidencial-nosti') }}"> {{ __('contacts.privacy_policy') }}</a></p>
    </label>
    <label for="addFile" class="addFile">
        <p>{{ __('contacts.attach_file') }}</p> <span id="fileNme"></span>
    </label>
    <input type="file" name="uploadFile" id="addFile">
    <input type="submit" value="{{ __('contacts.submit') }}">
</form>

<script>
$('.simple-ajax-popup').magnificPopup({
        type: 'ajax'
    });
</script>