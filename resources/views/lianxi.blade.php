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
                                    <h3 class="z_banner_title">联系我们</h3>
                                    <div class="z_banner_text"> 快速联系我们及时沟通--获得更多互联网完美方案 </div>
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
                    <div class="kzf-mod-product">
                        <div class="rowFluid">
                            <div class="container">
                                <div class="kzf-mod-product-header wow fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="map-item" style="padding: 0px; margin: 65px 0px 0px; width: 100%; height: 298px; border: 1px solid rgb(217, 217, 217); color: rgb(126, 126, 126); font-family: 微软雅黑; font-size: 14px; line-height: 24px;"> <a href="#" style="text-decoration: none; color: rgb(113, 113, 113);" target="_blank"><img height="298" src="skin/images/1-160921221054q1.jpg" style="border-width: 0px 1px 0px 0px; border-right-style: solid; border-right-color: rgb(217, 217, 217); overflow: hidden; display: block; float: left;" width="599"></a>
                                        <div class="mapdec" style="padding: 0px; margin: 0px; float: right; width: 570px;">
                                            <div class="text" style="padding: 0px; margin: 38px 0px 0px; float: left; width: 285px;">
                                                <h1 style="padding: 0px; margin: 0px; font-size: 18px; color: rgb(56, 55, 53); line-height: 35px;"> 上海（总部）</h1>
                                                地址：{{ config('address') }}<br>
                                                邮编：{{ config('zip_code') }}<br>
                                                电话：{{ config('mobile') }}<br>
                                                节假日电话：{{ config('holiday_mobile') }}<br>
                                                微信：{{ config('wechat') }}<br>
                                                邮箱：{{ config('email') }}<br>
                                                网址：{{ config('uri') }}</div>
                                            <div class="qr" style="padding: 0px; margin: 68px 30px 0px 0px; float: right;"> <img src="{{ config('wechat_img') }}" style="border-width: 0px 1px 0px 0px; border-right-style: solid; border-right-color: rgb(217, 217, 217); overflow: hidden; display: block; float: left; width: 200px; height: 200px;"><br>
                                                微信扫一扫</div>
                                        </div>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="container"></div>
                <div id="info"> </div>
                @include('layouts.contact')
            </div>
        </div>
    </div>
@endsection