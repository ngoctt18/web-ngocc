@extends('admin.layouts.master')

@section('title', 'Tạo bài viết')

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
	<form role="form" method="POST" action="{{ route('writer.news.store', [], false) }}" enctype="multipart/form-data">
		<div class="box-body">
			{{ csrf_field() }}
			@foreach ($errors->all() as $error)
			<small class="text-danger">{{ $error }}</small> <br>
			@endforeach

			<div class="form-group">
				<label for="title">Tiêu đề bài viết</label>
				<input type="text" class="form-control" id="title" placeholder="Tiêu đề bài viết" name="title" value="{{old('title')}}">
				<small class="text-danger">{{ $errors->first('title') }}</small>
			</div>
			<div class="form-group">
				<label for="news_image">Ảnh hiển thị</label>
				<div class="upload-image">
					<img src="http://via.placeholder.com/200x200" alt="">
					<input name="news_image" id="news_image" type="file" accept="image/*" >
				</div>
				<small class="text-danger">{{ $errors->first('news_image') }}</small>
			</div>
			<div class="form-group">
				<label for="">Tags</label> <br>
				@foreach($tags as $key => $tag)
				<input type="checkbox" @if(is_array(old('new_tags')) && in_array($key+1, old('new_tags'))) checked @endif class="flat-red" name="new_tags[]" value="{{$tag->id}}" />
				<label>{{$tag->name}}</label> &emsp;
				@endforeach
				<br>
				<small class="text-danger">{{ $errors->first('new_tags') }}</small>
			</div>
			<div class="form-group">
				<label for="content">Nội dung bài viết</label>
				<textarea class="form-control" rows="4" id="content" placeholder="Giới thiệu sản phẩm" name="content" >{{old('content')}}</textarea>
				<small class="text-danger">{{ $errors->first('content') }}</small>
			</div>
		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<button type="submit" class="btn btn-info">Tạo tin tức</button>
			&emsp;
			<a href="{{ route('writer.news.index') }}" class="btn btn-primary">Trở về</a>
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