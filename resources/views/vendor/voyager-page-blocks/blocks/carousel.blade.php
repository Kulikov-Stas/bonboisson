@php
    if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;
        
    $blocks = array_chunk((array)$blockData, 5, true);
    array_pop($blocks);

    //echo '<pre>';
    //print_r($blocks);die();
@endphp

<div id="{{ $blockData->id }}" class="section-six {{ $class }}" data-wow-duration="2s" data-wow-offset="350" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif 
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
    <div class="slider-bottom-wrapper">
        <div id="sliderBottomIndicators" class="carousel slide bottomSlider" data-ride="carousel" data-interval="3000">
            <div class="carousel-inner slider-bottom">
                @foreach($blocks as $i => $slide)
                @php 
                    $i++; 
                    $image = 'image_' . $i;
                    $title = 'title_' . app()->getLocale() . '_' . $i;
                @endphp
                <div class="slider-bottom-item carousel-item {{ $i > 1 ? '' : 'active' }}">
                    <div class="slider-text mask-slider__grapefruit" style="background-image: url({{ Voyager::image( $slide[$image] ) }});">
                        <p>{{ $slide[$title] }}</p>
                    </div>
                </div>
                @endforeach
                <ol class="carousel-indicators">
                    @foreach($blocks as $i => $slide)
                    <li data-target="#sliderBottomIndicators" data-slide-to="{{ $i }}" class="{{ $i > 0 ? '' : 'active' }}"></li>
                    @endforeach
                </ol>
            </div>
        </div>
    </div>
</div>
