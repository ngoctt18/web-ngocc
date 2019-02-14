<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Catagory;

class WebsiteController extends Controller
{
	public function homepage()
	{
		$products = Product::where('status', '1')->inRandomOrder()->take(6)->get();
		$productsNew = Product::where('status', '1')->latest()->take(8)->get();
		$catagories = Catagory::where('status', '1')->get();
		return view('website.homepage', compact('products','catagories','productsNew'));
	}

	public function productDetail($id)
	{
		$product = Product::findOrFail($id);
		$catagories = Catagory::where('status', '1')->get();
		return view('website.product.product_detail', compact('product','catagories'));
	}
}
