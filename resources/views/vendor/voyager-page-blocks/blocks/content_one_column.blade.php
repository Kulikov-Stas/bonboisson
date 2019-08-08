@php
if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;

$html_content_1 = 'html_content_'.app()->getLocale().'_1';
@endphp
<!-- ONE COLUMN BLOCK -->
<div id="{{ $blockData->id }}" class="container page-block pl-0 {{ $class }}" data-wow-duration="2s" data-wow-offset="150" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
  <div class="row">
    <div class="col-12 {!! $blockData->class_1 !!}">
      {!! $blockData->$html_content_1 !!}
    </div>
  </div>
</div>
<!-- /ONE COLUMN BLOCK -->