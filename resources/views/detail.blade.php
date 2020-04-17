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
                    <div class="">


                        <div class="detail">

                            <div class="ct">
                                <div class="box">
                                    <div class="url">
                                        <p><a href="{{ url('/') }}">首页&nbsp;&nbsp;></a><i class="icon icon-enter"></i></p>
                                        <p><a href="{{ url('/anli') }}">&nbsp;&nbsp;案例&nbsp;&nbsp;></a><i class="icon icon-enter"></i></p>
                                        <p>&nbsp;&nbsp;正文</p>
                                    </div>
                                    <section>
                                        <content>
                                            <h1>{{ $anli->title }}</h1>
                                            <h5>{{ $anli->type }}</h5>
                                            @if($anli->video)
                                            <div class="mobile">
                                                <img src="{{ asset('skin/images/mobile.png') }}" alt="交易所开发">
                                                <video autoplay="autoplay" loop="loop" muted="muted" volume="0">
                                                    <source src="{{ asset('uploads/'.$anli->video) }}" type="video/mp4">
                                                </video>
                                            </div>
                                            @endif
                                            <div class="content1">
                                                {!! $anli->content1 !!}
                                            </div>
                                            <p>立即访问：<a href="{{ $anli->uri }}" rel="nofollow" style="color: #5AC3AE;">{{ $anli->uri }}</a></p>
                                        </content>
                                        <div class="_img">
                                            <div class="content2">
                                                {!! $anli->content2 !!}
                                            </div>
                                            <div class="more">
                                                <h5>更多案例</h5>
                                                <ul>
                                                    @foreach($randoms as $item)
                                                    <li>
                                                        <a href="{{ url('/detail/'.$item->id) }}">
                                                            <div class="file">
                                                                <img src="{{ asset('uploads/'.$item->image) }}" alt="交易所开发">
                                                            </div>
                                                            <span>{{ $item->title }}</span>
                                                            <p>{{ $item->type }}</p>
                                                        </a>
                                                    </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </div>
                            </div>








                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        .detail {
            width: 100%;
            min-height: 100vh;
            overflow: hidden;
            background: #F7F7F7;
        }

        .detail .ct {
            overflow: hidden;
            padding: 65px 16px 100px;
        }

        .detail .ct .box {
            width: 1200px;
            margin: 0 auto;
            overflow: hidden;
        }

        .detail .ct .url {
            width: 100%;
            height: 60px;
        }

        .detail .ct .url p {
            float: left;
            line-height: 60px;
            font-size: 14px;
            color: #4C4948;
        }

        .detail .ct .url p a {
            color: #5AC3AE;
        }

        .detail .ct section {
            margin-top: 73px;
            overflow: hidden;
        }

        .detail .ct section content {
            display: block;
            float: left;
            width: calc(100% - 80px - 720px);
        }

        .detail .ct h1 {
            font-size: 28px;
            line-height: 36px;
            color: #4C4948;
            font-weight: 400;
        }

        .detail .ct h5 {
            color: #ADADAD;
            margin-top: 15px;
        }

        .detail .ct content .pc {
            width: 373px;
            height: 302px;
            background: url("../img/pc.png") no-repeat;
            background-size: 100% 100%;
            padding: 14px 16px;
            margin: 80px 0 60px 0;
        }

        .detail .ct content .mobile {
            position: relative;
            width: 373px;
            height: 743px;
            margin: 80px 0 60px 0;
            padding: 21px 24px;
        }

        .detail .ct content .mobile img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 5;
        }

        .detail .ct content .mobile video {
            width: 100%;
            height: 100%;
            background: #242424;
        }

        .detail .ct content .pc video {
            width: 101%;
            height: 190px;
        }

        .detail .ct content p {
            font-size: 12px;
            color: #333333;
            line-height: 16px;
            margin-bottom: 16px;
        }

        .detail .ct ._img {
            width: 720px;
            overflow: hidden;
            float: right;
        }

        .detail .ct ._img img {
            width: 100%;
        }

        .detail .ct .more {
            margin-top: 80px;
            overflow: hidden;
        }

        .detail .ct .more .label {
            position: absolute;
            top: 0;
            left: 16px;
            z-index: 2;
            width: 34px;
        }

        .detail .ct .more h5 {
            font-size: 26px;
            line-height: 26px;
            color: #4C4948;
            font-weight: 400;
            margin-bottom: 40px;
        }

        .detail .ct .more ul {
            overflow: hidden;
        }

        .detail .ct .more li {
            position: relative;
            float: left;
            width: calc((100% / 2 - 40px) + 20px);
            margin-right: 40px;
        }

        .detail .ct .more li:last-child {
            margin: 0;
        }

        /*.detail .ct .more li img {
            width: 100%;
        }*/

        .detail .ct .more li .file {
            width: 100%;
            height: 200px;
            position: relative;
            overflow: hidden;
        }

        .detail .ct .more li .file img {
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            transform: translateY(-50%);
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
        }

        .detail .ct .more li span {
            display: block;
            text-align: center;
            font-size: 18px;
            line-height: 18px;
            color: #4C4948;
            font-weight: 400;
            margin-top: 20px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            padding: 0 10px;
        }

        .detail .ct .more li p {
            margin-bottom: 20px;
            text-align: center;
            font-size: 12px;
            color: #ADADAD;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            padding: 0 10px;
            margin-top: 12px;
        }

    </style>
    @include('layouts.footer')
@endsection
