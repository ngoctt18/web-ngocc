<footer class="main-footer">
	<div class="pull-right hidden-xs">
		<b>Version</b> 2.4.0
	</div>
	<strong>Copyright &copy; {{ date('Y') }} <a href="#">decemberr18</a>.</strong> All rights
	reserved.
</footer>

<!-- /.box -->
<div class="modal fade" tabindex="-1" role="dialog" id="modal-changePassword">
	<div class="modal-dialog" role="document" style="width: 37%;">
		<div class="modal-content">
			<form action="{{ route(get_guard().'.change_password') }}" method="POST" name="formChangePassword" id="formChangePassword">
				<div class="modal-header">
					{{ csrf_field() }}
					{{-- {{ method_field('PUT') }} --}}
					<h4 class="modal-title">Thay đổi mật khẩu</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<div class="row">
							<div class="col-xs-3 col-md-3 col-md-offset-1">
								<label>Mật khẩu cũ</label>
							</div>
							<div class="col-xs-7 col-md-7">
								<input name="password" type="password" class="form-control" value="">
								<small class="text-danger err_password"></small>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-xs-3 col-md-3 col-md-offset-1">
								<label>Mật khẩu mới</label>
							</div>
							<div class="col-xs-7 col-md-7">
								<input name="new_password" type="password" id="new_password" class="form-control" value="">
								<small class="text-danger err_new_password"></small>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-xs-3 col-md-3 col-md-offset-1">
								<label>Nhập lại</label>
							</div>
							<div class="col-xs-7 col-md-7">
								<input name="re_password" type="password" class="form-control" value="">
								<small class="text-danger err_re_password"></small>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-success" id="btnChangePassword">Thay đổi</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
				</div>
			</form>
		</div>
	</div>
</div>