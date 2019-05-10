@extends('website.layouts.website')

@section('title', 'Your Wish List')

@section('styles')
<style type="text/css">
	.cpro_item_inner { font-size: 15px; }
	.btnAddToCart {color: #004eff;}
</style>
@endsection

@section('content')
@include('website.partials.breadcrumbs')
<div class="container">
	<div class="row">
		<div id="center_column" class="center_column col-sm-12 col-md-12">
			<div class="wishlist-page">
				<h1 class="page-header">Wishlist</h1>

				@if(session()->has('success_cart'))
				<p class="alert alert-success cart-empty" style=" margin-bottom: 20px; ">
					{{ session()->get('success_cart') }}
				</p>
				@endif
				
				<div class="page-content">
					<div class="table-responsive">
						<table class="wishlist-product table table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>Sản phẩm</th>
									<th class="text-center">Giá</th>
									<th class="text-center">Xóa</th>
									<th class="text-center">Chuyển sang giỏ hàng</th>
								</tr>
							</thead>
							<tbody>
								@if(count($wishlists))
								@foreach($wishlists as $item)
								<tr class="row-xx1119719620 product-item" id="product-1119719620">
									<td>
										<a href="{{ route('web.product_detail',[$item->id,$item->model->slug]) }}" class="product-grid-image">
											<img src="{{$item->model->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="{{$item->model->name}}" style="width: 96px;height: 100px;margin: 0 auto;display: block;">
										</a>
									</td>
									<td class="product-name cpro_item_inner">
										<a href="{{ route('web.product_detail',[$item->id,$item->model->slug]) }}" class="product-title">{{$item->model->name}}</a>
									</td>
									<td class="text-center">
										<div class="content_price">
											<span class="price product-price">
												<span class="money" data-currency-usd="">
													{{number_format($item->price,0,",",".")}}₫
												</span>
											</span>
											@if ($item->options->discount != 0)
											<span class="old-price product-price">
												<span class='money' style=" text-decoration: line-through; color: gray;">
													{{number_format($item->options->price_old,0,",",".")}}₫
												</span>
											</span>
											@endif
										</div>
									</td>
									<td class="text-center remove">
										<a href="{{ route('web.del_item_wishlist',['rowId'=> $item->rowId]) }}" style=" padding: 10px 15px; background: burlywood; border-radius: 4px; "><i class="fa fa-trash-o btnRemove"></i></a>
									</td>
									<td class="text-center addtocart">
										<a href="{{ route('web.switch_to_cart', ['rowId' => $item->rowId ]) }}" class="button btnAddToCart cpro_item_inner">Thêm vào giỏ hàng</a>
									</td>
								</tr>
								@endforeach
								@else
								<tr>
									<td colspan="5">
										<div class="no_product-wishlist">
											<p>Bạn chưa có sản phẩm để dành nào cả.</p><p>
											</p>
										</div>
									</td>
								</tr>
								@endif

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
