@php if (empty($layout)) $layout = 'default'; @endphp
@php $layout_path = 'voyager-frontend::layouts.' . $layout; @endphp
@extends($layout_path)
@section('meta_title', $page->title)
@section('meta_description', $page->meta_description)
@section('page_title', $page->title)
@section('page_id', 'page')
@section('page_banner', imageUrl($page->image, 1200, 211))

@if ($layout = 'sidebar')
@section('sidebar_title', __('vacancies.sidebar_title'))
@section('sidebar_menu_mobile')
    <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ $page->title }}</a>
    <div class="dropdown-menu about-main__drop-menu_show" aria-labelledby="dropdownMenuLink">
    	<ul>
    		{{ menu('sidebar', 'voyager-frontend::partials.menu-mobile-sidebar') }}
    	</ul>
    </div>
@stop

@section('sidebar_menu')
    <ul>
        {{ menu('sidebar', 'voyager-frontend::partials.menu-left') }}
    </ul>
@stop
@endif

@section('content')
    {!! $page->body !!}
@endsection
