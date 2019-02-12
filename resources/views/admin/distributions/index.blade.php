@extends('admin.layouts.master')

@section('title', 'Quản lý nhà phân phối')

@section('styles')

@endsection

@section('content')

@include('admin.components.messages')
<p>
	<a href="{{ route('admin.distributions.create') }}" class="btn btn-primary">Thêm nhà phân phối</a> &emsp; <span class="pull-right marT15">Tổng số: {{ $distributions->total() }}</span>
</p>
<div class="box">
	<div class="box-header">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<table id="example1" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>Nhà phân phối</th>
					<th>Email</th>
					<th>Điện thoại</th>
					<th>Địa chỉ</th>
					<th>Mô tả</th>
					<th>Trạng thái</th>
					<th>Tham gia</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				@foreach($distributions as $distribute)
				<tr role="row" class="align-middle">
					<td>{{ index_row($distributions, $loop->index) }}</td>
					<td>{{$distribute->name}}</td>
					<td>{{ str_limit($distribute->email, 22, '...') }}</td>
					<td>{{$distribute->phone}}</td>
					<td>{{ str_limit($distribute->address, 40, '...') }}</td>
					<td>{{ str_limit($distribute->description, 40, '...') }}</td>
					<td>
						@if($distribute->status == '0')
						{{"Ẩn"}}
						@elseif($distribute->status == '1')
						{{"Hiển thị"}}
						@endif
					</td>
					<td>{{$distribute->created_at->format('d/m/Y')}}</td>
					<td>
						<a href="{{ route('admin.distributions.edit', ['id' => $distribute->id], false) }}" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
						<a href="{{ route('admin.distributions.destroy', ['id' => $distribute->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $distributions->links('admin.paginations.pagination_sm') }}
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
					<h4>Bạn có muốn xóa nhà phân phối này?</h4>
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
