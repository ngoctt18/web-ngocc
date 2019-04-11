<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Đổi mật khẩu</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="{{ asset('bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('bower_components/font-awesome/css/font-awesome.min.css') }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('bower_components/Ionicons/css/ionicons.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('dist/css/AdminLTE.min.css') }}">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{ asset('plugins/iCheck/square/blue.css') }}">
  <!-- Google Font -->
  <link rel="stylesheet" href="{{ asset('css/font_admin.css') }}">
  <style type="text/css">
    .red {color: red;}
    span.error { color: #b30e0e; font-weight: 500; margin-top: 1px; }
  </style>
</head>
<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <b>{{ config('app.app_name') }}</b>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
      <p class="login-box-msg">Đổi mật khẩu</p>

      <form action="" method="POST">
        {{ csrf_field() }}
        <div class="form-group has-feedback">
          <label for="">Mật khẩu mới <span class="red">*</span></label>
          <input type="password" name="password" class="form-control" placeholder="Mật khẩu mới">
          <span class="help-block error">{{ $errors->first('password') }}</span>

        </div>
        <div class="form-group has-feedback">
          <label for="">Nhập lại mật khẩu <span class="red">*</span></label>
          <input type="password" name="password_confirmation" class="form-control" placeholder="Nhập lại mật khẩu">
          <span class="help-block error">{{ $errors->first('password_confirmation') }}</span>

        </div>
        <div class="row">
          <div class="col-xs-5">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Đổi mật khẩu</button>
          </div>
        </div>
        <br>
        <p>Quay về trang <a href="{{ route('web.login') }}">Đăng nhập</a></p>
      </form>

    </div>
    <!-- /.login-box-body -->
  </div>
  <!-- /.login-box -->

  <!-- jQuery 3 -->
  <script src="{{ asset('bower_components/jquery/dist/jquery.min.js') }}"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="{{ asset('bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
  <!-- iCheck -->
  <script src="{{ asset('plugins/iCheck/icheck.min.js') }}"></script>
  <script>
    $(function () {
      $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' /* optional */
      });
    });
  </script>
</body>
</html>
