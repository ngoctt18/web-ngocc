<!--Top Menu -->
<div id="apollo-menu">
   <div class="container">
      <nav id="cavas_menu" class="apollo-megamenu">
         <div class="" role="navigation">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle btn-menu-canvas" data-toggle="offcanvas" data-target="#off-canvas-nav">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="fa fa-bars"></span>
               </button>
            </div>
            <div id="apollo-top-menu" class="collapse navbar-collapse">
               <ul class="nav navbar-nav megamenu">
                  <li class="active">
                     <a class="" href="{{ route('web.homepage') }}" title="Home" target="_self">
                        <span class="">Trang chủ</span>
                     </a>
                  </li>

                  @foreach($catagoriesTypes as $catagoriesType)
                  
                  @if(count($catagoriesType->catagories))
                  <li class="parent dropdown ">
                     <a class="dropdown-toggle has-category" data-toggle="dropdown" href="{{ route('web.catagory_types',['id'=>$catagoriesType->id,'name'=>$catagoriesType->slug]) }}" title="Collection" target="_self">
                        <span class="">{{$catagoriesType->name}}</span><b class="caret"></b>
                     </a>
                     @else
                     <li class="">
                        <a class="" href="" title="{{$catagoriesType->name}}" target="_self">
                           <span class="">{{$catagoriesType->name}}</span>
                        </a>
                        @endif

                        @if(count($catagoriesType->catagories))
                        <div class="dropdown-menu level1">
                           <div class="dropdown-menu-inner">
                              <div class="mega-col-inner">
                                 <ul>
                                    @foreach($catagoriesType->catagories->where('status', '1') as $catagory)
                                    <li class="">
                                       <a class="" href="{{ route('web.catagories',['id'=>$catagory->id,'name'=>$catagory->slug]) }}" title="Left Sidebar Grid">
                                          <span class="">{{$catagory->name}}</span>
                                       </a>
                                    </li>
                                    @endforeach
                                 </ul>
                              </div>
                           </div>
                        </div>
                        @endif
                     </li>
                     @endforeach
                  <!-- <li class="parent dropdown full-width ">
                     <a class="dropdown-toggle has-category" data-toggle="dropdown" href="products/donec-fringilla.html" title="Mega menu" target="_self">
                        <span class="menu-title">Mega menu</span><b class="caret"></b>
                     </a>
                     <div class="dropdown-sub dropdown-menu sub-apmegamenu-1" style='width:600px'>
                        <div class="dropdown-menu-inner">
                           <div class="row">
                              <div class="mega-col col-sm-3">
                                 <div class="row">
                                    <div class="col-sm-12">
                                       <div class="mega-col-inner ">
                                          <div class="menu-title">shop-by-collection</div>
                                          <div class="widget-inner">
                                             <ul class="nav-links">
                                                <li><a href="collections/best-seller.html" title="Best Seller">Best Seller</a></li>
                                                <li><a href="collections/compoment.html" title="Compoment">Compoment</a></li>
                                                <li><a href="collections/frontpage.html" title="New">New</a></li>
                                                <li><a href="collections/random.html" title="Random">Random</a></li>
                                                <li><a href="collections/shop.html" title="Shop">Shop</a></li>
                                             </ul>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="mega-col col-sm-5">
                                 <div class="block-video">
                                    <div class="widget-inner">
                                       <iframe   width="430" height="250" src="http://www.youtube.com/embed/aE7-KZVXvJs"  ></iframe>
                                    </div>
                                 </div>
                              </div>
                              <div class="mega-col col-sm-4">
                                 <div class="products_menu">
                                    <div class="menu-title">
                                       Bestseller
                                    </div>
                                    <div class="product-block">
                                       <div class="product-container clearfix">
                                          <div class="image ">
                                             <a class="product_img_link" href="products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">
                                                <img class="replace-2x img-responsive" src="{ asset('cdn.shopify.com/s/files/1/0928/4804/products/p3_smalldf3d.jpg?v=1439570902') }}" alt="Aenean sagittis commodo habitasse lacus">
                                             </a>
                                          </div>
                                          <div class="product-meta">
                                             <h5 class="name">
                                                <a class="product-name" href="products/donec-fringilla.html" title="Aenean sagittis commodo habitasse lacus">
                                                   Aenean sagittis commodo habitasse lacus
                                                </a>
                                             </h5>
                                             <div class="product-desc">
                                                Donec fringilla sapien sed elit luctus,...
                                             </div>
                                             <div class="content_price">
                                                <span class="old-price product-price"><span class='money'>$90.00</span></span>
                                                <span class="price product-price">
                                                   <span class='money'>$38.00</span>
                                                </span>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="product-container clearfix">
                                          <div class="image ">
                                             <a class="product_img_link" href="products/nullam-volutpat.html" title="Commo habita lacus aenean consequat sagittis">
                                                <img class="replace-2x img-responsive" src="{ asset('cdn.shopify.com/s/files/1/0928/4804/products/p15_smalla330.jpg?v=1439571039') }}" alt="Commo habita lacus aenean consequat sagittis">
                                             </a>
                                          </div>
                                          <div class="product-meta">
                                             <h5 class="name">
                                                <a class="product-name" href="products/nullam-volutpat.html" title="Commo habita lacus aenean consequat sagittis">
                                                   Commo habita lacus aenean consequat sagittis
                                                </a>
                                             </h5>
                                             <div class="product-desc">
                                                Sed id faucibus ligula. Suspendisse eleifend...
                                             </div>
                                             <div class="content_price">
                                                <span class="old-price product-price"></span>
                                                <span class="price product-price">
                                                   <span class='money'>$19.00</span>
                                                </span>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li> -->
                  <li class="">
                     <a class="" href="{{ route('web.news') }}" title="Blog" target="_self">
                        <span class="">Blog</span>
                     </a>
                  </li>
                  <li class="">
                     <a class="" href="{{ route('web.contact') }}" title="Liên hệ" target="_self">
                        <span class="">Liên hệ</span>
                     </a>
                  </li>
               </ul>
            </div>
         </div>
      </nav>
   </div>
</div>
<!-- End Menu -->