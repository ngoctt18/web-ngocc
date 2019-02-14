@extends('admin.layouts.master')

@section('title', 'Thông tin chi tết đơn hàng')

@section('content')

@include('admin.components.messages')  
<div style=" margin: -15px; ">
	<!-- Main content -->
	<section class="invoice">
		<!-- title row -->
		<div class="row">
			<div class="col-xs-12">
				<h2 class="page-header">
					<i class="fa fa-globe"></i> Invoice
					<small class="pull-right">Date: {{$order->created_at->format('d/m/Y')}}</small>
				</h2>
			</div>
			<!-- /.col -->
		</div>
		<!-- info row -->
		<div class="row invoice-info">
			<div class="col-sm-4 invoice-col">
				Người đặt
				<address>
					<strong>{{$order->user->name}}</strong><br>
					<strong>Email: </strong>{{$order->user->email}}<br>
					<strong>Điện thoại: </strong>{{$order->user->phone}}<br>
					<strong>Địa chỉ: </strong>{{$order->user->address}}<br>
				</address>
			</div>
			<!-- /.col -->
			<div class="col-sm-4 invoice-col">
				Người nhận
				<address>
					<strong>{{$order->name}}</strong><br>
					<strong>Email: </strong>{{$order->email}}<br>
					<strong>Điện thoại: </strong>{{$order->phone}}<br>
					<strong>Địa chỉ: </strong>{{$order->address}}<br>
				</address>
			</div>
			<!-- /.col -->
			<div class="col-sm-4 invoice-col">
				<b>Invoice #00{{$order->id}}</b><br>
				<br>
				<b>Order ID:</b> 4F3S8J<br>
				<b>Payment Due:</b> 2/22/2014<br>
				<b>Account:</b> 968-34567
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<!-- Table row -->
		<div class="row">
			<div class="col-xs-12 table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
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
							<td>{{$detail->product->name}}</td>
							<td>{{$detail->quantity}}</td>
							<td>{{$detail->product->price}}</td>
							<td>{{$detail->product->discount}}%</td>
							<td>{{$detail->quantity*$detail->product->price*$detail->product->discount/100}}</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<div class="row">
			<!-- accepted payments column -->
			<div class="col-xs-6">
				<p class="lead">Phương thức thanh toán:</p>
				<img src="../../dist/img/credit/visa.png" alt="Visa">
				<img src="../../dist/img/credit/mastercard.png" alt="Mastercard">
				<img src="../../dist/img/credit/american-express.png" alt="American Express">
				<img src="../../dist/img/credit/paypal2.png" alt="Paypal">

			</div>
			<!-- /.col -->
			<div class="col-xs-6">
				<p class="lead">Amount Due 2/22/2014</p>

				<div class="table-responsive">
					<table class="table">
						<tr>
							<th style="width:50%">Subtotal:</th>
							<td>$250.30</td>
						</tr>
						<tr>
							<th>Tax (9.3%)</th>
							<td>$10.34</td>
						</tr>
						<tr>
							<th>Shipping:</th>
							<td>$5.80</td>
						</tr>
						<tr>
							<th>Total:</th>
							<td>$265.24</td>
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
				<a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
				<button type="button" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
				</button>
				<button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
					<i class="fa fa-download"></i> Generate PDF
				</button>
			</div>
		</div>
	</section>
	<!-- /.content -->
	<div class="clearfix"></div>
</div>

@endsection