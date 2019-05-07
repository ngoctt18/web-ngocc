@extends('website.layouts.website')

@section('title', $user->name."'s Profile")

@section('styles')
{{-- <style type="text/css">
li.parent.dropdown.active { background: #363a40; } 
li.parent.dropdown.active > a { color: #59bd56; }
</style> --}}

@yield('user_styles')

@endsection

@section('content')
@include('website.partials.breadcrumbs')
<div id="account-page">
	<div class="container">
		<div class="account-box">
			<h1>{{$user->name}}</h1>
			<div class="row">
				<div id="left_column" class="left_column sidebar col-sm-3 col-md-3 no-padding">
					<div id="apollo-verticalmenu" class="block apollo-verticalmenu">
						<div class="row">
							<div class="col-md-3" style=" margin-bottom: 10px; ">
								<img src="{{$user->ThumbUser}}" title="{{$user->name}}" alt="{{$user->name}}" style="max-width: 100%;border-radius: 50%;width: 50px;height: 50px;">
							</div>
							<div class="col-md-9">
								<h5>{{$user->name}}</h5>
								<a href="javascript:void(0)"><i class="fa fa-circle" style=" color: #59bd56; "></i> Online</a>
							</div>
						</div>
						<div class="block_content">
							<div id="verticalmenu" class="verticalmenu" role="navigation">
								<div class="navbar">
									<div class="navbar-ex1-collapse">
										<ul class="nav navbar-nav nav-verticalmenu">
											<li class="parent dropdown @if (Route::currentRouteName() == 'web.users') {{" active"}} @endif">
												<a href="{{ route('web.users', [$user->username]) }}" title="Thông tin tài khoản">
													<span class="menu-icon has-icon menu-icon-7">
														<span class="menu-title">Thông tin tài khoản</span>
													</span>
												</a>
											</li>
											<li class="parent dropdown @if (Route::currentRouteName() == 'web.orders' || Route::currentRouteName() == 'web.orders_detail') {{" active"}} @endif">
												<a href="{{ route('web.orders', [$user->username]) }}" title="Quản lý đơn hàng">
													<span class="menu-icon has-icon menu-icon-2">
														<span class="menu-title">Quản lý đơn hàng</span>
													</span>
												</a>
											</li>
											<li class="parent dropdown @if (Route::currentRouteName() == 'web.address') {{" active"}} @endif">
												<a href="{{ route('web.address', [$user->username]) }}" title="Sổ địa chỉ">
													<span class="menu-icon has-icon menu-icon-3">
														<span class="menu-title">Sổ địa chỉ</span>
													</span>
												</a>
											</li>
											
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>				
				</div>

				<div class="col-md-9">

					@yield('user_profile')

				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')

@yield('user_scripts')

@endsection