@extends('website.layouts.website')
@section('title', $product->name)
@section('styles')
<style type="text/css">
  #thumbs_list .thumb_item { width: 99px; float: left; }
  input#Quantity { line-height: 15px; font-weight: 600; padding: 10px; font-size: 15px; max-width: 100%; }
  .btn-wishlist {background-color: #ea254b;}
  img.avatar { width: 60px; height: 60px;}
  a.reply-comment { margin-left: 20px; }
  .formComment {transition: 0.2s; display: none;}
  button#AddToCart { font-size: 20px; }
  span#AddToCartText { font-size: 18px; }
  button.btn.btn-outline.btn-wishlist { font-size: 18px; }
</style>
@endsection
@section('content')
@include('website.partials.breadcrumbs')
<section id="columns" class="columns-container product">
  <div id="columns" class="container">
  <div class="row">
  <div id="center_column" class="center_column col-sm-12 col-md-12">
    <div itemscope itemtype="http://schema.org/Product">
      <div class="primary_block">
        <div class="row">
          <div class="product-left-column col-xs-12 col-sm-12 col-md-5">
            <div id="image-block" class="clearfix">
              <span id="view_full_size">
              <img id="proimage" class="img-responsive" itemprop="image" src="{{$product->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="{{$product->name}}" data-zoom-image="" />
              </span>
            </div>
            <div id="views_block" class="clearfix ">
              <div id="thumbs_list">
                <div id="thumblist">
                  <div id="thumbnail_0" class="thumb_item ">
                    <a href="javascript:void(0)" data-imageid="3051930052" data-image="//cdn.shopify.com/s/files/1/0928/4804/products/p15_large.jpg?v=1439571039" data-zoom-image="//cdn.shopify.com/s/files/1/0928/4804/products/p15_1024x1024.jpg?v=1439571039"  title="Commo habita lacus aenean consequat sagittis">
                    <img class="img-responsive img_detail" id="thumb_0" src="{{$product->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="{{$product->name}}" itemprop="image" />
                    </a>
                  </div>
                  @for($i=0;$i<3;$i++)
                  <div id="thumbnail_{{$i+1}}" class="thumb_item ">
                    <a href="javascript:void(0)" data-imageid="3051930052" data-image="//cdn.shopify.com/s/files/1/0928/4804/products/p15_large.jpg?v=1439571039" data-zoom-image="//cdn.shopify.com/s/files/1/0928/4804/products/p15_1024x1024.jpg?v=1439571039"  title="Commo habita lacus aenean consequat sagittis">
                    <img class="img-responsive img_detail" id="thumb_{{$i+1}}" src="{{$product->ThumbProductDetails[$i]??asset('images/products/product'.($i+1).'.jpg')}}" alt="{{$product->name}}" itemprop="image" />
                    </a>
                  </div>
                  @endfor
                </div>
              </div>
            </div>
          </div>
          <div class="product-center-column col-xs-12 col-sm-12 col-md-7">
            <h1 itemprop="name">{{$product->name}}</h1>
            <div class="review">
              <span class="shopify-product-reviews-badge" data-id="1119719620"></span>
            </div>
            <h5 class="brand" itemprop="brand">
              <span>Nhà phân phối: </span>
              <a href="{{ route('web.distribute', [$product->distribute->id, $product->distribute->slug]) }}" style=" color: #59bd5a; ">{{$product->distribute->name}}</a>
            </h5>
            <div class="product-description rte" itemprop="description">
              {!!$product->description!!}
            </div>
            <div class="socialsharing_product no-print">
              <ul class="social-sharing list-unstyled">
                <li>
                  <a class="btn btn-twitter" target="_blank" href="https://twitter.com/intent/tweet?text={{$product->name}}&amp;url={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}&amp;">
                  <i class="fa fa-twitter"></i> Tweet
                  </a>
                </li>
                <li>
                  <a class="btn btn-facebook" target="_blank" href="http://www.facebook.com/sharer.php?u={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}">
                  <i class="fa fa-facebook"></i> facebook
                  </a>
                </li>
                <li>
                  <a class="btn btn-google-plus" target="_blank" href="https://plus.google.com/share?url={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}">
                  <i class="fa fa-google-plus"></i> Google+
                  </a>
                </li>
                <li>
                  <a class="btn btn-pinterest" target="_blank" href="http://pinterest.com/pin/create/button/?url={{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}&media={{$product->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}&description={{$product->name}}">
                  <i class="fa fa-pinterest-p"></i> Pinterest
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-right-column col-xs-12 col-sm-12 col-md-7">
            <div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
              <div class="availability">
                <p class="available instock">
                  @if($product->status=='1')
                  {{"Còn hàng"}}
                  @elseif($product->status=='0')
                  {{"Hết hàng"}}
                  @endif
                </p>
              </div>
              <form action="{{ route('web.add_cart',[$product->id,$product->slug]) }}" method="post" enctype="multipart/form-data" id="AddToCartForm" class="form-ajaxtocart">
                {{csrf_field()}}
                <div class="clearfix">
                  <div class="content_price alert alert-success">
                    <big><b style="color: black;">Giá bán: </b></big>
                    <span class="price product-price sale-price">
                    <span class='money'>{{number_format($product->price-$product->price*$product->discount/100,0,",",".")}}₫</span>
                    </span>
                    &nbsp;
                    @if($product->discount != '0')
                    <span class="old-price product-price">
                    <span class='money' style=" text-decoration: line-through; color: gray;">
                    {{number_format($product->price,0,",",".")}}₫
                    </span>
                    </span>
                    &nbsp;
                    <span class="label label-danger" style=" font-size: 15px; ">
                    Giảm {{$product->discount}}%
                    </span>
                    @endif
                  </div>
                </div>
                <div class="total-price">
                  <label>Subtotal: </label>
                  <span></span>
                </div>
                <div class="line-product-top"></div>
                <div class="quantity_wanted_p">
                  <label for="Quantity" class="quantity-selector">Quantity</label>
                  <input type="number" id="Quantity" name="quantity" value="1" min="1" class="quantity-selector">
                </div>
                <button type="submit" id="AddToCart" class="btn add_to_cart_detail ajax_addtocart" @if($product->status=='0') {{'disabled="disabled"'}}@endif title="Đặt mua ngay">
                <i class="fa fa-shopping-cart"></i>
                <span id="AddToCartText">Đặt mua ngay</span>
                </button>
              </form>
            </div>
            <div class="wishlist">
              @if ($inWishlist)
              <a class="btn btn-outline btn-wishlist" href="{{ route('web.wishlist') }}" title="Sản phẩm đã nằm trong wishlist!">
              <i class="fa fa-heart"></i>
              </a>
              @else
              <form action="{{ route('web.add_wishlist',[$product->id,$product->slug]) }}" method="post" enctype="multipart/form-data" id="AddToCartForm" class="form-ajaxtocart">
                {{csrf_field()}}
                <input type="hidden" name="wish_qty" value="1" min="1">
                <button class="btn btn-outline btn-wishlist" type="submit" title="Add to Wishlist">
                <i class="fa fa-heart"></i>
                <span>Add to Wishlist</span>
                </button>
              </form>
              @endif
            </div>
            <div class="line-product">
              <img src="{{ asset('images/tro_gia_20k_don_di_tinh_1.png') }}">
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="more_info_block">
            <ul class="nav nav-tabs tab-info page-product-heading">
              <li style=" border-bottom: 3px solid #59bd56; ">
                <a href="#idTab1" data-toggle="tab">Chi tiết sản phẩm</a>
              </li>
            </ul>
            <div class="tab-content">
              <section id="idTab1" class="{{-- tab-pane --}} page-product-box">
                <div class="rte">
                  <span>{!! $product->intro !!}</span>
                </div>
              </section>
              <section id="idTab2" class="tab-pane page-product-box">
                <div id="shopify-product-reviews" data-id="1119719620">
                  <style scoped>
                    .spr-container {
                    padding: 24px;
                    border-color: #ECECEC;
                    }
                    .spr-review, .spr-form {
                    border-color: #ECECEC;
                    }
                  </style>
                  <div class="spr-container">
                    <div class="spr-header">
                      <h2 class="spr-header-title">Customer Reviews</h2>
                      <div class="spr-summary" itemscope itemtype="http://data-vocabulary.org/Review-aggregate">
                        <meta itemprop="itemreviewed" content="Commo habita lacus aenean consequat sagittis" />
                        <meta itemprop="votes" content="1" />
                        <span itemprop="rating" itemscope itemtype="http://data-vocabulary.org/Rating" class="spr-starrating spr-summary-starrating">
                          <meta itemprop="average" content="5.0" />
                          <meta itemprop="best" content="5" />
                          <meta itemprop="worst" content="1" />
                          <i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i><i class='spr-icon spr-icon-star' style=''></i>
                        </span>
                        <span class="spr-summary-caption">
                        <span class='spr-summary-actions-togglereviews'>Based on 1 review</span>
                        </span>
                        <span class="spr-summary-actions">
                        <a href='#' class='spr-summary-actions-newreview' onclick='SPR.toggleForm(1119719620);return false'>Write a review</a>
                        </span>
                      </div>
                    </div>
                    <div class="spr-content">
                      <div class='spr-form' id='form_1119719620' style='display: none'></div>
                      <div class='spr-reviews' id='reviews_1119719620' ></div>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="more_info_block">
                <ul class="nav nav-tabs tab-info page-product-heading">
                  <li style=" border-bottom: 3px solid #59bd56; ">
                    <a href="#idTab3" data-toggle="tab">Thông tin thương hiệu</a>
                  </li>
                </ul>
                <div class="tab-content">
                  <section id="idTab3" class="page-product-box">
                    <div class="rte">
                      <span>{!! $product->distribute->description !!}</span>
                    </div>
                  </section>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="more_info_block">
                <ul class="nav nav-tabs tab-info page-product-heading">
                  <li style=" border-bottom: 3px solid #59bd56; ">
                    <a href="#idTab4" data-toggle="tab">Bình luận về sản phẩm</a>
                  </li>
                </ul>
                @if (auth()->check())
                <div class="tab-content">
                  <form method="post" action="{{ route('web.product.comment.store') }}" class="formComment hihihih" style="display: block !important;">
                    @csrf
                    <div class="form-group">
                      <textarea name="body" class="form-control" rows="4" required="" minlength="30" maxlength="250" placeholder="Nội dung bình luận"></textarea>
                      <small class="text-danger err-msg"></small>
                      <input type="hidden" name="product_id" value="{{ $product->id }}" />
                      <input type="hidden" name="parent_id" value="" />
                      <input type="hidden" name="type_comment" value="new_comment" />
                    </div>
                    <div class="form-group">
                      <input type="submit" class="btn btn-warning btn-reply-comment" value="Gửi bình luận" />
                    </div>
                  </form>
                </div>
                @endif
                <div class="tab-content">
                  @include('website.product.commentsDisplay', ['comments' => $product->comments->sortByDesc('created_at'), 'product_id' => $product->id])
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="more_info_block">
                <ul class="nav nav-tabs tab-info page-product-heading">
                  <li style=" border-bottom: 3px solid #59bd56; ">
                    <a href="#idTab4" data-toggle="tab">Bình luận qua Facebook</a>
                  </li>
                </ul>
                <div class="tab-content">
                  {{-- <div class="fb-comments" data-href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" data-width="1130" data-numposts="3" data-order-by="social"></div> --}}
                </div>
              </div>
            </div>
            <div class="productpage col-xs-12 col-sm-12 col-lg-12">
              <div id="productrelated01" class="products_block exclusive block" >
                <h4 class="page-subheading ">
                  <span>Sản phẩm liên quan</span>
                </h4>
                <div class="block_content">
                  <div class="product_list_owl">
                    <div class="owl-carousel slide">
                      @foreach($productsRelate as $product_relate)
                      <div class="item">
                        <div class="product_block  ">
                          <div class="product-container text-left product-block">
                            <div class="product-image-container image">
                              <a class="product_img_link" href="{{ route('web.product_detail',['id'=>$product_relate->id,'name'=>$product_relate->slug]) }}" title="{{$product_relate->name}}">
                              <img class="replace-2x img-responsive" src="{{$product_relate->ThumbProduct??asset("images/products/product2.jpg")}}" alt="{{$product_relate->name}}">
                              <span class="product-additional" data-idproduct="1119718980">
                              <img class="replace-2x img-responsive" alt="{{$product_relate->name}}" src="{{$product_relate->ThumbProductDetails[0]??asset("images/products/product3.jpg")}}">
                              </span>
                              </a>
                              @if($product_relate->discount != '0')
                              <span class="sale-box">
                              <span class="label-sale label">Sale</span>
                              </span>
                              @endif
                              <div class="tool-funtion">
                                <div class="quickview">
                                  <a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="donec-fringilla" title="+ Quick View">
                                  <i class="fa fa-plus"></i>
                                  <span>+ Quick View</span>
                                  </a>
                                </div>
                                <div class="wishlist">
                                  <a class="btn btn-outline btn-wishlist" href="{{ route('web.wishlist') }}">
                                  <i class="fa fa-heart"></i>
                                  <span>Add to Wishlist</span>
                                  </a>
                                </div>
                                <div class="view_detail">
                                  <a class="btn lnk_view btn-outline" href="{{ route('web.product_detail',['id'=>$product_relate->id,'name'=>$product_relate->slug]) }}" title="View">
                                  <i class="fa fa-eye"></i><span>View product</span>
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="product-meta">
                              <h5 class="name">
                                <a class="product-name" href="{{ route('web.product_detail',['id'=>$product_relate->id,'name'=>$product_relate->slug]) }}" title="{{$product_relate->name}}">{{$product_relate->name}}</a>
                              </h5>
                              <div class="review">
                                <span class="shopify-product-reviews-badge" data-id="1119718980"></span>
                              </div>
                              <div class="content_price">
                                <span class="price product-price sale-price">
                                <span class='money'>{{number_format($product_relate->price-$product_relate->price*$product_relate->discount/100,0,",",".")}}₫</span>
                                </span>
                                @if($product_relate->discount != '0')
                                <span class="old-price product-price">
                                <span class='money'>
                                {{number_format($product_relate->price,0,",",".")}}₫
                                </span>
                                </span>
                                @endif
                              </div>
                              <div class="functional-buttons clearfix">
                                <div class="cart">
                                  <div class="action">
                                    <a class=" btn btn-outline button ajax_addtocart" href="{{ route('web.product_detail',['id'=>$product_relate->id,'name'=>$product_relate->slug]) }}" title="Xem chi tiết">
                                    <span class="fa fa-shopping-cart"></span>
                                    <span class="select_options">Xem chi tiết</span>
                                    </a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      @endforeach
                    </div>
                  </div>
                </div>
              </div>
              <script type="text/javascript">
                $(document).ready(function() {
                
                   $('#productrelated01 .owl-carousel').each(function(){
                      $(this).owlCarousel({
                         items : 3,
                         lazyLoad : true,
                         navigation : true,
                         addClassActive: true,
                         afterInit : SetOwlCarouselFirstLast,
                         afterAction : SetOwlCarouselFirstLast,
                
                         itemsDesktop: [1199, 2],
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
            </div>
          </div>
        </div>
      </div>
      <!-- row -->
    </div>
  </div>
</section>
<script>
  function selectCallback(variant, selector) {
     var addToCart = jQuery("#AddToCart"),
     productPrice = jQuery(".product-right-column #ProductPrice"),
     comparePrice = jQuery(".product-right-column .price-product-detail .old-price");
     if (variant) {
        if (variant.available) {
       // We have a valid product variant, so enable the submit button
       addToCart.removeClass('disabled').removeAttr('disabled');
       $(addToCart).find("span").text("Add to Cart");
   } else {
     // Variant is sold out, disable the submit button
     addToCart.addClass('disabled').attr('disabled', 'disabled');
     $(addToCart).find("span").text("Sold Out");
  }
   // Regardless of stock, update the product price
   productPrice.html(Shopify.formatMoney(variant.price, "<span class='money'>$</span>"));       
   // Also update and show the product's compare price if necessary
   if ( variant.compare_at_price > variant.price ) {
      productPrice.addClass("sale-price")
      comparePrice
      .html(Shopify.formatMoney(variant.compare_at_price, "<span class='money'>$</span>"))
      .show();          
  } else {
      comparePrice.hide();
      productPrice.removeClass("sale-price");
  }        
   // BEGIN SWATCHES
   var form = jQuery('#' + selector.domIdPrefix).closest('form');
   for (var i=0,length=variant.options.length; i<length; i++) {
      var radioButton = form.find('.swatch[data-option-index="' + i + '"] :radio[value="' + variant.options[i] +'"]');
      if (radioButton.size()) {
          radioButton.get(0).checked = true;
      }
  }
   // END SWATCHES
   updatePricing();
   
  } else {
  // The variant doesn't exist. Just a safeguard for errors, but disable the submit button anyway
  addToCart.addClass('disabled').attr('disabled', 'disabled');
  $(addToCart).find("span").text("Unavailable");
  }
  /*begin variant image*/
  if (variant && variant.featured_image) {
  var originalImage = $("#view_full_size img");
  var newImage = variant.featured_image;
  var element = originalImage[0];
  Shopify.Image.switchImage(newImage, element, function (newImageSizedSrc, newImage, element) {
  $('#thumblist img').each(function() {
      var parentThumbImg = $(this).parent();
      var idProductImage = $(this).parent().data("imageid");
      if (idProductImage == newImage.id) {
          $(this).parent().trigger('click');
          return false;
      }
  });
  });
  }
  /*end of variant image*/
  };
  
</script>
<script type="text/javascript">
  $(document).ready(function() {
  
      $('#productrelated01 .owl-carousel').each(function(){
          $(this).owlCarousel({
              items : 3,
              lazyLoad : true,
              navigation : true,
              addClassActive: true,
              afterInit : SetOwlCarouselFirstLast,
              afterAction : SetOwlCarouselFirstLast,
  
              itemsDesktop: [1199, 2],
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
@section('scripts')
@include('website.product.product_detail_scripts')
@endsection
@push('fb_comment')
<!-- Comment Facobook -->
{{-- <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3&appId=2233734240234108&autoLogAppEvents=1"></script>
<div class="website_loader"></div> --}}
@endpush