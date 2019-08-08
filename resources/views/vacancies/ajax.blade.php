@foreach($vacancies as $vacancy)
<div class="one-vacance-block">
    @if(isset($vacancy->cityId->name))
    <div class="city">
        <img src="{{ url('/') }}/img/png/vector.png" alt="">
        <a href="{{ url(app()->getLocale() . '/vacancies/' . $vacancy->cityId->slug) }}" class="city-link">{{ $vacancy->cityId->name }}</a>
    </div>
    @endif
    <div class="one-vacance__title">
        <h2><a href="{!! url(app()->getLocale() . '/vacancies/' . $vacancy->cityId->slug . '/' . $vacancy->slug) !!}">{{ $vacancy->title }}</a></h2>
    </div>
    <div class="one-vacanse-discription">
        {{ $vacancy->description }}
    </div>
</div>
@endforeach