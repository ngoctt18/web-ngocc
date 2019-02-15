@extends('website.layouts.website')

@section('title', $product->name)

@section('content')

@include('website.partials.breadcrumbs')

<section id="columns" class="columns-container product">
	<div id="columns" class="container">
		<div class="row">
			<div id="center_column" class="center_column col-sm-12 col-md-12">
				<div itemscope itemtype="http://schema.org/Product">
					<meta itemprop="url" content="https://ap-milk-store-2.myshopify.com/products/nullam-volutpat-1">
					<meta itemprop="image" content="//cdn.shopify.com/s/files/1/0928/4804/products/p14_grande.jpg?v=1439571205">
					<div class="primary_block">
						<div class="row">
							<div class="product-left-column col-xs-12 col-sm-12 col-md-5">
								<div id="image-block" class="clearfix">
									<span id="view_full_size">
										<img id="proimage" class="img-responsive" itemprop="image" src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="Libero quis enim vehicula egestas lorem commodo" data-zoom-image="//cdn.shopify.com/s/files/1/0928/4804/products/p14_1024x1024.jpg?v=1439571205" />
									</span>
								</div>
								<div id="views_block" class="clearfix ">
									<div id="thumbs_list">
										<div id="thumblist">
											<div id="thumbnail_1" class="thumb_item ">
												<a href="javascript:void(0)" data-imageid="3051961732" data-image="//cdn.shopify.com/s/files/1/0928/4804/products/p14_large.jpg?v=1439571205" data-zoom-image="//cdn.shopify.com/s/files/1/0928/4804/products/p14_1024x1024.jpg?v=1439571205"  title="Libero quis enim vehicula egestas lorem commodo">
													<img class="img-responsive" id="thumb_1" src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_compact592f.jpg?v=1439571205') }}" alt="Libero quis enim vehicula egestas lorem commodo" itemprop="image" />
												</a>
											</div>
											<div id="thumbnail_2" class="thumb_item last">
												<a href="javascript:void(0)" data-imageid="3051961924" data-image="//cdn.shopify.com/s/files/1/0928/4804/products/p18_large.jpg?v=1439571205" data-zoom-image="//cdn.shopify.com/s/files/1/0928/4804/products/p18_1024x1024.jpg?v=1439571205"  title="Libero quis enim vehicula egestas lorem commodo">
													<img class="img-responsive" id="thumb_2" src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/products/p18_compact592f.jpg?v=1439571205') }}" alt="Libero quis enim vehicula egestas lorem commodo" itemprop="image" />
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="product-center-column col-xs-12 col-sm-12 col-md-7">
								<h1 itemprop="name">Libero quis enim vehicula egestas lorem commodo</h1>
								<div class="review">
									<span class="shopify-product-reviews-badge" data-id="1119717188"></span>
								</div>
								<h5 class="brand" itemprop="brand"><span>Vendor: </span><a href="../collections/vendorse7ff.html?q=Nike" title="">Nike</a></h5>
								<div class="product-description rte" itemprop="description">
									Donec fringilla sapien sed elit luctus, eget mattis dolor efficitur. Ut id libero nulla. Morbi aliquam tortor massa, in aliquet eros molestie in. Quisque eleifend diam leo, a bibendum mi...
								</div>
								<div class="socialsharing_product no-print">
									<ul class="social-sharing list-unstyled">
										<li>
											<a class="btn btn-twitter" target="_blank" href="https://twitter.com/intent/tweet?text=Libero%20quis%20enim%20vehicula%20e...&amp;url=http://ap-milk-store-2.myshopify.com%2Fproducts%2Fnullam-volutpat-1&amp;">
												<i class="fa fa-twitter"></i> Tweet
											</a>
										</li>
										<li>
											<a class="btn btn-facebook" target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http://ap-milk-store-2.myshopify.com/products/nullam-volutpat-1">
												<i class="fa fa-facebook"></i> Facebook
											</a>
										</li>
										<li>
											<a class="btn btn-google-plus" target="_blank" href="https://plus.google.com/share?url=http://ap-milk-store-2.myshopify.com/products/nullam-volutpat-1">
												<i class="fa fa-google-plus"></i> Google+
											</a>
										</li>
										<li>
											<a class="btn btn-pinterest" target="_blank" href="../../pinterest.com/pin/create/button/index7557.html?url=http://ap-milk-store-2.myshopify.com/products/nullam-volutpat-1&amp;description=Donec%20fringilla%20sapien%20sed%20elit%20luctus,%20eget%20mattis%20dolor%20efficitur.%20Ut%20id%20libero%20nulla.%20Morbi%20aliquam%20tortor%20massa,%20in%20aliquet%20eros%20molestie%20in.%20Quisque%20eleifend%20diam%20leo,%20a%20bibendum%20mi%20eleifend%20eget.&amp;media=//cdn.shopify.com/s/files/1/0928/4804/products/p14_large.jpg?v=1439571205">
												<i class="fa fa-pinterest-p"></i> Pinterest
											</a>
										</li>
									</ul>
								</div>
								<ul id="usefull_link_block" class="clearfix no-print list-inline">
									<li class="print">
										<a href="javascript:print();"><i class="fa fa-print"></i> Print</a>
									</li>
								</ul>
							</div>
							<div class="product-right-column col-xs-12 col-sm-12 col-md-7">
								<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
									<meta itemprop="priceCurrency" content="USD">
									<link itemprop="availability" href="http://schema.org/InStock">
									<div class="availability">
										<p class="available instock">Available</p>
									</div>
									<form action="https://ap-milk-store-2.myshopify.com/cart/add" method="post" enctype="multipart/form-data" id="AddToCartForm" class="form-ajaxtocart">
										<div class="clearfix">
											<span id="ProductPrice" class="h2" itemprop="price">
												<span class='money'>$40.00</span>
											</span>
										</div>
										<div class="proVariants clearfix">
											<select name="id" id="productSelect" class="product-single__variants">
												<option  selected="selected"  value="4214852740">M / red - <span class='money'>$40.00 USD</span></option>
												<option  value="4214852804">M / blue - <span class='money'>$40.00 USD</span></option>
												<option  value="4214852868">M / green - <span class='money'>$40.00 USD</span></option>
												<option  value="4214852932">N / red - <span class='money'>$40.00 USD</span></option>
												<option  value="4214853060">N / blue - <span class='money'>$40.00 USD</span></option>
												<option  value="4214853124">N / green - <span class='money'>$40.00 USD</span></option>
											</select>
											<style rel="stylesheet" type="text/css">
											.proVariants .selector-wrapper:nth-child(1){display: none;}
										</style>
										<div class="swatch clearfix" data-option-index="0">
											<div class="header">Size</div>
											<div data-value="M" class="swatch-element m available">
												<input id="swatch-0-m" type="radio" name="option-0" value="M" checked  />
												<label for="swatch-0-m">
													M
													<img class="crossed-out" alt="" src="../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/soldout2946.png?14233272639774211042" />
												</label>
											</div>
											<script>
												jQuery('.swatch[data-option-index="0"] .m').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
											</script>
											<script>
												jQuery('.swatch[data-option-index="0"] .m').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
											</script>
											<script>
												jQuery('.swatch[data-option-index="0"] .m').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
											</script>
											<div data-value="N" class="swatch-element n available">
												<input id="swatch-0-n" type="radio" name="option-0" value="N"  />
												<label for="swatch-0-n">
													N
													<img class="crossed-out" alt="" src="../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/soldout2946.png?14233272639774211042" />
												</label>
											</div>
											<script>
												jQuery('.swatch[data-option-index="0"] .n').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
											</script>
											<script>
												jQuery('.swatch[data-option-index="0"] .n').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
											</script>
											<script>
												jQuery('.swatch[data-option-index="0"] .n').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
											</script>
										</div>
										<style rel="stylesheet" type="text/css">
										.proVariants .selector-wrapper:nth-child(2){display: none;}
									</style>
									<div class="swatch clearfix" data-option-index="1">
										<div class="header">Color</div>
										<div data-value="red" class="swatch-element color red available">
											<div class="tooltip">red</div>
											<input id="swatch-1-red" type="radio" name="option-1" value="red" checked  />
											<label for="swatch-1-red" style="background-color: red; background-image: url(../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/red2946.png?14233272639774211042)">
												<img class="crossed-out" alt="" src="../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/soldout2946.png?14233272639774211042" />
											</label>
										</div>
										<script>
											jQuery('.swatch[data-option-index="1"] .red').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
										</script>
										<div data-value="blue" class="swatch-element color blue available">
											<div class="tooltip">blue</div>
											<input id="swatch-1-blue" type="radio" name="option-1" value="blue"  />
											<label for="swatch-1-blue" style="background-color: blue; background-image: url(../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/blue2946.html?14233272639774211042)">
												<img class="crossed-out" alt="" src="../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/soldout2946.png?14233272639774211042" />
											</label>
										</div>
										<script>
											jQuery('.swatch[data-option-index="1"] .blue').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
										</script>
										<div data-value="green" class="swatch-element color green available">
											<div class="tooltip">green</div>
											<input id="swatch-1-green" type="radio" name="option-1" value="green"  />
											<label for="swatch-1-green" style="background-color: green; background-image: url(../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/green2946.png?14233272639774211042)">
												<img class="crossed-out" alt="" src="../../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/soldout2946.png?14233272639774211042" />
											</label>
										</div>
										<script>
											jQuery('.swatch[data-option-index="1"] .green').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
										</script>
										<script>
											jQuery('.swatch[data-option-index="1"] .red').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
										</script>
										<script>
											jQuery('.swatch[data-option-index="1"] .blue').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
										</script>
										<script>
											jQuery('.swatch[data-option-index="1"] .green').removeClass('soldout').addClass('available').find(':radio').removeAttr('disabled');
										</script>
									</div>
								</div>
								<div class="total-price">
									<label>Subtotal: </label>
									<span></span>
								</div>
								<div class="line-product-top"></div>
								<div class="quantity_wanted_p">
									<label for="Quantity" class="quantity-selector">Quantity</label>
									<input type="number" id="Quantity" name="quantity" value="1" min="1" class="quantity-selector">
								</div>
								<button type="submit" name="add" id="AddToCart" class="btn add_to_cart_detail ajax_addtocart">
									<i class="fa fa-shopping-cart"></i>
									<span id="AddToCartText">Add to Cart</span>
								</button>
							</form>
						</div>
						<div class="wishlist">
							<a class="btn btn-outline btn-wishlist" href="../account/login.html">
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
							<li>
								<a href="#idTab2" data-toggle="tab">Reviews</a>
							</li>
						</ul>
						<div class="tab-content">
							<section id="idTab1" class="tab-pane page-product-box">
								<div class="rte">
									<span>Donec fringilla sapien sed elit luctus, eget mattis dolor efficitur. Ut id libero nulla. Morbi aliquam tortor massa, in aliquet eros molestie in. Quisque eleifend diam leo, a bibendum mi eleifend eget.</span>
								</div>
							</section>
							<section id="idTab2" class="tab-pane page-product-box">
								<div id="shopify-product-reviews" data-id="1119717188"></div>
							</section>
						</div>
					</div>
				</div>
				<div class="productpage col-xs-12 col-sm-12 col-lg-12">
					<div id="productrelated01" class="products_block exclusive block" >
						<h4 class="page-subheading ">
							<span>Related Product</span>
						</h4>
						<div class="block_content">
							<div class="product_list_owl">
								<div class="owl-carousel slide">
									<div class="item">
										<div class="product_block  ">
											<div class="product-container text-left product-block">
												<div class="product-image-container image">
													<a class="product_img_link" href="../collections/shop/products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">
														<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p3_largedf3d.jpg?v=1439570902" alt="Aenean sagittis commodo habitasse lacus">
														<span class="product-additional" data-idproduct="1119718980">
															<img class="replace-2x img-responsive" alt="Aenean sagittis commodo habitasse lacus" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p5_largedf3d.jpg?v=1439570902">
														</span>
													</a>
													<span class="sale-box">
														<span class="label-sale label">Sale</span>
													</span>
													<div class="tool-funtion">
														<div class="quickview">
															<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="donec-fringilla" title="+ Quick View">
																<i class="fa fa-plus"></i>
																<span>+ Quick View</span>
															</a>
														</div>
														<div class="wishlist">
															<a class="btn btn-outline btn-wishlist" href="../account/login.html">
																<i class="fa fa-heart"></i>
																<span>Add to Wishlist</span>
															</a>
														</div>
														<div class="view_detail">
															<a class="btn lnk_view btn-outline" href="../collections/shop/products/donec-fringilla.html" title="View">
																<i class="fa fa-eye"></i><span>View product</span>
															</a>
														</div>
													</div>
												</div>
												<div class="product-meta">
													<h5 class="name">
														<a class="product-name" href="../collections/shop/products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">Aenean sagittis commodo habitasse lacus...</a>
													</h5>
													<div class="review">
														<span class="shopify-product-reviews-badge" data-id="1119718980"></span>
													</div>
													<div class="product-desc">Donec fringilla sapien sed elit luctus, eget mattis dolor efficitur. Ut id libero nulla. Morbi aliquam tortor massa, in aliquet...</div>
													<div class="content_price">
														<span class="price product-price sale-price">
															<span class='money'>$38.00</span>
														</span>
														<span class="old-price product-price"><span class='money'>$90.00</span></span>
													</div>
													<div class="functional-buttons clearfix">
														<div class="cart">
															<div class="action">
																<form action="https://ap-milk-store-2.myshopify.com/cart/add" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
																	<input type="hidden" name="id" value="4214856452" />
																	<a class=" btn btn-outline button ajax_addtocart" href="../collections/shop/products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">
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
													<a class="product_img_link" href="../collections/shop/products/nullam-commodo.html" title="Egestas lorem commodo libero quis enim vehicula">
														<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p17_large13bb.jpg?v=1439571095" alt="Egestas lorem commodo libero quis enim vehicula">
														<span class="product-additional" data-idproduct="1119718276">
															<img class="replace-2x img-responsive" alt="Egestas lorem commodo libero quis enim vehicula" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p21_large2a2c.jpg?v=1439571096">
														</span>
													</a>
													<div class="tool-funtion">
														<div class="quickview">
															<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="nullam-commodo" title="+ Quick View">
																<i class="fa fa-plus"></i>
																<span>+ Quick View</span>
															</a>
														</div>
														<div class="wishlist">
															<a class="btn btn-outline btn-wishlist" href="../account/login.html">
																<i class="fa fa-heart"></i>
																<span>Add to Wishlist</span>
															</a>
														</div>
														<div class="view_detail">
															<a class="btn lnk_view btn-outline" href="../collections/shop/products/nullam-commodo.html" title="View">
																<i class="fa fa-eye"></i><span>View product</span>
															</a>
														</div>
													</div>
												</div>
												<div class="product-meta">
													<h5 class="name">
														<a class="product-name" href="../collections/shop/products/nullam-commodo.html" title="Egestas lorem commodo libero quis enim vehicula">Egestas lorem commodo libero quis...</a>
													</h5>
													<div class="review">
														<span class="shopify-product-reviews-badge" data-id="1119718276"></span>
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
																	<input type="hidden" name="id" value="4214855172" />
																	<a class=" btn btn-outline button ajax_addtocart" href="../collections/shop/products/nullam-commodo.html" title="Egestas lorem commodo libero quis enim vehicula">
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
													<a class="product_img_link" href="../collections/shop/products/nullam-volutpat-1.html" title="Libero quis enim vehicula egestas lorem commodo">
														<img class="replace-2x img-responsive" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205" alt="Libero quis enim vehicula egestas lorem commodo">
														<span class="product-additional" data-idproduct="1119717188">
															<img class="replace-2x img-responsive" alt="Libero quis enim vehicula egestas lorem commodo" src="../../cdn.shopify.com/s/files/1/0928/4804/products/p18_large592f.jpg?v=1439571205">
														</span>
													</a>
													<div class="tool-funtion">
														<div class="quickview">
															<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="nullam-volutpat-1" title="+ Quick View">
																<i class="fa fa-plus"></i>
																<span>+ Quick View</span>
															</a>
														</div>
														<div class="wishlist">
															<a class="btn btn-outline btn-wishlist" href="../account/login.html">
																<i class="fa fa-heart"></i>
																<span>Add to Wishlist</span>
															</a>
														</div>
														<div class="view_detail">
															<a class="btn lnk_view btn-outline" href="../collections/shop/products/nullam-volutpat-1.html" title="View">
																<i class="fa fa-eye"></i><span>View product</span>
															</a>
														</div>
													</div>
												</div>
												<div class="product-meta">
													<h5 class="name">
														<a class="product-name" href="../collections/shop/products/nullam-volutpat-1.html" title="Libero quis enim vehicula egestas lorem commodo">Libero quis enim vehicula egestas...</a>
													</h5>
													<div class="review">
														<span class="shopify-product-reviews-badge" data-id="1119717188"></span>
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
																	<input type="hidden" name="id" value="4214852740" />
																	<a class=" btn btn-outline button ajax_addtocart" href="../collections/shop/products/nullam-volutpat-1.html" title="Libero quis enim vehicula egestas lorem commodo">
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
													<a class="product_img_link" href="../collections/shop/products/nullam-commodo-1.html" title="Libero quis enim vehicula egestas lorem commodo">
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
															<a class="btn btn-outline btn-wishlist" href="../account/login.html">
																<i class="fa fa-heart"></i>
																<span>Add to Wishlist</span>
															</a>
														</div>
														<div class="view_detail">
															<a class="btn lnk_view btn-outline" href="../collections/shop/products/nullam-commodo-1.html" title="View">
																<i class="fa fa-eye"></i><span>View product</span>
															</a>
														</div>
													</div>
												</div>
												<div class="product-meta">
													<h5 class="name">
														<a class="product-name" href="../collections/shop/products/nullam-commodo-1.html" title="Libero quis enim vehicula egestas lorem commodo">Libero quis enim vehicula egestas...</a>
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
																	<a class=" btn btn-outline button ajax_addtocart" href="../collections/shop/products/nullam-commodo-1.html" title="Libero quis enim vehicula egestas lorem commodo">
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
													<a class="product_img_link" href="../collections/shop/products/donec-fringilla-2.html" title="Malesuada bibendum duiat egestas lorem commodo">
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
															<a class="btn btn-outline btn-wishlist" href="../account/login.html">
																<i class="fa fa-heart"></i>
																<span>Add to Wishlist</span>
															</a>
														</div>
														<div class="view_detail">
															<a class="btn lnk_view btn-outline" href="../collections/shop/products/donec-fringilla-2.html" title="View">
																<i class="fa fa-eye"></i><span>View product</span>
															</a>
														</div>
													</div>
												</div>
												<div class="product-meta">
													<h5 class="name">
														<a class="product-name" href="../collections/shop/products/donec-fringilla-2.html" title="Malesuada bibendum duiat egestas lorem commodo">Malesuada bibendum duiat egestas lorem...</a>
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
																	<a class=" btn btn-outline button ajax_addtocart" href="../collections/shop/products/donec-fringilla-2.html" title="Malesuada bibendum duiat egestas lorem commodo">
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
													<a class="product_img_link" href="../collections/shop/products/phasellus-cursus.html" title="Quam vitnibh aliqueobo egestas lorem commodo">
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
															<a class="btn btn-outline btn-wishlist" href="../account/login.html">
																<i class="fa fa-heart"></i>
																<span>Add to Wishlist</span>
															</a>
														</div>
														<div class="view_detail">
															<a class="btn lnk_view btn-outline" href="../collections/shop/products/phasellus-cursus.html" title="View">
																<i class="fa fa-eye"></i><span>View product</span>
															</a>
														</div>
													</div>
												</div>
												<div class="product-meta">
													<h5 class="name">
														<a class="product-name" href="../collections/shop/products/phasellus-cursus.html" title="Quam vitnibh aliqueobo egestas lorem commodo">Quam vitnibh aliqueobo egestas lorem...</a>
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
																	<a class=" btn btn-outline button ajax_addtocart" href="../collections/shop/products/phasellus-cursus.html" title="Quam vitnibh aliqueobo egestas lorem commodo">
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
													<a class="product_img_link" href="../collections/shop/products/vestibulum-mi.html" title="Quam vitnibh aliqueobo egestas lorem commodo">
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
															<a class="btn btn-outline btn-wishlist" href="../account/login.html">
																<i class="fa fa-heart"></i>
																<span>Add to Wishlist</span>
															</a>
														</div>
														<div class="view_detail">
															<a class="btn lnk_view btn-outline" href="../collections/shop/products/vestibulum-mi.html" title="View">
																<i class="fa fa-eye"></i><span>View product</span>
															</a>
														</div>
													</div>
												</div>
												<div class="product-meta">
													<h5 class="name">
														<a class="product-name" href="../collections/shop/products/vestibulum-mi.html" title="Quam vitnibh aliqueobo egestas lorem commodo">Quam vitnibh aliqueobo egestas lorem...</a>
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
																	<a class=" btn btn-outline button ajax_addtocart" href="../collections/shop/products/vestibulum-mi.html" title="Quam vitnibh aliqueobo egestas lorem commodo">
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
								</div>
							</div>
						</div>
					</div>
					<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/jquery.elevatezoom.js?9058985543830283562') }}" type="text/javascript"></script>
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
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@section('scripts')

@endsection