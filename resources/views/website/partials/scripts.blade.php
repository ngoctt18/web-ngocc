
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/timber2946.js?14233272639774211042') }}" type="text/javascript"></script>
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/jquery.flexslider.min2946.js?14233272639774211042') }}" type="text/javascript"></script>
<script></script>
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/handlebars.min2946.js?14233272639774211042') }}" type="text/javascript"></script>
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/ajaxify2946.js?14233272639774211042') }}" type="text/javascript"></script>
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/fastclick.min2946.js?14233272639774211042') }}" type="text/javascript"></script>
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/owl.carousel.min2946.js?14233272639774211042') }}" type="text/javascript"></script>
<script src="{{ asset('cdn.shopify.com/s/javascripts/currencies.js') }}" type="text/javascript"></script>
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/jquery.currencies.min2946.js?14233272639774211042') }}" type="text/javascript"></script>   
<script src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/jquery.mmenu.min.all2946.js?14233272639774211042') }}" type="text/javascript"></script>

<script src="{{ asset('js/website.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/bootstrap3-typeahead.min.js') }}"></script>
<script type="text/javascript">
	{{-- Gợi ý trên box search --}}
	var path = "{{ route('web.search.autocomplete') }}";
	$('input.typeahead').typeahead({
		source:  function (query, process) {
			return $.get(path, { query: query }, function (data) {
				return process(data);
			});
		}
	});
</script>
@yield('scripts')