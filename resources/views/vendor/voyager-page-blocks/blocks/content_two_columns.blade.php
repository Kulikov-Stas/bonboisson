@php
if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;

$html_content_1 = 'html_content_'.app()->getLocale().'_1';
$html_content_2 = 'html_content_'.app()->getLocale().'_2';
@endphp


<!-- TWO COLUMN BLOCK -->
<div id="{{ $blockData->id }}" class="container page-block p-0 {{ $class }}" data-wow-duration="2s" data-wow-offset="150" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
  <div class="row">
    <div class="col-xs-12 col-xl-6 {!! $blockData->class_1 !!}">
      {!! $blockData->$html_content_1 !!}
    </div>
    <div class="col-xs-12 col-xl-6 {!! $blockData->class_2 !!}">
      {!! $blockData->$html_content_2 !!}
    </div>
  </div>
</div>
<!-- /TWO COLUMN BLOCK -->