@extends('admin.layouts.master')

@section('title', 'Tạo khách hàng')

@section('content')

@include('admin.components.messages')

<div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" method="POST" action="{{ route('admin.users.store', [], false) }}" enctype="multipart/form-data">
		<div class="box-body">
			{{ csrf_field() }}
			<div class="form-group">
				<label for="name">Tên khách hàng</label>
				<input type="text" class="form-control" id="name" placeholder="Tên khách hàng" name="name" value="{{old('name')}}">
				<small class="text-danger">{{ $errors->first('name') }}</small>
			</div>
			<div class="form-group">
				<label for="avatar">Ảnh đại diện</label>
				<div class="upload-image">
					<img src="http://via.placeholder.com/200x200" alt="">
					<input name="avatar" id="avatar" type="file" accept="image/*" >
				</div>
				<label id="avatar-error" class="error" for="avatar"></label>
				<small class="text-danger">{{ $errors->first('avatar') }}</small>
			</div>
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" class="form-control" id="username" placeholder="Username" name="username" value="{{old('username')}}">
				<small class="text-danger">{{ $errors->first('username') }}</small>
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="text" class="form-control" id="email" placeholder="Email" name="email" value="{{old('email')}}">
				<small class="text-danger">{{ $errors->first('email') }}</small>
			</div>
			<div class="form-group">
				<label for="phone">Điện thoại</label>
				<input type="text" class="form-control" id="phone" placeholder="Điện thoại" name="phone" value="{{old('phone')}}">
				<small class="text-danger">{{ $errors->first('phone') }}</small>
			</div>
			<div class="form-group">
				<label for="address">Địa chỉ</label>
				<textarea class="form-control" rows="2" id="address" placeholder="Địa chỉ" name="address" >{{old('address')}}</textarea>
				<small class="text-danger">{{ $errors->first('address') }}</small>
			</div>
			<div class="form-group">
				<label for="password">Mật khẩu</label>
				<input type="password" class="form-control" id="password" placeholder="Mật khẩu" name="password" value="">
				<small class="text-danger">{{ $errors->first('password') }}</small>
			</div>
			<div class="form-group">
				<label for="password_confirm">Xác nhận mật khẩu</label>
				<input type="password" class="form-control" id="password_confirm" placeholder="Xác nhận mật khẩu" name="password_confirm" value="">
				<small class="text-danger">{{ $errors->first('password_confirm') }}</small>
			</div>
			<div class="form-group">
				<label for="status">Trạng thái</label>
				<select class="form-control" style="width: 20%;" name="status" id="status">
					<option value="">Chọn trạng thái</option>
					<option value="0" {{old('status') == '0' ? 'selected' : ''}}>Tạm dừng hoạt động</option>
					<option value="1" {{old('status') == '1' ? 'selected' : ''}}>Hoạt động</option>
					<option value="2" {{old('status') == '2' ? 'selected' : ''}}>Dừng hoạt động</option>
				</select>
				<small class="text-danger">{{ $errors->first('status') }}</small>
			</div>
		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<button type="submit" class="btn btn-info">Tạo khách hàng</button>
			&emsp;
			<a href="{{ route('admin.users.index') }}" class="btn btn-primary">Trở về</a>
		</div>
	</form>
</div>
<!-- /.box -->

@endsection