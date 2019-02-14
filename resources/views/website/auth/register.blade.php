@extends('website.layouts.website')

@section('title', 'Create Account')

@section('content')

<div id="register-page" class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="register-box">
				<h1>Create Account</h1>
				<form method="post" action="" id="create_customer" accept-charset="UTF-8">
					<h3 class="page-subheading">Your personal information</h3>

					<label for="FirstName" class="label-register">First Name</label>
					<input type="text" name="customer[first_name]" id="FirstName" class="form-control" placeholder="First Name"  autocapitalize="words" autofocus>
					<label for="LastName" class="label-register">Last Name</label>
					<input type="text" name="customer[last_name]" id="LastName" class="form-control" placeholder="Last Name"  autocapitalize="words">
					<label for="Email" class="label-register">Email</label>
					<input type="email" name="customer[email]" id="Email" placeholder="Email" class="form-control "  autocorrect="off" autocapitalize="off">
					<label for="CreatePassword" class="label-register">Password</label>
					<input type="password" name="customer[password]" id="CreatePassword" placeholder="Password" class="form-control ">
					<p>
						<input type="submit" value="Create an account" class="btn btn-outline">
					</p>
					<a class="link-back" href="{{ route('web.homepage') }}">
						<span>
							<i class="fa fa-long-arrow-left"></i>&nbsp;
							Return to Store
						</span>
					</a>
				</form>
			</div>
		</div>
	</div>
</div>

@endsection