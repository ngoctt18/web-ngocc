@extends('website.layouts.website')

@section('title', 'Your Wish List')


@section('styles')
<style type="text/css">
input#Quantity { line-height: 15px; font-weight: 600; padding: 5px; max-width: 100%; }
</style>
@endsection

@section('content')
@include('website.partials.breadcrumbs')

<div class="container">
	<div class="row">
		<div id="center_column" class="center_column col-md-12">
			<div class="wishlist-page">
				<h1 class="page-header">Wishlist</h1>
				<div class="page-content">

					<div class="table-responsive">
						<table class="wishlist-product table table-bordered">
							<thead>
								<tr>
									<th>Product Image</th>
									<th>Product Name</th>
									<th class="text-center">Price</th>
									<th class="text-center">Remove</th>
									<th class="text-center">Add to Cart</th>
								</tr>
							</thead>
							<tbody>
								@foreach($contents as $item)
								<tr>
									<td><img class="img-responsive" src="{{$item->model->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="{{$item->model->name}}"></td>
									<td>{{ $item->model->name }}</td>
								</tr>
								@endforeach

							</tbody>
						</table>
					</div>
					<form method="post" action="/contact" id="remove" accept-charset="UTF-8">
						<input name="form_type" type="hidden" value="customer">
						<input name="utf8" type="hidden" value="✓">
						<input type="hidden" name="contact[email]" value="tranngoc@gmail.com">
						<input type="hidden" name="contact[tags]" id="remove-value" value="">
					</form>
					<form action="/cart/add" id="add-variant" method="post">
						<input type="hidden" name="id" id="product-select" value="">
					</form>
					<script type="text/javascript">
						function removeTag(tagID) {
							document.getElementById('remove-value').value = tagID;
							document.getElementById('remove').submit();
						}
						function addToCart(variantID) {
							document.getElementById('product-select').value = variantID;
							document.getElementById('add-variant').submit();
						}
					</script>

				</div>
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