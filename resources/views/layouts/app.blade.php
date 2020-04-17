<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=yes">
    <title>{{ $title ?? '宁波友链科技有限公司'}}</title>
    <meta name="description" content="{{ config('description') }}"/>
    <meta name="keywords" content="{{ config('keywords') }}"/>
    <meta name="author" content="order by {{ config('uri') }}"/>
    <meta name="renderer" content="webkit">
    <!--ico-->
    <link rel="stylesheet" type="text/css" href="{{ asset('skin/css/base.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('skin/css/animate.min.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('skin/css/owl.carousel.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('skin/css/style.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('skin/css/responsive.css') }}"/>
    <script src="{{ asset('skin/js/jquery-1.11.0.min.js') }}"></script>
    <script src="{{ asset('skin/js/wow.min_1.js') }}"></script>
    <script src="{{ asset('skin/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('skin/js/page.js') }}"></script>

    <style type="text/css">
        .pagination {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="rowFluid">
        <div class="span2 col-md-12">
            <div class="logo"><a href="/" title="返回首页"> <img src="{{ config('logo') }}" alt="Hi白皮书"
                                                             style="margin-top:21PX;"/> </a></div>
        </div>
        <div class="span8">
            <div class="mobileMenuBtn"><span class="span1"></span><span class="span2"></span><span class="span3"></span>
            </div>
            <div class="mobileMenuBtn_shad"></div>
            <div class="header_menu" id="homeBar">
                <ul id="menu">
                    <li><a href="{{ url('/') }}" title="首页">首页</a></li>
                    <li><a href="{{ url('/fangan') }}" title="项目包装">项目包装</a></li>
                    <li><a href="{{ url('/about') }}" title="白皮书">白皮书撰写</a></li>
                    <li><a href="{{ url('/anli') }}" title="案例">案例</a></li>
                    <li><a href="{{ url('/program') }}" title="解决方案">解决方案</a></li>
{{--                    <li><a href="{{ url('/anli') }}" title="交易所">交易所开发</a></li>--}}
{{--                    <li><a href="{{ url('/daibi') }}" title="代币发行">代币发行</a></li>--}}
                    <li><a href="{{ url('/news/1') }}?type=1" title="新闻资讯">新闻资讯</a></li>

                    <li><a href="{{ url('/zhichi') }}" title="技术支持">技术支持</a></li>

                    <li><a href="{{ url('/lianxi') }}" title="联系我们">联系我们</a></li>
                </ul>
            </div>
        </div>
        <div class="span2"></div>
    </div>
</div>
<div class="aside">
    <ul>
        <li><a href="{{ url('/lianxi') }}" target="_blank" title="合作"><img
                        src="{{ asset('skin/images/057.png') }}" alt="合作"/>合作</a>
        </li>
        <li class="consulting"><a href="#this" title="HI白皮书在线"><span></span><span></span><span></span><img
                        src="{{ asset('skin/images/059.png') }}" class="img1" alt="HI白皮书在线"/><img
                        src="{{ asset('skin/images/061.png') }}"
                        class="img2" alt="HI白皮书在线"/>咨询</a>
        </li>
        <li><a href="{{ url('/lianxi') }}"><img src="{{ asset('skin/images/060.png') }}"
                                                alt="建站帮助中心"/>帮助</a></li>
    </ul>
</div>
<div class="consulting_box">
    <div class="title">
        <div class="title_t1">RELATEED CONSULTING</div>
        <div class="title_t2">相关咨询</div>
    </div>
    <div class="consulting_type">
        <div class="consulting_type_title">选择下列产品马上在线沟通</div>
        <ul>
            <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=809944490&site=qq&menu=yes" title="响应式白皮书咨询">
                    <img src="{{ asset('skin/images/062.png') }}" class="img1" alt="网站建设"/><img
                            src="{{ asset('skin/images/063.png') }}" class="img2"
                            alt="响应式网站咨询"/>白皮书咨询 </a></li>
            <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=809944490&site=qq&menu=yes" title="建站平台交易所咨询">
                    <img src="{{ asset('skin/images/062.png') }}" class="img1" alt="建站平台"/><img
                            src="{{ asset('skin/images/063.png') }}" class="img2"
                            alt="建站平台代理咨询"/>交易所咨询 </a></li>
            <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=809944490&site=qq&menu=yes" title="响应式网站定制">
                    <img src="{{ asset('skin/images/062.png') }}" class="img1" alt="响应式网站定制"/><img
                            src="{{ asset('skin/images/063.png') }}"
                            class="img2" alt="响应式网站定制"/>定制咨询
                </a></li>
        </ul>
        <div class="time">服务时间：9:30-18:00</div>
    </div>
    <div class="problem">
        <div class="problem_title">你可能遇到了下面的问题</div>
        <ul>
            <li><span></span>如何发行自己的数字货币（代币）</li>
            <li><span></span>怎么写好白皮书</li>
            <li><span></span>如何对接交易所</li>
            <li><span></span>交易所开发费用多少钱</li>
            <li><span></span>如何炒币</li>

        </ul>
    </div>
    <div class="close"><img src="{{ asset('skin/images/close.png') }}" alt="关闭右侧工具栏"/></div>
</div>
@yield('content')
<div class="footer">
    <div class="rowFluid">
        <div class="span12">
            <div class="copyright">Copyright © 2002-2018 {{ config('uri') }} hi白皮书 版权所有 {{config('beianhao')}}</div>
        </div>
    </div>
</div>
<script src="skin/js/effects.js"></script>
<script type="text/javascript">
    // 顶部菜单高亮
    var currentMenu = $('#homeBar a[href="' + window.location.origin + window.location.pathname + '"]:first');
    if (currentMenu) currentMenu.addClass('active');
</script>
</body>
</html>
