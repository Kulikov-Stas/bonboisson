@php
if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;

$text = 'image_text_'.app()->getLocale();
@endphp


<!-- TWO COLUMN BLOCK -->
<div id="{{ $blockData->id }}" class="container-fluid page-block novomoskovsk-main__discription {{ $class }}" data-wow-duration="2s" data-wow-offset="150" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
  <div class="row">
    @if($blockData->image_align == 'left')
    <div class="col-xs-12 col-md-6 p-0 pr-md-5 mb-5">
      <image class="" @if(!empty($blockData->width)) width="{{ $blockData->width }}%" @endif
              src="{{ Voyager::image( $blockData->image ) }} "/>
    </div>
    <div class="col-xs-12 col-md-6 align-self-center animateVaweClass pl-0">
      {!! $blockData->$text !!}
    </div>
    @else
    <div class="col-xs-12 col-md-6 align-self-center animateVaweClass pl-0 mb-5">
      {!! $blockData->$text !!}
    </div>
    <div class="col-xs-12 col-md-6 pl-0">
      <image class="" width="{{ $blockData->width }}%"
              src="{{ Voyager::image( $blockData->image ) }} "/>
    </div>
    @endif
  </div>
</div>
<!-- /TWO COLUMN BLOCK -->