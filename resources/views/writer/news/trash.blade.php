@extends('admin.layouts.master')

@section('title', 'Thùng rác')

@section('styles')
<style type="text/css">
.marB5 { margin-bottom: 5px; }
</style>
@endsection

@section('content')

@include('admin.components.messages')
<p>
	&emsp; <span class="pull-right">Tổng số: {{ $news->total() }}</span>
</p>
<div class="box">
	<div class="box-header">
		<h3 class="box-title"></h3>
		<form action="" method="GET">
			<div class="row">
				<div class="col-xs-4">
					<label for="title">Tiêu đề tin tức</label>
					<input id="title" name="title" value="{{ old('title', request('title')) }}" type="text" class="form-control input-sm" placeholder="Tiêu đề tin tức">
				</div>
				<div class="col-xs-3">
					<label for="tag_id">Thẻ tag</label>
					<select id="tag_id" class="form-control input-sm" name="tag_id">
						<option value="">Chọn thẻ tags</option>
						@foreach($tags as $tag)
						<option value="{{$tag->id}}" {{ old('tag_id', request('tag_id')) == $tag->id ? 'selected' : '' }}>{{$tag->name}}</option>
						@endforeach
					</select>
				</div>
				<div class="col-xs-3">
					<label for="status">Trạng thái</label>
					<select id="status" class="form-control input-sm" name="status">
						<option value="">Chọn trạng thái</option>
						<option value="1" {{ old('status', request('status')) == '1' ? 'selected' : '' }}>Hiển thị</option>
						<option value="0" {{ old('status', request('status')) == '0' ? 'selected' : '' }}>Ẩn</option>
					</select>
				</div>
				<div class="col-xs-2">
					<label for="">&nbsp;</label>
					<button type="submit" class="btn btn-block btn-info btn-sm">Tìm kiếm</button>
				</div>
			</div>
		</form>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<table id="example1" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>Tiêu đề</th>
					<th>Nội dung</th>
					{{-- <th>Người đăng</th> --}}
					<th>Tags</th>
					<th>View</th>
					<th>Trạng thái</th>
					<th>Thời gian</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				@if (count($news))
				@foreach($news as $item)
				<tr role="row" class="align-middle">
					<td>{{ index_row($news, $loop->index) }}</td>
					<td>{{ str_limit($item->title, 70, '...') }}</td>
					<td>{{ str_limit(strip_tags(html_entity_decode($item->content)), 100, '...') }}</td>
					{{-- <td>{{ $item->author->username ?? 'Admin' }}</td> --}}
					<td>
						@foreach ($item->tags as $tag)
						{{$tag->name}}
						@if(!$loop->last)
						{{", "}}
						@endif 
						@endforeach
					</td>
					<td>{{$item->count_views}}</td>
					<td>
						@if($item->status == '0')
						{{"Ẩn"}}
						@elseif($item->status == '1')
						{{"Hiển thị"}}
						@endif
					</td>
					<td>{{$item->created_at->format('d/m/Y')}}</td>
					<td>
						{{-- <a href="{{ route('writer.news.show', ['id' => $item->id], false) }}" class="btn btn-success btn-xs marB5" title="Xem chi tiết" target="_blank"><i class="fa fa-eye"></i></a> --}}
						<a href="{{ route('writer.news.restore', ['id' => $item->id], false) }}" class="btn btn-success btn-xs marB5 btnRestore" title="Khôi phục tin tức"><i class="fa fa-recycle"></i></a>
						<a href="{{ route('writer.news.forcedelete', ['id' => $item->id], false) }}" class="btn btn-delete btn-danger btn-xs marB5" style=" padding: 1px 6px; " title="Xóa tin tức"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
				@endforeach
				@else
				<tr role="row" class="align-middle">
					<td colspan="9" class="text-center">Không có bài viết nào.</td>
				</tr>
				@endif
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $news->links('admin.paginations.pagination_sm') }}
	</div>
	<!-- box-footer -->
</div>
<!-- /.box -->

<!-- /.modal-delete -->
<div class="modal fade modal-delete" tabindex="-1" role="dialog">
	<div class="modal-dialog modal400" role="document">
		<div class="modal-content">
			<form method="POST">
				<div class="modal-body">
					{{ csrf_field() }} {{ method_field('DELETE') }}
					<h4>Bạn có muốn xóa bài viết này vĩnh viễn?</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
					<button type="submit" class="btn btn-success">Xác nhận</button>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- /.modal-restore -->
<div class="modal fade modal-restore" id="modal-restore" tabindex="-1" role="dialog">
	<div class="modal-dialog modal400" role="document">
		<div class="modal-content">
			<form method="GET" action="">
				<div class="modal-body">
					<h4>Bạn có muốn khôi phục bài viết này?</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
					<button type="submit" class="btn btn-success">Khôi phục</button>
				</div>
			</form>
		</div>
	</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript">
	$(document).ready(function() {
		$('a.btnRestore').click(function(e){
			e.preventDefault();
			var actionRestore = $(this).attr('href');
			console.log(actionRestore);
			$('.modal-restore').find('form').attr('action', actionRestore);
			$('.modal-restore').modal('show');
		});
	});
</script>
@endsection
