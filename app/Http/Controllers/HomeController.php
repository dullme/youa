<?php

namespace App\Http\Controllers;

use App\Partner;
use App\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function index()
    {
        $news = Post::all();
        $partners = Partner::all();
        return view('index', compact('news', 'partners'));
    }

    public function fangan()
    {
        return view('fangan');
    }

    public function about()
    {
        return view('about');
    }

    public function anli()
    {
        return view('anli');
    }

    public function fangan5()
    {
        return view('fangan5');
    }

    public function daibi()
    {
        return view('daibi');
    }

    public function zhichi()
    {
        return view('zhichi');
    }

    public function lianxi()
    {
        return view('lianxi');
    }

    public function news($type, Request $request)
    {
        $news = Post::where('type', $type)->paginate(20);

        return view('news', compact('news'));
    }

    public function new($id)
    {
        $new = Post::findOrFail($id);

        return view('new', compact('new'));
    }
}
