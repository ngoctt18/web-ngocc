@extends('website.layouts.website')

@section('title', 'Tin tức')

@section('content')
@include('website.partials.breadcrumbs')

<section id="columns" class="columns-container">
    <div id="columns" class="container">
        <div class="page-wrap">
            <div class="row">
                <div id="center_column" class="center_column col-md-8">
                    <div id="content">
                        <div id="blog-listing" class="blogs-container">
                            <h1>Tin tức</h1>
                            <div class="inner">
                                @foreach($news as $new)
                                <div class="blog-item clearfix">
                                    <h3><a href="{{ route('web.news.view', [$new->id,$new->slug]) }}" title="{{$new->title}}">{{$new->title}}</a></h3>
                                    <div class="blog-meta clearfix">
                                        <div class="postby">
                                            Posted by <strong><a href="{{ route('web.news.author',[$new->author->username]) }}">{{$new->author->name}}</a></strong> on <time>{{$new->created_at->format('H:m - F j, Y')}}</time>
                                        </div>
                                        <div class="blog-tags">
                                            <span class="icon-tag">Tags:</span>
                                            @foreach($new->tags as $tag)
                                            <a href="{{ route('web.news.tagged',[$tag->slug]) }}">
                                                <span>{{$tag->name}}</span>
                                            </a>
                                            @if(!$loop->last)
                                            {{", "}}
                                            @endif 
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="rte">
                                        <div class="image">
                                            <img src="../../../../cdn.shopify.com/s/files/1/0928/4804/files/b3_medium693b.jpg?11360329962432831771" title="Turpis at eleifend leo mi elit Aenean porta ac sed faucibus" class="img-responsive replace-2x" alt="Turpis at eleifend leo mi elit Aenean porta ac sed faucibus" />
                                        </div>
                                        <p>{!!str_limit($new->content, 350, '...')!!}</p>
                                    </div>
                                    <p><a class="btn btn-readmore" href="{{ route('web.news.view', [$new->id,$new->slug]) }}">Read more &rarr;</a></p>
                                </div>
                                @endforeach
                            </div>
                            {{ $news->links('admin.paginations.pagination_sm') }}
                        </div>
                    </div>
                </div>

                <div id="right_column" class="column sidebar col-md-4">
                    <div class="blog-sidebar" role="complementary">
                        <div class="block-sidebar-blog block">
                            <h4 class="title_block">Recent Articles</h4>
                            <ul class="list-block list-unstyled block_content">
                                @foreach($news_latest as $news)
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
            </div>
        </div>
    </div>
</section>
@endsection