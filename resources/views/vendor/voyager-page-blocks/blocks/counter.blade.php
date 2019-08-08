@php
    if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;
        
    $blocks = array_chunk((array)$blockData, 8, true);
    $blocks = array_chunk($blocks, 3, true);
    array_pop($blocks);
    //var_dump($blockData);die();
@endphp
<section id="{{ $blockData->id }}" class="page-block counter-block {{ $class }}" data-wow-duration="2s" data-wow-offset="350" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif 
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
    <div class="container">
        <div class="row">
            <!-- COUNTER BLOCK -->
            	<div class="numBlock-wrapper">
                    @foreach ($blocks as $array_blocks)
                    <div class="numBlock numLeftAbout">
                        @foreach ($array_blocks as $i => $block)
                        <div class="num-item ">
                            <div class="font-bubbles">
                                @php 
                                    $i++; 
                                    $number = 'number_' . $i;
                                    $text_after = 'text_after_' . app()->getLocale() . '_' . $i;
                                    $text_below = 'text_below_' . app()->getLocale() . '_' . $i;
                                @endphp
                                <p>@if(isset($block[$number])){{ $block[$number] }}@endif @if(!empty($block[$text_after]))<span>{{ $block[$text_after] }}</span>@endif</p>
                            </div>
                            @if(!empty($block[$text_below]))<p>{{ $block[$text_below] }}</p>@endif
                        </div>
                        @endforeach
                    </div>
                    @endforeach
                </div>

            <!-- /COUNTER BLOCK -->
        </div>
    </div>
</section>