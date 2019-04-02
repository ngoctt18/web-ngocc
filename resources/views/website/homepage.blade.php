@extends('website.layouts.website')

@section('title', 'Milk Store')

@section('content')

@include('website.partials.slideshow')

<div class="container">
	<div class="block-index">
		
		@include('website.partials.top_service')
		@include('website.partials.product_new')

		<div class="row no-margin">
			<aside>
				<div id="left_column" class="left_column sidebar col-sm-4 col-md-3 no-padding">
					@include('website.partials.catagory_left')

					@include('website.partials.special_left')
					@include('website.partials.signup_left')
					
				</div>
			</aside>
			<div id="center_column" class="center_column col-sm-8 col-md-9 no-padding">
				<div class="center_wrap">
					@include('website.partials.banner_top')
					
					@include('website.partials.product_home')

					@include('website.partials.banner_bot')

					<div class="row ">
						<div class="col-md-offset-1 col-xs-9 col-sm-9">
							<div class="block-index user_online">
								<b>User online: </b>
								@if ($users)
								<ul>
									@foreach ($users as $user)
									@if ($user->isOnline())
									<li>{{$user->name}}</li>
									@endif
									@endforeach
								</ul>
								@endif
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript">
	$(document).ready(function() {
		$('#productlist01 .owl-carousel').each(function(){
			$(this).owlCarousel({
				items : 4,
				lazyLoad : true,
				navigation : true,
				addClassActive: true,
				afterInit : SetOwlCarouselFirstLast,
				afterAction : SetOwlCarouselFirstLast,

				itemsDesktop: [1199, 3],
				itemsDesktopSmall: [979, 2],
				itemsTablet: [768, 2],
				itemsTabletSmall: [480, 1],
				itemsMobile: [360, 1],

				navigationText : ["Prev", "Next"]
			}); 
		});
		function SetOwlCarouselFirstLast(el){
			el.find(".owl-item").removeClass("first");
			el.find(".owl-item.active").first().addClass("first");

			el.find(".owl-item").removeClass("last");
			el.find(".owl-item.active").last().addClass("last");
		};

	});
</script>
@endsection