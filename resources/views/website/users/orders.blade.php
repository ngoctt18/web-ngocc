@extends('website.users.user_master')

@section('user_styles')
<style type="text/css">
	.order_id {color: #0089ff;}
	.table-hover tbody tr td {
		padding: 20px 19px;
		color: #242424;
		vertical-align: top;
	}
	.box-content { padding: 10px !important; }
</style>
@endsection

@section('user_profile')
<div class="order-account">
	<h4>Order History</h4>
	<div class="box-content">

		@if (session()->has('success'))
		<p class="alert alert-success" style=" margin-bottom: 10px !important; ">{{session()->get('success')}}</p>
		@endif
		
		@if (count($orders))
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
				@foreach($orders as $order)
				<tr>
					<td>
						<a href="{{ route('web.orders_detail', [$user->username, $order->id]) }}" class="order_id">
							#DH00{{$order->id}}
						</a>
					</td>
					<td>
						{{$order->input_date->format('d/m/Y')}}
					</td>
					<td>
						{{$order->orderDetails->first()->product->name ?? ''}}
						@if ($order->orderDetails->count() > 1)
						... và 
						{{$order->orderDetails->count()}} sản phẩm khác
						@endif

					</td>
					<td>{{number_format($order->sum_money,0,",",".")}} ₫</td>
					<td>
						@if($order->status == '0')
						{{"Đang chờ xử lý"}}
						@elseif($order->status == '1')
						{{"Đang giao hàng"}}
						@elseif($order->status == '2')
						{{"Giao hàng thành công"}}
						@elseif($order->status == '3')
						{{"Giao hàng thất bại"}}
						@elseif($order->status == '4')
						{{"Đã hủy"}}
						@endif
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
		<div class="pagination">
			{{ $orders->links('admin.paginations.pagination_sm') }}
		</div>
		@else
		<p>You haven't placed any orders yet.</p>
		@endif

	</div>
</div>
@endsection
