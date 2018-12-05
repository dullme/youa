@extends('layouts.app')

@section('content')
    <div class="page">
        <div class="rowFluid">
            <div class="span12">
                <div class="main">
                    <div class="z_banner support_z_banner">
                        <div class="rowFluid">
                            <div class="span12">
                                <div class="container">
                                    <h3 class="z_banner_title">新闻中心</h3>
                                    <div class="z_banner_text"> 这里有您想知道的最新资讯与动态</div>
                                </div>
                                <ul class="platform_advantage_bg_z">
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="support_type">
                        <div class="rowFluid">
                            <div class="span12">
                                <div class="container">
                                    <div class="support_type_content">
                                        <div class="kzf-mod-center">
                                            <div class="span2 col-xs-4"><a href="{{ url('news/1') }}"
                                                                           class="support_type_list normal"
                                                                           title="平台动态">平台动态</a></div>
                                            <div class="span2 col-xs-4"><a href="{{ url('news/2') }}"
                                                                           class="support_type_list normal"
                                                                           title="行业新闻">行业新闻</a></div>
                                            <div class="span2 col-xs-4"><a href="{{ url('news/3') }}"
                                                                           class="support_type_list normal"
                                                                           title="帮助中心">帮助中心</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="kzf-mod-new-container">
                        <div class="rowFluid">
                            <div class="span12">
                                <div class="container" id="newslist">

                                    @foreach ($news as $item)
                                    <div class="rowFluid">
                                        <a href="{{ url('/new/'.$item->id) }}">
                                            <div class="kzf-mod-new-li">
                                                <div class="span2">
                                                    <div class="kzf-mod-new-time-box">
                                                        <div class="kzf-mod-new-time-date">
                                                            <span>{{ substr($item->created_at, 5, 2) }}</span>/<span>{{ substr($item->created_at, 8, 2) }}</span></div>
                                                        <div class="kzf-mod-new-time-year">{{ substr($item->created_at, 0, 4) }}</div>
                                                    </div>
                                                </div>
                                                <div class="span10">
                                                    <div class="kzf-mod-new-box">
                                                        <div class="kzf-mod-new-title">{{ $item->title }}</div>
                                                        <div class="kzf-mod-new-text">
                                                            {{ $item->describe }}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                </div>
                                <div class="container" style="float: right;margin-top: 100px">
                                    {{ $news->links() }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('layouts.footer')
@endsection