<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Chi tiết đơn hàng #DH00{{$order->id}}</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="{{ asset('bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="{{ asset('bower_components/font-awesome/css/font-awesome.min.css') }}">
	<!-- Ionicons -->
	<link rel="stylesheet" href="{{ asset('bower_components/Ionicons/css/ionicons.min.css') }}">
	<!-- Theme style -->
	<link rel="stylesheet" href="{{ asset('dist/css/AdminLTE.min.css') }}">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body onload="window.print();">
	<div class="wrapper">
		<section class="invoice">
			<div class="row">
				<div class="col-xs-12">
					<h2 class="page-header">
						<i class="fa fa-globe"></i> Invoice #DH00{{$order->id}}
						<small class="pull-right">Date: {{$order->input_date->format('H:i - d/m/Y')}}</small>
					</h2>
				</div>
			</div>
			<div class="row invoice-info">
				<div class="col-sm-4 invoice-col">
					<table class="table table-bordred table-striped">
						<thead>
							<tr>
								<th colspan="2">Người đặt</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Họ tên: </th>
								<td>{{$order->user->name}}</td>
							</tr>
							<tr>
								<th>Email: </th>
								<td>{{$order->user->email}}</td>
							</tr>
							<tr>
								<th>Phone: </th>
								<td>{{$order->user->phone}}</td>
							</tr>
							<tr>
								<th>Địa chỉ: </th>
								<td>{{$order->user->address}}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-sm-4 invoice-col">
					<table class="table table-bordred table-striped">
						<thead>
							<tr>
								<th colspan="2">Người nhận</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Họ tên: </th>
								<td>{{$order->name}}</td>
							</tr>
							<tr>
								<th>Email: </th>
								<td>{{$order->email}}</td>
							</tr>
							<tr>
								<th>Phone: </th>
								<td>{{$order->phone}}</td>
							</tr>
							<tr>
								<th>Địa chỉ: </th>
								<td>{{$order->address}}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-sm-4 invoice-col">
					<table class="table table-bordred table-striped">
						<thead>
							<tr>
								<th colspan="2">Invoice #DH00{{$order->id}}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Order ID: </th>
								<td>#DH00{{$order->id}}</td>
							</tr>
							<tr>
								<th>Ngày đặt: </th>
								<td>{{$order->input_date->format('d/m/Y')}}</td>
							</tr>
							<tr>
								<th>Account: </th>
								<td>968-34567</td>
							</tr>
							<tr>
								<th>Trạng thái: </th>
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
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 table-responsive">
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
							@foreach($order->orderDetails as $key => $detail)
							<tr>
								<td>{{$key+1}}</td>
								{{-- <td>
									<img src="{{$detail->product->ThumbProduct}}" alt="{{$detail->product->name}}" style=" width: 90px; height: auto; ">
								</td> --}}
								<td>
									{{$detail->product->name}}
								</td>
								<td>{{$detail->quantity}}</td>
								<td>{{number_format($detail->price,0,",",".")}} ₫</td>
								<td>{{$detail->discount}}%</td>
								<td>{{number_format(($detail->quantity*$detail->price)-($detail->quantity*$detail->price*$detail->discount/100),0,",",".")}} ₫</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<table class="table table-bordred">
						<thead>
						</thead>
						<tbody>
							<tr>
								<th><span class="{{-- lead --}}">Lưu ý: </span></th>
								<td>{{$order->note}}</td>
							</tr>
							<tr>
								<th><span>Trạng thái đơn hàng: </span></th>
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
							<tr>
								<th><span>Hình thức giao hàng: </span></th>
								<td>Giao hàng tiêu chuẩn. Miễn phí vận chuyển</td>
							</tr>
							<tr>
								<th><span>Hình thức thanh toán: </span></th>
								<td>Thanh toán bằng tiền mặt khi nhận hàng</td>
							</tr>
						</tbody>
					</table>
					<br>
					<img src="{{ asset('dist/img/credit/visa.png') }}" alt="Visa">
					<img src="{{ asset('dist/img/credit/mastercard.png') }}" alt="Mastercard">
					<img src="{{ asset('dist/img/credit/american-express.png') }}" alt="American Express">
					<img src="{{ asset('dist/img/credit/paypal2.png') }}" alt="Paypal">
				</div>
				<div class="col-xs-6">
					<p class="lead">Hôm nay: {{now()->format('H:i - d/m/Y')}}</p>

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
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<!-- this row will not appear when printing -->
			<div class="row no-print">
				<div class="col-xs-12">
					<br>
					<a href="{{ route('admin.orders.print', [$order->id]) }}" class="btn btn-default"><i class="fa fa-print"></i> In đơn hàng</a>
					<a href="{{ route('admin.orders.report', [$order->id]) }}" target="_blank" class="btn btn-primary pull-right" style="margin-right: 5px;">
						<i class="fa fa-download"></i> Xuất hóa đơn
					</a>
				</div>
			</div>
		</section>
		<!-- /.content -->
		<div class="clearfix"></div>
	</div>
	<!-- ./wrapper -->
</body>
</html>
