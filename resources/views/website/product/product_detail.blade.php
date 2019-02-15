@extends('website.layouts.website')

@section('title', $product->name)

@section('styles')
<style type="text/css">
#thumbs_list .thumb_item { width: 99px; float: left; }
</style>
@endsection

@section('content')
@include('website.partials.breadcrumbs')
<section id="columns" class="columns-container product">
	<div id="columns" class="container">
		<div class="row">
			<div id="center_column" class="center_column col-sm-12 col-md-12">
				<div itemscope itemtype="http://schema.org/Product">
					<meta itemprop="url" content="https://ap-milk-store-2.myshopify.com/products/nullam-volutpat">
					<meta itemprop="image" content="//cdn.shopify.com/s/files/1/0928/4804/products/p15_grande.jpg?v=1439571039">
					<div class="primary_block">
						<div class="row">
							<div class="product-left-column col-xs-12 col-sm-12 col-md-5">
								<div id="image-block" class="clearfix">
									<span id="view_full_size">
										<img id="proimage" class="img-responsive" itemprop="image" src="{{$product->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="{{$product->name}}" data-zoom-image="//cdn.shopify.com/s/files/1/0928/4804/products/p15_1024x1024.jpg?v=1439571039" />
									</span>
								</div>
								<div id="views_block" class="clearfix ">
									<div id="thumbs_list">
										<div id="thumblist">
											@for($i=0;$i<4;$i++)
											<div id="thumbnail_{{$i+1}}" class="thumb_item ">
												<a href="javascript:void(0)" data-imageid="3051930052" data-image="//cdn.shopify.com/s/files/1/0928/4804/products/p15_large.jpg?v=1439571039" data-zoom-image="//cdn.shopify.com/s/files/1/0928/4804/products/p15_1024x1024.jpg?v=1439571039"  title="Commo habita lacus aenean consequat sagittis">
													<img class="img-responsive" id="thumb_{{$i+1}}" src="{{$product->ThumbProductDetails[$i]??asset('images/products/product'.($i+1).'.jpg')}}" alt="Commo habita lacus aenean consequat sagittis" itemprop="image" />
												</a>
											</div>
											@endfor
										</div>
									</div>
								</div>
							</div>
							<div class="product-center-column col-xs-12 col-sm-12 col-md-7">
								<h1 itemprop="name">{{$product->name}}</h1>
								<div class="review">
									<span class="shopify-product-reviews-badge" data-id="1119719620"></span>
								</div>
								<h5 class="brand" itemprop="brand"><span>Thương hiệu: </span><a href="" title="">{{$product->brand}}</a></h5>
								<div class="product-description rte" itemprop="description">
									{{$product->description}}
								</div>
								<div class="socialsharing_product no-print">
									<ul class="social-sharing list-unstyled">
										<li>
											<a class="btn btn-twitter" target="_blank" href="https://twitter.com/intent/tweet?text={{$product->name}}&amp;url={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}&amp;">
												<i class="fa fa-twitter"></i> Tweet
											</a>
										</li>
										<li>
											<a class="btn btn-facebook" target="_blank" href="http://www.facebook.com/sharer/sharer.php?u={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}">
												<i class="fa fa-facebook"></i> facebook
											</a>
										</li>
										<li>
											<a class="btn btn-google-plus" target="_blank" href="https://plus.google.com/share?url={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}">
												<i class="fa fa-google-plus"></i> Google+
											</a>
										</li>
										<li>
											<a class="btn btn-pinterest" target="_blank" href="../../pinterest.com/pin/create/button/indexdfa2.html?url={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}&amp;description={{$product->name}}&amp;media={{$product->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}">
												<i class="fa fa-pinterest-p"></i> Pinterest
											</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="product-right-column col-xs-12 col-sm-12 col-md-7">
								<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
									<meta itemprop="priceCurrency" content="USD">
									<link itemprop="availability" href="http://schema.org/InStock">
									<div class="availability">
										<p class="available instock">
											@if($product->status=='1')
											{{"Còn hàng"}}
											@elseif($product->status=='0')
											{{"Hết hàng"}}
											@endif

										</p>
									</div>
									<form action="{{ route('web.add_cart',[$product->id,$product->slug]) }}" method="post" enctype="multipart/form-data" id="AddToCartForm" class="form-ajaxtocart">
										{{csrf_field()}}
										<div class="clearfix">
											{{-- <div class="alert alert-danger" role="alert" style="margin: 20px;">Không có sản phẩm nào!</div> --}}
											<div class="content_price alert alert-success">
												<big><b style="color: black;">Giá bán: </b></big>
												<span class="price product-price sale-price">
													<span class='money'>{{number_format($product->price-$product->price*$product->discount/100,0,",",".")}}₫</span>
												</span>
												&nbsp;
												@if($product->discount != '0')
												<span class="old-price product-price">
													<span class='money' style=" text-decoration: line-through; color: gray;">
														{{number_format($product->price,0,",",".")}}₫
													</span>
												</span>
												&nbsp;
												<span class="label label-danger" style=" font-size: 15px; ">Giảm {{$product->discount}}%</span>
												@endif
											</div>
										</div>
										<div class="total-price">
											<label>Subtotal: </label>
											<span></span>
										</div>
										<div class="line-product-top"></div>
										<div class="quantity_wanted_p">
											<label for="Quantity" class="quantity-selector">Quantity</label>
											{{-- <div class="js-qty">
												<button type="button" class="js-qty__adjust js-qty__adjust--minus" data-id="" data-qty="0">−</button>
												<input type="text" class="js-qty__num" value="1" min="1" data-id="" aria-label="quantity" pattern="[0-9]*" name="quantity" id="Quantity">
												<button type="button" class="js-qty__adjust js-qty__adjust--plus" data-id="" data-qty="11">+</button>
											</div> --}}
											<input type="number" id="Quantity" name="quantity" value="1" min="1" class="quantity-selector">
										</div>
										<button type="submit" id="AddToCart" class="btn add_to_cart_detail ajax_addtocart" @if($product->status=='0') {{'disabled="disabled"'}}@endif>
											<i class="fa fa-shopping-cart"></i>
											<span id="AddToCartText">Thêm vào giỏ hàng</span>
										</button>
									</form>
								</div>
								<div class="wishlist">
									<a class="btn btn-outline btn-wishlist" href="">
										<i class="fa fa-heart"></i>
										<span>Add to Wishlist</span>
									</a>
								</div>
								<div class="line-product"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="more_info_block">
								<ul class="nav nav-tabs tab-info page-product-heading">
									<li>
										<a href="#idTab1" data-toggle="tab">More info</a>
									</li>
									<!-- <li>
										<a href="#idTab2" data-toggle="tab">Reviews</a>
									</li> -->
								</ul>
								<div class="tab-content">
									<section id="idTab1" class="tab-pane page-product-box">
										<div class="rte">
											<span>{{$product->intro}}</span>
										</div>
									</section>
									<section id="idTab2" class="tab-pane page-product-box">
										<div id="shopify-product-reviews" data-id="1119719620">
											<style scoped>
											.spr-container {
												padding: 24px;
												border-color: #ECECEC;
											}
											.spr-review, .spr-form {
												border-color: #ECECEC;
											}
										</style>
										<div class="spr-container">
											<div class="spr-header">
												<h2 class="spr-header-title">Customer Reviews</h2>
												<div class="spr-summary" itemscope itemtype="http://data-vocabulary.org/Review-aggregate">
													<meta itemprop="itemreviewed" content="Commo habita lacus aenean consequat sagittis" />
													<meta itemprop="votes" content="1" />
													<span itemprop="rating" itemscope itemtype="http://data-vocabulary.org/Rating" class="spr-starrating spr-summary-starrating">
														<meta itemprop="average" content="5.0" />
														<meta itemprop="best" content="5" />
														<meta itemprop="worst" content="1" />
														<i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i>
													</span>
													<span class="spr-summary-caption">
														<span class='spr-summary-actions-togglereviews'>Based on 1 review</span>
													</span>
													<span class="spr-summary-actions">
														<a href='#' class='spr-summary-actions-newreview' onclick='SPR.toggleForm(1119719620);return false'>Write a review</a>
													</span>
												</div>
											</div>
											<div class="spr-content">
												<div class='spr-form' id='form_1119719620' style='display: none'></div>
												<div class='spr-reviews' id='reviews_1119719620' ></div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
					<div class="productpage col-xs-12 col-sm-12 col-lg-12">
						<div id="productrelated01" class="products_block exclusive block" >
							<h4 class="page-subheading ">
								<span>Sản phẩm liên quan</span>
							</h4>
							<div class="block_content">
								<div class="product_list_owl">
									<div class="owl-carousel slide">
										@foreach($productsRelate as $product_relate)
										<div class="item">
											<div class="product_block  ">
												<div class="product-container text-left product-block">
													<div class="product-image-container image">
														<img class="replace-2x img-responsive" src="{{$product->ThumbProductDetails[0]??asset("images/products/product2.jpg")}}" alt="{{$product_relate->name}}">
														<span class="product-additional" data-idproduct="1119718980">
															<img class="replace-2x img-responsive" alt="{{$product_relate->name}}" src="{{$product->ThumbProduct??asset("images/products/product3.jpg")}}">
														</span>
														@if($product_relate->discount != '0')
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
																<a class="btn btn-outline btn-wishlist" href="">
																	<i class="fa fa-heart"></i>
																	<span>Add to Wishlist</span>
																</a>
															</div>
															<div class="view_detail">
																<a class="btn lnk_view btn-outline" href="{{ route('web.product_detail',['id'=>$product_relate->id,'name'=>$product_relate->slug]) }}" title="View">
																	<i class="fa fa-eye"></i><span>View product</span>
																</a>
															</div>
														</div>
													</div>
													<div class="product-meta">
														<h5 class="name">
															<a class="product-name" href="{{ route('web.product_detail',['id'=>$product_relate->id,'name'=>$product_relate->slug]) }}" title="{{$product_relate->name}}">{{$product_relate->name}}...</a>
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
																	<form action="" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
																		<input type="hidden" name="id" value="4214856452" />
																		<a class=" btn btn-outline button ajax_addtocart" href="{{ route('web.product_detail',['id'=>$product_relate->id,'name'=>$product_relate->slug]) }}" title="{{$product_relate->name}}">
																			<span class="fa fa-shopping-cart"></span>
																			<span class="select_options">Mua ngay</span>
																		</a>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										@endforeach
										<!-- <div class="item">
											<div class="product_block  ">
												<div class="product-container text-left product-block">
													<div class="product-image-container image">
														<a class="product_img_link" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-volutpat" title="Commo habita lacus aenean consequat sagittis">
															<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p15_largea330.jpg?v=1439571039" alt="Commo habita lacus aenean consequat sagittis">
															<span class="product-additional" data-idproduct="1119719620">
																<img class="replace-2x img-responsive" alt="Commo habita lacus aenean consequat sagittis" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p12_largea330.jpg?v=1439571039">
															</span>
														</a>
														<div class="tool-funtion">
															<div class="quickview">
																<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="nullam-volutpat" title="+ Quick View">
																	<i class="fa fa-plus"></i>
																	<span>+ Quick View</span>
																</a>
															</div>
															<div class="wishlist">
																<a class="btn btn-outline btn-wishlist" href="https://ap-milk-store-2.myshopify.com/account/login">
																	<i class="fa fa-heart"></i>
																	<span>Add to Wishlist</span>
																</a>
															</div>
															<div class="view_detail">
																<a class="btn lnk_view btn-outline" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-volutpat" title="View">
																	<i class="fa fa-eye"></i><span>View product</span>
																</a>
															</div>
														</div>
													</div>
													<div class="product-meta">
														<h5 class="name">
															<a class="product-name" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-volutpat" title="Commo habita lacus aenean consequat sagittis">Commo habita lacus aenean consequat...</a>
														</h5>
														<div class="review">
															<span class="shopify-product-reviews-badge" data-id="1119719620"></span>
														</div>
														<div class="product-desc">Sed id faucibus ligula. Suspendisse eleifend ligula eget purus condimentum pulvinar. Nullam volutpat est diam, sed pretium ligula pretium vel....</div>
														<div class="content_price">
															<span class="price product-price ">
																<span class='money'>$19.00</span>
															</span>
														</div>
														<div class="functional-buttons clearfix">
															<div class="cart">
																<div class="action">
																	<form action="https://ap-milk-store-2.myshopify.com/cart/add" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
																		<input type="hidden" name="id" value="4214857412" />
																		<a class=" btn btn-outline button ajax_addtocart" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-volutpat" title="Commo habita lacus aenean consequat sagittis">
																			<span class="fa fa-shopping-cart"></span>
																			<span class="select_options">Select options</span>
																		</a>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="product_block  ">
												<div class="product-container text-left product-block">
													<div class="product-image-container image">
														<a class="product_img_link" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-commodo-1" title="Libero quis enim vehicula egestas lorem commodo">
															<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p11_large8e6f.jpg?v=1439571172" alt="Libero quis enim vehicula egestas lorem commodo">
															<span class="product-additional" data-idproduct="1119716612">
																<img class="replace-2x img-responsive" alt="Libero quis enim vehicula egestas lorem commodo" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p13_largea6a5.jpg?v=1439571173">
															</span>
														</a>
														<div class="tool-funtion">
															<div class="quickview">
																<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="nullam-commodo-1" title="+ Quick View">
																	<i class="fa fa-plus"></i>
																	<span>+ Quick View</span>
																</a>
															</div>
															<div class="wishlist">
																<a class="btn btn-outline btn-wishlist" href="https://ap-milk-store-2.myshopify.com/account/login">
																	<i class="fa fa-heart"></i>
																	<span>Add to Wishlist</span>
																</a>
															</div>
															<div class="view_detail">
																<a class="btn lnk_view btn-outline" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-commodo-1" title="View">
																	<i class="fa fa-eye"></i><span>View product</span>
																</a>
															</div>
														</div>
													</div>
													<div class="product-meta">
														<h5 class="name">
															<a class="product-name" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-commodo-1" title="Libero quis enim vehicula egestas lorem commodo">Libero quis enim vehicula egestas...</a>
														</h5>
														<div class="review">
															<span class="shopify-product-reviews-badge" data-id="1119716612"></span>
														</div>
														<div class="product-desc">Donec fringilla sapien sed elit luctus, eget mattis dolor efficitur. Ut id libero nulla. Morbi aliquam tortor massa, in aliquet...</div>
														<div class="content_price">
															<span class="price product-price ">
																<span class='money'>$40.00</span>
															</span>
														</div>
														<div class="functional-buttons clearfix">
															<div class="cart">
																<div class="action">
																	<form action="https://ap-milk-store-2.myshopify.com/cart/add" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
																		<input type="hidden" name="id" value="4214851396" />
																		<a class=" btn btn-outline button ajax_addtocart" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/nullam-commodo-1" title="Libero quis enim vehicula egestas lorem commodo">
																			<span class="fa fa-shopping-cart"></span>
																			<span class="select_options">Select options</span>
																		</a>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="product_block  ">
												<div class="product-container text-left product-block">
													<div class="product-image-container image">
														<a class="product_img_link" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/donec-fringilla-2" title="Malesuada bibendum duiat egestas lorem commodo">
															<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p25_large2839.jpg?v=1439571290" alt="Malesuada bibendum duiat egestas lorem commodo">
															<span class="product-additional" data-idproduct="1119714372">
																<img class="replace-2x img-responsive" alt="Malesuada bibendum duiat egestas lorem commodo" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p23_large2839.jpg?v=1439571290">
															</span>
														</a>
														<div class="tool-funtion">
															<div class="quickview">
																<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="donec-fringilla-2" title="+ Quick View">
																	<i class="fa fa-plus"></i>
																	<span>+ Quick View</span>
																</a>
															</div>
															<div class="wishlist">
																<a class="btn btn-outline btn-wishlist" href="https://ap-milk-store-2.myshopify.com/account/login">
																	<i class="fa fa-heart"></i>
																	<span>Add to Wishlist</span>
																</a>
															</div>
															<div class="view_detail">
																<a class="btn lnk_view btn-outline" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/donec-fringilla-2" title="View">
																	<i class="fa fa-eye"></i><span>View product</span>
																</a>
															</div>
														</div>
													</div>
													<div class="product-meta">
														<h5 class="name">
															<a class="product-name" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/donec-fringilla-2" title="Malesuada bibendum duiat egestas lorem commodo">Malesuada bibendum duiat egestas lorem...</a>
														</h5>
														<div class="review">
															<span class="shopify-product-reviews-badge" data-id="1119714372"></span>
														</div>
														<div class="product-desc">Donec fringilla sapien sed elit luctus, eget mattis dolor efficitur. Ut id libero nulla. Morbi aliquam tortor massa, in aliquet...</div>
														<div class="content_price">
															<span class="price product-price ">
																<span class='money'>$40.00</span>
															</span>
														</div>
														<div class="functional-buttons clearfix">
															<div class="cart">
																<div class="action">
																	<form action="https://ap-milk-store-2.myshopify.com/cart/add" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
																		<input type="hidden" name="id" value="4214845124" />
																		<a class=" btn btn-outline button ajax_addtocart" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/donec-fringilla-2" title="Malesuada bibendum duiat egestas lorem commodo">
																			<span class="fa fa-shopping-cart"></span>
																			<span class="select_options">Select options</span>
																		</a>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="product_block  ">
												<div class="product-container text-left product-block">
													<div class="product-image-container image">
														<a class="product_img_link" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/phasellus-cursus" title="Quam vitnibh aliqueobo egestas lorem commodo">
															<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p24_e8c88601-2362-4e9f-a068-d3ff57df184c_largeef8f.jpg?v=1439571686" alt="Quam vitnibh aliqueobo egestas lorem commodo">
															<span class="product-additional" data-idproduct="1119718596">
																<img class="replace-2x img-responsive" alt="Quam vitnibh aliqueobo egestas lorem commodo" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p12_453428d4-8bc6-4264-b54f-f70a96be7c00_largeef8f.jpg?v=1439571686">
															</span>
														</a>
														<div class="tool-funtion">
															<div class="quickview">
																<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="phasellus-cursus" title="+ Quick View">
																	<i class="fa fa-plus"></i>
																	<span>+ Quick View</span>
																</a>
															</div>
															<div class="wishlist">
																<a class="btn btn-outline btn-wishlist" href="https://ap-milk-store-2.myshopify.com/account/login">
																	<i class="fa fa-heart"></i>
																	<span>Add to Wishlist</span>
																</a>
															</div>
															<div class="view_detail">
																<a class="btn lnk_view btn-outline" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/phasellus-cursus" title="View">
																	<i class="fa fa-eye"></i><span>View product</span>
																</a>
															</div>
														</div>
													</div>
													<div class="product-meta">
														<h5 class="name">
															<a class="product-name" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/phasellus-cursus" title="Quam vitnibh aliqueobo egestas lorem commodo">Quam vitnibh aliqueobo egestas lorem...</a>
														</h5>
														<div class="review">
															<span class="shopify-product-reviews-badge" data-id="1119718596"></span>
														</div>
														<div class="product-desc">Donec fringilla sapien sed elit luctus, eget mattis dolor efficitur. Ut id libero nulla. Morbi aliquam tortor massa, in aliquet...</div>
														<div class="content_price">
															<span class="price product-price ">
																<span class='money'>$40.00</span>
															</span>
														</div>
														<div class="functional-buttons clearfix">
															<div class="cart">
																<div class="action">
																	<form action="https://ap-milk-store-2.myshopify.com/cart/add" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
																		<input type="hidden" name="id" value="4214855748" />
																		<a class=" btn btn-outline button ajax_addtocart" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/phasellus-cursus" title="Quam vitnibh aliqueobo egestas lorem commodo">
																			<span class="fa fa-shopping-cart"></span>
																			<span class="select_options">Select options</span>
																		</a>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="product_block  ">
												<div class="product-container text-left product-block">
													<div class="product-image-container image">
														<a class="product_img_link" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/vestibulum-mi" title="Quam vitnibh aliqueobo egestas lorem commodo">
															<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p2_09f4b32a-bf88-4e2f-ab81-a18b3ccd86a5_largebbfc.jpg?v=1439571618" alt="Quam vitnibh aliqueobo egestas lorem commodo">
															<span class="product-additional" data-idproduct="1119717636">
																<img class="replace-2x img-responsive" alt="Quam vitnibh aliqueobo egestas lorem commodo" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p15_d987d0d7-8caa-4a26-9b43-7dd30d5d380c_largebbfc.jpg?v=1439571618">
															</span>
														</a>
														<div class="tool-funtion">
															<div class="quickview">
																<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="vestibulum-mi" title="+ Quick View">
																	<i class="fa fa-plus"></i>
																	<span>+ Quick View</span>
																</a>
															</div>
															<div class="wishlist">
																<a class="btn btn-outline btn-wishlist" href="https://ap-milk-store-2.myshopify.com/account/login">
																	<i class="fa fa-heart"></i>
																	<span>Add to Wishlist</span>
																</a>
															</div>
															<div class="view_detail">
																<a class="btn lnk_view btn-outline" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/vestibulum-mi" title="View">
																	<i class="fa fa-eye"></i><span>View product</span>
																</a>
															</div>
														</div>
													</div>
													<div class="product-meta">
														<h5 class="name">
															<a class="product-name" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/vestibulum-mi" title="Quam vitnibh aliqueobo egestas lorem commodo">Quam vitnibh aliqueobo egestas lorem...</a>
														</h5>
														<div class="review">
															<span class="shopify-product-reviews-badge" data-id="1119717636"></span>
														</div>
														<div class="product-desc">Donec fringilla sapien sed elit luctus, eget mattis dolor efficitur. Ut id libero nulla. Morbi aliquam tortor massa, in aliquet...</div>
														<div class="content_price">
															<span class="price product-price ">
																<span class='money'>$40.00</span>
															</span>
														</div>
														<div class="functional-buttons clearfix">
															<div class="cart">
																<div class="action">
																	<form action="https://ap-milk-store-2.myshopify.com/cart/add" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
																		<input type="hidden" name="id" value="4214853764" />
																		<a class=" btn btn-outline button ajax_addtocart" href="https://ap-milk-store-2.myshopify.com/collections/compoment/products/vestibulum-mi" title="Quam vitnibh aliqueobo egestas lorem commodo">
																			<span class="fa fa-shopping-cart"></span>
																			<span class="select_options">Select options</span>
																		</a>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div> -->
									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript">
							$(document).ready(function() {

								$('#productrelated01 .owl-carousel').each(function(){
									$(this).owlCarousel({
										items : 3,
										lazyLoad : true,
										navigation : true,
										addClassActive: true,
										afterInit : SetOwlCarouselFirstLast,
										afterAction : SetOwlCarouselFirstLast,

										itemsDesktop: [1199, 2],
										itemsDesktopSmall: [979, 2],
										itemsTablet: [768, 2],
										itemsTabletSmall: [480, 1],
										itemsMobile: [360, 1],

										navigationText : ["Prev", "Next"]
									}); 
								});
								function SetOwlCarouselFirstLast(el){
									el.find(".owl-item").removeClass("first");
									el.find(".owl-item.active").first().addClass("first");

									el.find(".owl-item").removeClass("last");
									el.find(".owl-item.active").last().addClass("last");
								};

							});
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<script>
	function selectCallback(variant, selector) {
		var addToCart = jQuery("#AddToCart"),
		productPrice = jQuery(".product-right-column #ProductPrice"),
		comparePrice = jQuery(".product-right-column .price-product-detail .old-price");
		if (variant) {
			if (variant.available) {
                                          // We have a valid product variant, so enable the submit button
                                          addToCart.removeClass('disabled').removeAttr('disabled');
                                          $(addToCart).find("span").text("Add to Cart");
                                      } else {
                                        // Variant is sold out, disable the submit button
                                        addToCart.addClass('disabled').attr('disabled', 'disabled');
                                        $(addToCart).find("span").text("Sold Out");
                                    }
                                      // Regardless of stock, update the product price
                                      productPrice.html(Shopify.formatMoney(variant.price, "<span class='money'>$</span>"));       
                                      // Also update and show the product's compare price if necessary
                                      if ( variant.compare_at_price > variant.price ) {
                                      	productPrice.addClass("sale-price")
                                      	comparePrice
                                      	.html(Shopify.formatMoney(variant.compare_at_price, "<span class='money'>$</span>"))
                                      	.show();          
                                      } else {
                                      	comparePrice.hide();
                                      	productPrice.removeClass("sale-price");
                                      }        
                                      // BEGIN SWATCHES
                                      var form = jQuery('#' + selector.domIdPrefix).closest('form');
                                      for (var i=0,length=variant.options.length; i<length; i++) {
                                      	var radioButton = form.find('.swatch[data-option-index="' + i + '"] :radio[value="' + variant.options[i] +'"]');
                                      	if (radioButton.size()) {
                                      		radioButton.get(0).checked = true;
                                      	}
                                      }
                                      // END SWATCHES
                                      updatePricing();
                                      
                                  } else {
                              // The variant doesn't exist. Just a safeguard for errors, but disable the submit button anyway
                              addToCart.addClass('disabled').attr('disabled', 'disabled');
                              $(addToCart).find("span").text("Unavailable");
                          }
                          /*begin variant image*/
                          if (variant && variant.featured_image) {
                          	var originalImage = $("#view_full_size img");
                          	var newImage = variant.featured_image;
                          	var element = originalImage[0];
                          	Shopify.Image.switchImage(newImage, element, function (newImageSizedSrc, newImage, element) {
                          		$('#thumblist img').each(function() {
                          			var parentThumbImg = $(this).parent();
                          			var idProductImage = $(this).parent().data("imageid");
                          			if (idProductImage == newImage.id) {
                          				$(this).parent().trigger('click');
                          				return false;
                          			}
                          		});
                          	});
                          }
                          /*end of variant image*/
                      };
                      $(document).ready(function() {
                      	$('.more_info_block .page-product-heading li:first, .more_info_block .tab-content section:first').addClass('active');
                      	new Shopify.OptionSelectors('productSelect', {
                      		product: {"id":1119719620,"title":"Commo habita lacus aenean consequat sagittis","handle":"nullam-volutpat","description":"\u003cspan\u003eSed id faucibus ligula. Suspendisse eleifend ligula eget purus condimentum pulvinar. Nullam volutpat est diam, sed pretium ligula pretium vel.\u003c\/span\u003e","published_at":"2015-08-13T10:44:00-04:00","created_at":"2015-08-13T10:44:08-04:00","vendor":"Nike","type":"Shirt","tags":["blue","Clothing","Cotton","M","N","red","sum"],"price":1900,"price_min":1900,"price_max":1900,"available":true,"price_varies":false,"compare_at_price":null,"compare_at_price_min":0,"compare_at_price_max":0,"compare_at_price_varies":false,"variants":[{"id":4214857412,"title":"M","option1":"M","option2":null,"option3":null,"sku":"","requires_shipping":true,"taxable":true,"featured_image":null,"available":true,"name":"Commo habita lacus aenean consequat sagittis - M","public_title":"M","options":["M"],"price":1900,"weight":0,"compare_at_price":null,"inventory_quantity":2,"inventory_management":"shopify","inventory_policy":"deny","barcode":""},{"id":4214857476,"title":"N","option1":"N","option2":null,"option3":null,"sku":"","requires_shipping":true,"taxable":true,"featured_image":null,"available":true,"name":"Commo habita lacus aenean consequat sagittis - N","public_title":"N","options":["N"],"price":1900,"weight":0,"compare_at_price":null,"inventory_quantity":2,"inventory_management":"shopify","inventory_policy":"deny","barcode":""}],"images":["\/\/cdn.shopify.com\/s\/files\/1\/0928\/4804\/products\/p15.jpg?v=1439571039","#\/\/cdn.shopify.com\/s\/files\/1\/0928\/4804\/products\/p12.jpg?v=1439571039","#\/\/cdn.shopify.com\/s\/files\/1\/0928\/4804\/products\/p3_adf14166-2aee-4475-9b67-cfdf806e820f.jpg?v=1439571039","\/\/cdn.shopify.com\/s\/files\/1\/0928\/4804\/products\/p2_70142cf7-b562-44ac-9996-d0911470904b.jpg?v=1439571039"],"featured_image":"\/\/cdn.shopify.com\/s\/files\/1\/0928\/4804\/products\/p15.jpg?v=1439571039","options":["Size"],"content":"\u003cspan\u003eSed id faucibus ligula. Suspendisse eleifend ligula eget purus condimentum pulvinar. Nullam volutpat est diam, sed pretium ligula pretium vel.\u003c\/span\u003e"},              
                      		onVariantSelected: selectCallback,
                      		enableHistoryState: true
                      	});

                                  // Add label if only one product option and it isn't 'Title'. Could be 'Size'.
                                  
                                  $('.selector-wrapper:eq(0)').prepend('<label for="productSelect-option-0">Size</label>');
                                  
                                  // Hide selectors if we only have 1 variant and its title contains 'Default'.

                                  
                              });
                          </script>
                          <script type="text/javascript">
                          	$(document).ready(function() {

                          		$('#productrelated01 .owl-carousel').each(function(){
                          			$(this).owlCarousel({
                          				items : 3,
                          				lazyLoad : true,
                          				navigation : true,
                          				addClassActive: true,
                          				afterInit : SetOwlCarouselFirstLast,
                          				afterAction : SetOwlCarouselFirstLast,

                          				itemsDesktop: [1199, 2],
                          				itemsDesktopSmall: [979, 2],
                          				itemsTablet: [768, 2],
                          				itemsTabletSmall: [480, 1],
                          				itemsMobile: [360, 1],

                          				navigationText : ["Prev", "Next"]
                          			}); 
                          		});
                          		function SetOwlCarouselFirstLast(el){
                          			el.find(".owl-item").removeClass("first");
                          			el.find(".owl-item.active").first().addClass("first");

                          			el.find(".owl-item").removeClass("last");
                          			el.find(".owl-item.active").last().addClass("last");
                          		};

                          	});
                          </script>


                          @endsection

                          @section('scripts')

                          @endsection