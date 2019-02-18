<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Catagory;
use App\CatagoriesType;
use App\Contact;
use Cart;
use Auth;
use Session;

class WebsiteController extends Controller
{
	public function homepage()
	{
		// return Auth::user();
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');

		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagories = Catagory::where('status', '1')->get();
		$products = Product::where('status', '1')->inRandomOrder()->take(6)->get();
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		$productsNew = Product::where('status', '1')->latest()->take(8)->get();
		
		return view('website.homepage', compact('products','catagories','productsNew','catagoriesTypes','productsSpecial','contents','total'));
	}

	public function productDetail($id)
	{
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagories = Catagory::where('status', '1')->get();
		$product = Product::findOrFail($id);
		$productsRelate = $product->catagory->product->where('id', '!=', $id);
		$breadcrumb = $product;

		return view('website.product.product_detail', compact('product','catagories','productsRelate','catagoriesTypes','breadcrumb','contents','total'));
	}

	public function catagoryTypes($id, Request $request)
	{
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		$price = $request->query('price', NULL);
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagoryType = CatagoriesType::findOrFail($id);
		$catagories = $catagoryType->catagories;
		$products = Product::where('status', '1')->ProductsByCatagoryType($id)->SearchPrice($price)->paginate(9);
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		$breadcrumb = $catagoryType;

		return view('website.catagories.catagory_types', compact('catagoryType','catagories','catagoriesTypes','breadcrumb','productsSpecial','products','contents','total'));
	}

	public function Catagories($id, Request $request)
	{
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		$price = $request->query('price', NULL);
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = Catagory::findOrFail($id);
		$catagories = $breadcrumb->catagoryType->catagories;
		$products = $breadcrumb->product()->SearchPrice($price)->paginate(9);
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		
		return view('website.catagories.catagories', compact('catagoriesTypes','products','breadcrumb','productsSpecial','catagories','contents','total'));
	}

	public function contact()
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = 'Contact';
		return view('website.pages.contact', compact('total','catagoriesTypes','breadcrumb'));
	}

	public function postContact(Request $request)
	{
		Contact::create($request->all());
		Session::flash('success', 'display: block;');
		return redirect()->back();
	}
}
