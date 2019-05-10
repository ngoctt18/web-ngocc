@extends('website.layouts.website')

@section('title', 'Login')

@section('styles')
<style type="text/css">
	.red {color: red;}
	span.error { color: #b30e0e; font-weight: 500; margin-top: 1px; }
	#login-page .login-box .form-control { margin: 0; }
	p.lost_password { margin-top: 15px !important; font-size: 11px !important;}
	label.label-login { margin-top: 20px !important; }
	.btn-social, .fa-social {color: #fff !important;}
	.btn-social:hover {opacity: 0.9; border: 1px solid #000 !important;}
	.btn-github {background: #444;}
	.btn-facebook {background: #435F9F;}
	.btn-google-plus {background: #E04B34;}
	.btn-twitter {background: #00AAF0;}
	.email_sent { width: 67%; margin: 10px 0px !important; padding: 10px; font-weight: bold; }
</style>
@endsection

@section('content')
<div id="login-page" class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">
			<div class="login-box">
				<div id="CustomerLoginForm" style="@if($errors->has('email') || request('email_sent') == 'true') display: none; @else display: block; @endif">
					<form method="post" action="{{ route('web.post_login') }}" id="customer_login" accept-charset="UTF-8">
						{{ csrf_field() }}
						<h1>Đăng nhập</h1>

						<label for="CustomerEmail" class="label-login">Email or Phone <span class="red">*</span></label>
						<input type="text" name="phone" id="CustomerEmail" placeholder="Email or Phone " class="account_input form-control " autocorrect="off" autocapitalize="off" autofocus="" value="{{old('phone')}}" required="">
						@if($errors->has('phone'))
						<span class="help-block error">{{ $errors->first('phone') }}</span>
						@endif

						<label for="CustomerPassword" class="label-login">Password <span class="red">*</span></label>
						<input type="password" value="" name="password" id="CustomerPassword" placeholder="Password" class="password_input form-control" required="">
						@if($errors->has('password'))
						<span class="help-block error">{{ $errors->first('password') }}</span>
						@endif
						<p class="lost_password form-group">
							<a href="#recover" id="RecoverPassword">Quên mật khẩu?</a>
						</p>

						<p style=" margin-bottom: 5px; ">
							<button type="submit" id="SubmitLogin" name="SubmitLogin" class="btn btn-outline">
								<span>
									<i class="fa fa-lock"></i>&nbsp;
									Đăng nhập
								</span>
							</button>
						</p>
						<p style=" margin-bottom: 5px; "><label class="label-login"><i class="fa fa-long-arrow-right"></i>&nbsp; Đăng nhập với mạng xã hội </label></p>
						<div class="socialsharing_product no-print">
							<ul class="social-sharing list-unstyled">
								<li>
									<a class="btn btn-social btn-facebook" href="{{ route('web.login.social', ['facebook']) }}">
										<i class="fa fa-social fa-facebook"></i> Facebook
									</a>
								</li>
								<li>
									<a class="btn btn-social btn-google-plus" href="{{ route('web.login.social', ['google']) }}">
										<i class="fa fa-social fa-google-plus"></i> Google+
									</a>
								</li>
								<li>
									<a class="btn btn-social btn-github" href="{{ route('web.login.social', ['github']) }}">
										<i class="fa fa-social fa-github"></i> Github
									</a>
								</li>
								<li>
									<a class="btn btn-social btn-twitter" href="{{ route('web.login.social', ['twitter']) }}">
										<i class="fa fa-social fa-twitter"></i> Twitter
									</a>
								</li>
							</ul>
						</div>
						<a href="{{ route('web.homepage') }}">
							<span>
								<i class="fa fa-long-arrow-left"></i>&nbsp;
								Quay về shop
							</span>
						</a>
					</form>
				</div>

				<div id="RecoverPasswordForm" style="@if($errors->has('email') || request('email_sent') == 'true') display: block; @else display: none; @endif">

					<div class="note form-success" id="ResetSuccess" style="display:none;">
						Chúng tôi đã gửi cho bạn một email với một liên kết để cập nhật mật khẩu của bạn.
					</div>
					<h2>ĐẶT LẠI MẬT KHẨU CỦA BẠN</h2>
					<p>Chúng tôi sẽ gửi cho bạn một email để thiết lập lại mật khẩu của bạn.</p>
					<form method="post" action="{{ route('web.forget_pass') }}" accept-charset="UTF-8">
						{{ csrf_field() }}
						<label for="RecoverEmail" class="label-login">Email <span class="red">*</span></label>
						<input type="email" value="{{old('email', request('email'))}}" name="email" id="RecoverEmail" class="form-control" placeholder="Email Address" autocorrect="off" autocapitalize="off" required="">
						@if($errors->has('email'))
						<p class="alert alert-danger email_sent">{{ $errors->first('email') }}</p>
						@elseif (request('email_sent'))
						@foreach ($errors->all() as $error)
						@if (request('wait_more'))
						<p class="alert alert-danger email_sent">{{ $error }}</p>
						@else
						<p class="alert alert-success email_sent">{{ $error }}</p>
						@endif
						@endforeach
						@endif

						<p style=" margin-top: 5px; ">
							<input type="submit" class="btn btn-outline" value="Submit">
						</p>
						<button type="button" id="HideRecoverPasswordLink" class="text-link btn btn-outline-inverse">
							<span>
								<i class="fa fa-long-arrow-left"></i>&nbsp;
								Quay về đăng nhập
							</span>
						</button>
					</form>
				</div>

			</div>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-6">
			<div class="register-box">
				<h3>đăng ký thành viên</h3>
				<div class="register_des">
					<p>Bằng cách tạo một tài khoản trên trang web của chúng tôi, bạn sẽ có thể mua sắm nhanh hơn, theo dõi trạng thái đơn hàng và còn nhiều thứ khác nữa.</p>
				</div>
				<div class="submit">
					<a class="btn btn-outline exclusive" href="{{ route('web.register') }}">
						<span>
							<i class="fa fa-user"></i>&nbsp;
							Đăng ký
						</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript">
	$(document).ready(function() {
		$('#HideRecoverPasswordLink').click(function(){
			var uri = window.location.toString();
			if (uri.indexOf("?") > 0) {
				var clean_uri = uri.substring(0, uri.indexOf("?"));
				window.history.replaceState({}, document.title, clean_uri);
			}
		});
	});
</script>
@endsection
