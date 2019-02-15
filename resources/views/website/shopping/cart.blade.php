@extends('website.layouts.website')

@section('title', 'Giỏ hàng')




@section('content')

<div class="container">
	<div class="row">
		<div id="center_column" class="center_column col-md-12">
			<div id="cart-page">
				
				<form action="/cart" method="post" novalidate="" class="cart">
					<h1 class="page-header">My Cart</h1>
					<div class="page-content">
						<div class="cart_header_labels clearfix">
							<div class="label_item col-xs-12 col-sm-1 col-md-1">
								<div class="cart_product first_item">
									Product
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-3 col-md-4">
								<div class="cart_description item">
									Description
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-2 col-md-2">
								<div class="cart_price item">
									Price
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-3 col-md-2">
								<div class="cart_quantity item">
									Quantity
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-2 col-md-2">
								<div class="cart_total item">
									Total
								</div>
							</div>
							<div class="label_item col-xs-12 col-sm-1 col-md-1">
								<div class="cart_delete last_item">
									Remove
								</div>
							</div>
						</div>
						
						<div class="list_product_cart clearfix" data-id="4214855428">
							
							<div class="cpro_item col-xs-12 col-sm-1 col-md-1">
								<div class="cpro_item_inner">
									<a href="/products/nullam-commodo?variant=4214855428" class="cart__image">
										<img class="img-responsive" src="//cdn.shopify.com/s/files/1/0928/4804/products/p17_small.jpg?v=1439571095" alt="Egestas lorem commodo libero quis enim vehicula - N / blue">
									</a>
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-3 col-md-4">
								<div class="cpro_item_inner">
									<a href="/products/nullam-commodo?variant=4214855428" class="product_name">
										Egestas lorem commodo libero quis enim vehicula
									</a>
									
									<small>N / blue</small>
									
									
									
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-2 col-md-2">
								<div class="cpro_item_inner">
									<span class="price product-price"><span class="money" data-currency-usd="$40.00">$40.00</span></span>
								</div>
							</div>
							<div class="cpro_item text-center col-xs-12 col-sm-3 col-md-2">
								<div class="cpro_item_inner">
									
									
									<div class="js-qty">
										<button type="button" class="js-qty__adjust js-qty__adjust--minus" data-id="4214855428" data-qty="2">−</button>
										<input type="text" class="js-qty__num" value="3" min="1" data-id="4214855428" aria-label="quantity" pattern="[0-9]*" name="updates[]" id="updates_4214855428">
										<button type="button" class="js-qty__adjust js-qty__adjust--plus" data-id="4214855428" data-qty="31">+</button>
									</div>
									

								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-2 col-md-2">
								<div class="cpro_item_inner">
									<span class="price product-price"><span class="money" data-currency-usd="$120.00">$120.00</span></span>
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-1 col-md-1">
								<div class="cpro_item_inner">
									<a href="/cart/change?line=1&amp;quantity=0" class="cart__remove" data-id="4214855428">
										<small>Remove</small>
									</a>
								</div>
							</div>
						</div>
						
						<div class="list_product_cart clearfix" data-id="4214855172">
							
							<div class="cpro_item col-xs-12 col-sm-1 col-md-1">
								<div class="cpro_item_inner">
									<a href="/products/nullam-commodo?variant=4214855172" class="cart__image">
										<img class="img-responsive" src="//cdn.shopify.com/s/files/1/0928/4804/products/p17_small.jpg?v=1439571095" alt="Egestas lorem commodo libero quis enim vehicula - M / red">
									</a>
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-3 col-md-4">
								<div class="cpro_item_inner">
									<a href="/products/nullam-commodo?variant=4214855172" class="product_name">
										Egestas lorem commodo libero quis enim vehicula
									</a>
									
									<small>M / red</small>
									
									
									
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-2 col-md-2">
								<div class="cpro_item_inner">
									<span class="price product-price"><span class="money" data-currency-usd="$40.00">$40.00</span></span>
								</div>
							</div>
							<div class="cpro_item text-center col-xs-12 col-sm-3 col-md-2">
								<div class="cpro_item_inner">
									
									
									<div class="js-qty">
										<button type="button" class="js-qty__adjust js-qty__adjust--minus" data-id="4214855172" data-qty="0">−</button>
										<input type="text" class="js-qty__num" value="1" min="1" data-id="4214855172" aria-label="quantity" pattern="[0-9]*" name="updates[]" id="updates_4214855172">
										<button type="button" class="js-qty__adjust js-qty__adjust--plus" data-id="4214855172" data-qty="11">+</button>
									</div>
									

								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-2 col-md-2">
								<div class="cpro_item_inner">
									<span class="price product-price"><span class="money" data-currency-usd="$40.00">$40.00</span></span>
								</div>
							</div>
							<div class="cpro_item col-xs-12 col-sm-1 col-md-1">
								<div class="cpro_item_inner">
									<a href="/cart/change?line=2&amp;quantity=0" class="cart__remove" data-id="4214855172">
										<small>Remove</small>
									</a>
								</div>
							</div>
						</div>
						
						<div class="list_button_cart clearfix">
							<div class="note_item col-xs-12 col-sm-6 col-md-6">
								
								<div class="note_cart">
									<label class="control-label" for="CartSpecialInstructions">Special instructions for seller</label>
									<textarea name="note" class="form-control" id="CartSpecialInstructions"></textarea>
								</div>
								
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6 text-right">
								<p>
									<span class="cart__subtotal-title">Subtotal</span>
									<span class="h3 cart__subtotal"><span class="money" data-currency-usd="$160.00">$160.00</span></span>
								</p>
								<p><em>Shipping &amp; taxes calculated at checkout</em></p>
								<a class="btn con-ajax-cart btn-outline" href="/collections/all" title="Continue shopping">Continue shopping</a>
								<input type="submit" name="update" class="btn btn-outline update-cart" value="Update Cart">
								<input type="submit" name="checkout" class="btn btn-outline" value="Check Out">
								
							</div>
						</div>
					</div>
				</form>
				<p class="cart_navigation clearfix">
					<a class="btn btn-outline" href="/collections/all" title="Continue shopping">Continue shopping</a>
				</p>
				
			</div>
		</div>
	</div>
</div>

@endsection



@section('scripts')

@endsection