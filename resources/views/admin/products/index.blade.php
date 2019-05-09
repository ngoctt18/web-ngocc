@extends('admin.layouts.master')

@section('title', 'Quản lý sản phẩm')

@section('styles')

@endsection

@section('content')

@include('admin.components.messages')
<p>
	<a href="{{ route('admin.products.create') }}" class="btn btn-primary">Thêm sản phẩm</a> &emsp; <span class="pull-right marT15">Tổng số: {{ $products->total() }}</span>
</p>
<div class="box box-success">
	<div class="box-header">
		<h3 class="box-title"></h3>
		<form action="" method="GET">
			<div class="row">
				<div class="col-xs-4">
					<label for="name">Tên sản phẩm</label>
					<input id="name" name="name" value="{{ old('name', request('name')) }}" type="text" class="form-control input-sm" placeholder="Tên sản phẩm">
				</div>
				<div class="col-xs-2">
					<label for="catagory_id">Danh mục</label>
					<select id="catagory_id" class="form-control input-sm" name="catagory_id">
						<option value="">Chọn danh mục</option>
						@foreach($catagories as $catagory)
						<option value="{{$catagory->id}}" {{old('catagory_id', request('catagory_id')) == $catagory->id ? 'selected' : ''}}>{{$catagory->name}}</option>
						@endforeach
					</select>
				</div>
				<div class="col-xs-2">
					<label for="distribution_id">Nhà phân phối</label>
					<select id="distribution_id" class="form-control input-sm" name="distribution_id">
						<option value="">Chọn nhà phân phối</option>
						@foreach($distributions as $distribute)
						<option value="{{$distribute->id}}" {{old('distribution_id', request('distribution_id')) == $distribute->id ? 'selected' : ''}}>{{$distribute->name}}</option>
						@endforeach
					</select>
				</div>
				<div class="col-xs-2">
					<label for="status">Trạng thái</label>
					<select id="status" class="form-control input-sm" name="status">
						<option value="">Chọn trạng thái</option>
						<option value="0" {{old('status', request('status')) == '0' ? 'selected' : ''}}>Hết hàng</option>
						<option value="1" {{old('status', request('status')) == '1' ? 'selected' : ''}}>Còn hàng</option>
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
					<th>Sản phẩm</th>
					<th>Giá</th>
					<th>Discount</th>
					{{-- <th>Thương hiệu</th> --}}
					<th>Danh mục</th>
					<th>Nhà phân phối</th>
					<th>Trạng thái</th>
					<th>Số lượng</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				@if (count($products))
				@foreach($products as $product)
				<tr role="row" class="align-middle">
					<td>{{ index_row($products, $loop->index) }}</td>
					<td>{{str_limit($product->name, $limit = 70, $end = '...')}}</td>
					<td>{{number_format($product->price,0,",",".")}}</td>
					<td>{{$product->discount}}%</td>
					{{-- <td>{{$product->brand}}</td> --}}
					<td>{{$product->catagory->name}}</td>
					<td>{{$product->distribute->name}}</td>
					<td>
						@if($product->status == '0')
						{{"Hết hàng"}}
						@elseif($product->status == '1')
						{{"Còn hàng"}}
						@endif
					</td>
					<td>{{$product->qty_remain}}</td>
					<td>
						<a href="{{ route('admin.products.edit', ['id' => $product->id], false) }}" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>
						<a href="{{ route('admin.products.destroy', ['id' => $product->id], false) }}" class="btn btn-delete btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
				@endforeach
				@else
				<tr role="row" class="align-middle">
					<td colspan="8" class="text-center">Không có sản phẩm nào.</td>
				</tr>
				@endif
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
	<div class="box-footer clearfix">
		{{ $products->links('admin.paginations.pagination_sm') }}
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
					<h4>Bạn có muốn xóa sản phẩm này?</h4>
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
