
<div id="products_sider_block" class="block products_block nopadding block-highlight">
   <h4 class="title_block">
      <a href="{{ route('web.best_discount') }}" title="best discount">Giảm giá mạnh</a>
   </h4>
   <div class="block_content products-block">
      <ul class="products products-block">
         @foreach($productsSpecial as $specialProduct)
         <li class="media clearfix">
            <div class="product-block">
               <div class="product-container media">
                  <a class="products-block-image img pull-left" href="{{ route('web.product_detail',['id'=>$specialProduct->id,'name'=>$specialProduct->slug]) }}" title="{{$specialProduct->name}}">
                     <img class="replace-2x img-responsive" src="{{$specialProduct->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}" alt="{{$specialProduct->name}}">
                  </a>
                  <div class="media-body">
                     <div class="product-content">
                        <h5 class="name media-heading">
                           <a class="product-name" href="{{ route('web.product_detail',['id'=>$specialProduct->id,'name'=>$specialProduct->slug]) }}" title="{{$specialProduct->name}}">{{$specialProduct->name}}</a>
                        </h5>
                        <div class="content_price price">
                           <span class="price product-price">
                              <span class='money'>{{number_format($specialProduct->price-$specialProduct->price*$specialProduct->discount/100,0,",",".")}}₫</span>
                           </span>
                           <span class="old-price product-price"><span class='money'>{{number_format($specialProduct->price,0,",",".")}}₫</span></span>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </li>
         @endforeach
      </ul>
      <div class="lnk">
         <a href="{{ route('web.best_discount') }}" title="best discount" class="btn btn-sm btn-outline">
            <span>Hàng giảm giá nhiều</span>
         </a>
      </div>
   </div>
</div>