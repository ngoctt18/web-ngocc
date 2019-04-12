<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Distribute;
use App\Catagory;
use App\CatagoriesType;
use App\Subscribe;
use App\Contact;
use App\News;
use App\User;
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
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagories = Catagory::where('status', '1')->get();
		$products = Product::where('status', '1')->latest()->take(6)->get();
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		$productsNew = Product::where('status', '1')->orderBy('count_buys','DESC')->take(8)->get();
		
		$users = User::all();
		return view('website.homepage', compact('products','catagories','productsNew','catagoriesTypes','productsSpecial','contents','total','news_popular','users'));
	}

	public function productDetail($id)
	{
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		$wishlists = Cart::instance('wishlist')->content();
		if (count($wishlists)) {
			foreach ($wishlists as $value) {
				$data[] = $value->id;
			}
			if (in_array($id, $data)) {
				$inWishlist = TRUE;
			} else {
				$inWishlist = FALSE;
			}
		} else {
			$inWishlist = FALSE;
		}
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$catagories = Catagory::where('status', '1')->get();
		// $product = Product::with(['comments' => function ($q) {
		// 	$q->latest()->get();
		// }])->findOrFail($id);
		$product = Product::with('comments')->findOrFail($id);
		$productsRelate = $product->catagory->product->where('id', '!=', $id);
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$breadcrumb = $product;

		// count view
		$productView = Session::get('product_views_'.$product->id);
		// nếu chưa có session
		if (!$productView) { 
			Session::put('product_views_'.$product->id, 1); // Tạo, Set giá trị cho session
			$product->increment('count_views'); // Tăng lần view lên 
		}

		return view('website.product.product_detail', compact('product','catagories','productsRelate','catagoriesTypes','breadcrumb','contents','total','news_popular','inWishlist'));
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
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

		return view('website.catagories.catagory_types', compact('catagoryType','catagories','catagoriesTypes','breadcrumb','productsSpecial','products','contents','total','news_popular'));
	}

	public function Catagories($id, Request $request)
	{
		$catagory_id = $id;
		$contents = Cart::content();
		$total = Cart::subtotal(0,'','.');
		$price = $request->query('price', NULL);
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = Catagory::findOrFail($id);
		$catagories = $breadcrumb->catagoryType->catagories;
		$products = $breadcrumb->product()->SearchPrice($price)->paginate(9);
		$productsSpecial = Product::where('status', '1')->orderBy('discount','DESC')->take(4)->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		
		return view('website.catagories.catagories', compact('catagoriesTypes','products','breadcrumb','productsSpecial','catagories','contents','total','news_popular','catagory_id'));
	}

	public function contact()
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$breadcrumb = 'Contact';
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		return view('website.pages.contact', compact('total','catagoriesTypes','breadcrumb','news_popular'));
	}

	public function postContact(Request $request)
	{
		Contact::create($request->all());
		Session::flash('success', 'display: block;');
		return redirect()->back();
	}

	public function Distribute($id)
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$products = Product::where('status', '1')->where('distribution_id', $id)->paginate(9);
		$distribute  = Distribute::findOrFail($id);
		$breadcrumb = $distribute;

		return view('website.pages.distribute', compact('total','catagoriesTypes','breadcrumb','news_popular','products','distribute'));
	}

	public function bestSeller()
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$products = Product::where('status', '1')->orderBy('count_buys','DESC')->take(9)->get();
		$breadcrumb = 'Best seller';

		return view('website.pages.best-seller', compact('total','catagoriesTypes','breadcrumb','news_popular','products'));
	}

	public function bestDiscount()
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$products = Product::where('status', '1')->orderBy('discount','DESC')->take(9)->get();
		$breadcrumb = 'Best Discount';

		return view('website.pages.best-discount', compact('total','catagoriesTypes','breadcrumb','news_popular','products'));
	}

	public function latestProduct()
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();
		$products = Product::where('status', '1')->latest()->paginate(9);
		$breadcrumb = 'Latest Products';

		return view('website.pages.latest-product', compact('total','catagoriesTypes','breadcrumb','news_popular','products'));
	}

	public function signUpEmail(Request $request)
	{
		$total = Cart::subtotal(0,'','.');
		$catagoriesTypes = CatagoriesType::where('status', '1')->get();
		$news_popular = News::where('status', '1')->orderBy('count_views', 'DESC')->take(3)->get();

        // sign up email
		$sessionSignUp = Session::get('signUpEmail');
        // nếu chưa có session
        // if (!$sessionSignUp) { 
            Session::put('signUpEmail', 1); // Tạo, Set giá trị cho session

            $this->validate($request,
            	[
            		'email' => 'required|email|unique:subscribes,email',
            	],
            	[
            		'required' => ':attribute Không được để trống',
            		'email' => ':attribute Không đúng định dạng',
            		'max' => ':attribute Không được lớn hơn :max',
            		'unique' => ':attribute này đã được đăng ký rồi',
            	],
            	[
            		'email' => 'Email',
            	]

            );
            Subscribe::create($request->all());
            Session::flash('signUpEmailOK', 'ĐĂNG KÝ NHẬN TIN TỨC QUA EMAIL THÀNH CÔNG. ');
        // } else {
            // Session::flash('signUpEmailDuplicate', 'BẠN ĐÃ ĐĂNG KÝ NHẬN TIN TỨC QUA EMAIL RỒI. ');
        // }
            return view('website.emails.sign_up_email', compact('total','news_popular','catagoriesTypes'));
        }

        
        
    }
