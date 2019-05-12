
<footer id="footer" role="contentinfo">
   <div class="footer-container">
      <section id="footercenter" class="footer-center">
         <div class="container">
            <div class="footer-center-wrap">
               <div class="row no-margin">
                  <div class="no-padding footer--left col-md-3 col-sm-12 col-xs-12 " data-wow-delay="100ms">
                     <!-- <section id="googlemap" class="box-googlemap box block">
                        <h4 class="title_block">
                           <span>Store</span> Locations
                        </h4>
                        <div class="box_content">
                           <div id="google-maps-home" class=" google-maps" style="width: 100%; min-height:120px; clear:both;">
                              <div class="gmap-cover display-list-store">
                                 <div class="gmap-content">
                                    <div id="map-canvas" class="gmap" style="min-height:120px; width:100%; height: 100%;"></div>
                                 </div>
                              </div>
                              {{-- <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=true&amp;amp;region=US"></script> --}}
                           </div>
                        </div>
                     </section> -->
                     <div class="block_aboutshop block">
                        <div class="block_content">
                           <ul class="list__address">
                              <li><i class="fa fa-home "></i>Văn Trì, Minh Khai, Bắc Từ Liêm, Hà Nội</li>
                           </ul>
                           <h3 class="title_block">Về chúng tôi</h3>
                           <div class="about">
                              Hệ thống siêu thị sữa Milk Store cung cấp sản phẩm an toàn, chính hãng, chất lượng tốt, giá cả cạnh tranh nhất trên thị trường.
                              <ul class="list__address">
                                 <li><i class="fa fa-phone "></i>0975853528</li>
                                 <li><i class="fa fa-envelope "></i>trantuanngoctn97@gmail.com</li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div id="social_block" class="social_block block">
                        <h4 class="title_block">Mạng xã hội</h4>
                        <div class="block_content">
                           <ul class="list-unstyled clearfix">
                              <li class="facebook">
                                 <a target="_blank" href="http://www.facebook.com/" title="AP-MILK-STORE on Facebook" class="btn-tooltip" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                    <span>Facebook</span>
                                 </a>
                              </li>
                              <li class="twitter">
                                 <a target="_blank" href="http://www.twitter.com/" title="AP-MILK-STORE on Twitter" class="btn-tooltip" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                    <span>Twitter</span>
                                 </a>
                              </li>
                              <li class="instagram">
                                 <a target="_blank" href="https://instagram.com/" title="AP-MILK-STORE on Instagram" class="btn-tooltip" data-original-title="Instagram">
                                    <i class="fa fa-instagram"></i>
                                    <span>Instagram</span>
                                 </a>
                              </li>
                              <li class="pinterest">
                                 <a target="_blank" href="" title="AP-MILK-STORE on Pinterest" class="btn-tooltip" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                    <span>Pinterest</span>
                                 </a>
                              </li>
                              <li class="rss">
                                 <a target="_blank" href="" title="AP-MILK-STORE on RSS" class="btn-tooltip" data-original-title="RSS">
                                    <i class="fa fa-rss"></i>
                                    <span>RSS</span>
                                 </a>
                              </li>
                              <li class="youtube">
                                 <a target="_blank" href="https://www.youtube.com/" title="AP-MILK-STORE on Youtube" class="btn-tooltip" data-original-title="Youtube">
                                    <i class="fa fa-youtube"></i>
                                    <span>Youtube</span>
                                 </a>
                              </li>
                              <li class="google-plus">
                                 <a target="_blank" href="https://plus.google.com/" title="AP-MILK-STORE on Google Plus" class="btn-tooltip" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                    <span>Google Plus</span>
                                 </a>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class=" no-padding col-md-9 col-sm-12 col-xs-12 " data-wow-delay="200ms">
                     <div class="footer_widget">
                        <div class="row">
                           <div class="col-md-4 col-sm-12 col-xs-12">

                              @include('website.partials.footer_news')

                           </div>
                           <div class="col-md-4 col-sm-12 col-xs-12">
                              <div id="twitter_block" class="block  inline">
                                 <h4 class="title_block">
                                    <span>Sản phẩm</span>
                                 </h4>
                                 <div class="block_content">
                                    <p>Website giới thiệu sản phẩm và bán hàng sữa.</p>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4 col-sm-12 col-xs-12">
                              <div class="block instagram-block">
                                 <h3 class="title-block"><span></span></h3>
                                 <div class="block-content">
                                    {{-- <div id="instafeed"></div> --}}
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class=" footer_quicklink ">
                        <div class="row">
                           <div class="col-md-4 col-sm-4 col-xs-12">
                              <div class="footer-block block" id="block_links_footer_1">
                                 <h4 class="title_block">Tài khoản</h4>
                                 <div class="block_content">
                                    <ul style="" class="toggle-footer list-group bullet">
                                       @if (Auth::check())
                                       <li class="item">
                                          <a href="{{ route('web.users', Auth::user()->username) }}" title="Your account">Your account</a>
                                       </li>
                                       @endif
                                       <li class="item">
                                          <a href="{{ route('web.checkout') }}" title="Checkout">Checkout</a>
                                       </li>
                                       <li class="item">
                                          <a href="{{ route('web.login') }}" title="Login">Đăng nhập</a>
                                       </li>
                                       <li class="item">
                                          <a href="{{ route('web.register') }}" title="Register">Đăng ký</a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4 col-sm-4 col-xs-12">
                              <div class="footer-block block" id="block_links_footer_2">
                                 <h4 class="title_block">Thông tin</h4>
                                 <div class="block_content">
                                    <ul style="" class="toggle-footer list-group bullet">
                                       <li class="item">
                                          <a href="" title="About Us">Về chúng tôi</a>
                                       </li>
                                       <li class="item">
                                          <a href="{{ route('web.contact') }}" title="Contact Us">Liên hệ</a>
                                       </li>
                                       <li class="item">
                                          <a href="" title="Terms & Conditions">Điều khoản và điều kiện</a>
                                       </li>
                                       <li class="item">
                                          <a href="" title="FAQ">FAQ</a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4 col-sm-4 col-xs-12">
                              <div class="footer-block block" id="block_links_footer_3">
                                 <h4 class="title_block">Quick Links</h4>
                                 <div class="block_content">
                                    <ul style="" class="toggle-footer list-group bullet">
                                       <li class="item">
                                          <a href="{{ route('web.search') }}" title="Search">Search</a>
                                       </li>
                                       <li class="item">
                                          <a href="" title="About Us">About Us</a>
                                       </li>
                                       <li class="item">
                                          <a href="" title="Typo">Typo</a>
                                       </li>
                                       <li class="item">
                                          <a href="{{ route('web.news') }}" title="Blog">Blog</a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div id="powered" class="powered ">
                        <div class="row">
                           <div class="col-md-6 col-sm-12 col-xs-12">
                              <p class="text-center">&copy; Copyright {{ now()->year }} AP-MILK-STORE.</p>
                              <p class="text-center"><a href="#">Powered by decemberr18</a></p>
                           </div>
                           <div class="col-md-6 col-sm-12 col-xs-12">
                              <p class="text-right"><img src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/payment2946.png?14233272639774211042" alt="paymment" class="img-responsive') }}" alt="paymment" class="img-responsive">
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</footer>