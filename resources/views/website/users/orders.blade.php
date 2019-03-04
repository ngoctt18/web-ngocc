@extends('website.users.user_master')

@section('user_styles')
<style type="text/css">
	.order_id {color: #0089ff;}
</style>
@endsection

@section('user_profile')
<div class="order-account">
	<h4>Order History</h4>
	<div class="box-content">
		@if (count($user->orders))
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Mã đơn hàng</th>
					<th>Ngày mua</th>
					<th>Sản phẩm</th>
					<th>Tổng tiền</th>
					<th>Trạng thái đơn hàng</th>
				</tr>
			</thead>
			<tbody>
				@foreach($user->orders as $order)
				<tr>
					<td>
						<a href="{{ route('web.orders_detail', [$user->username, $order->id]) }}" class="order_id">
							DH00{{$order->id}}
						</a>
					</td>
					<td>
						{{$order->input_date->format('d/m/Y')}}
					</td>
					<td>San pham</td>
					<td>{{number_format($order->sum_money,0,",",".")}} ₫</td>
					<td>
						@if($order->status == '0')
						{{"Chờ xử lý"}}
						@elseif($order->status == '1')
						{{"Đang vận chuyển"}}
						@elseif($order->status == '2')
						{{"Vận chuyển thành công"}}
						@elseif($order->status == '3')
						{{"Vận chuyển thất bại"}}
						@endif
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>

		{{-- <table class="table table-striped">
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
					<td>{{number_format($detail->price,0,",",".")}} ₫</td>
					<td>{{$detail->discount}}%</td>
					<td>{{number_format(($detail->quantity*$detail->price)-($detail->quantity*$detail->product->price*$detail->discount/100),0,",",".")}} ₫</td>
				</tr>
				@endforeach
				@endforeach
			</tbody>
		</table> --}}
		@else
		<p>You haven't placed any orders yet.</p>
		@endif

	</div>
</div>
@endsection
