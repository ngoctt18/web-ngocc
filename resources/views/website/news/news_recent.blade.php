
<div id="right_column" class="column sidebar col-md-4">
   <div class="blog-sidebar" role="complementary">
      <div class="block-sidebar-blog block">
         <h4 class="title_block">Recent News</h4>
         <ul class="list-block list-unstyled block_content">
            @foreach($news_recent as $news)
            <li>
                <a href="{{ route('web.news.view', [$news->id,$news->slug]) }}" title="{{$news->title}}">{{$news->title}}</a>
                <time>
                    {{$news->created_at->format('H:m - F j, Y')}}
                </time>
            </li>
            @endforeach
        </ul>
      </div>
      <div id="categories-blog" class="block-sidebar-blog block">
         <h4 class="title_block">Tags</h4>
         <ul class="list-block list-unstyled block_content">
            @foreach($tags as $tag)
            <li>
                <a href="{{ route('web.news.tagged',[$tag->slug]) }}">
                    <span>{{$tag->name}}</span>
                </a>
                @if(!$loop->last)
                {{", "}}
                @endif 
            </li>
            @endforeach
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