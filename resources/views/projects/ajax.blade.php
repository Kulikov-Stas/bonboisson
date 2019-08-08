@foreach($projects as $project)
<a href="{!! url(app()->getLocale() . '/projects/' . $project->slug) !!}" class="social-main-block__social">
    <div class="social-main-block__social-img">
        <img src="{{ imageUrl($project->image, 275, 205, ['crop' => true]) ?: url('/img/noimage.jpg') }}" alt="{!! $project->title !!}">
    </div>
    @php 
        $date = new Date($project->created_at);
    @endphp
    <div class="social-main-block__social-discription">
        <p>{!! $date->format('j F Y') !!}</p>
        <h2 >{!! $project->title !!}</h2>
        <p>{!! $project->description !!}</p>
    </div>
</a>
@endforeach