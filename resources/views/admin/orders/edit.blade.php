@extends('admin.layouts.master')

@section('title', 'Chỉnh sửa đơn hàng #DH00'.$order->id)

@section('styles')
<style type="text/css">
	.quantity-selector {width: 40%; padding: 5px;}
	.qty0 {outline-color: #ff0000c7; border: 1px solid #ff0000c7;}
</style>
@endsection

@section('content')

@include('admin.components.messages')  
<div style=" margin: -15px; ">
	<!-- Main content -->
	<section class="invoice">
		<form method="POST" action="{{ route('admin.update_order', [$order->id]) }}">
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
								<th>Xóa</th>
							</tr>
						</thead>
						<tbody>
							<?php $i = 1; ?>
							@foreach($cartOrder as $key => $detail)
							<tr class="formCart">
								<td>{{$i++}}</td>
								<td>
									<img src="{{$detail->model->ThumbProduct}}" alt="{{$detail->model->name}}" style=" width: 90px; height: auto; ">
								</td>
								<td>
									{{$detail->model->name}}
								</td>
								<td>
									<input type="number" name="quantity" min="1" class="quantity-selector" pattern="[0-9]+" oninput="validity.valid||(value='');" value="{{$detail->qty}}" rowId="{{$detail->rowId}}">
									<input type="hidden" name="detail_id[]" value="{{$detail->options->detail_id}}">
									{{csrf_field()}}
								</td>
								<td>{{number_format($detail->price,0,",",".")}} ₫</td>
								<td>{{$detail->options->discount}}%</td>
								<td class="total_money">{{number_format(($detail->qty*$detail->price),0,",",".")}} ₫</td>
								<td><a href="javascript:void(0)" class="btn btnDeleteDetail btn-danger btn-xs" rowId="{{$detail->rowId}}">Xóa</a></td>
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
					@endif
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
					<a href="{{ route('admin.orders.index') }}" class="btn btn-warning" style="margin-right: 5px;">
						Thêm sản phẩm
					</a>
					<a href="{{ route('admin.orders.index') }}" class="btn btn-primary pull-right" style="margin-right: 5px;">
						Trở về
					</a>
					@if ($order->status == '0')
					<button type="submit" class="btn btn-info pull-right btnEditOrder" style="margin-right: 5px;">
						Cập nhật chỉnh sửa
					</button>
					@endif
				</div>
			</div>
		</form>
	</section>
	<!-- /.content -->
	<div class="clearfix"></div>
</div>

@endsection

@section('scripts')
<script type="text/javascript">
	$(document).ready(function() {
		$('input[name="quantity"]').bind('change', function () {
			// $('.website_loader').fadeIn();
			var rowId = $(this).attr('rowId');
			var qty = $(this).val();
			if (qty == 0) {
				$(this).addClass('qty0');
				$('.btnEditOrder').prop('disabled', true);
				return false;
			} else {
				$('.btnEditOrder').prop('disabled', false);
				$(this).removeClass('qty0')
			}
			var _token = $('input[name="_token"]').val();
			var _self = $(this);
			console.log('rowId: '+rowId);
			console.log('qty: '+qty);
			$.ajax({
				url: '{{ route('admin.update_qty') }}',
				method: 'POST',
				dataType: 'JSON',
				cache: false,
				data: {_token: _token, rowId: rowId, qty: qty},
				success: function(data){
					console.log(data);
					$(_self).closest('.formCart').find('.total_money').text(data['price']+' ₫');
				},
				error: function(data){
					console.log('Ajax khong ve!');
					console.log(data);
				},
			});
		});

		$('.btnDeleteDetail').click(function(event) {
			var check =  confirm('Bạn có muộn xóa sản phẩm này?');
			var rowId = $(this).attr('rowId');
			var _token = $('input[name="_token"]').val();
			var _self = $(this);
			// console.log(check);
			if (check) {
				console.log('rowId: '+rowId);
				$.ajax({
					url: "{{ route('admin.del_item') }}",
					method: 'POST',
					dataType: 'JSON',
					cache: false,
					data: {_token: _token, rowId: rowId},
					success: function(data){
						console.log(data);
						if (data == true) {
							$(_self).closest('.formCart').remove();
						}
					},
					error: function(data){
						console.log('Ajax khong ve!');
						console.log(data);
					},
				});
			}
		});
	});
</script>
@endsection