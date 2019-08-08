@foreach($items as $menu_item)
        <li>
            <a class="{{ url()->current() == url(app()->getLocale() . $menu_item->link()) ? 'sidebar-active-item' : '' }}" 
                href="{{ count($menu_item->children) > 0 ? '#sidebar-menu-collapse-'.$menu_item->id : url(app()->getLocale() . $menu_item->link()) }}"
                @if(count($menu_item->children) > 0) data-toggle="collapse" @endif>{{ $menu_item->title }}</a>
            @if(count($menu_item->children) > 0)
                <ul id="sidebar-menu-collapse-{{ $menu_item->id }}" class="collapse">
                    @foreach($menu_item->children as $menu_item_2)
                            <li>
                                <a class="{{ url()->current() == url($menu_item_2->link()) ? 'sidebar-active-item' : '' }}" href="{{ url(app()->getLocale() . $menu_item_2->link()) }}">{{ $menu_item_2->title }}</a>
                            </li>
                    @endforeach
                </ul>
            @endif
        </li>
@endforeach
