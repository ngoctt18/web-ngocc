@extends('admin.layouts.master')

@section('title', 'Thông tin chi tết đơn hàng #DH00'.$order->id)

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
					<small class="pull-right">Date: {{$order->input_date->format('H:i - d/m/Y')}}</small>
				</h2>
			</div>
			<!-- /.col -->
		</div>
		
		<!-- info row -->
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
			<!-- /.col -->
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
			<!-- /.col -->
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
								<span class="label label-info">{{"Đang chờ xử lý"}}</span>
								@elseif($order->status == '1')
								<span class="label label-primary">{{"Đang giao hàng"}}</span>
								@elseif($order->status == '2')
								<span class="label label-success">{{"Giao hàng thành công"}}</span>
								@elseif($order->status == '3')
								<span class="label label-danger">{{"Giao hàng thất bại"}}</span>
								@elseif($order->status == '4')
								<span class="label label-default">{{"Đã hủy"}}</span>
								@endif
							</td>
						</tr>
					</tbody>
				</table>
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
							<td>
								<img src="{{$detail->product->ThumbProduct}}" alt="{{$detail->product->name}}" style=" width: 90px; height: auto; ">
							</td>
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
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<div class="row">
			<!-- accepted payments column -->
			<div class="col-xs-6">
				<table class="table table-bordred table-striped">
					<thead>
					</thead>
					<tbody>
						<tr>
							<th><span class="{{-- lead --}}">Lưu ý: </span></th>
							<td>{{$order->note}}</td>
						</tr>
					</tbody>
				</table>
				@if ($order->status == '4')
				<div class="alert alert-danger" style="width: 70%;">
					Khách hàng đã hủy đơn hàng này.
				</div>
				@else
				<div class="row">
					<form action="{{ route('admin.orders.update', [$order->id]) }}" method="POST">
						@csrf @method('PUT')
						<div class="col-md-6">
							<div class="form-group">
								<label for="status">Trạng thái</label>
								<select class="form-control" name="status" id="status">
									<option value="0" {{old('status', $order->status) == '0' ? 'selected' : ''}}>Đang chờ xử lý</option>
									<option value="1" {{old('status', $order->status) == '1' ? 'selected' : ''}}>Đang giao hàng</option>
									<option value="2" {{old('status', $order->status) == '2' ? 'selected' : ''}}>Giao hàng thành công</option>
									<option value="3" {{old('status', $order->status) == '3' ? 'selected' : ''}}>Giao hàng thất bại</option>
								</select>
								<small class="text-danger">{{ $errors->first('status') }}</small>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="">&nbsp;</label> <br>
								<button type="submit" class="btn btn-info">Cập nhật trạng thái</button>
							</div>
						</div>
					</form>
				</div>
				@endif
				<br>
				<img src="{{ asset('dist/img/credit/visa.png') }}" alt="Visa">
				<img src="{{ asset('dist/img/credit/mastercard.png') }}" alt="Mastercard">
				<img src="{{ asset('dist/img/credit/american-express.png') }}" alt="American Express">
				<img src="{{ asset('dist/img/credit/paypal2.png') }}" alt="Paypal">
			</div>
			<!-- /.col -->
			<div class="col-xs-6">
				{{-- <p class="lead">Amount Due 2/22/2014</p> --}}

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
				<a href="{{ route('admin.orders.print', [$order->id]) }}" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> In đơn hàng</a>
				&nbsp;
				@if ($order->status == '4')
				@else
				<a href="{{ route('admin.orders.report', [$order->id]) }}" target="_blank" class="btn btn-default" style="margin-left: 5px;">
					<i class="fa fa-download"></i> Xuất hóa đơn
				</a>
				@endif
				<a href="{{ route('admin.orders.index') }}" class="btn btn-primary pull-right" style="margin-right: 5px;">
					Trở về
				</a>
				@if ($order->status == '0')
				<a href="{{ route('admin.orders.edit', [$order->id]) }}" class="btn btn-warning pull-right" style="margin-right: 5px;">
					Sửa đơn hàng này
				</a>
				@endif
			</div>
		</div>
	</section>
	<!-- /.content -->
	<div class="clearfix"></div>
</div>

@endsection