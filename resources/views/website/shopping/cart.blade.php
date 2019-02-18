@extends('website.layouts.website')

@section('title', 'Giỏ hàng')


@section('styles')
<style type="text/css">
input#Quantity { line-height: 15px; font-weight: 600; padding: 5px; max-width: 100%; }
</style>
@endsection

@section('content')
<div class="container">
	<div class="row">
		<div id="center_column" class="center_column col-md-12">
			<div id="cart-page">
				
				<form action="{{ route('web.checkout') }}" method="post" novalidate="" class="cart" name="formCart" id="formCart">
					{{csrf_field()}}
					<h1 class="page-header">Giỏ hàng <small>(Bạn có {{Cart::count()}} sản phẩm)</small></h1>
					@if(count($contents))
					<div class="page-content">
						<div class="cart_header_labels clearfix">
							<div class="label_item col-xs-12 col-sm-1 col-md-1">
								<div class="cart_product first_item">
									#
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-3 col-md-4">
								<div class="cart_description item">
									Sản phẩm
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-2 col-md-3">
								<div class="cart_price item">
									Giá
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-3 col-md-1">
								<div class="cart_quantity item">
									Số lượng
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-2 col-md-2">
								<div class="cart_total item">
									Thành tiền
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-1 col-md-1">
								<div class="cart_delete last_item">
									Remove
								</div>
							</div>
						</div>

						@foreach($contents as $item)
						<div class="list_product_cart clearfix" data-id="4214855428">
							
							<div class="cpro_item col-xs-12 col-sm-1 col-md-1">
								<div class="cpro_item_inner">
									<a href="{{ route('web.product_detail',[$item->id,$item->model->slug]) }}">
										<img class="img-responsive" src="{{$item->model->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="Egestas lorem commodo libero quis enim vehicula - N / blue">
									</a>
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-3 col-md-4">
								<div class="cpro_item_inner">
									<a href="{{ route('web.product_detail',[$item->id,$item->model->slug]) }}">
										{{$item->model->name}}
									</a>
									{{-- <small>N / blue</small> --}}
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-2 col-md-3">
								<div class="cpro_item_inner">
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
							</div>
							<div class="cpro_item text-center col-xs-12 col-sm-3 col-md-1">
								<div class="cpro_item_inner">
									<!-- <div class="js-qty">
										<button type="button" class="js-qty__adjust js-qty__adjust--minus" data-id="4214855428" data-qty="2">−</button>
										<input type="number" class="js-qty__num" value="" min="1" data-id="4214855428" aria-label="quantity" pattern="[0-9]*" name="quantity" id="updates_4214855428">
										<button type="button" class="js-qty__adjust js-qty__adjust--plus" data-id="4214855428" data-qty="31">+</button>
									</div> -->
									<input type="number" id="Quantity" name="quantity" value="{{$item->qty}}" min="1" class="quantity-selector" rowId="{{$item->rowId}}" pattern="[0-9]+" oninput="validity.valid||(value='');">
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-2 col-md-2">
								<div class="cpro_item_inner">
									<span class="price product-price">
										<span class="money subtotal" data-currency-usd="$120.00">
											{{number_format($item->subtotal,0,",",".")}}₫
										</span>
									</span>
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-1 col-md-1">
								<div class="cpro_item_inner">
									<a href="{{ route('web.del_item',['id'=>$item->rowId]) }}" class="cart__remove" data-id="4214855428">
										<small>Remove</small>
									</a>
								</div>
							</div>
						</div>
						@endforeach
						
						<div class="list_button_cart clearfix">
							<div class="note_item col-xs-12 col-sm-6 col-md-6">
								
								<div class="note_cart">
									<label class="control-label" for="CartSpecialInstructions">Lưu ý cho người bán</label>
									<textarea name="note" class="form-control" id="CartSpecialInstructions"></textarea>
								</div>
								
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6 text-right">
								<p>
									<span class="cart__subtotal-title" style=" font-size: 20px; ">Tổng tiền: </span>
									<span class="h3 cart__subtotal">
										<span class="money total_money" data-currency-usd="">{{-- {{number_format($total,0,",",".")}} --}}{{$total}}₫
										</span>
									</span>
								</p>
								<p><em>Shipping &amp; taxes calculated at checkout</em></p>
								<a class="btn con-ajax-cart btn-outline" href="{{ route('web.homepage') }}" title="Continue shopping">Continue shopping</a>
								<input type="submit" name="update" class="btn btn-outline update-cart" value="Update Cart">
								<a href="{{ route('web.checkout') }}" class="btn btn-outline" >Check Out</a>
								<!-- <input type="submit" name="checkout" class="btn btn-outline" value="Check Out"> -->
								
							</div>
						</div>
					</div>
					@else
					@if(session()->has('success'))
					<p class="alert alert-success cart-empty" style=" margin-bottom: 20px; ">
						{{ session()->get('success') }}
					</p>
					@endif
					<p class="alert alert-warning cart-empty">Giỏ hàng của bạn còn trống!</p>
					@endif
				</form>
				<p class="cart_navigation clearfix">
					<a class="btn btn-outline" href="{{ route('web.homepage') }}" title="Continue shopping">Tiếp tục mua sắm</a>
				</p>
				
			</div>
		</div>
	</div>
</div>

@endsection



@section('scripts')
<script type="text/javascript">
	$(document).ready(function() {
		$('input[name="quantity"]').bind('change', function () {
			$('.website_loader').fadeIn();
			var rowId = $(this).attr('rowId');
			var qty = $(this).val();
			var _token = $('input[name="_token"]').val();
			var _self = $(this);
			// console.log('rowId: '+rowId);
			// console.log('qty: '+qty);
			$.ajax({
				url: '{{ route('web.update_qty') }}',
				method: 'POST',
				dataType: 'JSON',
				cache: false,
				data: {_token: _token, rowId: rowId, qty: qty},
				success: function(data){
					// console.log(data);
					// console.log(data.responseText);
					// console.log('data: '+data['price']);
					// console.log('data: '+data['total']);
					$(_self).closest('.list_product_cart').find('.subtotal').text(data['price']);
					$(_self).closest('#formCart').find('.total_money').text(data['total']);
					$('.website_loader').fadeOut();
				},
				error: function(data){
					console.log('Ajax khong ve!');
					console.log(data);
					$('.website_loader').fadeOut();
				},
			});
			
		});
	});
</script>
@endsection