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
        $partners = Partner::all();
        return view('index_cn', compact('partners', 'title'));
    }

    public function indexEn()
    {
        $title = 'HBY - Creating a better future';
        $partners = Partner::all();
        return view('index_en', compact('partners', 'title'));
    }

    public function news($type, Request $request)
    {
        if($type == 'cn'){
            $title = '新闻资讯';
            $t = 1;
        }else{
            $title = 'news';
            $t = 2;
        }


        $news = Post::where('type', $t)->orderBy('created_at', 'DESC')->get();

        return view('news_'.$type, compact('news', 'title'));
    }

    public function new($id)
    {
        $new = Post::findOrFail($id);
        $title = $new->title;

        if($new->type == 1){
            return view('news_detail_cn', compact('new', 'title'));
        }else{
            return view('news_detail_en', compact('new', 'title'));
        }
    }
}
