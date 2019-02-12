@extends('admin.layouts.master')

@section('title', 'Sửa danh mục')

@section('content')

@include('admin.components.messages')

<div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" method="POST" action="{{ route('admin.catagories.update', ['id' => $catagory->id], false) }}">
		<div class="box-body">
			{{ csrf_field() }} {{ method_field('PUT') }}
			<input type="hidden" name="id" value="{{$catagory->id}}">
			<div class="form-group">
				<label for="name">Tên danh mục</label>
				<input type="text" class="form-control" id="name" name="name" value="{{old('name', $catagory->name)}}" placeholder="Tên danh mục">
				<small class="text-danger">{{ $errors->first('name') }}</small>
			</div>
			<div class="form-group">
				<label for="description">Mô tả</label>
				<textarea class="form-control" rows="3" id="description" placeholder="Mô tả" name="description" >{{old('description', $catagory->description)}}</textarea>
				<small class="text-danger">{{ $errors->first('description') }}</small>
			</div>
			<div class="form-group">
				<label for="catagory_type_id">Nhóm danh mục</label>
				<select class="form-control" style="width: 30%;" name="catagory_type_id">
					<option value="">Chọn nhóm danh mục</option>
					@foreach($catagoryTypes as $catagoryType)
					<option value="{{$catagoryType->id}}" {{old('catagory_type_id', $catagory->catagory_type_id) == $catagoryType->id ? 'selected' : ''}}>{{$catagoryType->name}}</option>
					@endforeach
				</select>
				<small class="text-danger">{{ $errors->first('catagory_type_id') }}</small>
			</div>
			<div class="form-group">
				<label for="status">Trạng thái</label>
				<select class="form-control" style="width: 20%;" name="status" id="status">
					<option value="">Chọn trạng thái</option>
					<option value="1" {{old('status', $catagory->status) == '1' ? 'selected' : ''}}>Hiển thị</option>
					<option value="0" {{old('status', $catagory->status) == '0' ? 'selected' : ''}}>Ẩn</option>
				</select>
				<small class="text-danger">{{ $errors->first('status') }}</small>
			</div>
		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<button type="submit" class="btn btn-info">Cập nhật</button>
			&emsp;
			<a href="{{ route('admin.catagories.index') }}" class="btn btn-primary">Hủy</a>
		</div>
	</form>
</div>
<!-- /.box -->

@endsection