@php 
	if(!empty($blockData->class))
		$class = $blockData->class;
	else
		$class = '';

	if($blockData->animation != 'none')
		$class .= ' wow ' . $blockData->animation;

	$text = 'text_'.app()->getLocale();
@endphp
<section>
    <div class="container">
        <div class="row">
        	<div class="col-12">
				<div id="{{ $blockData->id }}" class="page-block text-block about-company-discription-block {{ $class }}" style="
					text-align: {{ $blockData->align }};
					@if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif
				    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
					<a href="{{ $blockData->link }}" class="btn btn-primary" role="button" aria-pressed="true">{{ $blockData->$text }}</a>
				</div>
			</div>
		</div>
    </div>
</section>