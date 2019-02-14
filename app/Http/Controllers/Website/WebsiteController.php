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
		$products = Product::where('status', '1')->latest()->take(6)->get();
		$catagories = Catagory::where('status', '1')->get();
		return view('website.homepage', compact('products','catagories'));
	}
}
