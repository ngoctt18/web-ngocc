@extends('website.layouts.website')

@section('title', 'Xác nhận tài khoản thành công!')

@section('content')
<div id="register-page" class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="register-box">
				<h1>
					@if(session()->has('confirmRegistered'))
					{{ session()->get('confirmRegistered') }}  <a href="{{ route('web.login') }}" style=" color: #59bd56; ">ĐĂNG NHẬP</a> ĐỂ TIẾP TỤC MUA SẮM.
					@endif
				</h1>

			</div>
		</div>
	</div>
</div>

@endsection