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
                                            Posted by <strong><a href="{{ route('web.news.author',[$new->author->username??"admin"]) }}">{{$new->author->name??"Admin"}}</a></strong> on <time>{{$new->created_at->format('H:m - F j, Y')}}</time>
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
                                            <a href="{{ route('web.news.view', [$new->id,$new->slug]) }}" title="{{$new->title}}">
                                                <img src="{{$new->ImageNews??asset('../../../../cdn.shopify.com/s/files/1/0928/4804/files/b3_medium693b.jpg?11360329962432831771')}}" title="{{$new->title}}" class="img-responsive replace-2x" alt="{{$new->title}}" />
                                            </a>
                                        </div>
                                        <p>{{ str_limit(strip_tags(html_entity_decode($new->content)), 370, '...') }}</p>
                                        {{-- <p>{{ strip_tags(html_entity_decode($new->content)) }}</p> --}}
                                    </div>
                                    <p><a class="btn btn-readmore" href="{{ route('web.news.view', [$new->id,$new->slug]) }}">Read more &rarr;</a></p>
                                </div>
                                @endforeach
                            </div>
                            {{ $news->links('admin.paginations.pagination_sm') }}
                        </div>
                    </div>
                </div>
                
                <!-- RECENT NEWS in right side -->
                @include('website.news.news_recent')

            </div>
        </div>
    </div>
</section>
@endsection