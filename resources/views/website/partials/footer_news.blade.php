
<article id="apolloblogs" class="icenter home_blogs block">
   <h3 class="title_block"><span>Bài viết phổ biến</span></h3>
   <div class="block_content">
      <div class="carousel slide" id="blogs">
         <div class="carousel-inner">

            <div class="item active">
               <div class="row">
                  @foreach($news_popular as $key => $news)
                  <?php if($key == 3) break; ?>
                  <div class="blog-item item col-md-12 col-xs-12 col-sp-12">
                     <div class="media-body clearfix">
                        <div class="image">
                           <img src="{{ $news->ThumbNews??asset('cdn.shopify.com/s/files/1/0928/4804/files/b1_medium693b.jpg?11360329962432831771') }}" title="{{ $news->title }}" class="img-responsive replace-2x" alt="{{ $news->title }}" />
                        </div>
                        <div class="blog-meta">
                        </div>
                        <h4><a href="{{ route('web.news.view', [$news->id,$news->slug]) }}" title="{{ $news->title }}">{{ str_limit($news->title, 30, '...') }}</a></h4>
                        <div class="blog-shortinfo">
                           <p>{{ str_limit(strip_tags(html_entity_decode($news->content)), 50, '...') }}</p>
                        </div>
                     </div>
                  </div>
                  @endforeach
               </div>
            </div>
            
         </div>
      </div>
   </div>
</article>