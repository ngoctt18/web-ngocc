@extends('website.users.user_master')


@section('user_styles')
<style type="text/css">
span.status {color: #43af3f;}
span.input_date {
	font-size: 14px;
	font-weight: 500;
	color: black;
	text-transform: none;
}
</style>
@endsection

@section('user_profile')
<div class="order-account">
	<h4>
		Order Details #DH00{{$order->id}} - 
		<span class="status">
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
		</span>
		<span class="pull-right input_date">
			Ngày đặt hàng: {{$order->input_date->format('H:i d/m/Y')}}
		</span>
	</h4>
	<div class="box-content">
		@if (count($order->orderDetails))
		<div class="row invoice-info">
			<div class="col-sm-5 invoice-col">
				<table class="table table-bordred table-striped">
					<thead>
						<tr>
							<th colspan="2">Địa chỉ người nhận</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>Họ tên: </th>
							<td>{{$order->name}}</td>
						</tr>
						<tr>
							<th>Địa chỉ: </th>
							<td>{{$order->address}}</td>
						</tr>
						<tr>
							<th>Điện thoại: </th>
							<td>{{$order->phone}}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- /.col -->
			<div class="col-sm-4 invoice-col">
				<table class="table table-bordred table-striped">
					<thead>
						<tr>
							<th colspan="2">Hình thức giao hàng</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">
								Giao hàng tiêu chuẩn <br> Miễn phí vận chuyển

							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- /.col -->
			<div class="col-sm-3 invoice-col">
				<table class="table table-bordred table-striped">
					<thead>
						<tr>
							<th colspan="2">Hình thức thanh toán</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">
								Thanh toán bằng tiền mặt khi nhận hàng

							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- /.col -->
		</div>
		<hr>
		<table class="table table-hover">
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
		<div class="row">
			<div class="col-md-offset-6 col-md-6">
				<div class="table-responsive">
					<table class="table">
						<tr>
							<th>Tạm tính:</th>
							<td>{{number_format($order->sum_money,0,",",".")}} ₫</td>
						</tr>
						<tr>
							<th>Phí vận chuyển:</th>
							<td>Free</td>
						</tr>
						<tr>
							<th>Thành tiền:</th>
							<th>{{number_format($order->sum_money,0,",",".")}} ₫</th>
						</tr>
					</table>
				</div>
				@if ($order->status == '0')
				<form method="POST" action="{{ route('web.orders_cancel', [$user->username, $order->id]) }}">
					@csrf @method('PUT')
					<input type="submit" value="Hủy đơn hàng" class="btn btn-danger pull-right" onclick="return confirm('Bạn có chắc chắn muốn hủy đơn hàng này?')">
				</form>
				@endif
			</div>
		</div>
		@else
		<p>You haven't placed any orders yet.</p>
		@endif

	</div>
</div>
@endsection
