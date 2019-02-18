@extends('website.layouts.website')

@section('title', 'Không tìm thấy trang yêu cầu | 404')
@section('styles')
<style type="text/css">

</style>
@endsection
@section('content')
@include('website.partials.breadcrumbs')


<div id="columns" class="container">
    <div class="row">
        <div id="center_column" class="center_column col-sm-12 col-md-12">
            <div class="page-wrap">
                <div class="page-404">
                    <h1>404 Page Not Found</h1>
                    <p>Xin lỗi, trang bạn đang tìm kiếm không tồn tại!. Về <a href="{{ route('web.homepage') }}">Trang chủ</a> để tiếp tục mua sắm.</p>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection


@section('scripts')

@endsection