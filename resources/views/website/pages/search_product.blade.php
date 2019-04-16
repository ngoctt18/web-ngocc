@extends('website.layouts.website')
@section('title', 'Search by name: '.request('query'))
@section('styles')
<style type="text/css">
  .product_block { border-right: 1px solid #e5e5e5;margin: 40px 0px;}
  .product_block:last-child { border: none; }
  .product-items { border-bottom: 1px solid #e5e5e5; }
  .input_price {width: 100%;}
</style>
@endsection
@section('content')
@include('website.partials.breadcrumbs')
<form method="GET" action="">
  <main class="main-content" role="main">
    <section id="columns" class="columns-container">
      <div id="columns" class="container">
        <div class="row no-margin">
          <aside>
            <div id="left_column" class="left_column sidebar col-sm-4 col-md-3 no-padding">
              @include('website.partials.search_filter_left')
            </div>
          </aside>
          <div id="center_column" class="center_column col-sm-8 col-md-9 no-padding">
            <div class="center_wrap">
              <div class="">
                <div id="center_column" class="center_column col-md-12">
                  <div id="search-page">
                    <h1 class="h2 text-center">
                      @if(count($productsSearchs))
                      Kết quả tìm kiếm cho từ khoá "{{ old('query', request('query')) }}":
                    </h1>
                    <div id="search_block_page" class="">
                      {{-- <form action="{{ route('web.search') }}" method="GET" class="search-bar" role="search"> --}}
                        <div class="search-bar">
                          <input id="search_querry_page" class="search_query form-control typeahead" type="search" name="query" placeholder="Search ..." class="input-group-field" value="{{ old('query', request('query')) }}" data-provide="typeahead" autocomplete="off">
                          <button id="search_button_page" class="btn btn-sm btn-outline" type="submit" >
                            <span><i class="fa fa-search"></i></span>
                            <span class="fallback-text">Search</span>
                          </button>
                        </div>
                      {{-- </form> --}}
                    </div>
                    <div class="pro_search_row">
                      <div class="product-items">
                        <div class="row">
                          @foreach ($productsSearchs as $key => $product)
                          <div class="product_block col-md-4 col-xs-6 col-sp-12">
                            <div class="product-container text-left product-block">
                              <div class="product-image-container image">
                                <a class="product_img_link" href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" title="{{$product->name}}">
                                  <img class="replace-2x img-responsive" src="{{$product->ThumbProduct??asset("images/products/product1.jpg")}}" alt="{{$product->name}}">
                                  <span class="product-additional" data-idproduct="1119718980">
                                    <img class="replace-2x img-responsive" alt="{{$product->name}}" src="{{$product->ThumbProductDetails[0]??asset("images/products/product2.jpg")}}">
                                  </span>
                                </a>
                                @if($product->discount != '0')
                                <span class="sale-box">
                                  <span class="label-sale label">Sale</span>
                                </span>
                                @endif
                                <div class="tool-funtion">
                                  <div class="quickview">
                                    <a class="quick-view btn btn-outline" href="#quick-view-product" data-handle="nullam-volutpat" title="+ Quick View">
                                      <i class="fa fa-plus"></i>
                                      <span>+ Quick View</span>
                                    </a>
                                  </div>
                                  <div class="wishlist">
                                    <a class="btn btn-outline btn-wishlist" href="/account/login">
                                      <i class="fa fa-heart"></i>
                                      <span>Add to Wishlist</span>
                                    </a>
                                  </div>
                                  <div class="view_detail">
                                    <a class="btn lnk_view btn-outline" href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" title="View">
                                      <i class="fa fa-eye"></i><span>View product</span>
                                    </a>
                                  </div>
                                </div>
                              </div>
                              <div class="product-meta">
                                <h5 class="name">
                                  <a class="product-name" href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" title="{{$product->name}}">{{$product->name}}</a>
                                </h5>
                                <div class="content_price">
                                  <span class="price product-price sale-price">
                                    <span class='money'>{{number_format($product->price-$product->price*$product->discount/100,0,",",".")}}₫</span>
                                  </span>
                                  @if($product->discount != '0')
                                  <span class="old-price product-price">
                                    <span class='money'>
                                      {{number_format($product->price,0,",",".")}}₫
                                    </span>
                                  </span>
                                  @endif
                                </div>
                                <div class="functional-buttons clearfix">
                                  <div class="cart">
                                    <div class="action">
                                      <form action="{{ route('web.add_cart',[$product->id,$product->slug]) }}" method="post" class="form-ajaxtocart">
                                        {{csrf_field()}}
                                        <input type="hidden" name="quantity" value="1" />
                                        <button type="submit"  class=" btn btn-outline button ajax_addtocart" >
                                          <span class="fa fa-shopping-cart"></span>
                                          <span class="select_options">Mua ngay</span>
                                        </button>
                                      </form>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          @if( ($key+1)%3 == 0)
                        </div>
                      </div>
                      <div class="product-items">
                        <div class="row">
                          @endif
                          @endforeach
                          <div class="clearfix">
                          </div>
                          <div class="paginate">
                            {{ $productsSearchs->links('admin.paginations.pagination_sm') }}
                            <br>
                          </div>
                          @else 
                          Chúng tôi không tìm thấy sản phẩm "{{ old('query', request('query')) }}" nào:
                          @endif
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
</form>
@endsection

