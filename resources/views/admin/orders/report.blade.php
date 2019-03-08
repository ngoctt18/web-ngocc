<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Chi tiết đơn hàng #DH00{{$order->id}}</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<style type="text/css">
	html, body {
    height: 100%;
}
	.invoice {
		position: relative;
		background: #fff;
		border: 1px solid #f4f4f4;
		padding: 20px;
		margin: 10px 25px;
	}
	.wrapper {
		height: 100%;
		position: relative;
		overflow-x: hidden;
		overflow-y: auto;
	}
	.row {
		margin-right: -15px;
		margin-left: -15px;
	}
	.col-xs-12 {
		width: 100%;
	}
	.page-header {
		margin: 10px 0 20px 0;
		font-size: 22px;

		padding-bottom: 9px;
		border-bottom: 1px solid #eee;
	}
	.pull-right {
		float: right!important;
	}
	.table {
		width: 100%;
		max-width: 100%;
		margin-bottom: 20px;
	}
	table {
		background-color: transparent;
	}
	.table>thead>tr>th {
		border-bottom: 2px solid #f4f4f4;
	}
	.table>tbody>tr>td {
		padding: 8px;
		line-height: 1.42857143;
		vertical-align: top;
		border-top: 1px solid #ddd;
	}
	.col-xs-6 {
		width: 50%;
		float: left;
	}
	.col-sm-4 {
		width: 33.33333333%;
		float: left;
	}

</style>
</head>
<body>
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
								<th>STT</th>
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
								<th><span class="">Lưu ý: </span></th>
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
			</div>
			
		</section>
	</div>
</body>
</html>
