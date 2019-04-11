<!DOCTYPE html>
<html>
<head>
	<title>Forget your password</title>
</head>
<body>
	<div class="wrapper" style=" width: 650px; margin: 0 auto; font-family: tahoma;">
		
		<h3 style=" color: #0000a0; ">Don't worry, we all forget sometimes</h3>
		<p>Hi <strong>{{$user->name}}</strong>,</p>
		
		<p>You've recently asked to reset the password for this MilkStore account: {{$user->email}}
		</p>
		<p>To update your password, click the button below:</p>

		<p>
			<a style="color:#ffffff;text-decoration:none;background-color:#3572b0;border-top:11px solid #3572b0;border-bottom:11px solid #3572b0;border-left:20px solid #3572b0;border-right:20px solid #3572b0;border-radius:5px;display:inline-block;" href="{{ route('web.get.change-password', [$findUser->token]) }}"> Reset my password</a>
		</p>
		<p>If you did not request a password reset, no further action is required.</p>
		<br>


		<p>Thanks for using the site!</p>
		<p><a href="{{env('APP_URL')}}">{{env('APP_URL')}}</a></p>

	</div>


</body>
</html>