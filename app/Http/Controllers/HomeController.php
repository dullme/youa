<?php

namespace App\Http\Controllers;

use App\Anli;
use App\Category;
use App\Partner;
use App\Post;
use App\Program;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function index()
    {
        $title = config('index_title');
        $news = Post::all();
        $partners = Partner::all();
        return view('index', compact('news', 'partners', 'title'));
    }

    public function fangan()
    {
        $title = '项目包装-宁波友链科技有限公司';
        return view('fangan', compact('title'));
    }

    public function about()
    {
        $title = '白皮书撰写-宁波友链科技有限公司';
        return view('about', compact('title'));
    }

    public function anli()
    {
        $title = '交易所开发-宁波友链科技有限公司';

        $categories = Category::pluck('name', 'id');

        $query = Anli::query();
        $query->when(request('type'), function ($q) {
            return $q->where('category_id', request('type'));
        });

        $anlis = $query->orderBy('created_at', 'DESC')->select('id','category_id', 'title', 'image', 'uri', 'type', 'features', 'is_app')->paginate(12);

        return view('anli', compact('title', 'categories', 'anlis'));
    }

    public function detail($id)
    {
        $title = '交易所开发-宁波友链科技有限公司';

        $anli = Anli::findorFail($id);

        $randoms = Anli::inRandomOrder()->where('id','!=', $id)->select('id','category_id', 'title', 'image', 'uri', 'type', 'features', 'is_app')->take(2)->get();

        return view('detail', compact('title', 'anli', 'randoms'));
    }

    public function fangan5()
    {
        $title = '交易所开发-宁波友链科技有限公司';
        return view('fangan5', compact('title'));
    }

    public function daibi()
    {
        $title = '代币发行-宁波友链科技有限公司';
        return view('daibi', compact('title'));
    }

    public function zhichi()
    {
        $title = '技术支持-宁波友链科技有限公司';
        return view('zhichi', compact('title'));
    }

    public function lianxi()
    {
        $title = '联系我们-宁波友链科技有限公司';
        return view('lianxi', compact('title'));
    }

    public function news($type, Request $request)
    {
        $title = '新闻资讯-宁波友链科技有限公司';
        $news = Post::where('type', $type)->paginate(20);

        return view('news', compact('news', 'title'));
    }

    public function new($id)
    {
        $new = Post::findOrFail($id);
        $title = $new->title.'-宁波友链科技有限公司';

        return view('new', compact('new', 'title'));
    }

    public function program()
    {
        $title = '解决方案-宁波友链科技有限公司';

       $programs = Program::all();

        return view('program', compact('title', 'programs'));
    }
}
