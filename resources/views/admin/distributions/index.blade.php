@extends('admin.layouts.master')

@section('title', 'Quản lý nhà phân phối')

@section('styles')

@endsection

@section('content')

@include('admin.components.messages')
<p>
	<a href="{{ route('admin.distributions.create') }}" class="btn btn-primary">Thêm nhà phân phối</a> &emsp; <span class="pull-right marT15">Tổng số: {{ $distributions->total() }}</span>
</p>
<div class="box box-success">
	<div class="box-header">
		<h3 class="box-title"></h3>
		<form action="" method="GET">
			<div class="row">
				<div class="col-xs-4">
					<label for="name">Tên nhà phân phối</label>
					<input id="name" name="name" value="{{ old('name', request('name')) }}" type="text" class="form-control input-sm" placeholder="Tên nhà phân phối">
				</div>
				<div class="col-xs-3">
					<label for="status">Trạng thái</label>
					<select id="status" class="form-control input-sm" name="status">
						<option value="">Chọn trạng thái</option>
						<option value="0" {{old('status', request('status')) == '0' ? 'selected' : ''}}>Tạm dừng hoạt động</option>
						<option value="1" {{old('status', request('status')) == '1' ? 'selected' : ''}}>Hoạt động</option>
						<option value="2" {{old('status', request('status')) == '2' ? 'selected' : ''}}>Dừng hoạt động</option>
					</select>
				</div>
				<div class="col-xs-3">
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
				@if (count($distributions))
				@foreach($distributions as $distribute)
				<tr role="row" class="align-middle">
					<td>{{ index_row($distributions, $loop->index) }}</td>
					<td>{{$distribute->name}}</td>
					<td>{{ str_limit($distribute->email, 22, '...') }}</td>
					<td>{{$distribute->phone}}</td>
					<td>{{ str_limit($distribute->address, 40, '...') }}</td>
					<td>{{ str_limit(strip_tags(html_entity_decode($distribute->description)), 40, '...') }}</td>
					<td>
						@if($distribute->status == '0')
						{{"Tạm dừng hoạt động"}}
						@elseif($distribute->status == '1')
						{{"Hoạt động"}}
						@elseif($distribute->status == '2')
						{{"Dừng hoạt động"}}
						@endif
					</td>
					<td>{{$distribute->created_at->format('d/m/Y')}}</td>
					<td>
						<a href="{{ route('admin.distributions.edit', ['id' => $distribute->id], false) }}" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
						<a href="{{ route('admin.distributions.destroy', ['id' => $distribute->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
				@endforeach
				@else
				<tr role="row" class="align-middle">
					<td colspan="9" class="text-center">Không có nhà phân phối nào.</td>
				</tr>
				@endif
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
