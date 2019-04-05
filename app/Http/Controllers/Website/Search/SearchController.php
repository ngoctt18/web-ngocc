<?php

namespace App\Http\Controllers\Website\Search;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\CatagoriesType;
use App\News;
use Cart;

class SearchController extends Controller
{
	public function index(Request $request)
	{
		$query = $request->query('query', NULL);
		$data = Product::query();
		if ($query != NULL) {
			$data = $data->where('name', 'LIKE', '%'.$query.'%');
		}
		$data = $data->latest()->get();

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = 'Search';
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$productsSearchs = Product::where('name', 'LIKE', '%'.$query.'%')->get();
		// return $productsSearchs;
		return view('website.pages.search_product', compact('total','catagoriesTypes','breadcrumb','news_popular','productsSearchs'));
	}

	public function autocomplete(Request $request)
	{
		$name = $request->query('query', NULL);
		$data = Product::where('name', 'LIKE', '%'.$name.'%')->get();

		return response()->json($data);
	}
}
