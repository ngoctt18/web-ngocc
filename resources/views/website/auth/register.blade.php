@extends('website.layouts.website')

@section('title', 'Đăng ký tài khoản')

@section('styles')
<style type="text/css">
	#register-page .register-box .form-control { margin: 0; }
	label.error { color: #b30e0e; font-weight: 500; margin-top: 1px; }
	label.label-register { margin-top: 20px !important; }
	.marT25 { margin-top: 25px; }
	.red {color: red;}
</style>
@endsection

@section('content')
<div id="register-page" class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="register-box">
				<h1>Đăng ký</h1>
				<form method="POST" action="" id="create_customer" accept-charset="UTF-8">
					@csrf
					
					<h3 class="page-subheading">Thông tin cá nhân</h3>

					<label for="name" class="label-register">Họ và tên <span class="red">*</span></label>
					<input type="text" name="name" id="name" class="form-control" placeholder="Full Name"  autocapitalize="words" autofocus value="{{old('name')}}">
					<label class="error">{{ $errors->first('name') }}</label>

					<label for="username" class="label-register">UserName <span class="red">*</span></label>
					<input type="text" name="username" id="username" class="form-control" placeholder="UserName"  autocapitalize="words" value="{{old('username')}}">
					<label class="error">{{ $errors->first('username') }}</label>
					
					<label for="phone" class="label-register">Điện thoại <span class="red">*</span></label>
					<input type="text" name="phone" id="phone" placeholder="Phone" class="form-control "  autocorrect="off" autocapitalize="off" value="{{old('phone')}}">
					<label class="error">{{ $errors->first('phone') }}</label>
					
					<label for="email" class="label-register">Email <span class="red">*</span></label>
					<input type="email" name="email" id="email" placeholder="Email" class="form-control "  autocorrect="off" autocapitalize="off" value="{{old('email')}}">
					<label class="error">{{ $errors->first('email') }}</label>
					
					<label for="address" class="label-register">Địa chỉ <span class="red">*</span></label>
					<input type="text" name="address" id="address" placeholder="Địa chỉ" class="form-control "  autocorrect="off" autocapitalize="off" value="{{old('address')}}">
					<label class="error">{{ $errors->first('address') }}</label>
					
					<label for="password" class="label-register">Mật khẩu <span class="red">*</span></label>
					<input type="password" name="password" id="password" placeholder="Password" class="form-control ">
					<label class="error">{{ $errors->first('password') }}</label>
					
					<label for="password_confirm" class="label-register">Xác nhận mật khẩu <span class="red">*</span></label>
					<input type="password" name="password_confirm" id="password_confirm" placeholder="Password Confirm" class="form-control ">
					<label class="error">{{ $errors->first('password_confirm') }}</label>
					
					<p class="marT25">
						<input type="submit" value="Đăng ký" class="btn btn-outline">
						<a href="{{ route('web.login') }}" class="btn btn-warning pull-right">Đã có tài khoản</a>
					</p>
					<a class="link-back" href="{{ route('web.homepage') }}">
						<span>
							<i class="fa fa-long-arrow-left"></i>&nbsp;
							Quay về shop
						</span>
					</a>
					<div class="pull-right">
						<p>
						</p>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('dist/js/jquery.validate.min.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#create_customer").validate({
			rules: {
				name: {
					required: true,
					minlength: 8
				},
				username: {
					required: true,
					_username: true,
					minlength: 6
				},
				phone: {
					required: true,
					minlength: 10,
					maxlength: 10,
				},
				email: {
					required: true,
					_email: true,
					email: true,
				},
				address: {
					required: true,
					minlength: 20,
					maxlength: 200,
				},
				password: {
					required: true,
					minlength: 6,
					maxlength: 12
				},
				password_confirm: {
					required: true,
					minlength: 6,
					maxlength: 12,
					equalTo: "#password",
				},
			},
			messages: {
				name: {
					required: "Vui lòng nhập họ tên",
					minlength: "Họ tên lớn hơn 8 ký tự"
				},
				username: {
					required: "Vui lòng nhập UserName",
					_username: "UserName không đúng định dạng.",
					minlength: "UserName lớn hơn 6 ký tự"
				},
				phone: {
					required: "Số điện thoại không được để trống.",
					minlength: "Số điện thoại lớn hơn 10 ký tự.",
					maxlength: "Số điện thoại nhỏ hơn 10 ký tự.",
				},
				email: {
					required: "Email không được để trống.",
					_email: "Email không đúng định dạng.",
					email: "Email không đúng định dạng.",
				},
				address: {
					required: "Địa chỉ không được để trống.",
					minlength: "Địa chỉ lớn hơn 20 ký tự.",
					maxlength: "Địa chỉ nhỏ hơn 200 ký tự.",
				},
				password: {
					required: "Mật khẩu không được để trống.",
					minlength: "Mật khẩu lớn hơn 6 ký tự.",
					maxlength: "Mật khẩu nhỏ hơn 12 ký tự.",
				},
				password_confirm: {
					required: "Xác nhận mật khẩu không được để trống.",
					minlength: "Xác nhận mật khẩu lớn hơn 6 ký tự.",
					maxlength: "Xác nhận mật khẩu nhỏ hơn 12 ký tự.",
					equalTo: "Xác nhận mật khẩu không khớp."
				},
			}
		});

		// jQuery.validator custome for _email
		jQuery.validator.addMethod("_email", function (value, element) {
			if (/^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/igm.test(value)) {
				return true;
			} else {
				return false;
			};
		}, "Email không đúng định dạng.");

		jQuery.validator.addMethod("_username", function (value, element) {
			if (/^[a-z0-9_-]{6,}$/igm.test(value)) {
				return true;
			} else {
				return false;
			};
		}, "UserName không đúng định dạng.");
	});
</script>
@endsection