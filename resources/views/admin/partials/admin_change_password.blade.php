<script type="text/javascript">
	$(document).ready(function() {
		$('#formChangePassword').validate({
			rules: {
				password: {
					required: true,
					minlength: 6,
				},
				new_password: {
					required: true,
					minlength: 6,
				},
				re_password: {
					required: true,
					minlength: 6,
					equalTo: "#new_password",
				},
			},
			messages: {
				password: {
					required: "Mật khẩu không được để trống.",
					minlength: "Mật khẩu lớn hơn 6 ký tự.",
				},
				new_password: {
					required: "Mật khẩu không được để trống.",
					minlength: "Mật khẩu lớn hơn 6 ký tự.",
				},
				re_password: {
					required: "Xác nhận mật khẩu không được để trống.",
					minlength: "Xác nhận mật khẩu lớn hơn 6 ký tự.",
					equalTo: "Xác nhận mật khẩu không khớp."
				},
			}
		});

		$("#btnChangePassword").unbind().bind('click',function(e){
			e.preventDefault();
			if ($("#formChangePassword").valid()) {
				var _self = $(this);
				var password = $(this).closest('#formChangePassword').find('input[name="password"]').val();
				var _token = $(this).closest('#formChangePassword').find('input[name="_token"]').val();

				$.ajax({
					url: '{{ route(get_guard().".check_password") }}',
					method: 'POST',
					cache: false,
					data: {_token: _token, password: password},
					success: function(data){
						// console.log('FALSE');
						if (data === "FALSE") {
							$(_self).closest('#formChangePassword').find('small.err_password').text('* Mật khẩu không đúng. Hãy kiểm tra lại.');
						} else if (data === "TRUE") {
							$(_self).closest('#formChangePassword').find('small.err_password').text('');
                        	$('#formChangePassword').submit(); // Thực hiện submit trong ajax
                        	return false;
                        }
                    },
                    error: function(data){
                    	$(_self).closest('#formChangePassword').find('small.err_password').text('Đã xảy ra lỗi gì đó.');
                    	console.log('Ajax KHông phản hồi.');
                    }
                });
				
			}
		});
	});
</script>