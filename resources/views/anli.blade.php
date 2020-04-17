@extends('layouts.app')

@section('content')
    <div class="page">
        <div class="rowFluid">
            <div class="span12">
                <div class="main">
                    <div class="z_banner">
                        <div class="rowFluid">
                            <div class="span12">
                                <div class="container">
                                    <h3 class="z_banner_title">虚拟数字货币交易所</h3>
                                    <div class="z_banner_text">高逼格，你值得拥有</div>
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
                    <div class="support_type" style="margin-top: 20px !important;">


                        <div class="case">
                            <div class="ct">
                                <div class="common-center" style="max-width: 1200px;">
                                    <div class="common-title" style="margin-top: 60px">
                                        <img src="{{ asset('skin/images/caseTitle.png') }}" alt="交易所开发">
                                        <span>私人定制项目</span>
                                        <p>10+开发经验，请给我们信任，我们给你惊喜</p>
                                    </div>
                                    <div class="type">
                                        <span class="{{ request()->get('type') == null ? 'active' : '' }}">
                                            <a href="{{ url('/anli') }}">全部</a>
                                        </span>
                                        @foreach($categories as $key=>$item)
                                            <span class="{{ request()->get('type') == $key ? 'active' : '' }}">
                                                <a href="{{ url('/anli?type='.$key) }}" title="" style="color: black;">{{ $item }}</a>
                                            </span>
                                        @endforeach

                                    </div>
                                    <div class="list">
                                        <ul>
                                            @foreach($anlis as $item)
                                            <li>
                                                <a href="{{ url('/detail/'.$item->id) }}">
                                                    <div class="img">
                                                        <img src="{{ asset('uploads/'.$item->image) }}" alt="交易所开发" style="width: 100%;height: 100%">
                                                        @if($item->is_app)
                                                            <img class="label" src="{{ asset('skin/images/label.png') }}">
                                                        @endif
                                                    </div>
                                                    <span>{{ $item->title }}</span>
                                                    @if($item->type)<p>类别：{{ $item->type }}</p>@endif
                                                    @if($item->features)<p>特点：{{ $item->features }}</p>@endif
                                                </a>
                                                @if($item->uri)
                                                <p class="url">
                                                    <a href="{{ $item->uri }}" title="">地址：{{ $item->uri }}</a>
                                                </p>
                                                @endif
                                            </li>
                                            @endforeach

                                        </ul>
                                        <div style="clear:both;height:0;font-size:1px;line-height:0;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="paging">
                            {{ $anlis->links() }}
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        .case {
            width: 100%;
            min-height: 100vh;
            overflow: hidden;
            background: #ffffff;
        }

        .case .ct {
            overflow: hidden;
        }

        .case .ct .common-center {
            margin: auto;
            /*overflow: hidden;*/
        }

        .case .ct .common-title {
            margin-bottom: 80px;
        }

        .case .ct .type {
            width: 100%;
            height: 60px;
            border-top: 1px solid #F2F2F2;
            border-bottom: 1px solid #F2F2F2;
            text-align: center;
            margin-bottom: 60px;
        }

        .case .ct .type span {
            font-size: 18px;
            line-height: 70px;
            color: #ADADAD;
            margin-right: 50px;
            transition: color .3s;
            -moz-transition: color .3s;
            -webkit-transition: color .3s;
            -o-transition: color .3s;
            cursor: pointer;
            border-bottom: 1px solid rgba(255, 255, 255, 0);
            padding-bottom: 15px;
        }

        .case .ct .type span a {
            color: #4C4948;
        }

        .case .ct .type span:last-child {
            margin: 0;
        }

        .case .ct .type span.active {
            color: #4C4948;
            border-color: #5AC3AE;
        }

        .case .ct .type span:hover {
            color: #4C4948;
        }

        .case .ct .list,
        .case .ct ul {
            height: auto;
        }

        .case .ct li {
            float: left;
            min-height: 298px;
            width: calc((100% / 3 - 42px) + 14px);
            margin-right: 42px;
            margin-top: 40px;
            transition: all  .15s  ease-in;
            -moz-transition: all  .15s  ease-in;
            -webkit-transition: all  .15s  ease-in;
            padding-bottom: 15px;
            border-radius: 5px;
            overflow: hidden;
        }

        .case .ct li:hover {
            -webkit-box-shadow: 0 10px 30px rgba(0, 0, 0, .1);
            -moz-box-shadow: 0 10px 30px rgba(0, 0, 0, .1);
            box-shadow: 0 10px 30px rgba(0, 0, 0, .1);
            transform: translateY(-20px) translateX(-5px);
            -moz-transform: translateY(-20px) translateX(-5px);
            -webkit-transform: translateY(-20px) translateX(-5px);
        }


        .case .ct li a {
            display: block;
            overflow: hidden;
        }

        .case .ct li .url a {
            color: #5AC3AE;
        }
        .case .ct li .url a:hover {
            color: #0072EF;
        }

        .case .ct li:first-child,
        .case .ct li:nth-child(2),
        .case .ct li:nth-child(3) {
            margin-top: 0;
        }

        .case .ct li:nth-child(3n+0) {
            margin-right: 0;
        }

        .case .ct li .img {
            width: 100%;
            height: 236px;
            margin-bottom: 20px;
            position: relative;
        }

        .case .ct li .img .label {
            position: absolute;
            width: 34px;
            top: 0;
            left: 16px;
        }

        .case .ct li span {
            display: block;
            padding: 0 10px;
            font-size: 18px;
            line-height: 18px;
            color: #4C4948;
            text-align: center;
            font-weight: 400;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-bottom: 12px;
        }

        .case .ct li p {
            font-size: 12px;
            line-height: 18px;
            color: #ADADAD;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            text-align: center;
            padding: 0 10px;
        }

        .case .ct .page {
            width: 100%;
            overflow: hidden;
            text-align: center;
            margin-top: 60px;
            height: 26px;
        }

        .case .ct .page i {
            color: #4C4948;
            cursor: pointer;
        }

        .case .ct .page span {
            font-size: 16px;
            line-height: 16px;
            color: #ADADAD;
            padding: 0 3px;
            margin: 0 3px;
            padding-bottom: 6px;
            border-bottom: 1px solid rgba(0, 0, 0, 0);
            cursor: pointer;
        }

        .case .ct .page span.active {
            color: #4C4948;
            border-color: #5AC3AE;
        }

        .paging{
            padding: 100px 0px;
            text-align: center;
        }

        .pagination{
            display: inline-flex;
        }

        .pagination>li>a, .pagination>li>span {
            color: #5ac3a1;
        }

        .pagination>.active>span{
            background: #5ac3a1;
            color: #ffffff;
            border-color: #5ac3a1;
        }

        .common-center {
            width: 1200px;
            margin: 0 auto;
            /*overflow: hidden;*/
        }

        .common-type {
            width: 100%;
            overflow: hidden;
            text-align: center;
            height: 35px;
        }

        .common-type span {
            font-size: 18px;
            line-height: 18px;
            color: #ADADAD;
            margin-right: 50px;
            padding-bottom: 10px;
            border-bottom: 1px solid rgba(255, 255, 255, .0);
            cursor: pointer;
            transition: color .3s;
            -moz-transition: color .3s;
            -webkit-transition: color .3s;
            -o-transition: color .3s;
        }

        .common-type span a {
            color: #4C4948;
        }

        .common-type span:hover {
            color: #4C4948;
        }

        .common-type span:last-child {
            margin: 0;
        }

        .common-type span.active {
            color: #4C4948;
            border-color: #5AC3AE;
        }

        .common-title {
            position: relative;
            width: 100%;
            height: 120px;
            overflow: hidden;
            margin-bottom: 60px;
        }

        .common-title img {
            position: absolute;
            left: 50%;
            top: 50%;
            height: 120px;
            display: block;;
            transform: translateX(-50%) translateY(-50%);
            -webkit-transform: translateX(-50%) translateY(-50%);
            -moz-transform: translateX(-50%) translateY(-50%);
        }

        .common-title span {
            position: relative;
            z-index: 1;
            display: block;
            text-align: center;
            font-size: 26px;
            line-height: 26px;
            color: #4C4948;
            font-weight: 400;
            margin-bottom: 34px;
            margin-top: 23px;
        }

        .common-title p {
            position: relative;
            z-index: 1;
            font-size: 16px;
            line-height: 16px;
            color: #ADADAD;
            text-align: center;
        }
    </style>

    @include('layouts.footer')
@endsection
