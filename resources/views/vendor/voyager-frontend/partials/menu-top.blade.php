@foreach($items as $menu_item)
    <a href="{{ url(app()->getLocale() . $menu_item->link()) }}">{{ $menu_item->translate(app()->getLocale())->title }}</a>
@endforeach
