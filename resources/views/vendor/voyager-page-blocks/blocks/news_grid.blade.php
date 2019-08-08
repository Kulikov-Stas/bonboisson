@php 
	if(!empty($blockData->class))
		$class = $blockData->class;
	else
		$class = '';

	if($blockData->animation != 'none')
		$class .= ' wow ' . $blockData->animation;

	$title = 'title_'.app()->getLocale();
	$news = Pvtl\VoyagerBlog\BlogPost::orderBy('published_date', 'desc')->take($blockData->total)->get();
    $news = $news->toArray();
    $news = array_chunk($news, 2, true);
@endphp

<section id="{{ $blockData->id }}" class="{{ $class }}" data-wow-duration="2s" data-wow-offset="350" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif 
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
    <div class="container">
        <div class="row main-news">
            <div class="title">
                <h1>{{ $blockData->$title }}</h1>
            </div>
            <div class="masonry-wrapper grid">
        	@foreach($news as $i => $news_block)
                @php 
                    $i++;
                @endphp
                @foreach($news_block as $article)
                    @php 
                        $date = new Date($article['published_date']);
                    @endphp
                    @if ($i % 2 === 0)
                    <a href="{!! url(app()->getLocale() . '/news/' . $article['slug']) !!}" title="{{ $article['title'] }}">
                        <div class="grid-itemMain @if($article['featured']) blue @endif" data-number="{{ $i }}">
                           <h4>{{ $article['title'] }}</h4>
                            <p>{{ $date->format('j F Y') }}</p>
                        </div>
                        <div class="grid-itemMain" data-number="{{ $i }}">
                            <img class="" src="{{ imageUrl($article['image'], 320, 320) }}" alt="{{ $article['title'] }}">
                        </div>
                    </a>
                    @else
                    <a href="{!! url(app()->getLocale() . '/news/' . $article['slug']) !!}" title="{{ $article['title'] }}">
                        <div class="grid-itemMain" data-number="{{ $i }}">
                            <img class="" src="{{ imageUrl($article['image'], 320, 320) }}" alt="{{ $article['title'] }}">
                        </div>
                        <div class="grid-itemMain @if($article['featured']) blue @endif" data-number="{{ $i }}">
                            <h4>{{ $article['title'] }}</h4>
                            <p>{{ $date->format('j F Y') }}</p>
                        </div>
                    </a>
                    @endif
                @endforeach
            @endforeach
            </div>
        </div>
    </div>
</section>
<section>
    <div class="container">
        <div class="row">
            <div class="btn-block page-block btn-news">
                <a class="btn btn-primary" href="{{ url(app()->getLocale() . '/news') }}">Все новости...</a>
            </div>
        </div>
    </div>
</section>