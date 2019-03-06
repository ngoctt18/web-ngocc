<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => 'The :attribute must be accepted.',
    'active_url'           => 'The :attribute is not a valid URL.',
    'after'                => ':attribute phải lớn hơn :date.',
    'after_or_equal'       => ':attribute phải lớn hơn hoặc bằng :date.',
    'alpha'                => 'The :attribute may only contain letters.',
    'alpha_dash'           => 'The :attribute may only contain letters, numbers, and dashes.',
    'alpha_num'            => ':attribute chỉ có thể chứa các chữ cái và số..',
    'array'                => ':attribute phải là mảng.',
    'before'               => ':attribute phải nhỏ hơn :date.',
    'before_or_equal'      => ':attribute phải nhỏ hơn hoặc bằng :date.',
    'between'              => [
        'numeric' => ':attribute nằm trong khoảng :min đến :max.',
        'file'    => ':attribute nằm trong khoảng :min đến :max kilobytes.',
        'string'  => ':attribute nằm trong khoảng :min đến :max ký tự.',
        'array'   => ':attribute nằm trong khoảng :min đến :max giá trị.',
    ],
    'boolean'              => ':attribute chỉ được chọn true hoặc false.',
    'confirmed'            => 'The :attribute confirmation does not match.',
    'date'                 => ':attribute chưa đúng định dạng.',
    'date_format'          => ':attribute phải là định dạng :format.',
    'different'            => ':attribute và :other phải khác nhau.',
    'digits'               => 'The :attribute must be :digits digits.',
    'digits_between'       => 'The :attribute must be between :min and :max digits.',
    'dimensions'           => 'The :attribute has invalid image dimensions.',
    'distinct'             => 'The :attribute field has a duplicate value.',
    'email'                => ':attribute chưa đúng định dạng.',
    'exists'               => ':attribute không tồn tại.',
    'file'                 => ':attribute phải là file.',
    'filled'               => 'The :attribute field must have a value.',
    'image'                => ':attribute phải là ảnh.',
    'in'                   => 'The selected :attribute is invalid.',
    'in_array'             => 'The :attribute field does not exist in :other.',
    'integer'              => 'The :attribute must be an integer.',
    'ip'                   => 'The :attribute must be a valid IP address.',
    'ipv4'                 => 'The :attribute must be a valid IPv4 address.',
    'ipv6'                 => 'The :attribute must be a valid IPv6 address.',
    'json'                 => ':attribute phải là dạng JSON.',
    'max'                  => [
        'numeric' => ':attribute không được lớn hơn :max.',
        'file'    => ':attribute không được lớn hơn :max KB.',
        'string'  => ':attribute không được lớn hơn :max kí tự.',
        'array'   => ':attribute không được lớn hơn :max phần tử.',
    ],
    'mimes'                => ':attribute phải thuộc các kiểu: :values.',
    'mimetypes'            => 'The :attribute must be a file of type: :values.',
    'min'                  => [
        'numeric' => ':attribute phải lớn hơn :min.',
        'file'    => 'The :attribute must be at least :min kilobytes.',
        'string'  => ':attribute phải lớn hơn :min ký tự.',
        'array'   => 'The :attribute must have at least :min items.',
    ],
    'not_in'               => 'The selected :attribute is invalid.',
    'numeric'              => ':attribute phải là số.',
    'present'              => 'The :attribute field must be present.',
    'regex'                => ':attribute không đúng định dạng.',
    'required'             => ':attribute không được để trống.',
    'required_if'          => ':attribute không được để trống.',
    'required_unless'      => 'The :attribute field is required unless :other is in :values.',
    'required_with'        => 'The :attribute field is required when :values is present.',
    'required_with_all'    => 'The :attribute field is required when :values is present.',
    'required_without'     => ':attribute không được để trống.',
    'required_without_all' => 'The :attribute field is required when none of :values are present.',
    'same'                 => ':attribute và :other phải giống nhau.',
    'size'                 => [
        'numeric' => 'The :attribute must be :size.',
        'file'    => 'The :attribute must be :size kilobytes.',
        'string'  => 'The :attribute must be :size characters.',
        'array'   => 'The :attribute must contain :size items.',
    ],
    'string'               => 'The :attribute must be a string.',
    'timezone'             => 'The :attribute must be a valid zone.',
    'unique'               => ':attribute đã tồn tại.',
    'uploaded'             => ':attribute tải lên không thành công.',
    'url'                  => ':attribute không đúng định dạng. http://example.com',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [
        'phone' => 'Số điện thoại',
        'password' => 'Mật khẩu',
        'password_confirm' => 'Mật khẩu xác nhận',
        'fullname' => 'Họ tên',
        'email' => 'Email',
        'clinice_id' => 'Phòng khám',
        'username' => 'Tên tài khoản',
        'time' => 'Thời gian',
        'address' => 'Địa chỉ',
        'service_id' => 'Dịch vụ khám',
        'place_type' => 'Kiểu địa điểm',
        'place_address' => 'Địa điểm',
        'pet' => 'Thú cưng',
        'pets' => 'Danh sách thú cưng',
        'pet_status' => 'Tình trạng thú cưng',
        'date' => 'Ngày',
        'note' => 'Chú thích',
        'pet_species_id' => 'Loài thú',
        'pet_kind' => 'Giống thú',
        'pet_birthday' => 'Ngày sinh của thú',
        'pet_weight' => 'Cân nặng của thú',
        'pet_diseases' => 'Bệnh của thú',
        'address_id' => 'Địa chỉ',
        'schedule_id' => 'Lịch đặt',
        'advice' => 'Dặn dò của bác sĩ',
        'inferable' => 'Kết luận của bác sĩ',
        'diseases' => 'Bệnh',
        'species_id' => 'Loài thú',
        'kind' => 'Giống thú',
        'birthday' => 'Ngày sinh',
        'weight' => 'Cân nặng',
        'diseases' => 'Bệnh',
        'pet_id' => 'Thú cưng',
        'certificate' => 'Chứng chỉ',
        'achieved' => 'Thành tựu',
        'since' => 'Thời gian vào nghề',
        'image' => 'Hình ảnh',
        'images' => 'Hình ảnh',
        'prescripts' => 'Đơn thuốc',
        'status' => 'Trạng thái',
        'medicines' => 'Thuốc',
        'morning' => 'Sáng',
        'affternoon' => 'Trưa',
        'night' => 'Tối',
        'confirm' => 'Xác nhận',
        'time' => 'Thời gian',
        'medicine' => 'Thuốc'
    ],

];
