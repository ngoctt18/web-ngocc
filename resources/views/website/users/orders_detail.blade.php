@extends('website.users.user_master')


@section('user_profile')

<div class="order-account">
	<h4>Order History</h4>
	<div class="box-content">
		@if (count($order->orderDetails))
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>Hình ảnh</th>
					<th>Sản phẩm</th>
					<th>Số lượng</th>
					<th>Đơn giá</th>
					<th>Giảm giá</th>
					<th>Thành tiền</th>
				</tr>
			</thead>
			<tbody>
				@foreach ($order->orderDetails as $key => $detail)
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
					<td>{{number_format($detail->price,0,",",".")}} ₫</td>
					<td>{{$detail->discount}}%</td>
					<td>{{number_format(($detail->quantity*$detail->price)-($detail->quantity*$detail->product->price*$detail->discount/100),0,",",".")}} ₫</td>
				</tr>
				@endforeach
			</tbody>
		</table>
		@else
		<p>You haven't placed any orders yet.</p>
		@endif

	</div>
</div>
@endsection
