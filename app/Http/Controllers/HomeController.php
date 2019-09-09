<?php

namespace App\Http\Controllers;

use App\Partner;
use App\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function indexCn()
    {
        $title = config('index_title');
        $news = Post::all();
        $partners = Partner::all();
        return view('index_cn', compact('news', 'partners', 'title'));
    }

    public function indexEn()
    {
//        $title = config('index_title');
//        $news = Post::all();
//        $partners = Partner::all();
//        return view('index', compact('news', 'partners', 'title'));
        return view('index_en');
    }

    public function news($type, Request $request)
    {
        if($type == 'cn'){
            $t = 1;
        }else{
            $t = 2;
        }

        $title = '新闻资讯';
        $news = Post::where('type', $t)->orderBy('created_at', 'DESC')->get();

        return view('news_'.$type, compact('news', 'title'));
    }

    public function new($id)
    {
        $new = Post::findOrFail($id);
        $title = $new->title;

        return view('news_detail_cn', compact('new', 'title'));
    }
}
