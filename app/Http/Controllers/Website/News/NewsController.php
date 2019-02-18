<?php

namespace App\Http\Controllers\Website\News;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CatagoriesType;
use App\News;
use App\Tag;
use App\Writer;
use Cart;

class NewsController extends Controller
{
	public function index()
	{
		$news = News::where('status', '1')->paginate(4);
		$news_latest = News::where('status', '1')->latest()->take(5)->get();

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = 'News';
		return view('website.news.index', compact('total','catagoriesTypes','breadcrumb','news','news_latest'));
	}

	public function tagged($slug)
	{
		// Get News theo tag 
		$news = News::whereHas('tags', function ($query) use($slug) {
			$query->where('slug', $slug);
		})->paginate(4);

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = Tag::where('slug', $slug)->first()->name;
		$breadcrumb_new = "News";
		return view('website.news.index', compact('total','catagoriesTypes','breadcrumb','breadcrumb_new','news'));
	}

	public function author($username)
	{
		// Get News theo author_id  writer
		$news = News::whereHas('author', function ($query) use($username) {
			$query->where('username', $username);
		})->paginate(4);

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = Writer::where('username', $username)->first()->name;
		$breadcrumb_new = "News";
		return view('website.news.index', compact('total','catagoriesTypes','breadcrumb','breadcrumb_new','news'));
	}

	public function view($id)	
	{
		$news = News::findOrFail($id);

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = $news->title;
		$breadcrumb_new = "News";
		return view('website.news.show', compact('total','catagoriesTypes','breadcrumb','breadcrumb_new','news'));

	}
}
