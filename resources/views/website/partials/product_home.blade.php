<div class="row ">
    <div class="col-xs-12 col-sm-12">
        <div id="productlist02" class="products_block exclusive block" >
            <h4 class="page-subheading ">
                FEATURED PRODUCTS
            </h4>
            <div class="block_content">
                <div class="carousel slide" id="product_list_0002">
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="product_list">
                                <div class="product-items">
                                    <div class="row">
                                        @foreach($products as $key => $product)
                                        <div class="product_block col-md-4 col-xs-4 col-sp-12">
                                            <div class="product-container text-left product-block">
                                                <div class="product-image-container image">
                                                    <img class="replace-2x img-responsive" src="{{$product->ThumbProduct??asset("images/products/product4.jpg")}}" alt="{{$product->name}}">
                                                    <span class="product-additional" data-idproduct="1119719620">
                                                        <img class="replace-2x img-responsive" alt="{{$product->name}}" src="{{$product->ThumbProductDetails[0]??asset("images/products/product3.jpg")}}">
                                                    </span>
                                                    @if($product->discount != '0')
                                                    <span class="sale-box">
                                                        <span class="label-sale label">Sale</span>
                                                    </span>
                                                    @endif
                                                    <div class="tool-funtion">
                                                        <div class="quickview">
                                                            <a class="quick-view btn btn-outline " href="#quick-view-product" data-handle="nullam-volutpat" title="+ Quick View">
                                                                <i class="fa fa-plus"></i>
                                                                <span>+ Quick View</span>
                                                            </a>
                                                        </div>
                                                        <div class="wishlist">
                                                            <a class="btn btn-outline btn-wishlist" href="account/login.html">
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
                                                    <div class="review">
                                                        <span class="shopify-product-reviews-badge" data-id="1119719620"></span>
                                                    </div>
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
                                                                <form action="" method="post" enctype="multipart/form-data" class="form-ajaxtocart">
                                                                    <input type="hidden" name="id" value="4214857412" />
                                                                    <a class=" btn btn-outline button ajax_addtocart" href="{{ route('web.product_detail',['id'=>$product->id,'name'=>$product->slug]) }}" title="{{$product->name}}">
                                                                        <span class="fa fa-shopping-cart"></span>
                                                                        <span class="select_options">Mua ngay</span>
                                                                    </a>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @if($key==2)
                                    </div>
                                </div>
                                <div class="product-items">
                                    <div class="row">
                                        @endif
                                        @endforeach
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