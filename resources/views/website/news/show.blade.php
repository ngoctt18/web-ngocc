@extends('website.layouts.website')
@section('title', $breadcrumb)
@section('content')
@include('website.partials.breadcrumbs')
<section id="columns" class="columns-container">
   <div id="columns" class="container">
      <div class="page-wrap">
         <div class="row">
            <div id="center_column" class="center_column col-md-8">
               <article id="blogpage" class="blog-detail blog-container" itemscope itemtype="http://schema.org/Article">
                  <header class="section-header">
                     <h1>{{$news->title}}</h1>
                     <div class="blog-meta clearfix">
                        <div class="postby">
                           Posted by <strong>{{$news->author->name}}</strong> on {{$news->created_at->format('H:m - j F, Y')}}
                        </div>
                        <div class="blog-tags">
                           <span class="icon-tag">Tags:</span>
                            @foreach($news->tags as $tag)
                            <a href="{{ route('web.news.tagged',[$tag->slug]) }}">
                                <span>{{$tag->name}}</span>
                            </a>
                            @if(!$loop->last)
                            {{", "}}
                            @endif 
                            @endforeach
                        </div>
                     </div>
                  </header>
                  <div class="blog-content">
                     <div class="rte" itemprop="articleBody">
                        <div class="blog-description">
                           <p><img src="{{ asset('../../../cdn.shopify.com/s/files/1/0928/4804/files/b3_1024x1024693b.jpg?11360329962432831771') }}"></p>
                           <p>{{$news->title}}</p>
                        </div>
                        <div class="blog-content">
                           <div class="blog-content clearfix">
                              <div class="content-wrap clearfix">
                                 <div class="itemFullText">
                                    {{$news->content}}
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="blog-social clearfix">
                        <div class="socialsharing_product no-print">
                            <ul class="social-sharing list-unstyled">
                                <li>
                                    <a class="btn btn-twitter" target="_blank" href="https://twitter.com/intent/tweet?text={{$news->title}}&amp;url={{ route('web.news.view',['id'=>$news->id,'name'=>$news->slug]) }}&amp;">
                                        <i class="fa fa-twitter"></i> Tweet
                                    </a>
                                </li>
                                <li>
                                    <a class="btn btn-facebook" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(route('web.news.view',['id'=>$news->id,'name'=>$news->slug])) }}&display=popup">
                                        <i class="fa fa-facebook"></i> facebook
                                    </a>
                                </li>
                                <li>
                                    <a class="btn btn-google-plus" target="_blank" href="https://plus.google.com/share?url={{ route('web.news.view',['id'=>$news->id,'name'=>$news->slug]) }}">
                                        <i class="fa fa-google-plus"></i> Google+
                                    </a>
                                </li>
                                <li>
                                    <a class="btn btn-pinterest" target="_blank" href="../../pinterest.com/pin/create/button/indexdfa2.html?url={{ route('web.news.view',['id'=>$news->id,'name'=>$news->slug]) }}&amp;description={{$news->title}}&amp;media={{$news->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}">
                                        <i class="fa fa-pinterest-p"></i> Pinterest
                                    </a>
                                </li>
                            </ul>
                        </div>
                     </div>
                     <div class="blog-tags-bottom">
                        <span class="icon-tag">Tags:</span>
                        @foreach($news->tags as $tag)
                        <a href="{{ route('web.news.tagged',[$tag->slug]) }}">
                            <span>{{$tag->name}}</span>
                        </a>
                        @if(!$loop->last)
                        {{", "}}
                        @endif 
                        @endforeach
                     </div>
                     <hr>
                     <p class="btn-prenext clearfix">
                        <span class="pull-left"><i class="fa fa-angle-double-left"></i> <a href="41609924-nullam-ullamcorper-nisl-quis-ornare-molestie.html" title="">Older Post</a></span>
                        <span class="pull-right">
                        <a href="41609924-nullam-ullamcorper-nisl-quis-ornare-molestie.html" title="">Newer Post</a> <i class="fa fa-angle-double-right"></i>
                        </span>
                     </p>
                     <div class="extra-blogs row">
                        <div class="col-lg-6 col-md-6 col-xs-12">
                           <h4>In Same Category</h4>
                           <ul>
                              <li>
                                 <a href="41609924-nullam-ullamcorper-nisl-quis-ornare-molestie.html" title="">Nullam ullamcorper nisl quis ornare molestie</a>
                              </li>
                              <li>
                                 <a href="41609796-turpis-at-eleifend-leo-mi-elit-aenean-porta-ac-sed-faucibus.html" title="">Turpis at eleifend leo mi elit Aenean porta ac sed faucibus</a>
                              </li>
                              <li>
                                 <a href="41609412-morbi-condimentum-molestie-nam-enim-odio-sodales.html" title="">Morbi condimentum molestie Nam enim odio sodales</a>
                              </li>
                              <li>
                                 <a href="41609092-urna-pretium-elit-mauris-cursus-curabitur-at-elit-vestibulum.html" title="">Urna pretium elit mauris cursus Curabitur at elit Vestibulum</a>
                              </li>
                              <li>
                                 <a href="36737028-first-post.html" title="">First Post</a>
                              </li>
                           </ul>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12">
                           <h4>Related by Tags</h4>
                           <ul>
                              <li>
                                 <a href="41609796-turpis-at-eleifend-leo-mi-elit-aenean-porta-ac-sed-faucibus.html" title="">Turpis at eleifend leo mi elit Aenean porta ac sed faucibus</a>
                              </li>
                              <li>
                                 <a href="41609412-morbi-condimentum-molestie-nam-enim-odio-sodales.html" title="">Morbi condimentum molestie Nam enim odio sodales</a>
                              </li>
                              <li>
                                 <a href="41609092-urna-pretium-elit-mauris-cursus-curabitur-at-elit-vestibulum.html" title="">Urna pretium elit mauris cursus Curabitur at elit Vestibulum</a>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </article>
            </div>

            <div id="right_column" class="column sidebar col-md-4">
               <div class="blog-sidebar" role="complementary">
                  <div class="block-sidebar-blog block">
                     <h4 class="title_block">Recent Articles</h4>
                     <ul class="list-block list-unstyled block_content">
                        <li>
                           <a href="../41609924-nullam-ullamcorper-nisl-quis-ornare-molestie.html">Nullam ullamcorper nisl quis ornare molestie</a>
                           <time datetime="2015-08-17">August 17, 2015</time>
                        </li>
                        <li>
                           <a href="../41609796-turpis-at-eleifend-leo-mi-elit-aenean-porta-ac-sed-faucibus.html">Turpis at eleifend leo mi elit Aenean porta ac sed faucibus</a>
                           <time datetime="2015-08-17">August 17, 2015</time>
                        </li>
                        <li>
                           <a href="../41609412-morbi-condimentum-molestie-nam-enim-odio-sodales.html">Morbi condimentum molestie Nam enim odio sodales</a>
                           <time datetime="2015-08-17">August 17, 2015</time>
                        </li>
                        <li>
                           <a href="../41609092-urna-pretium-elit-mauris-cursus-curabitur-at-elit-vestibulum.html">Urna pretium elit mauris cursus Curabitur at elit Vestibulum</a>
                           <time datetime="2015-08-17">August 17, 2015</time>
                        </li>
                        <li>
                           <a href="../36737028-first-post.html">First Post</a>
                           <time datetime="2015-07-19">July 19, 2015</time>
                        </li>
                     </ul>
                  </div>
                  <div id="categories-blog" class="block-sidebar-blog block">
                     <h4 class="title_block">Tags</h4>
                     <ul class="list-block list-unstyled block_content">
                        <li>Milk</li>
                        <li><a href="milk-store.html" title="Show articles tagged Milk store">Milk store</a></li>
                     </ul>
                  </div>
                  <div id="blogsidebar-html" class="block-sidebar-blog block">
                     <h4 class="title_block">Sample Text Box</h4>
                     <div class="block_content">
                        <div class="html_des">
                           Create a page in your admin panel with a little bit of content. Then assign that page to the Text Widget section in the Theme Settings of your admin.
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
@endsection