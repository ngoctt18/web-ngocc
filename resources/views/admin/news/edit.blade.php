@extends('admin.layouts.master')

@section('title', 'Sửa bài viết')

@section('styles')
<link rel="stylesheet" href="{{ asset('plugins/iCheck/all.css') }}">
@endsection

@section('content')
@include('admin.components.messages')
<div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" method="POST" action="{{ route('admin.news.update', [$news->id], false) }}" enctype="multipart/form-data">
		<div class="box-body">
			{{ csrf_field() }} {{ method_field('PUT') }}
			<div class="form-group">
				<label for="title">Tiêu đề bài viết</label>
				<input type="text" class="form-control" id="title" placeholder="Tiêu đề bài viết" name="title" value="{{old('title', $news->title)}}">
				<small class="text-danger">{{ $errors->first('title') }}</small>
			</div>
			<div class="form-group">
				<label for="news_image">Ảnh hiển thị</label>
				<div class="upload-image">
					<img src="{{ $news->ImageNews }}" alt="">
					<input name="news_image" id="news_image" type="file" accept="image/*" >
				</div>
				<small class="text-danger">{{ $errors->first('news_image') }}</small>
			</div>
			<div class="form-group">
				<label for="">Tags</label> <br>
				@foreach($tags as $tag)
				<input type="checkbox" @foreach ($news->tags as $new_tag) {{ $tag->id == $new_tag->id ? 'checked' : '' }} @endforeach class="flat-red" name="new_tags[]" value="{{$tag->id}}" />
				<label>{{$tag->name}}</label> &emsp;
				@endforeach
				<br>
				<small class="text-danger">{{ $errors->first('new_tags') }}</small>
			</div>
			<div class="form-group">
				<label for="content">Nội dung bài viết</label>
				<textarea class="form-control" rows="4" id="content" placeholder="Giới thiệu sản phẩm" name="content" >{{old('content', $news->content)}}</textarea>
				<small class="text-danger">{{ $errors->first('content') }}</small>
			</div>
			<div class="form-group">
				<label for="status">Trạng thái</label>
				<select class="form-control" style="width: 20%;" name="status" id="status">
					<option value="">Chọn trạng thái</option>
					<option value="1" {{old('status', $news->status) == '1' ? 'selected' : ''}}>Hiển thị</option>
					<option value="0" {{old('status', $news->status) == '0' ? 'selected' : ''}}>Ẩn</option>
				</select>
				<small class="text-danger">{{ $errors->first('status') }}</small>
			</div>
		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<button type="submit" class="btn btn-info">Sửa tin tức</button>
			&emsp;
			<a href="{{ route('web.news.view', [$news->id,$news->slug]) }}" class="btn btn-success" target="_blank">Xem trên web</a>
			&emsp;
			<a href="{{ route('admin.news.index') }}" class="btn btn-primary">Trở về</a>
		</div>
	</form>
</div>
<!-- /.box -->

@endsection

@section('scripts')
<!-- CK Editor -->
<script src="{{ asset('bower_components/ckeditor/ckeditor.js') }}"></script>
<script src="{{ asset('plugins/iCheck/icheck.min.js') }}"></script>
<script type="text/javascript">
	$(function () {
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
        	checkboxClass: 'icheckbox_flat-green',
        	radioClass   : 'iradio_flat-green'
        })
        CKEDITOR.replace('content')
    })

</script>
@endsection