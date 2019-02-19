<?php

namespace App\Http\Controllers\Website\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CatagoriesType;
use App\News;
use Cart;

class ErrorController extends Controller
{
	public function NotFound404()
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$breadcrumb = '404 Page not found';
		return view('errors.404', compact('total','catagoriesTypes','breadcrumb','news_popular'));
	}
}
