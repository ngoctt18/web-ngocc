@extends('website.layouts.website')

@section('title', 'Đăng ký nhận email!')

@section('content')
<div id="register-page" class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="register-box">
				<h1>
					@if(session()->has('signUpEmailOK'))
					{{ session()->get('signUpEmailOK') }}
					@endif
					@if(session()->has('signUpEmailDuplicate'))
					{{ session()->get('signUpEmailDuplicate') }}
					@endif 
					QUAY LẠI <a href="{{ route('web.homepage') }}" style=" color: #59bd56; ">TRANG CHỦ</a> ĐỂ TIẾP TỤC MUA SẮM.
				</h1>

			</div>
		</div>
	</div>
</div>

@endsection