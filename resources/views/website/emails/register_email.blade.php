<!DOCTYPE html>
<html>
<head>
	<title>Confirm Email</title>
</head>
<body>
	<div class="wrapper" style=" width: 650px; margin: 0 auto; font-family: tahoma;">

		<h3 style=" color: #0000a0; ">Congrats! You are Successfully registered to {{ config('app.app_name') }}</h3>
		<p>
			Hi <strong>{{$user->name}}</strong>,
		</p>
		<p>
			You just signed up for {{ config('app.app_name') }}. Please follow this link to confirm that this is your email address.
		</p>

		<p>
			<a style="color:#ffffff;text-decoration:none;background-color:#3572b0;border-top:11px solid #3572b0;border-bottom:11px solid #3572b0;border-left:20px solid #3572b0;border-right:20px solid #3572b0;border-radius:5px;display:inline-block;" href="{{ route('web.confirm', ['token' => $user->verification_code]) }}">Verify your email address</a>
		</p>

		<p>Thanks!</p>
		<p><a href="{{env('APP_URL')}}">{{env('APP_URL')}}</a></p>

	</div>

	
</body>
</html>