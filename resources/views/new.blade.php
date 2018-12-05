@extends('layouts.app')

@section('content')
    <div class="page">
        <div class="rowFluid">
            <div class="span12">
                <div class="main">
                    <div class="z_banner news_banner"></div>
                    <div class="technical_support">
                        <div class="rowFluid">
                            <div class="span12">
                                <div class="container">
                                    <div class="wow fadeInRight animated" style="visibility: visible; animation-name: fadeInRight;">
                                        <div class="technical_support_list" style="margin:0 auto">
                                            <div class="technical_support_box_z">
                                                <div class="technical_support_box_z_header">
                                                    <div class="title">{{ $new->title }}</div>
                                                    <ul>
                                                        <li>作者：{{ $new->author }}</li>
                                                        <li>发表时间：{{ $new->created_at }}</li>
                                                        <li>来源：未知</li>
                                                    </ul>
                                                </div>
                                                <div class="technical_support_box_z_info_box">
                                                    <div class="technical_support_box_z_info">
                                                        {!! $new->content !!}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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