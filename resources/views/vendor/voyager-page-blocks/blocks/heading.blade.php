<!-- HEADING BLOCK -->
@php 
	if(!empty($blockData->class))
		$class = $blockData->class;
	else
		$class = '';

	if($blockData->animation != 'none')
		$class .= ' wow ' . $blockData->animation;

	if($blockData->background)
		$class .= ' aboutCompanyAnimClass animateTitle';

	if(!empty($blockData->font_size))
		$style = 'font-size: ' . $blockData->font_size . ';';
	else
		$style = '';

	if(!empty($blockData->line_height))
		$style .= ' line-height: ' . $blockData->line_height . ';';

	if(!empty($blockData->font))
		$style .= ' font-family: ' . $blockData->font;

	$text = 'text_'.app()->getLocale();
@endphp

<div id="{{ $blockData->id }}" class="mainBlockTitle page-block heading-block {{ $class }}" style="display: block; width: 100%; text-align: {{ $blockData->align }};
	@if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif 
	@if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif
	@if(!empty($blockData->background)) background: url({{ Voyager::image($blockData->background) }}); @endif
	" data-wow-duration="2s" data-wow-offset="350">
	<{{ $blockData->tag }} style="{{ $style }}">
		@if(!empty($blockData->link))
			<a href="{{ $blockData->link }}" title="{{ $blockData->$text }}">{{ $blockData->$text }}</a>
		@else
			{{ $blockData->$text }}
		@endif
	</{{ $blockData->tag }}> 
</div>
<!-- /HEADING BLOCK -->