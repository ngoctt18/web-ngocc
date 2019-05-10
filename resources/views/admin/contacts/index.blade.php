@extends('admin.layouts.master')

@section('title', 'Quản lý lời nhắn')

@section('content')
@include('admin.components.messages')
<p>
	&emsp; <span class="pull-right ">Tổng số: {{ $contacts->total() }}</span>
</p>
<div class="box box-success">
	<div class="box-header">
		<h3 class="box-title"></h3>
		<form action="" method="GET">
			<div class="row">
				<div class="col-xs-4">
					<label for="name">Tên khách hàng</label>
					<input id="name" name="name" value="{{ old('name', request('name')) }}" type="text" class="form-control input-sm" placeholder="Tên khách hàng">
				</div>
				<div class="col-xs-3">
				</div>
				<div class="col-xs-3">
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
					<th>Tên khách hàng</th>
					<th>Điện thoại</th>
					<th>Email</th>
					<th>Lời nhắn</th>
					<th>Thời gian gửi</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				@if (count($contacts))
				@foreach($contacts as $contact)
				<tr role="row" class="align-middle">
					<td>{{ index_row($contacts, $loop->index) }}</td>
					<td>{{$contact->name}}</td>
					<td>{{$contact->phone}}</td>
					<td>{{$contact->email}}</td>
					<td>{{str_limit($contact->message, 80, '...')}}</td>
					<td>{{$contact->created_at->format('H:i - d/m/Y')}}</td>
					<td>
						<a href="javascript:void(0)" idContact="{{$contact->id}}" class="btn btn-success btn-xs btnShowMessages"><i class="fa fa-eye"></i></a>
						{{-- <a href="{{ route('admin.contacts.destroy', ['id' => $contact->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a> --}}
					</td>
				</tr>
				@endforeach
				@else
				<tr role="row" class="align-middle">
					<td colspan="7" class="text-center">Không có lời nhắn nào.</td>
				</tr>
				@endif
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $contacts->links('admin.paginations.pagination_sm') }}
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
					<h4>Bạn có muốn xóa lời nhắn này?</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
					<button type="submit" class="btn btn-success">Xác nhận</button>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- /.modal-delete -->
<div class="modal fade modalShowMessages" tabindex="-1" role="dialog">
	<div class="modal-dialog " role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="h4">Lời nhắn của khách hàng</h4>
			</div>
			<div class="modal-body">
				<p class="info"></p>
				<p class="messages">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
			</div>
		</div>
	</div>
</div>
@endsection

@section('scripts')
<script type="text/javascript">
	$(document).ready(function() {
		$('.btnShowMessages').unbind('click').click(function(event) {
			event.preventDefault();
			var idContact = $(this).attr('idContact');
			var _token = $('input[name="_token"]').val();

			// console.log('idContact: '+idContact);
			$.ajax({
				url: '{{ route('admin.contact_detail') }}',
				type: 'POST',
				data: {idContact, _token},
				success: function(data){
					// console.log(data);
					$('.modalShowMessages').find('.h4').text('Lời nhắn của khách hàng: '+data.name);
					$('.modalShowMessages').find('.info').html('<b>Điện thoại: </b>'+data.phone+'<b> - Email: </b>'+data.email+'');
					$('.modalShowMessages').find('.messages').text(data.message);
					$('.modalShowMessages').modal('show');
				},
				error: function(data){
					console.log('Ajax khong ve!');
					console.log(data);
				}
			})
			
		});
	});
</script>
@endsection
