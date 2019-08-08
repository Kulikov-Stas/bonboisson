@php
    if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;
        
    $blocks = array_chunk((array)$blockData, 10, true);
    //$blocks = array_chunk($blocks, 4, true);
    array_pop($blocks);

    //echo '<pre>';
    //print_r($blocks);die();
@endphp


<section id="{{ $blockData->id }}" class="{{ $class }}" data-wow-duration="2s" data-wow-offset="350" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif 
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
    <div class="container">
        <div class="row phylosophyMasonry">
            <div class="masonry-wrapper grid">
                @foreach ($blocks as $i => $block)
                @php 
                    $i++; 
                    $image = 'image_' . $i;
                    $featured = 'featured_' . $i;
                    $element_width = 'element_width_' . $i;
                    $width = 320 * intval($block[$element_width]);
                    $title = 'title_' . app()->getLocale() . '_' . $i;
                    $text = 'text_' . app()->getLocale() . '_' . $i;
                @endphp
                <div class="grid-itemPhilosophy wow bounceInUp {{ $block[$element_width] == 2 ? 'grid-itemPhilosophy_w2' : '' }} @if(!empty($block[$image])) imgPhylosophy @endif @if($block[$featured]) blue @endif" 
                     data-number="{{ $i-1 }}" data-wow-duration="2s" data-wow-offset="350">
                    @if(!empty($block[$image]))
                    <img class="link10-25-25" src="{{ imageUrl($block[$image], $width, 320) }}" alt=" ">
                    @else
                    <h4>{{ $block[$title] }}</h4>
                    <p>{{ $block[$text] }}</p>
                    @endif
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>