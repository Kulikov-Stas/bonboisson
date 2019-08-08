@php
if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;
    $header = 'title_' . app()->getLocale();
@endphp


<div id="{{ $blockData->id }}" class="section-second {{ $class }}" data-wow-duration="2s" data-wow-offset="350" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif 
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
    <div class="site-width ">
        <div class="container-fluid">
            <div class="banner-wrapper">
                <div class="banner-wrapper-item banner1">
                    <img src="{{ imageUrl($blockData->banner_1, 640, 640) }}" alt="">
                </div>
                <div class="banner-wrapper-item banner2">
                    <div class="banner2-item1">
                        <img src="{{ url('/') }}/img/svg/white-cone.svg" class="shakeBlock" alt=" ">
                        <p class="second-section-paragraph-2">{!! $blockData->$header !!}</p>
                    </div>
                    <div class="banner2-item2">
                        <img src="{{ imageUrl($blockData->banner_2, 320, 320) }}" alt="">
                    </div>
                    <div class="banner2-item3">
                        <img src="{{ imageUrl($blockData->banner_3, 640, 320) }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>