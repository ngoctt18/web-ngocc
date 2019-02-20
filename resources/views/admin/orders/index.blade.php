@extends('admin.layouts.master')

@section('title', 'Quản lý đơn hàng')

@section('styles')

@endsection

@section('content')

@include('admin.components.messages')
<p>
	&emsp; <span class="pull-right">Tổng số: {{ $orders->total() }}</span>
</p>
<div class="box box-success">
	<div class="box-header">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<table id="example1" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Mã đơn hàng</th>
					<th>Khách hàng</th>
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

@endsection
