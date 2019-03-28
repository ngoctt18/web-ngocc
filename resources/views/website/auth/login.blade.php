@extends('website.layouts.website')

@section('title', 'Login')

@section('styles')
<style type="text/css">
	.red {color: red;}
	span.error { color: #b30e0e; font-weight: 500; margin-top: 1px; }
	#login-page .login-box .form-control { margin: 0; }
	p.lost_password { margin-top: 15px !important; }
	label.label-login { margin-top: 20px !important; }
	.btn-github:hover { color: #fff !important; background: #444; } 
	.btn-github:hover .fa-github { color: #fff; }
</style>
@endsection

@section('content')
<div id="login-page" class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">
			<div class="login-box">
				<div class="note form-success" id="ResetSuccess" style="display:none;">
					We've sent you an email with a link to update your password.
				</div>
				<div id="CustomerLoginForm">
					<form method="post" action="{{ route('web.post_login') }}" id="customer_login" accept-charset="UTF-8">
						{{ csrf_field() }}
						<h1>Login</h1>

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
							<a href="#recover" id="RecoverPassword">Forgot your password?</a>
						</p>

						<p style=" margin-bottom: 5px; ">
							<button type="submit" id="SubmitLogin" name="SubmitLogin" class="btn btn-outline">
								<span>
									<i class="fa fa-lock"></i>&nbsp;
									Sign In
								</span>
							</button>
						</p>
						<p style=" margin-bottom: 5px; "><label class="label-login">Sign In with social</label></p>
						<div class="socialsharing_product no-print">
							<ul class="social-sharing list-unstyled">
								<li>
									<a class="btn btn-facebook" href="{{ route('web.login.social', ['facebook']) }}">
										<i class="fa fa-facebook"></i> facebook
									</a>
								</li>
								<li>
									<a class="btn btn-google-plus" href="{{ route('web.login.social', ['google']) }}">
										<i class="fa fa-google-plus"></i> Google+
									</a>
								</li>
								<li>
									<a class="btn btn-github" href="{{ route('web.login.social', ['github']) }}">
										<i class="fa fa-github"></i> Github
									</a>
								</li>
								<li>
									<a class="btn btn-twitter" href="{{ route('web.login.social', ['twitter']) }}">
										<i class="fa fa-twitter"></i> Twitter
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
				<div id="RecoverPasswordForm" style="display: none;">
					<h2>Reset your password</h2>
					<p>We will send you an email to reset your password.</p>
					<form method="post" action="" accept-charset="UTF-8">
						{{ csrf_field() }}
						<label for="RecoverEmail" class="label-login">Email Address <span class="red">*</span></label>
						<input type="email" value="" name="email" id="RecoverEmail" class="form-control" placeholder="Email Address" autocorrect="off" autocapitalize="off" required="">
						<p style=" margin-top: 5px; ">
							<input type="submit" class="btn btn-outline" value="Submit">
						</p>
						<button type="button" id="HideRecoverPasswordLink" class="text-link btn btn-outline-inverse">
							<span>
								<i class="fa fa-long-arrow-left"></i>&nbsp;
								Back to login
							</span>
						</button>
					</form>
				</div>

			</div>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">
			<div class="register-box">
				<h3>Create Account</h3>
				<div class="register_des">
					<p>By creating an account on our website you will be able to shop faster, be up to date on an orders status, and keep track of the orders you have previously made.</p>
				</div>
				<div class="submit">
					<a class="btn btn-outline exclusive" href="{{ route('web.register') }}">
						<span>
							<i class="fa fa-user"></i>&nbsp;
							Create an account
						</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection
