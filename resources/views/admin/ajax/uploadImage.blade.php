<script type="text/javascript">
	// $(document).ready(function() {
		// Chọn hình ảnh thì upload lên thư mục tạm trên server luôn
		$('.product_details, .product_avatar').bind('change', function(event) {
			event.preventDefault();
			var _self = $(this);
			file_size = this.files[0].size;
			// validate kích thước hình ảnh
			if(file_size>3*1024*1024) {
				alert('Ảnh không được quá 3MB. Hãy chọn ảnh khác');
				reset_form_element($(this));
				$(_self).closest('.upload-image').find('.images').removeAttr('value');
				$(_self).closest('.upload-image').find('.index').removeAttr('value');
				$(_self).closest('.upload-image').find('img').attr('src', 'http://via.placeholder.com/200x200');
				return false;
			} else {
				// Kích thước chuẩn thì thực hiện ajax
				var _token = $('input[name="_token"]').val();
				var image = $(this).prop('files')[0];
				var index = $(this).closest('.index').index();
				// console.log('index: '+index);

				var dataSend = new FormData();
				dataSend.append('_token', _token);
				dataSend.append('image', image);

				$.ajax({
					url: '{{ route('admin.uploadImage') }}',
					type: 'POST',
					dataType: 'json',
					contentType: false,
					processData: false,
					data: dataSend,
					success: function(data){
						console.log('success');
						// console.log('data: '+data);
						$(_self).closest('.upload-image').find('.images').attr('value', data.filename);
						$(_self).closest('.upload-image').find('.index').attr('value', index);
					},
					error: function(data){
						$(_self).closest('.upload-image').find('.images').removeAttr('value');
						$(_self).closest('.upload-image').find('.index').removeAttr('value');
						$(_self).closest('.upload-image').find('img').attr('src', 'http://via.placeholder.com/200x200');
						alert('Tải ảnh lên không thành công. Hãy chọn ảnh khác.');
					}
				});
			}
		});
		// Reset ô input type="file" khi ảnh lớn quá
		function reset_form_element(e) {
			e.wrap('<form>').parent('form').trigger('reset');
			e.unwrap();
		}
	// });
</script>