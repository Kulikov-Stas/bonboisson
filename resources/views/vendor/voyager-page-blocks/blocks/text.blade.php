<!-- TEXT BLOCK -->
@php 
	if(!empty($blockData->class))
		$class = $blockData->class;
	else
		$class = '';

	if($blockData->animation != 'none')
		$class .= ' wow ' . $blockData->animation;

	$text = 'text_'.app()->getLocale();
@endphp
<div id="{{ $blockData->id }}" class="page-block text-block about-company-discription-block pl-0 {{ $class }}" style="
	@if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
	{!! $blockData->$text !!}
</div>
<!-- /TEXT BLOCK -->