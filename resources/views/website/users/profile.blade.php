@extends('website.users.user_master')

@section('user_styles')
<style type="text/css">
	.order_id {color: #0089ff;}
	.red {color: red;}
	label.error { color: #e81b1b; font-weight: 500; margin-top: 1px; }
	input.custom-file-input {
		color: #fff;
		margin-top: 15px;
		width: 133px;
		height: 30px;
	}
	.custom-file-input::before {
		content: 'Select an images';
		display: inline-block;
		background: linear-gradient(top, #f9f9f9, #e3e3e3);
		border: 1px solid #999;
		border-radius: 3px;
		padding: 5px 8px;
		outline: none;
		white-space: nowrap;
		-webkit-user-select: none;
		cursor: pointer;
		text-shadow: 1px 1px #fff;
		font-weight: 700;
		font-size: 10pt;
		color: black;
	}
	.custom-file-input:hover::before { border-color: black; }
	.custom-file-input:active::before { background: -webkit-linear-gradient(top, #e3e3e3, #f9f9f9); }
	.custom-file-input::-webkit-file-upload-button { visibility: hidden; }
	.blockPassword {transition: 0.1s; display: none;}

</style>
@endsection

@section('user_profile')
<div class="details-account">
	<h4>Thông tin tài khoản</h4>
	<div class="box-content">
		<div class="row">
			<form method="POST" action="{{ route('web.post_update_info', [$user->username]) }}" id="formUpdateInfoUser" enctype="multipart/form-data">
				<div class="col-md-7">
					@csrf @method('PUT')

					@if (session()->has('success'))
					<p class="alert alert-success" style=" margin-bottom: 10px !important; ">{{session()->get('success')}}</p>
					@endif
					
					<input type="hidden" name="id" value="{{$user->id}}">
					<label for="name" class="label-register">Họ và tên <span class="red">*</span></label>
					<input type="text" name="name" id="name" class="form-control" placeholder="Họ và tên"  autocapitalize="words" value="{{old('name', $user->name)}}">
					<label class="error">{{ $errors->first('name') }}</label>
					<br>

					<label for="username" class="label-register">UserName <span class="red">*</span></label>
					<input type="text" name="username" id="username" class="form-control" placeholder="UserName"  autocapitalize="words" value="{{old('username', $user->username)}}">
					<label class="error">{{ $errors->first('username') }}</label>
					<br>

					<label for="phone" class="label-register">Phone</label>
					<input type="text" placeholder="Phone" class="form-control "  disabled="" value="{{old('phone', $user->phone)}}">
					<br>

					<label for="email" class="label-register">Email</label>
					<input type="email" placeholder="Email" class="form-control "  disabled="" value="{{old('email', $user->email)}}">
					<br>

					<label for="address" class="label-register">Địa chỉ <span class="red">*</span></label>
					<input type="text" name="address" id="address" placeholder="Địa chỉ" class="form-control "  autocorrect="off" autocapitalize="off" value="{{old('address', $user->address)}}">
					<label class="error">{{ $errors->first('address') }}</label>
					<br>

					<input type="checkbox" id="chkChangePassword"> <label for="chkChangePassword" class="label-register">Thay đổi mật khẩu </label>
					<br>
					<div class="blockPassword">
						<label for="password" class="label-register">Password <span class="red">*</span></label>
						<input type="password" name="password" id="password" placeholder="Password" class="form-control ">
						<label class="error">{{ $errors->first('password') }}</label>
						<br>

						<label for="password_confirm" class="label-register">Password Confirm <span class="red">*</span></label>
						<input type="password" name="password_confirm" id="password_confirm" placeholder="Password Confirm" class="form-control ">
						<label class="error">{{ $errors->first('password_confirm') }}</label>
					</div>
					<br>


					<p class="marT25">
						<input type="submit" value="Cập nhật" class="btn btn-warning">
					</p>
				</div>
				<div class="col-md-offset-1 col-md-3">
					<div class="upload-image">
						<img src="{{$user->ThumbUser}}" title="{{$user->name}}" alt="{{$user->name}}" style="max-width: 100%;border-radius: 50%;width: 130px;height: 130px;">
						<input name="avatar" type="file" accept="image/*" class="custom-file-input">
					</div>
					<label id="avatar-error" class="error" for="avatar"></label>
					<small class="text-danger">{{ $errors->first('avatar') }}</small>
				</div>
			</form>
		</div>
	</div>
</div>
@endsection


@section('user_scripts')
<script type="text/javascript" src="{{ asset('dist/js/jquery.validate.min.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// Upload hiện ảnh lên luôn! (cho 1 ảnh)
		$('input[name="avatar"]').bind('change', function(event) {
			event.preventDefault();
			var _self = $(this);
			file_size = this.files[0].size;
			// validate kích thước hình ảnh
			if(file_size>3*1024*1024) {
				alert('Ảnh không được quá 3MB. Hãy chọn ảnh khác');
				reset_form_element($(this));
				$(_self).closest('.upload-image').find('.images').removeAttr('value');
				return false;
			} else {
				if (this.files && this.files[0]) {
					var reader = new FileReader();
					reader.onload = function (e) {
						$(_self).closest('.upload-image').find('img').attr('src', e.target.result);
					};
					reader.readAsDataURL(this.files[0]);
				}
			}
		});
		// Reset ô input type="file" khi ảnh lớn quá
		function reset_form_element(e) {
			e.wrap('<form>').parent('form').trigger('reset');
			e.unwrap();
		}

		$('#chkChangePassword').click(function(){
			$('.blockPassword').slideToggle();
		});
		
		$("#formUpdateInfoUser").validate({
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
				address: {
					required: true,
					minlength: 20,
					maxlength: 200,
				},
				password: {
					required: false,
					minlength: 6,
					maxlength: 12
				},
				password_confirm: {
					required: false,
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