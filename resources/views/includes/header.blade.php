            <div class="section-header">
                <div class="site-width">
                    <div class="container-fluid">
                        <div class="row">
                            {!! menu('primary', 'includes.menu') !!}
                            <ul class="col flex-header-2">
                                @foreach(config('voyager.multilingual.locales') as $lang)
                                <li class="fenavc navcc"><a href="{!! url(strtolower($lang)) !!}">{{ strtoupper($lang) }}</a></li>
                                @endforeach
                            </ul>
                            <ul class="col flex-header-3">
                                    <a href="{!! url('/') !!}"><img class="bb-logo" src="assets/img/svg/logo.svg?ver=29-07-2019" alt=" "></a>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>