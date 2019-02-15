@extends('website.layouts.website')

@section('title', $catagoryType->name)

@section('content')
@include('website.partials.breadcrumbs')

<div class="container">
	<div class="block-index">
		

		<div class="row no-margin">
			<aside>
				<div id="left_column" class="left_column sidebar col-sm-4 col-md-3 no-padding">
					@include('website.partials.catagory_left')

					@include('website.partials.filter_left')
					@include('website.partials.special_left')
					
				</div>
			</aside>
			<div id="center_column" class="center_column col-sm-8 col-md-9 no-padding">
				<div class="center_wrap">
					
					@include('website.partials.product_home')

					{{ $products->links('admin.paginations.pagination_sm') }}
					@include('website.partials.banner_bot')
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')

@endsection