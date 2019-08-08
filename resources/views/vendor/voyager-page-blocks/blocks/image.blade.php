<!-- HTML VIDEO BLOCK -->
@php 
	if(!empty($blockData->class))
		$class = $blockData->class;
	else
		$class = '';

	if($blockData->animation != 'none')
		$class .= ' wow ' . $blockData->animation;

	$title = 'title_'.app()->getLocale();
@endphp
<div id="{{ $blockData->id }}" class="page-block image-block {{ $class }}" data-wow-duration="2s" data-wow-offset="150" style="text-align: {{ $blockData->align }}
	@if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif 
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
	@if (!empty($blockData->$title)) 
	<div class="mainBlockTitle">
		<h3>{{ $blockData->$title }}</h3> 
	</div>
	@endif
	<image width="{{ $blockData->width }}%" class=""
		style="display: inline-block;"
		src="{{ Voyager::image( $blockData->image ) }} "/>
</div>
<!-- /HTML VIDEO BLOCK -->