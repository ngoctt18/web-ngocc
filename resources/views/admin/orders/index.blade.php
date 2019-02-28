@extends('admin.layouts.master')

@section('title', 'Quản lý đơn hàng')

@section('styles')

<link rel="stylesheet" href="{{ asset('../../bower_components/bootstrap-daterangepicker/daterangepicker.css') }}">

@endsection

@section('content')

@include('admin.components.messages')
<p>
	&emsp; <span class="pull-right">Tổng số: {{ $orders->total() }}</span>
</p>
<div class="box box-success">
	<div class="box-header">
		<h3 class="box-title"></h3>
		<form action="" method="GET">
			<div class="row">
				<div class="col-xs-4">
					<label for="name">Tên khách hàng</label>
					<input id="name" name="name" value="{{ old('name', request('name')) }}" type="text" class="form-control input-sm" placeholder="Tên khách hàng">
				</div>
				<div class="col-xs-3">
					<label for="status">Trạng thái</label>
					<select id="status" class="form-control input-sm" name="status">
						<option value="">Chọn trạng thái</option>
						<option value="0" {{old('status', request('status')) == '0' ? 'selected' : ''}}>Xử lý</option>
						<option value="1" {{old('status', request('status')) == '1' ? 'selected' : ''}}>Đang vận chuyển</option>
						<option value="2" {{old('status', request('status')) == '1' ? 'selected' : ''}}>Thành công</option>
						<option value="3" {{old('status', request('status')) == '1' ? 'selected' : ''}}>Không thành công</option>
					</select>
				</div>
				<div class="col-xs-3">
					<label for="name">Ngày order</label>
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-calendar"></i>
						</div>
						<input type="text" class="form-control input-sm pull-right" id="reservation">
					</div>
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
				</tr>
			</thead>
			<tbody>
				@foreach($orders as $order)
				<tr role="row" class="align-middle">
					<td><a href="{{ route('admin.orders.show', ['id' => $order->id], false) }}" class="">{{$order->id}}</a></td>
					<td>{{$order->name}}</td>
					<td>{{str_limit($order->address, 100, '...')}}</td>
					<td>{{$order->phone}}</td>
					<td>{{number_format($order->sum_money,0,",",".")}} ₫</td>
					<td>{{$order->created_at->format('d/m/Y')}}</td>
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
					{{-- <td>
						<a href="{{ route('admin.orders.destroy', ['id' => $order->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td> --}}
				</tr>
				@endforeach
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
<script src="{{ asset('../../bower_components/bootstrap-daterangepicker/daterangepicker.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#reservation').daterangepicker()
	});
</script>
@endsection
