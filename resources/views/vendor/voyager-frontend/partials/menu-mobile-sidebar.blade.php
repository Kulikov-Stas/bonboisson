@foreach($items as $menu_item)
		@if(count($menu_item->children) > 0)
        <li class="dropdown-item noclose" data-toggle="collapse" data-target="#collapseOne">
        	{{ $menu_item->translate(app()->getLocale())->title }}
        @else
        <li class="dropdown-item">
        	<a class="{{ url()->current() == url($menu_item->link()) ? 'sidebar-active-item' : '' }}" href="{{ url(app()->getLocale() . $menu_item->link()) }}">{{ $menu_item->translate(app()->getLocale())->title }}</a>
        @endif
            @if(count($menu_item->children) > 0)
                <ul id="collapseOne" class="collapse">
                    @foreach($menu_item->children as $menu_item_2)
                            <li class="dropdown-item">
                                <a class="{{ url()->current() == url($menu_item_2->link()) ? 'sidebar-active-item' : '' }}" href="{{ url(app()->getLocale() . $menu_item_2->link()) }}">{{ $menu_item_2->translate(app()->getLocale())->title }}</a>
                            </li>
                    @endforeach
                </ul>
            @endif
        </li>

@endforeach
