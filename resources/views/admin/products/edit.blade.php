@extends('admin.layouts.master')

@section('title', 'Sửa sản phẩm')

@section('content')

@include('admin.components.messages')

<div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title"></h3>
	</div>
	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" method="POST" action="{{ route('admin.products.update', ['id' => $product->id], false) }}" enctype="multipart/form-data">
		<div class="box-body">
			<div class="col-md-6">
				{{ csrf_field() }} {{ method_field('PUT') }}
				<div class="form-group">
					<label for="name">Tên sản phẩm</label>
					<input type="text" class="form-control" id="name" placeholder="Tên sản phẩm" name="name" value="{{old('name',$product->name)}}">
					<small class="text-danger">{{ $errors->first('name') }}</small>
				</div>
				<div class="form-group">
					<label for="catagory_id">Danh mục sản phẩm</label>
					<select class="form-control" style="width: 40%;" name="catagory_id">
						<option value="">Chọn Danh mục sản phẩm</option>
						@foreach($catagories as $catagory)
						<option value="{{$catagory->id}}" {{old('catagory_id',$product->catagory_id) == $catagory->id ? 'selected' : ''}}>{{$catagory->name}}</option>
						@endforeach
					</select>
					<small class="text-danger">{{ $errors->first('catagory_id') }}</small>
				</div>
				<div class="form-group">
					<label for="product_avatar">Ảnh đại diện</label>
					<div class="upload-image">
						<img src="{{$product->ThumbProduct}}" alt="">
						<input class="product_avatar" type="file" accept="image/*" >
						<input type="hidden" name="product_avatar" class="images" value="" />
					</div>
					<label id="product_avatar-error" class="error" for="product_avatar"></label>
					<small class="text-danger">{{ $errors->first('product_avatar') }}</small>
				</div>
				<div class="form-group">
					<label for="price">Giá</label>
					<input type="number" class="form-control" id="price" placeholder="Giá" name="price" value="{{old('price',$product->price)}}" min="0">
					<small class="text-danger">{{ $errors->first('price') }}</small>
				</div>
				<div class="form-group">
					<label for="discount">Giảm giá</label>
					<input type="number" class="form-control" id="discount" placeholder="Giảm giá" name="discount" value="{{old('discount',$product->discount)}}" min="0">
					<small class="text-danger">{{ $errors->first('discount') }}</small>
				</div>
				<div class="form-group">
					<label for="brand">Thương hiệu</label>
					<input type="text" class="form-control" id="brand" placeholder="Thương hiệu" name="brand" value="{{old('brand',$product->brand)}}">
					<small class="text-danger">{{ $errors->first('brand') }}</small>
				</div>
				<div class="form-group">
					<label for="distribution_id">Nhà phân phối</label>
					<select class="form-control" style="width: 40%;" name="distribution_id">
						<option value="">Chọn Nhà phân phối</option>
						@foreach($distributions as $distribute)
						<option value="{{$distribute->id}}" {{old('distribution_id',$product->distribution_id) == $distribute->id ? 'selected' : ''}}>{{$distribute->name}}</option>
						@endforeach
					</select>
					<small class="text-danger">{{ $errors->first('distribution_id') }}</small>
				</div>
				<div class="form-group">
					<label for="description">Mô tả ngắn</label>
					<textarea class="form-control" rows="4" id="description" placeholder="Mô tả ngắn" name="description" >{{old('description',$product->description)}}</textarea>
					<small class="text-danger">{{ $errors->first('description') }}</small>
				</div>
				<div class="form-group">
					<label for="intro">Giới thiệu sản phẩm</label>
					<textarea class="form-control" rows="4" id="intro" placeholder="Giới thiệu sản phẩm" name="intro" >{{old('intro',$product->intro)}}</textarea>
					<small class="text-danger">{{ $errors->first('intro') }}</small>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="status">Trạng thái</label>
							<select class="form-control" name="status" id="status">
								<option value="">Chọn trạng thái</option>
								<option value="1" {{old('status',$product->status) == '1' ? 'selected' : ''}}>Còn hàng</option>
								<option value="0" {{old('status',$product->status) == '0' ? 'selected' : ''}}>Hết hàng</option>
							</select>
							<small class="text-danger">{{ $errors->first('status') }}</small>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="qty_remain">Số lượng hàng</label>
							<input type="number" class="form-control" id="qty_remain" placeholder="Số lượng hàng" name="qty_remain" value="{{old('qty_remain', $product->qty_remain)}}" min="1" required="">
							<small class="text-danger">{{ $errors->first('qty_remain') }}</small>
						</div>
					</div>
				</div>
			</div>
			<!-- col-md-6 -->
			<div class="col-md-6">
				@for($i=0; $i<6; $i++)
				<div class="col-md-6 index">
					<div class="form-group">
						<label>Ảnh chi tiết sản phẩm số {{$i+1}}</label>
						<div class="upload-image">
							<img src="{{$product->ThumbProductDetails[$i]??''}}" alt="">
							<input class="product_details" type="file" accept="image/*" >
							<input type="hidden" name="product_details[]" class="images" value="" />
							<input name="index[]" type="hidden" class="index">
						</div>
						<label id="product_details-error" class="error" for="product_details"></label>
						<small class="text-danger">{{ $errors->first('product_details') }}</small>
					</div>
				</div>
				@endfor
			</div>
			<!-- col-md-6 -->
		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<div class="col-md-7">
				<button type="submit" class="btn btn-info">Cập nhật</button>
				&emsp;
				<a href="{{ route('admin.products.index') }}" class="btn btn-primary">Hủy</a>
			</div>
		</div>
	</form>
</div>
<!-- /.box -->

@endsection

@section('scripts')
<!-- CK Editor -->
<script src="{{ asset('bower_components/ckeditor/ckeditor.js') }}"></script>
<script type="text/javascript">
	$(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('description')
    CKEDITOR.replace('intro')
})
</script>
@include('admin.ajax.uploadImage')
@endsection