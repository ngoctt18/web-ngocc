<div class="widget-banner block">
   <div class="block_content">
      <div class="image-box">
         <div class="img-banner effect">
            <a href="collections/all.html">
               <img src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/sidebar_bannerone2946.png?14233272639774211042') }}" alt="Adv Banner" class="img-responsive" />
            </a>
         </div>
      </div>
   </div>
</div>
<div id="newsletter_block" class="block inline">
   <h4 class="title_block">
      Đăng ký nhận tin tức
   </h4>
   <div class="block_content">
      <div class="des_newsletter">
         Đăng ký nhận bản tin của chúng tôi để cập nhật độc quyền về các khuyến mãi, sản phẩm mới và hơn thế nữa.
      </div>
      <form class="form_newsletter" action="{{ route('web.sign_up_email') }}" method="POST" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank">
         @csrf
         <input type="email" value="" placeholder="Email ..." name="email" id="mail" class="newsletter-input form-control" aria-label="Email ..." >
         <button id="subscribe" class="button_mini btn" type="submit">
            <span>Đăng ký nhận tin tức →</span>
         </button>
      </form>
      <span style=" color: #b50404; ">{{$errors->first('email')}}</span>
   </div>
</div>