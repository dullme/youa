<div class="footer wow fadeInUp">
    <div class="rowFluid">
        <div class="span12">
            <div class="container">
                <div class="footer_content">
                    <div class="span4 col-xm-12">
                        <div class="footer_list">
                            <div class="span6">
                                <div class="bottom_logo">
                                    <img src="{{ asset('skin/images/weixin.png') }}" alt="微信服务号二维码"/>
                                    <img src="{{ config('wechat_img') }}" style="padding: 10px;width: 125px" alt="微信服务号二维码"/>
                                </div>
                            </div>
                            <div class="span6 col-xm-12">
                                <div class="quick_navigation">
                                    <div class="quick_navigation_title">快速导航</div>
                                    <ul>
                                        <li><a href="{{ url('/') }}" title="首页">首页</a></li>
                                        <li><a href="{{ url('/fangan') }}" title="项目包装">项目包装</a></li>
                                        <li><a href="{{ url('/about') }}" title="白皮书">白皮书撰写</a></li>
                                        <li><a href="{{ url('/anli') }}" title="交易所">交易所开发</a></li>
                                        <li><a href="fangan5.html" title="需求填写" target="_blank">需求填写</a></li>

                                        <li><a href="{{ url('/daibi') }}" title="代币发行">代币发行</a></li>
                                        <li><a href="{{ url('/news/1') }}?type=1" title="新闻资讯">新闻资讯</a></li>

                                        <li><a href="{{ url('/zhichi') }}" title="技术支持">技术支持</a></li>

                                        <li><a href="{{ url('/lianxi') }}" title="联系我们">联系我们</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span4 col-xm-6 col-xs-12">
                        <div class="footer_list">
                            <div class="footer_link">
                                <div class="footer_link_title">友情链接</div>
                                <ul id="frientLinks">
                                    @foreach(\App\Link::all() as $item)
                                        <li><a href='{{ $item->uri }}' target='_blank'>{{ $item->name }}</a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="span4 col-xm-6 col-xs-12">
                        <div class="footer_list">
                            <div class="footer_cotact">
                                <div class="footer_cotact_title">联系方式</div>
                                <ul>
                                    <li><span class="footer_cotact_type">地址：</span><span class="footer_cotact_content">{{ config('address') }}</span>
                                    </li>
                                    <li><span class="footer_cotact_type">电话：</span><span
                                                class="footer_cotact_content"><a href="tel:186-6821-5221" class="call">{{ config('mobile') }}</a></span>
                                    </li>
                                    <li><span class="footer_cotact_type">网址：</span><span
                                                class="footer_cotact_content"><a href="#"
                                                                                 title="官网">{{ config('uri') }}</a></span>
                                    </li>
                                    <li><span class="footer_cotact_type">邮箱：</span><span class="footer_cotact_content">{{ config('email') }}</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>