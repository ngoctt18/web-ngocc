@extends('website.layouts.website')

@section('title', $breadcrumb->name)

@section('content')
@include('website.partials.breadcrumbs')


<section id="columns" class="columns-container">
	<div class="container">
		<div class="row">
			<div id="center_column" class="center_column col-sm-12 col-md-12">
				<div class="content_scene_cat">
					<div class="content_scene_cat_bg">
						<div class="image">
							<img src="{{ asset('../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/list_collection_default2946.png?14233272639774211042') }}" alt="Shop" class="img-responsive" />
						</div>
					</div>
				</div>
				<h1 class="page-heading product-listing cat-name">Nhà phân phối {{$breadcrumb->name}}</h1>
				<div class="category-heading clearfix">
					<div class="sortPagiBar clearfix row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="more_info_block">
								<ul class="nav nav-tabs tab-info page-product-heading">
									<li style=" border-bottom: 3px solid #59bd56; ">
										<a href="#idTab1" data-toggle="tab">More info</a>
									</li>
								</ul>
								<div class="tab-content">
									<section id="idTab1" class="page-product-box">
										<div class="rte">
											<span>{!! $distribute->description !!}</span>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-border product_list grid">
					<div class="row">
						@if(count($products))
						@foreach($products as $product)
						<div class="product_block col-md-4 col-xs-6 col-sp-12">
							<div class="product-container text-left product-block">
								<div class="product-image-container image">
									<a class="product_img_link" href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" title="{{$product->name}}">
										<img class="replace-2x img-responsive" src="{{$product->ThumbProduct??asset("images/products/product4.jpg")}}" alt="{{$product->name}}">
										<span class="product-additional" data-idproduct="1119718980">
											<img class="replace-2x img-responsive" alt="{{$product->name}}" src="{{$product->ThumbProductDetails[0]??asset("images/products/product3.jpg")}}">
										</span>
									</a>
									@if($product->discount != '0')
									<span class="sale-box">
										<span class="label-sale label">Sale</span>
									</span>
									@endif
									<div class="tool-funtion">
										<div class="quickview">
											<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="donec-fringilla" title="+ Quick View">
												<i class="fa fa-plus"></i>
												<span>+ Quick View</span>
											</a>
										</div>
										<div class="wishlist">
											<a class="btn btn-outline btn-wishlist" href="{{ route('web.wishlist') }}">
												<i class="fa fa-heart"></i>
												<span>Add to Wishlist</span>
											</a>
										</div>
										<div class="view_detail">
											<a class="btn lnk_view btn-outline" href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" title="View">
												<i class="fa fa-eye"></i><span>View product</span>
											</a>
										</div>
									</div>
								</div>
								<div class="product-meta">
									<h5 class="name">
										<a class="product-name" href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" title="{{$product->name}}">{{$product->name}}</a>
									</h5>
									<div class="review">
										<span class="shopify-product-reviews-badge" data-id="1119718980"></span>
									</div>
									<div class="content_price">
										<span class="price product-price sale-price">
											<span class='money'>{{number_format($product->price-$product->price*$product->discount/100,0,",",".")}}₫</span>
										</span>
										@if($product->discount != '0')
										<span class="old-price product-price">
											<span class='money'>
												{{number_format($product->price,0,",",".")}}₫
											</span>
										</span>
										@endif
									</div>
									<div class="functional-buttons clearfix">
										<div class="cart">
											<div class="action">
												<form action="{{ route('web.add_cart',[$product->id,$product->slug]) }}" method="POST" class="form-ajaxtocart">
													{{csrf_field()}}
													<input type="hidden" name="quantity" value="1" />
													<button type="submit" class=" btn btn-outline button ajax_addtocart">
														<span class="fa fa-shopping-cart"></span>
														<span class="select_options">Mua ngay</span>
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						@endforeach
						@else
						<div class="alert alert-danger" role="alert" style="
						margin: 20px;">Không có sản phẩm nào!</div>
						@endif
					</div>
					<div class="row">
						<div class="pull-right" style=" padding-right: 20px; ">
							{{$products->links()}}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


@endsection
