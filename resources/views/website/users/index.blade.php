@extends('website.layouts.website')

@section('title', $user->name."'s Profile")

@section('content')
<div id="account-page">
	<div class="container">
		<div class="account-box">
			<h1>{{$user->name}}</h1>
			<div class="row">
				{{-- <div class="col-md-3">
					
				</div> --}}
				<div class="col-md-12">
					<div class="order-account">
						<h4>Order History</h4>
						<div class="box-content">
							@if (count($user->orders))
							<table class="table table-striped">
								<thead>
									<tr>
										<th>#</th>
										<th>Hình ảnh</th>
										<th>Sản phẩm</th>
										<th>Số lượng</th>
										<th>Đơn giá</th>
										{{-- <th>Giảm giá</th> --}}
										<th>Thành tiền</th>
									</tr>
								</thead>
								<tbody>
									@foreach($user->orders as $orders)
									@foreach ($orders->orderDetails as $key => $detail)
									<tr>
										<td>{{$key+1}}</td>
										<td>
											<a href="{{ route('web.product_detail', [$detail->product->id, $detail->product->slug]) }}">
												<img src="{{$detail->product->ThumbProduct}}" alt="{{$detail->product->name}}" style=" width: 90px; height: auto; ">
											</a>
										</td>
										<td>
											<a href="{{ route('web.product_detail', [$detail->product->id, $detail->product->slug]) }}">
												{{$detail->product->name}}
											</a>
										</td>
										<td>{{$detail->quantity}}</td>
										<td>{{number_format($detail->product->price,0,",",".")}} ₫</td>
										{{-- <td>{{$detail->product->discount}}%</td> --}}
										<td>{{number_format(($detail->quantity*$detail->product->price)-($detail->quantity*$detail->product->price*$detail->product->discount/100),0,",",".")}} ₫</td>
									</tr>
									@endforeach
									@endforeach
								</tbody>
							</table>
							@else
							<p>You haven't placed any orders yet.</p>
							@endif

						</div>
					</div>
					<div class="details-account">
						<h4>Account Details</h4>
				{{-- <div class="box-content">
					<h5>Ngoc Tran</h5>

					<div class="adress-details">


					</div>

					<p><a href="/account/addresses">View Addresses (2)</a></p>
				</div> --}}
			</div>
		</div>
	</div>
</div>
</div>
</div>

@endsection