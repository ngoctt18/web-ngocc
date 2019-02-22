@extends('website.layouts.website')

@section('title', 'Search')
@section('styles')
<style type="text/css">

</style>
@endsection
@section('content')
@include('website.partials.breadcrumbs')


<main class="main-content" role="main">
   <section id="columns" class="columns-container">
      <div id="columns" class="container">
         <div class="row">
            <div id="center_column" class="center_column col-md-12">
               <div id="search-page">
                  <h1 class="h2 text-center">Search for products on our site</h1>
                  <div id="search_block_page" class="">
                     <form action="https://ap-milk-store-2.myshopify.com/search" method="get" class="search-bar" role="search">
                        <input type="hidden" name="type" value="product">
                        <input id="search_querry_page" class="search_query form-control" type="search" name="q" value="" placeholder="Search ..." class="input-group-field" aria-label="Search ...">
                        <button id="search_button_page" class="btn btn-sm btn-outline" type="submit" >
                        <span><i class="fa fa-search"></i></span>
                        <span class="fallback-text">Search</span>
                        </button>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
</main>


@endsection

@section('scripts')

<script type="text/javascript">
    $(document).ready(function() {
        $('.fancybox-close').click(function(event) {
            $(this).closest('.fancybox-overlay').fadeOut();
        });
    });
</script>
@endsection