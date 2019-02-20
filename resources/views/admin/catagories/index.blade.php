@extends('admin.layouts.master')

@section('title', 'Quản lý danh mục')

@section('styles')

@endsection

@section('content')

@include('admin.components.messages')
<p>
	<a href="{{ route('admin.catagories.create') }}" class="btn btn-primary">Thêm danh mục</a> &emsp; <span class="pull-right marT15">Tổng số: {{ $catagories->total() }}</span>
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
					<th>Danh mục</th>
					<th>Mô tả</th>
					<th>Nhóm danh mục</th>
					<th>Trạng thái</th>
					<th>Thời gian tạo</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				@foreach($catagories as $catagory)
				<tr role="row" class="align-middle">
					<td>{{ index_row($catagories, $loop->index) }}</td>
					<td>{{$catagory->name}}</td>
					<td>{{ str_limit($catagory->description, 50, '...') }}</td>
					<td>{{$catagory->catagoryType->name}}</td>
					<td>
						@if($catagory->status == '0')
						{{"Ẩn"}}
						@elseif($catagory->status == '1')
						{{"Hiển thị"}}
						@endif
					</td>
					<td>{{$catagory->created_at->format('H:i - d/m/Y')}}</td>
					<td>
						<a href="{{ route('admin.catagories.edit', ['id' => $catagory->id], false) }}" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
						<a href="{{ route('admin.catagories.destroy', ['id' => $catagory->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $catagories->links('admin.paginations.pagination_sm') }}
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
					<h4>Bạn có muốn xóa danh mục này?</h4>
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
