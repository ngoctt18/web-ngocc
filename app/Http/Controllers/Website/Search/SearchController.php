<?php

namespace App\Http\Controllers\Website\Search;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\CatagoriesType;
use App\Catagory;
use App\News;
use Cart;

class SearchController extends Controller
{
	public function index(Request $request)
	{
		$query = $request->query('query', NULL);
		$cat_id = $request->query('cat_id', NULL);
		$price_min = $request->query('price_min', NULL);
		$price_max = $request->query('price_max', NULL);
		$productsSearchs = Product::query();

		// return $cat_id;
		if ($query != NULL) {
			$productsSearchs = $productsSearchs->where('name', 'LIKE', '%'.$query.'%');
		}
		if ($cat_id != NULL) {
			$productsSearchs = $productsSearchs->whereIn('catagory_id', $cat_id);
		}
		if ($price_min != NULL) {
			$productsSearchs = $productsSearchs->where('price', '>=', $price_min);
		}
		if ($price_max != NULL) {
			$productsSearchs = $productsSearchs->where('price', '<=', $price_max);
		}
		$productsSearchs = $productsSearchs->latest()->paginate(9)->appends([
			'query' => $query,
			'cat_id' => $cat_id,
			'price_min' => $price_min,
			'price_max' => $price_max,
		]);

		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagories = Catagory::where('status', '1')->get();
		$breadcrumb = 'Search';
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		
		return view('website.pages.search_product', compact('total','catagoriesTypes','breadcrumb','news_popular','productsSearchs','catagoriesTypes','catagories'));
	}

	public function autocomplete(Request $request)
	{
		$name = $request->query('query', NULL);
		$data = Product::where('name', 'LIKE', '%'.$name.'%')->get();

		return response()->json($data);
	}
}
