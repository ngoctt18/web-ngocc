@extends('website.layouts.website')

@section('title', 'Liên hệ')
@section('styles')
<style type="text/css">

</style>
@endsection
@section('content')
@include('website.partials.breadcrumbs')


<div id="columns" class="container">
    <div class="row">
        <section id="center_column" class="col-sm-12 col-md-12">
            <div class="page-wrap">
                <h1 class="page-header bottom-indent">Liên hệ với chúng tôi</h1>
                <div class="page-content">
                    <div class="row">
                        <div class="col-md-9 col-sm-12 col-xs-12">
                            <form method="post" action="{{ route('web.contact') }}" id="contact_form" class="contact-form">
                                @csrf
                                <div class="contact-form-box">
                                    <fieldset>
                                        <h3 class="page-subheading">Gửi lời nhắn</h3>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-4">
                                                <div class="form-group">
                                                    <label for="ContactFormName" class="label--hidden">Họ và tên</label>
                                                    <input class="form-control grey" type="text" id="ContactFormName" name="name" placeholder="Họ và tên" autocapitalize="words" value="" required="">
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 col-md-4">
                                                <div class="form-group">
                                                    <label for="ContactFormEmail" class="label--hidden">Email</label>
                                                    <input class="form-control grey" type="email" id="ContactFormEmail" name="email" placeholder="Email" autocorrect="off" autocapitalize="off" value="" required="">
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 col-md-4">
                                                <div class="form-group">
                                                    <label for="ContactFormPhone" class="label--hidden">Điện thoại</label>
                                                    <input class="form-control grey" type="tel" id="ContactFormPhone" name="phone" placeholder="Điện thoại" pattern="(0)[0-9]{9}" value="" required="">
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label for="ContactFormMessage" class="label--hidden">Lời nhắn</label>
                                                    <textarea class="form-control" rows="8" id="ContactFormMessage" name="message" placeholder="Lời nhắn" required=""></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="submit">
                                            <input type="submit" class="btn btn-outline" value="Gửi">
                                        </div>
                                    </fieldset>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="box-contact-info block">
                                <div class="title_block">
                                    <span>Thông tin liên hệ</span>
                                </div>
                                <div class="block_content">
                                    <div class="coninfo-des">
                                        Chúng tôi muốn nghe ý kiến ​​đóng góp của bạn. Vui lòng sử dụng biểu mẫu để gửi cho chúng tôi tin nhắn hoặc ý tưởng của bạn. Hoặc đơn giản là ghé vào để uống một tách trà tươi và bánh quy.
                                    </div>
                                    <ul>
                                        <li class="address">
                                            <span>Long Hung, Van Giang, Hung Yen, Viet Nam</span>
                                        </li>
                                        <li class="phone">
                                            <span>Phone: 0975853528<br/> Fax: 02216275586</span>
                                        </li>
                                        <li class="email">
                                            <span>trantuanngoctn97@gmail.com</span>
                                        </li>
                                        <li class="website">
                                            <span>milkstore.com</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>


<div class="fancybox-overlay fancybox-overlay-fixed" style="@if(session()->has('success')) {{ session()->get('success') }} @endif width: auto; height: auto;">
    <div class="fancybox-wrap fancybox-desktop fancybox-type-inline fancybox-opened" tabindex="-1" style="opacity: 1;overflow: visible;height: 200px;width: 500px;position: absolute;top: 100px;left: 436px;">
        <div class="fancybox-skin" style="padding: 15px;width: 100%;height: 100%;">
            <div class="fancybox-outer" style="
            width: 100%;
            height: 100%;
            ">
            <div class="fancybox-inner" style="width: 100%;height: 100%;">
                <div id="id-content-html" style="width: 100%;height: 100%;">
                    <h4>Lời nhắn đã đã gửi thành công!</h4>
                    <hr>
                    <br>
                    <center>
                        <a href="{{ route('web.homepage') }}" target="_blank">
                            <button type="button" class="btn btn-primary  ">Trang chủ</button>
                        </a>
                    </center>
                </div>
            </div>
        </div>
        <a title="Close" class="fancybox-item fancybox-close" href="javascript:;"></a>
    </div>
</div>
</div>


@endsection

@section('scripts')

<script type="text/javascript">
    $(document).ready(function() {
        $('.fancybox-close').click(function(event) {
            $(this).closest('.fancybox-overlay').fadeOut();
        });
    });
</script>
@endsection