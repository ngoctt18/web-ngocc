@extends('admin.layouts.master')

@section('title', 'Xem bài viết')

@section('styles')
<style type="text/css">
.timeline-body img { max-width: 100%; max-height: 100%; }
</style>
@endsection

@section('content')

<ul class="timeline">
	<li>
		<div class="timeline-item">
			<span class="time"><i class="fa fa-clock-o"></i> {{$news->created_at->format('H:i - F j, Y')}}</span>

			<h3 class="timeline-header"><strong>{{$news->title}}</strong></h3>

			<div class="timeline-body">
				<img src="{{ $news->ImageNews }}" style=" max-width: 100%; ">
				<br>
				<p>{!! $news->content !!}</p>
			</div>
			<div class="timeline-footer">
				<a target="_blank" href="{{ route('web.news.view', [$news->id,$news->slug]) }}" class="btn btn-info btn-xs">Xem trên web</a>
			</div>
		</div>
	</li>
</ul>

@endsection
