@foreach($items as $menu_item)
    @if(count($menu_item->children) > 0)<ul class="dropdown menu" data-dropdown-menu>@endif
        <li>
            <a class="{{ url()->current() == url($menu_item->link()) ? 'sidebar-active-item' : '' }}" href="{{ url(app()->getLocale() . $menu_item->link()) }}">{{ $menu_item->translate(app()->getLocale())->title }}</a>
            @if(count($menu_item->children) > 0)
                <ul class="dropdown menu" data-dropdown-menu>
                    @foreach($menu_item->children as $menu_item_2)
                        @if (count($menu_item->children) > 0)
                            @include('voyager-frontend::partials.menu-mobile', ['items' => $menu_item->children])
                        @else
                            <li>
                                <a class="{{ url()->current() == url($menu_item_2->link()) ? 'sidebar-active-item' : '' }}" href="{{ url(app()->getLocale() . $menu_item_2->link()) }}">{{ $menu_item_2->translate(app()->getLocale())->title }}</a>
                            </li>
                        @endif
                    @endforeach
                </ul>
            @endif
        </li>
    @if(count($menu_item->children) > 0)</ul>@endif
@endforeach
