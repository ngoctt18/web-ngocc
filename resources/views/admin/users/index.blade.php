@extends('admin.layouts.master')

@section('title', 'Quản lý khách hàng')

@section('styles')

@endsection

@section('content')

@include('admin.components.messages')
<p>
	<a href="{{ route('admin.users.create') }}" class="btn btn-primary">Thêm khách hàng</a> &emsp; <span class="pull-right marT15">Tổng số: {{ $users->total() }}</span>
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
				<div class="col-xs-2">
					<label for="phone">Điện thoại</label>
					<input id="phone" name="phone" value="{{ old('phone', request('phone')) }}" type="text" class="form-control input-sm" placeholder="Điện thoại">
				</div>
				<div class="col-xs-2">
					<label for="email">Email</label>
					<input id="email" name="email" value="{{ old('email', request('email')) }}" type="text" class="form-control input-sm" placeholder="Email">
				</div>
				<div class="col-xs-2">
					<label for="status">Trạng thái</label>
					<select id="status" class="form-control input-sm" name="status">
						<option value="">Chọn trạng thái</option>
						<option value="0" {{old('status', request('status')) == '0' ? 'selected' : ''}}>Tạm dừng hoạt động</option>
						<option value="1" {{old('status', request('status')) == '1' ? 'selected' : ''}}>Hoạt động</option>
						<option value="2" {{old('status', request('status')) == '2' ? 'selected' : ''}}>Dừng hoạt động</option>
					</select>
				</div>
				{{-- <div class="col-xs-2">
					<label for="count_buy">Khách hàng mua nhiều</label>
					<select id="count_buy" class="form-control input-sm" name="count_buy">
						<option value="">Chọn trạng thái</option>
						<option value="DESC" {{old('count_buy', request('count_buy')) == 'DESC' ? 'selected' : ''}}>Giảm dần</option>
						<option value="ASC" {{old('count_buy', request('count_buy')) == 'ASC' ? 'selected' : ''}}>Tăng dần</option>
					</select>
				</div> --}}
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
					<th>Khách hàng</th>
					{{-- <th>Username</th> --}}
					<th>Điện thoại</th>
					<th>Email</th>
					<th>Địa chỉ</th>
					<th>Trạng thái</th>
					<th>Tham gia</th>
					<th>Số đơn</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				@if (count($users))
				@foreach($users as $user)
				<tr role="row" class="align-middle">
					<td>{{ index_row($users, $loop->index) }}</td>
					<td>{{$user->name}}</td>
					{{-- <td>{{$user->username}}</td> --}}
					<td>{{$user->phone}}</td>
					<td>{{ str_limit($user->email, 22, '...') }}</td>
					<td>{{ str_limit($user->address, 40, '...') }}</td>
					<td>
						{{-- @if ($user->verified == '0')
						{{"Chưa kích hoạt"}}
						@elseif ($user->verified == '1') --}}
						@if($user->status == '0')
						{{"Tạm dừng hoạt động"}}
						@elseif($user->status == '1')
						{{"Hoạt động"}}
						@elseif($user->status == '2')
						{{"Dừng hoạt động"}}
						@endif
						{{-- @endif --}}
					</td>
					<td>{{$user->created_at->format('d/m/Y')}}</td>
					<td>{{$user->orders->count()}}</td>
					<td>
						<a href="{{ route('admin.users.edit', ['id' => $user->id], false) }}" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
						<a href="{{ route('admin.users.destroy', ['id' => $user->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
				@endforeach
				@else
				<tr role="row" class="align-middle">
					<td colspan="8" class="text-center">Không có khách hàng nào.</td>
				</tr>
				@endif
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $users->links('admin.paginations.pagination_sm') }}
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
					<h4>Bạn có muốn xóa khách hàng này?</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
					<button type="submit" class="btn btn-success">Xác nhận</button>
				</div>
			</form>
		</div>
	</div>
</div>
@endsection

@section('scripts')

@endsection
