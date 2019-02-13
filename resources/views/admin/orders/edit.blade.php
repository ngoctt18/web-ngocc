@extends('admin.layouts.master')

@section('title', 'Sửa nhóm danh mục')

@section('content')

@include('admin.components.messages')

<div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" method="POST" action="{{ route('admin.catagory-types.update', ['id' => $catagoryType->id], false) }}">
		<div class="box-body">
			{{ csrf_field() }} {{ method_field('PUT') }}
			<input type="hidden" name="id" value="{{$catagoryType->id}}">
			<div class="form-group">
				<label for="name">Tên nhóm danh mục</label>
				<input type="text" class="form-control" id="name" name="name" value="{{old('name', $catagoryType->name)}}" placeholder="Tên nhóm danh mục">
				<small class="text-danger">{{ $errors->first('name') }}</small>
			</div>
			<div class="form-group">
				<label for="status">Trạng thái</label>
				<select class="form-control" style="width: 20%;" name="status" id="status">
					<option value="">Chọn trạng thái</option>
					<option value="1" {{old('status', $catagoryType->status) == '1' ? 'selected' : ''}}>Hiển thị</option>
					<option value="0" {{old('status', $catagoryType->status) == '0' ? 'selected' : ''}}>Ẩn</option>
				</select>
				<small class="text-danger">{{ $errors->first('status') }}</small>
			</div>
		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<button type="submit" class="btn btn-info">Cập nhật</button>
			&emsp;
			<a href="{{ route('admin.catagory-types.index') }}" class="btn btn-primary">Hủy</a>
		</div>
	</form>
</div>
<!-- /.box -->

@endsection