<section id="slideshow" class="clearfix">
 <div class="slider-container ">
  <ul id="sliderlayer" class="slides clearfix">
   <li data-thumb="../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/slideshow_image_12946.png?14233272639774211042">
    <a href="#" class="slide-link">
     <img class="img-responsive" alt="Delicious" src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/slideshow_image_12946.png?14233272639774211042') }}" />
   </a>
   <div class="slide-caption caption_1">
     <div class="">
      <h3>Delicious</h3>
      <div class="text_first">Vui hè thả ga, nhận quà cực đã</div>
      <p>Tiết kiệm đến 30%.</p>
      <a class="btn btn-slide" href="{{ route('web.latest_product') }}" title="Shop now"><i class='fa fa-share'></i>Mua ngay</a>
    </div>
  </div>
</li>
<li data-thumb="../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/slideshow_image_22946.png?14233272639774211042">
  <a href="#" class="slide-link">
   <img class="img-responsive" alt="True Yougurt" src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/slideshow_image_22946.png?14233272639774211042') }}" />
 </a>
 <div class="slide-caption caption_2">
   <div class="">
    <h3>True Yougurt</h3>
    <div class="text_first">Yougurt đích thực. Quà cực chất</div>
    <p>Giảm giá đến 30%.</p>
    <a class="btn btn-slide" href="{{ route('web.latest_product') }}" title="Shop now"><i class='fa fa-share'></i>Mua ngay</a>
  </div>
</div>
</li>
<li data-thumb="../cdn.shopify.com/s/files/1/0928/4804/t/2/assets/slideshow_image_32946.png?14233272639774211042">
  <a href="#" class="slide-link">
   <img class="img-responsive" alt="True Yogurt" src="{{ asset('cdn.shopify.com/s/files/1/0928/4804/t/2/assets/slideshow_image_32946.png?14233272639774211042') }}" />
 </a>
 <div class="slide-caption caption_3">
   <div class="">
    <h3>True Yogurt</h3>
    <div class="text_first">Ưu đãi mạnh, mua phải nhanh</div>
    <p>Lên đến 50%.</p>
    <a class="btn btn-slide" href="{{ route('web.latest_product') }}" title="Shop now"><i class='fa fa-share'></i>Mua ngay</a>
  </div>
</div>
</li>
</ul>
</div>
<script>
  $(document).ready(function() {
   $('.slider-container').flexslider({
    namespace: "leo-", 
    animation: "slide",
    smoothHeight: true
  });
 });
</script>
</section>
