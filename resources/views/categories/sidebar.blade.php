<div class="sideBlock">
    <div class="sidebar  col-2">
        <ul>
            @foreach($categories as $category)
            <li><a href="{!! url(app()->getLocale() . '/products/' . $category->slug) !!}">{{ $category->title }}</a></li>
            @endforeach
        </ul>
    </div>
</div>