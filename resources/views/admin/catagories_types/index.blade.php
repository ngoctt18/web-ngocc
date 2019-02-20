@extends('admin.layouts.master')

@section('title', 'Quản lý nhóm danh mục')

@section('styles')

@endsection

@section('content')

@include('admin.components.messages')
<p>
	<a href="{{ route('admin.catagory-types.create') }}" class="btn btn-primary">Thêm nhóm danh mục</a> &emsp; <span class="pull-right marT15">Tổng số: {{ $catagoryTypes->total() }}</span>
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
					<th>#</th>
					<th>Nhóm danh mục</th>
					<th>Trạng thái</th>
					<th>Thời gian tạo</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				@foreach($catagoryTypes as $catagoryType)
				<tr role="row" class="align-middle">
					<td>{{ index_row($catagoryTypes, $loop->index) }}</td>
					<td>{{$catagoryType->name}}</td>
					<td>
						@if($catagoryType->status == '0')
						{{"Ẩn"}}
						@elseif($catagoryType->status == '1')
						{{"Hiển thị"}}
						@endif
					</td>
					<td>{{$catagoryType->created_at->format('H:i - d/m/Y')}}</td>
					<td>
						<a href="{{ route('admin.catagory-types.edit', ['id' => $catagoryType->id], false) }}" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
						<a href="{{ route('admin.catagory-types.destroy', ['id' => $catagoryType->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $catagoryTypes->links('admin.paginations.pagination_sm') }}
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
					<h4>Bạn có muốn xóa nhóm danh mục này?</h4>
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
