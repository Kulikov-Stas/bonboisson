<div class="manager-card-block wow bounceInUp" data-wow-duration="2s" data-wow-offset="100">
    <div class="manager-foto-block">
        <img src="{{ imageUrl($vacancy->managerId->image, 180, 180, ['crop' => true]) ?: '/default.png' }}" alt="">
        <div class="manager-discription">
            <p class="manager-name">{{ $vacancy->managerId->name }}</p>
            <p class="manager-position">{{ $vacancy->managerId->position }}</p>
        </div>
    </div>
    <div class="manager-сontacts-block">
        @if ($vacancy->managerId->phone)
        <span class="сontacts">{{ __('vacancies.phone') }}</span><span>{{ $vacancy->managerId->phone }}</span><br>
        @endif
        @if ($vacancy->managerId->email)
        <span class="сontacts">Email:</span><a href="mailto:{{ $vacancy->managerId->email }}">{{ $vacancy->managerId->email }}</a><br>
        @endif
        @if ($vacancy->managerId->skype)
        <span class="сontacts">Skype:</span><a href="skype:{{ $vacancy->managerId->skype }}?call">{{ $vacancy->managerId->skype }}</a>
        @endif
    </div>
</div>