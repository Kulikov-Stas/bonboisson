@foreach($posts as $post)
<a href="{!! url(app()->getLocale() . '/news/' . $post->slug) !!}" class="news-main-block__news wow bounceInUp" data-wow-duration="2s" data-wow-offset="150">
    <div class="news-main-block__news-img">
        <img src="{{ imageUrl($post->image, 287, 206, ['crop' => true]) ?: url('/img/noimage.jpg') }}" alt="{{ $post->title }}">
    </div>
    <div class="news-main-block__news-discription">
        @php 
            $date = new Date($post->published_date);
        @endphp
        <p>{!! $date->format('j F Y') !!}</p>
        <h2>{{ $post->title }}</h2>
        @if ($post->excerpt)
        <p>{{ str_limit($post->excerpt, 200, '...') }}</p>
        @endif
    </div>
</a>
@endforeach