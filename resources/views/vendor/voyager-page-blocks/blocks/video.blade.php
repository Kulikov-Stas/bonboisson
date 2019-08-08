<!-- HTML VIDEO BLOCK -->
@php 
	if(!empty($blockData->class))
		$class = $blockData->class;
	else
		$class = '';

	if($blockData->animation != 'none')
		$class .= ' wow ' . $blockData->animation;

	$title = 'title_'.app()->getLocale();

	preg_match("/^(?:http(?:s)?:\/\/)?(?:www\.)?(?:m\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'>]+)/", $blockData->link, $matches);
@endphp
<div id="{{ $blockData->id }}" class="page-block video-block {{ $class }}" data-wow-duration="2s" data-wow-offset="150" style="text-align: {{ $blockData->align }}">
	@if (!empty($blockData->$title)) 
	<div class="mainBlockTitle">
		<h3>{{ $blockData->$title }}</h3> 
	</div>
	@endif
	<iframe width="{{ $blockData->width }}%" height="400"
	src="https://youtube.com/embed/{!! $matches[1] !!}">
	</iframe> 
</div>
<!-- /HTML VIDEO BLOCK -->