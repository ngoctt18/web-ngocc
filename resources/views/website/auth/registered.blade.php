@extends('website.layouts.website')

@section('title', 'Đăng ký thành công!')

@section('content')
<div id="register-page" class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="register-box">
				<h1>
					@if(session()->has('userRegistered'))
					{{ session()->get('userRegistered') }}
					@endif
					@if(session()->has('confirmRegistered'))
					{{ session()->get('confirmRegistered') }}
					@endif
				</h1>

			</div>
		</div>
	</div>
</div>

@endsection