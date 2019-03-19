<!DOCTYPE html>
<html>
<head>
	<title>Confirm Email</title>
</head>
<body>
	
	<p>Congrats! You are Successfully registered to my Website</p>
	<p>To activate your account, please click the link below</p>
	
	<center>
		<h2 style="padding: 23px;background: #b3deb8a1;border-bottom: 6px green solid;">
			<a href="{{ route('web.confirm', ['token' => $user->verification_code]) }}">Confirm Email</a>
		</h2>
	</center>
	
	<strong>Thanks for using the site!</strong>


	
</body>
</html>