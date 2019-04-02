<?php

namespace App\Http\Controllers\Website\News;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CatagoriesType;
use App\News;
use App\Tag;
use App\Writer;
use Cart;
use Session;
// use Event;

class NewsController extends Controller
{
	public function index()
	{
		$news = News::where('status', '1')->latest()->paginate(4);
		$news_recent = News::where('status', '1')->latest()->take(5)->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$tags = Tag::all();

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = 'News';
		return view('website.news.index', compact('total','catagoriesTypes','breadcrumb','news','news_recent','tags','news_popular'));
	}

	public function tagged($slug)
	{
		// Get News theo tag 
		$news = News::whereHas('tags', function ($query) use($slug) {
			$query->where('slug', $slug);
		})->latest()->paginate(4);
		$news_recent = News::where('status', '1')->latest()->take(5)->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$tags = Tag::all();

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = Tag::where('slug', $slug)->first()->name;
		$breadcrumb_new = "News";
		return view('website.news.index', compact('total','catagoriesTypes','breadcrumb','breadcrumb_new','news','news_recent','tags','news_popular'));
	}

	public function author($username)
	{
		// Get News theo author_id  writer
		if ($username == 'admin') {
			$news = News::where('author_id', null)->latest()->paginate(4);
		} else {
			$news = News::whereHas('author', function ($query) use($username) {
				$query->where('username', $username);
			})->latest()->paginate(4);
		}

		$news_recent = News::where('status', '1')->latest()->take(5)->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$tags = Tag::all();

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = Writer::where('username', $username)->first()->name ?? ucwords($username);
		$breadcrumb_new = "News";
		return view('website.news.index', compact('total','catagoriesTypes','breadcrumb','breadcrumb_new','news','news_recent','tags','news_popular'));
	}

	public function view($id)	
	{
		$news = News::findOrFail($id);
		// count view
		$newsView = Session::get('news_views_'.$news->id);
		// nếu chưa có session
		// if (!Session::has('news_views_'.$news->id)) {
		if (!$newsView) { 
			Session::put('news_views_'.$news->id, 1); // Tạo, Set giá trị cho session
			$news->increment('count_views'); // Tăng lần view lên 
		}
		// Event::fire('news.view', $news);

		
		$news_recent = News::where('status', '1')->where('id', '!=', $id)->latest()->take(5)->get();
		$news_popular = News::where('status', '1')->where('id', '!=', $id)->orderBy('count_views', 'DESC')->take(5)->get();
		$tags = Tag::all();

		
		$news_related = News::whereHas('tags', function ($q) use ($news) {
			return $q->whereIn('name', $news->tags->pluck('name')); 
		})
		->where('id', '!=', $id) // So you won't fetch same post
		->latest()
		->take(5)
		->get();


		$previous = News::where('id', '<', $id)->orderBy('id','desc')->first();
		$next = News::where('id', '>', $id)->orderBy('id','asc')->first();

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = $news->title;
		$breadcrumb_new = "News";
		return view('website.news.show', compact('total','catagoriesTypes','breadcrumb','breadcrumb_new','news','news_recent','tags','previous','next','news_popular','news_related'));

	}
}
