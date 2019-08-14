@php
    if(!empty($blockData->class))
        $class = $blockData->class;
    else
        $class = '';

    if($blockData->animation != 'none')
        $class .= ' wow ' . $blockData->animation;
    // cut heading for right split
    $blockDataTmp = clone $blockData;
    unset($blockDataTmp->heading_ru);
    unset($blockDataTmp->heading_ua);
    unset($blockDataTmp->heading_en);
    $blocks = array_chunk((array)$blockDataTmp, 9, true);
    $blocks = array_chunk($blocks, 4, true);
    array_pop($blocks);

    $heading = 'heading_'.app()->getLocale();
@endphp
<div id="{{ $blockData->id }}" class="section-fourth {{ $class }}" data-wow-duration="2s" data-wow-offset="350" style="
    @if(!empty($blockData->margin)) margin: {{ $blockData->margin }}; @endif
    @if(!empty($blockData->padding)) padding: {{ $blockData->padding }}; @endif">
    <div class="site-width">
        <div class="container-fluid-fourth-section ">
            <div class="row justify-content-center">
                <h1 class="h1-fourth-section">{{ $blockData->$heading }}</h1>
                <div class="fourth-section-main justify-content-center">
                    @if(isset($blocks[0]))
                        <div class="col-no-padding fourth-flex-item-big">
                            @foreach ($blocks[0] as $i => $block)
                                @php
                                    $i++;
                                    $image = 'image_' . $i;
                                    $title = 'title_' . app()->getLocale() . '_' . $i;
                                    $text = 'text_' . app()->getLocale() . '_' . $i;
                                @endphp
                                <div class="fourth-flex-item-medium  wow bounceInUp {{ ($i % 2) ? "" : "flex-item-reverse" }}" data-wow-duration="2s" data-wow-offset="150">
                                    <div class="fourth-flex-item-small backgrocol">
                                        <p class="fourth-section-paragraph">{{ $block[$title] }}</p>
                                        <div class="hideDiscriptionText">
                                            <p>{{ $block[$text] }}</p>
                                        </div>
                                    </div>
                                    <div class="fourth-flex-item-small">
                                        <a href="{!! url(app()->getLocale() . '/products/' . $block['url_' . $i]) !!}" title="{{ $block[$title] }}"><img class="link4-25-25" src="{{ imageUrl($block[$image], 320, 320) }}" alt=" "></a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @endif
                    @if(isset($blocks[1]))
                        <div class="fourth-flex-item-big justify-content-center display-table">
                            @foreach ($blocks[1] as $i => $block)
                                @php
                                    $i++;
                                    $image = 'image_' . $i;
                                    $title = 'title_' . app()->getLocale() . '_' . $i;
                                    $text = 'text_' . app()->getLocale() . '_' . $i;
                                @endphp
                                <div class="fourth-flex-item-medium  wow bounceInUp {{ ($i % 2) ? "" : "flex-item-reverse" }}" data-wow-duration="2s" data-wow-offset="150">
                                    <div class="fourth-flex-item-small backgrocol">
                                        <p class="fourth-section-paragraph">{{ $block[$title] }}</p>
                                        <div class="hideDiscriptionText">
                                            <p>{{ $block[$text] }}</p>
                                        </div>
                                    </div>
                                    <div class="fourth-flex-item-small">
                                        <a href="{!! url(app()->getLocale() . '/products/' . $block['url_' . $i]) !!}" title="{{ $block[$title] }}"><img class="link4-25-25" src="{{ imageUrl($block[$image], 320, 320) }}" alt=" "></a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
