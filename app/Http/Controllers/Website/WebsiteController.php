<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Catagory;
use App\CatagoriesType;

class WebsiteController extends Controller
{
	public function homepage()
	{
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagories = Catagory::where('status', '1')->get();
		$products = Product::where('status', '1')->inRandomOrder()->take(6)->get();
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		$productsNew = Product::where('status', '1')->latest()->take(8)->get();
		
		return view('website.homepage', compact('products','catagories','productsNew','catagoriesTypes','productsSpecial'));
	}

	public function productDetail($id)
	{
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagories = Catagory::where('status', '1')->get();
		$product = Product::findOrFail($id);
		$productsRelate = $product->catagory->product->where('id', '!=', $id);
		$breadcrumb = $product;

		return view('website.product.product_detail', compact('product','catagories','productsRelate','catagoriesTypes','breadcrumb'));
	}

	public function catagoryTypes($id)
	{
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagoryType = CatagoriesType::findOrFail($id);
		$catagories = $catagoryType->catagories;
		$products = Product::where('status', '1')->ProductsByCatagoryType($id)->SearchPrice($price)->paginate(9);
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		$breadcrumb = $catagoryType;

		return view('website.catagories.catagory_types', compact('catagoryType','catagories','catagoriesTypes','breadcrumb','productsSpecial','products'));
	}

	public function Catagories($id, Request $request)
	{
		$price = $request->query('price', NULL);
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = Catagory::findOrFail($id);
		$catagories = $breadcrumb->catagoryType->catagories;
		$products = $breadcrumb->product()->SearchPrice($price)->paginate(9);
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		
		return view('website.catagories.catagories', compact('catagoriesTypes','products','breadcrumb','productsSpecial','catagories'));
	}
}
