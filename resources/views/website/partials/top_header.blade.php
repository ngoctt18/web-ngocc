
<div id="header-main">
   <div class="container">
      <div class="header-wrap">
         <div class="header-left">
            <div id="header_logo">
               <h1 class="" itemscope itemtype="">
                  <a href="{{ route('web.homepage') }}" itemprop="url">
                     <img src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/logo2946.png?14233272639774211042') }}" alt="AP-MILK-STORE" itemprop="logo">
                  </a>
               </h1>
            </div>
         </div>
         <div class="header-right">
            <div id="cart" class="blockcart_top clearfix">
               <div class="media heading">
                  <a href="{{ route('web.cart') }}" id="CartToggle">
                     <div class="title-cart">
                        <span class="fa fa-shopping-cart "></span>
                     </div>
                     <div class="cart-inner media-body">
                        <span class="cart-title">Shopping cart</span>
                        <span style="font-size: 13px;">
                           <span id="CartCount">{{Cart::instance('default')->count()}}</span>
                           <span>sản phẩm - </span>
                           <span id="CartMoney"><span class='money'>{{Cart::instance('default')->subtotal(0,'','.')}}₫</span></span>
                        </span>
                     </div>
                  </a>
               </div>
            </div>
            <div class="header_user_info e-scale">
               <div data-toggle="dropdown" class="popup-title dropdown-toggle">
                  <i class="fa fa-user"></i><span>Top links</span>
               </div>
               <ul class="links">
                  <li>
                     <a id="wishlist-total" title="Wishlist" href="{{ route('web.wishlist') }}"><i class="fa fa-list-alt"></i> Wishlist</a>
                  </li>
                  <li>
                     <a href="{{ route('web.checkout') }}" title="My Cart"><i class="fa fa-share"></i> Check Out</a>
                  </li>
                  @if(Auth::guard('web')->check())
                  <li>
                     <a class="account" href="{{ route('web.users', ['username' => Auth::user()->username]) }}" title="{{Auth::user()->name}}"><i class="fa fa-user"></i> {{Auth::user()->name}}</a>
                  </li>
                  <li>
                     <a class="account" href="{{ route('web.logout') }}" title="Logout">
                        <i class="fa fa-sign-out"></i> Đăng xuất
                     </a>
                  </li>
                  @else
                  <li>
                     <a class="account" href="{{ route('web.login') }}" title="Login">
                        <i class="fa fa-sign-in"></i> Đăng nhập
                     </a>
                     <a class="account" href="{{ route('web.register') }}" title="Register">
                        <i class="fa fa-user-plus"></i> Đăng ký
                     </a>
                  </li>
                  @endif
               </ul>
            </div>
            <div id="search_block_top" class="">
               <span id="search-icon" class="fa fa-search" title="Search"></span>
               <form id="searchbox" class="popup-content" action="{{ route('web.search') }}" method="GET" role="search">
                  <input id="search_query_top" class="search_query form-control typeahead " type="text" name="query" placeholder="Search ..." value="{{ old('query', request('query')) }}" data-provide="typeahead" autocomplete="off">
                  <button id="search_button" class="btn btn-sm" type="submit" >
                     <span><i class="fa fa-search"></i></span>
                     <span class="fallback-text">Search</span>
                  </button>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

