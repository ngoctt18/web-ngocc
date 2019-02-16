@extends('website.layouts.website')

@section('title', 'Login')

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

						<label for="CustomerEmail" class="label-login">Phone</label>
						<input type="text" name="phone" id="CustomerEmail" placeholder="Phone" class="account_input form-control " autocorrect="off" autocapitalize="off" autofocus="" value="{{old('phone')}}">
						@if($errors->has('phone'))
						<span class="help-block">{{ $errors->first('phone') }}</span>
						@endif

						<label for="CustomerPassword" class="label-login">Password</label>
						<input type="password" value="" name="password" id="CustomerPassword" placeholder="Password" class="password_input form-control ">
						@if($errors->has('password'))
						<span class="help-block">{{ $errors->first('password') }}</span>
						@endif
						<p class="lost_password form-group">
							<a href="#recover" id="RecoverPassword">Forgot your password?</a>
						</p>

						<p>
							<button type="submit" id="SubmitLogin" name="SubmitLogin" class="btn btn-outline">
								<span>
									<i class="fa fa-lock"></i>&nbsp;
									Sign In
								</span>
							</button>
						</p>
						<a href="{{ route('web.homepage') }}">Return to Store</a>
					</form>
				</div>
				<div id="RecoverPasswordForm" style="display: none;">
					<h2>Reset your password</h2>
					<p>We will send you an email to reset your password.</p>
					<form method="post" action="/account/recover" accept-charset="UTF-8"><input type="hidden" name="form_type" value="recover_customer_password"><input type="hidden" name="utf8" value="✓">


						<label for="RecoverEmail" class="label-login">Email Address</label>
						<input type="email" value="" name="email" id="RecoverEmail" class="form-control" placeholder="Email Address" autocorrect="off" autocapitalize="off">
						<p>
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