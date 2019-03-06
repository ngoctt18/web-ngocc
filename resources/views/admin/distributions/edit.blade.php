@extends('admin.layouts.master')

@section('title', 'Sửa nhà phân phối')

@section('content')

@include('admin.components.messages')

<div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" method="POST" action="{{ route('admin.distributions.update', ['id' => $distribute->id], false) }}">
		<div class="box-body">
			{{ csrf_field() }} {{ method_field('PUT') }}
			<input type="hidden" name="id" value="{{$distribute->id}}">
			<div class="form-group">
				<label for="name">Tên nhà phân phối</label>
				<input type="text" class="form-control" id="name" placeholder="Tên nhà phân phối" name="name" value="{{old('name',$distribute->name)}}">
				<small class="text-danger">{{ $errors->first('name') }}</small>
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="text" class="form-control" id="email" placeholder="Email" name="email" value="{{old('email',$distribute->email)}}">
				<small class="text-danger">{{ $errors->first('email') }}</small>
			</div>
			<div class="form-group">
				<label for="phone">Phone</label>
				<input type="text" class="form-control" id="phone" placeholder="phone" name="phone" value="{{old('phone',$distribute->phone)}}">
				<small class="text-danger">{{ $errors->first('phone') }}</small>
			</div>
			<div class="form-group">
				<label for="address">Địa chỉ</label>
				<textarea class="form-control" rows="2" id="address" placeholder="Địa chỉ" name="address" >{{old('address',$distribute->address)}}</textarea>
				<small class="text-danger">{{ $errors->first('address') }}</small>
			</div>
			<div class="form-group">
				<label for="description">Mô tả</label>
				<textarea class="form-control" rows="4" id="description" placeholder="Mô tả" name="description" >{{old('description',$distribute->description)}}</textarea>
				<small class="text-danger">{{ $errors->first('description') }}</small>
			</div>
			<div class="form-group">
				<label for="status">Trạng thái</label>
				<select class="form-control" style="width: 20%;" name="status" id="status">
					<option value="">Chọn trạng thái</option>
					<option value="0" {{old('status',$distribute->status) == '0' ? 'selected' : ''}}>Tạm dừng hoạt động</option>
					<option value="1" {{old('status',$distribute->status) == '1' ? 'selected' : ''}}>Hoạt động</option>
					<option value="2" {{old('status',$distribute->status) == '2' ? 'selected' : ''}}>Dừng hoạt động</option>
				</select>
				<small class="text-danger">{{ $errors->first('status') }}</small>
			</div>
		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<button type="submit" class="btn btn-info">Cập nhật</button>
			&emsp;
			<a href="{{ route('admin.distributions.index') }}" class="btn btn-primary">Hủy</a>
		</div>
	</form>
</div>
<!-- /.box -->

@endsection

@section('scripts')
<!-- CK Editor -->
<script src="{{ asset('bower_components/ckeditor/ckeditor.js') }}"></script>
<script type="text/javascript">
	$(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('description')
})
</script>
@endsection