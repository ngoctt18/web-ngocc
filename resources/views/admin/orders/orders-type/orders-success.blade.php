@extends('admin.layouts.master')

@section('title', 'Đơn hàng giao thành công')

@section('styles')
<!-- bootstrap datepicker -->
<link rel="stylesheet" href="{{ asset('bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
<style type="text/css">
	span.err_dateTo { color: #d00202; font-size: 12px; }
</style>
@endsection

@section('content')

@include('admin.components.messages')
<p>
	&emsp; <span class="pull-right">Tổng số: {{ $orders->total() }}</span>
</p>
<div class="box box-success">
	<div class="box-header">
		<h3 class="box-title"></h3>
		<form action="" method="GET" id="formSearch">
			<div class="row">
				<div class="col-xs-4">
					<label for="name">Tên khách hàng</label>
					<input id="name" name="name" value="{{ old('name', request('name')) }}" type="text" class="form-control input-sm" placeholder="Tên khách hàng">
				</div>
				<div class="col-xs-2">
					<div class="form-group">
						<label>From date:</label>
						<div class="input-group date">
							<div class="input-group-addon">
								<i class="fa fa-calendar"></i>
							</div>
							<input name="dateFrom" type="text" class="form-control pull-right input-sm" id="datepickerFrom" value="{{request('dateFrom')}}" placeholder="dd/mm/YYYY">
						</div>
						<!-- /.input group -->
					</div>
				</div>
				<div class="col-xs-2">
					<div class="form-group">
						<label>To date:</label>
						<div class="input-group date">
							<div class="input-group-addon">
								<i class="fa fa-calendar"></i>
							</div>
							<input name="dateTo" type="text" class="form-control pull-right input-sm" id="datepickerTo" value="{{request('dateTo')}}" placeholder="dd/mm/YYYY">
						</div>
						<span class="err_dateTo"></span>
						<!-- /.input group -->
					</div>
				</div>
				<div class="col-xs-2">
					
				</div>
				<div class="col-xs-2">
					<label for="">&nbsp;</label>
					<button type="submit" class="btn btn-block btn-info btn-sm">Tìm kiếm</button>
				</div>
			</div>
		</form>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<table id="example1" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Đơn hàng</th>
					<th>Khách hàng</th>
					<th>Địa chỉ</th>
					<th>Phone</th>
					<th>Tổng tiền</th>
					<th>Ngày đặt</th>
					<th>Trạng thái</th>
					{{-- <th>Xóa</th> --}}
				</tr>
			</thead>
			<tbody>
				@if (count($orders))
				@foreach($orders as $order)
				<tr role="row" class="align-middle">
					<td><a href="{{ route('admin.orders.show', ['id' => $order->id], false) }}" class="">#DH00{{$order->id}}</a></td>
					<td>{{$order->name}}</td>
					<td>{{str_limit($order->address, 100, '...')}}</td>
					<td>{{$order->phone}}</td>
					<td>{{number_format($order->sum_money,0,",",".")}} ₫</td>
					<td>{{$order->input_date->format('d/m/Y')}}</td>
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
					{{-- <td>
						<a href="{{ route('admin.orders.destroy', ['id' => $order->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td> --}}
				</tr>
				@endforeach
				@else
				<tr role="row" class="align-middle">
					<td colspan="8" class="text-center">Không có đơn hàng nào.</td>
				</tr>
				@endif
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $orders->links('admin.paginations.pagination_sm') }}
	</div>
	<!-- box-footer -->
</div>
<!-- /.box -->

<!-- /.modal-delete -->
<div class="modal fade modal-delete" tabindex="-1" role="dialog">
	<div class="modal-dialog modal400" role="document">
		<div class="modal-content">
			<form method="POST">
				<div class="modal-body">
					{{ csrf_field() }} {{ method_field('DELETE') }}
					<h4>Bạn có muốn xóa đơn hàng này?</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
					<button type="submit" class="btn btn-success">Xác nhận</button>
				</div>
			</form>
		</div>
	</div>
</div>
@endsection

@section('scripts')
<!-- bootstrap datepicker -->
<script src="{{ asset('bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('dist/js/jquery.validate.min.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#datepickerFrom, #datepickerTo').datepicker({
			format: 'dd/mm/yyyy', 
			autoclose: true
		});

		// Thời gian vào nghề phải lớn hơn ngày sinh
		var checkSubmit = false;
		$('input[name="dateFrom"], input[name="dateTo"]').change(function(event) {
			event.preventDefault();
			var dateFrom = $('input[name="dateFrom"]').val();
			var dateTo = $('input[name="dateTo"]').val();
			// console.log(dateFrom);
			// console.log(dateTo);
			if (dateFrom != '' && dateTo != '') {
				var tmpDateFom = dateFrom.split("/");
				var tmpDateTo = dateTo.split("/");
				var from = new Date(tmpDateFom[2], tmpDateFom[1] - 1, tmpDateFom[0]);
				var to = new Date(tmpDateTo[2], tmpDateTo[1] - 1, tmpDateTo[0]);
				console.log('from: '+from+'-to: '+to);
				if (from.getTime() >= to.getTime()) {
					$('span.err_dateTo').text('Thời gian sau phải lớn hơn thời gian trước.');
					// $(this).focus();
					checkSubmit = true;
				} else {
					$('span.err_dateTo').text('');
					checkSubmit = false;
				}
			}
		});

		$("#formSearch").submit(function(e){
			if (checkSubmit) {
				$('input[name="dateFrom"]').focus();
				e.preventDefault();
			}
		});
	});
</script>
@endsection
