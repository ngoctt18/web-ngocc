@extends('website.layouts.website')

@section('title', 'Milk Store')

@section('content')

@include('website.partials.slideshow')

<div class="container">
	<div class="block-index">
		
		@include('website.partials.top_service')
		<div class="row ">
			<div class="products_top col-xs-12 col-sm-12">
				<div id="productlist01" class="products_block exclusive block" >
					<h4 class="page-subheading ">
						Sản phẩm mới
					</h4>
					<div class="block_content">
						<div class="product_list_owl">
							<div class="owl-carousel slide">
								<div class="item">
									<div class="product_block  ">
										<div class="product-container text-left product-block">
											<div class="product-image-container image">
												<a class="product_img_link" href="products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p3_largedf3d.jpg?v=1439570902" alt="Aenean sagittis commodo habitasse lacus">
													<span class="product-additional" data-idproduct="1119718980">
														<img class="replace-2x img-responsive" alt="Aenean sagittis commodo habitasse lacus" src="../cdn.shopify.com/s/files/1/0928/4804/products/p5_largedf3d.jpg?v=1439570902">
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
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/donec-fringilla.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">Aenean sagittis commodo habitasse lacus...</a>
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
																<a class=" btn btn-outline button ajax_addtocart" href="products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">
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
												<a class="product_img_link" href="products/nullam-volutpat.html" title="Commo habita lacus aenean consequat sagittis">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p15_largea330.jpg?v=1439571039" alt="Commo habita lacus aenean consequat sagittis">
													<span class="product-additional" data-idproduct="1119719620">
														<img class="replace-2x img-responsive" alt="Commo habita lacus aenean consequat sagittis" src="../cdn.shopify.com/s/files/1/0928/4804/products/p12_largea330.jpg?v=1439571039">
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
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/nullam-volutpat.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/nullam-volutpat.html" title="Commo habita lacus aenean consequat sagittis">Commo habita lacus aenean consequat...</a>
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
																<a class=" btn btn-outline button ajax_addtocart" href="products/nullam-volutpat.html" title="Commo habita lacus aenean consequat sagittis">
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
												<a class="product_img_link" href="products/nullam-commodo.html" title="Egestas lorem commodo libero quis enim vehicula">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p17_large13bb.jpg?v=1439571095" alt="Egestas lorem commodo libero quis enim vehicula">
													<span class="product-additional" data-idproduct="1119718276">
														<img class="replace-2x img-responsive" alt="Egestas lorem commodo libero quis enim vehicula" src="../cdn.shopify.com/s/files/1/0928/4804/products/p21_large2a2c.jpg?v=1439571096">
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
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/nullam-commodo.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/nullam-commodo.html" title="Egestas lorem commodo libero quis enim vehicula">Egestas lorem commodo libero quis...</a>
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
																<a class=" btn btn-outline button ajax_addtocart" href="products/nullam-commodo.html" title="Egestas lorem commodo libero quis enim vehicula">
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
												<a class="product_img_link" href="products/nullam-commodo-1.html" title="Libero quis enim vehicula egestas lorem commodo">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p11_large8e6f.jpg?v=1439571172" alt="Libero quis enim vehicula egestas lorem commodo">
													<span class="product-additional" data-idproduct="1119716612">
														<img class="replace-2x img-responsive" alt="Libero quis enim vehicula egestas lorem commodo" src="../cdn.shopify.com/s/files/1/0928/4804/products/p13_largea6a5.jpg?v=1439571173">
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
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/nullam-commodo-1.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/nullam-commodo-1.html" title="Libero quis enim vehicula egestas lorem commodo">Libero quis enim vehicula egestas...</a>
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
																<a class=" btn btn-outline button ajax_addtocart" href="products/nullam-commodo-1.html" title="Libero quis enim vehicula egestas lorem commodo">
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
												<a class="product_img_link" href="products/nullam-volutpat-1.html" title="Libero quis enim vehicula egestas lorem commodo">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205" alt="Libero quis enim vehicula egestas lorem commodo">
													<span class="product-additional" data-idproduct="1119717188">
														<img class="replace-2x img-responsive" alt="Libero quis enim vehicula egestas lorem commodo" src="../cdn.shopify.com/s/files/1/0928/4804/products/p18_large592f.jpg?v=1439571205">
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
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/nullam-volutpat-1.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/nullam-volutpat-1.html" title="Libero quis enim vehicula egestas lorem commodo">Libero quis enim vehicula egestas...</a>
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
																<a class=" btn btn-outline button ajax_addtocart" href="products/nullam-volutpat-1.html" title="Libero quis enim vehicula egestas lorem commodo">
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
												<a class="product_img_link" href="products/donec-fringilla-2.html" title="Malesuada bibendum duiat egestas lorem commodo">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p25_large2839.jpg?v=1439571290" alt="Malesuada bibendum duiat egestas lorem commodo">
													<span class="product-additional" data-idproduct="1119714372">
														<img class="replace-2x img-responsive" alt="Malesuada bibendum duiat egestas lorem commodo" src="../cdn.shopify.com/s/files/1/0928/4804/products/p23_large2839.jpg?v=1439571290">
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
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/donec-fringilla-2.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/donec-fringilla-2.html" title="Malesuada bibendum duiat egestas lorem commodo">Malesuada bibendum duiat egestas lorem...</a>
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
																<a class=" btn btn-outline button ajax_addtocart" href="products/donec-fringilla-2.html" title="Malesuada bibendum duiat egestas lorem commodo">
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
												<a class="product_img_link" href="products/copy-of-vestibulum-mi.html" title="Malesuada fames acurpis egestas lorem commodo">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p6_largeac2c.jpg?v=1439571392" alt="Malesuada fames acurpis egestas lorem commodo">
													<span class="product-additional" data-idproduct="1119715652">
														<img class="replace-2x img-responsive" alt="Malesuada fames acurpis egestas lorem commodo" src="../cdn.shopify.com/s/files/1/0928/4804/products/p27_largeac2c.jpg?v=1439571392">
													</span>
												</a>
												<div class="tool-funtion">
													<div class="quickview">
														<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="copy-of-vestibulum-mi" title="+ Quick View">
															<i class="fa fa-plus"></i>
															<span>+ Quick View</span>
														</a>
													</div>
													<div class="wishlist">
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/copy-of-vestibulum-mi.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/copy-of-vestibulum-mi.html" title="Malesuada fames acurpis egestas lorem commodo">Malesuada fames acurpis egestas lorem...</a>
												</h5>
												<div class="review">
													<span class="shopify-product-reviews-badge" data-id="1119715652"></span>
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
																<input type="hidden" name="id" value="4214847428" />
																<a class=" btn btn-outline button ajax_addtocart" href="products/copy-of-vestibulum-mi.html" title="Malesuada fames acurpis egestas lorem commodo">
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
												<a class="product_img_link" href="products/vestibulum-mi-1.html" title="Malesuada fames acurpis egestas lorem commodo">
													<img class="replace-2x img-responsive" src="../cdn.shopify.com/s/files/1/0928/4804/products/p22_largeffda.jpg?v=1439571350" alt="Malesuada fames acurpis egestas lorem commodo">
													<span class="product-additional" data-idproduct="1119716036">
														<img class="replace-2x img-responsive" alt="Malesuada fames acurpis egestas lorem commodo" src="../cdn.shopify.com/s/files/1/0928/4804/products/p24_largeffda.jpg?v=1439571350">
													</span>
												</a>
												<div class="tool-funtion">
													<div class="quickview">
														<a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="vestibulum-mi-1" title="+ Quick View">
															<i class="fa fa-plus"></i>
															<span>+ Quick View</span>
														</a>
													</div>
													<div class="wishlist">
														<a class="btn btn-outline btn-wishlist" href="account/login.html">
															<i class="fa fa-heart"></i>
															<span>Add to Wishlist</span>
														</a>
													</div>
													<div class="view_detail">
														<a class="btn lnk_view btn-outline" href="products/vestibulum-mi-1.html" title="View">
															<i class="fa fa-eye"></i><span>View product</span>
														</a>
													</div>
												</div>
											</div>
											<div class="product-meta">
												<h5 class="name">
													<a class="product-name" href="products/vestibulum-mi-1.html" title="Malesuada fames acurpis egestas lorem commodo">Malesuada fames acurpis egestas lorem...</a>
												</h5>
												<div class="review">
													<span class="shopify-product-reviews-badge" data-id="1119716036"></span>
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
																<input type="hidden" name="id" value="4214848132" />
																<a class=" btn btn-outline button ajax_addtocart" href="products/vestibulum-mi-1.html" title="Malesuada fames acurpis egestas lorem commodo">
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
			</div>
		</div>


		<div class="row no-margin">
			<aside>
				<div id="left_column" class="left_column sidebar col-sm-4 col-md-3 no-padding">
					@include('website.partials.catagory_left')

					@include('website.partials.special_left')
				</div>
				@include('website.partials.signup_left')
				
			</div>
		</aside>
		<div id="center_column" class="center_column col-sm-8 col-md-9 no-padding">
			<div class="center_wrap">
				@include('website.partials.banner_top')
				
				@include('website.partials.product_home')

				@include('website.partials.banner_bot')
			</div>
		</div>
	</div>
</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript">
	$(document).ready(function() {
		$('#productlist01 .owl-carousel').each(function(){
			$(this).owlCarousel({
				items : 4,
				lazyLoad : true,
				navigation : true,
				addClassActive: true,
				afterInit : SetOwlCarouselFirstLast,
				afterAction : SetOwlCarouselFirstLast,

				itemsDesktop: [1199, 3],
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