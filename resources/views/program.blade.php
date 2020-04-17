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
                                    <h3 class="z_banner_title">解决方案</h3>
                                    <div class="z_banner_text"> 汇集优质资源，为你丰富技术路线，描绘发展蓝图，搭建完整生态结构，让你的天马行空落地，成长 </div>
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
                        <div class="system">
                            <div class="ct">
                                <div class="common-center" style="max-width: 1200px;margin: 0 auto;display: flex">
                                    <menu>
                                        @foreach($programs as $item)
                                        <p class="list_program active" id="{{ $item->id }}"><a href="###" title="{{ $item->title }}"><span>{{ $item->title }}</span></a></p>
                                        @endforeach
                                    </menu>
                                    <section id="section_id">
                                        @foreach($programs as $item)
                                            <div id="content_res_{{ $item->id }}" class="content_res_box">
                                                {!! $item->content !!}
                                            </div>
                                        @endforeach
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
        .system {
            width: 100%;
            min-height: 100vh;
            overflow: hidden;
            background: #ffffff;
        }

        .system .ct {
            padding: 65px 15px 0;
            overflow: hidden;
        }

        .system .ct menu {
            float: left;
            width: 200px;
        }

        .system .ct menu p {
            width: 100%;
            height: 74px;
            line-height: 74px;
            border-bottom: 1px solid #F2F2F2;
            color: #4C4948;
            cursor: pointer;
        }

        .system .ct menu p a {
            color: #4C4948;
        }

        .system .ct menu p.active {
            border-color: #01AA78;
            font-weight: 400;
        }

        .system .ct menu p:hover {
            text-decoration: underline;
        }

        .system .ct menu p.active:hover {
            text-decoration: none;
        }

        .system .ct section {
            float: right;
            width: calc(100% - 200px);
            border-left: 1px solid #F2F2F2;
        }

        .system .ct .banner {
            position: relative;
            width: 100%;
            height: 440px;
        }

        .system .ct .banner .text {
            position: absolute;
            top: 50%;
            left: 40px;
            width: 440px;
            transform: translateY(-50%);
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
        }

        .system .ct .banner .text h1 {
            font-size: 30px;
            line-height: 38px;
            color: #ffffff;
            font-weight: 400;
            margin-bottom: 20px;
        }

        .system .ct .banner .text p {
            color: #ffffff;
            line-height: 28px;
            opacity: .8;
            margin-bottom: 40px;
        }

        .system .ct .banner .text button {
            width: 180px;
            height: 42px;
            border-radius: 2px;
            background: #ffffff;
            font-size: 16px;
            color: #01AA78;
        }

        .system .ct .type {
            width: 100%;
            height: 60px;
        }

        .system .ct .type p {
            line-height: 60px;
            padding: 0 60px;
            border-bottom: 1px solid rgba(0, 0, 0, 0);
            font-size: 18px;
            color: #ADADAD;
            cursor: pointer;
            transition: color .3s;
            -moz-transition: color .3s;
            -webkit-transition: color .3s;
            -o-transition: color .3s;
            float: left;
        }

        .system .ct .type p:hover {
            color: #4C4948;
        }

        .system .ct .type p.active {
            color: #4C4948;
            border-color: #5AC3AE;
            font-weight: 400;
        }

        .system .ct content {
            display: block;
            overflow: hidden;
            width: 100%;
            min-height: 300px;
            padding: 0 40px 100px;
        }

        .system .ct .icon-box {
            width: 100%;
            overflow: hidden;
            margin-top: 70px;
        }

        .system .ct .icon-box .list,
        .system .ct .icon-box ul {
            overflow: hidden;
        }

        .system .ct .name {
            font-size: 22px;
            line-height: 22px;
            color: #4C4948;
            font-weight: 400;
            border-left: 5px solid #5AC3AE;
            padding-left: 20px;
        }

        .system .ct .icon-box ul {
            overflow: hidden;
            margin-top: 60px;
        }

        .system .ct .icon-box li {
            width: calc((100% / 3 - 99px) + 33px);
            margin-right: 33px;
            overflow: hidden;
            float: left;
        }

        .system .ct .icon-box li:nth-child(3n+0) {
            margin-right: 0;
        }

        .system .ct .icon-box img {
            display: block;
            height: 50px;
            margin: 0 auto 25px;
        }

        .system .ct .icon-box span {
            display: block;
            text-align: center;
            font-size: 20px;
            line-height: 20px;
            color: #4C4948;
            font-weight: 400;
            margin-bottom: 14px;
        }

        .system .ct .icon-box li p {
            line-height: 28px;
            color: #585858;
            text-align: center;
        }

        .system .ct .func {
            overflow: hidden;
            margin-top: 70px;
        }

        .system .ct .func img {
            display: block;
            width: 100%;
            margin-top: 60px;
        }

        .system .ct .app {
            margin-top: 70px;
        }

        .system .ct .app,
        .system .ct .app ul {
            width: 100%;
            overflow: hidden;
        }

        .system .ct .app ul {
            margin-top: 60px;
        }

        .system .ct .app li {
            width: calc(100% / 2);
            float: left;
            height: 290px;
        }

        .system .ct .app li a {
            display: block;
            width: 100%;
            height: 100%;
        }

        .system .ct .app button {
            width: 170px;
            height: 48px;
            border-radius: 2px;
            background: #01AA78;
            font-size: 16px;
            color: #ffffff;
            display: block;
            margin: 40px auto 0;
        }

        .system .ct .app button i {
            margin-left: 10px;
        }

        .system .ct .core {
            margin-top: 70px;
            overflow: hidden;
        }

        .system .ct .core .list,
        .system .ct .core .list ul {
            overflow: hidden;
        }

        .system .ct .core .list {
            margin-top: 60px;
        }

        .system .ct .core .list li {
            position: relative;
            width: calc((100% / 2 - 20px) + 10px);
            float: left;
            margin-right: 20px;
        }

        .system .ct .core .list li:nth-child(even) {
            margin-right: 0;
        }

        .system .ct .core .list li span {
            display: block;
            font-size: 20px;
            line-height: 20px;
            color: #4C4948;
            font-weight: 400;
            margin-bottom: 20px;
        }

        .system .ct .core .list li p {
            color: #585858;
            line-height: 28px;
        }

        .system .ct .core .list li div {
            width: 100%;
        }

        .system .ct .core .list li img {
            display: block;
            height: 228px;
            margin: 0 auto;
        }

        .box img{
            max-width: 100%;
        }

        .content_res_box{
            display: none;
            font-size: 14px;
        }

        .show{
            display: block !important;
        }
    </style>

    <script>
        var id = $('.system .common-center menu p').eq(0).attr('id');
        loadInner(id);
        $('.system .common-center menu p').click(function(){
            var sId = $(this).attr('id');
            $(this).addClass('active').siblings('p').removeClass('active');
//		window.location.hash = sId; //设置锚点
            loadInner(sId);
        });
        function loadInner(sId) {
            $('.list_program').removeClass('active')
            $('.content_res_box').removeClass('show')
            $('#'+sId).addClass('active')
            $('#content_res_'+sId).addClass('show')
        }
    </script>
    @include('layouts.footer')
@endsection
