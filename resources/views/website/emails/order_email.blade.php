<!DOCTYPE html>
<html>
<head>
	<title>Hoá đơn bán hàng - Milk Store</title>
</head>

<body>
	<div class="wrapper" style="margin: 0 auto; font-family: tahoma;">

		<p>Chào quý khách,</p>
		<p>Milk Store gửi đến quý khách hóa đơn điện tử cho đơn hàng #DH00{{$order->id}}</p>
		<h4 style=" color: #02acea; ">THÔNG TIN ĐƠN HÀNG #DH00{{$order->id}} (NGÀY MUA: {{$order->input_date->format('H:i d/m/Y')}})</h4>
		<table>
			<tr>
				<th style="width: 35%; text-align: left;">Tên khách hàng:</th>
				<td>{{$order->name}}</td>
			</tr>
			<tr>
				<th style="width: 35%; text-align: left;">Điện thoại:</th>
				<td>{{$order->phone}}</td>
			</tr>
			<tr>
				<th style="width: 35%; text-align: left;">Email:</th>
				<td>{{$order->email}}</td>
			</tr>
			<tr>
				<th style="width: 35%; text-align: left;">Địa chỉ:</th>
				<td>{{$order->address}}</td>
			</tr>
		</table>
		<h4 style=" color: #02acea; ">CHI TIẾT ĐƠN HÀNG</h4>
		<table border="1" class="table_detail" style="border-collapse: collapse;">
			<thead>
				<tr>
					<th style="padding: 10px 9px; background: rgb(2,172,234);">#</th>
					<th style="padding: 10px 9px; background: rgb(2,172,234);">SẢN PHẨM</th>
					<th style="padding: 10px 9px; background: rgb(2,172,234);">SỐ LƯỢNG</th>
					<th style="padding: 10px 9px; background: rgb(2,172,234);">ĐƠN GIÁ</th>
					<th style="padding: 10px 9px; background: rgb(2,172,234);">GIẢM GIÁ</th>
					<th style="padding: 10px 9px; background: rgb(2,172,234);">TẠM TÍNH</th>
				</tr>
			</thead>
			<tbody>
				@foreach($order->orderDetails as $key => $item)
				<tr role="row" class="align-middle">
					<td style="padding: 10px 9px;">{{$key+1}}</td>
					<td style="padding: 10px 9px;">{{$item->product->name}}</td>
					<td style="padding: 10px 9px;">{{$item->quantity}}</td>
					<td style="padding: 10px 9px;">{{$item->price}}</td>
					<td style="padding: 10px 9px;">{{$item->discount}}%</td>
					<td style="padding: 10px 9px;">{{number_format(($item->quantity*$item->price)-($item->quantity*$item->price*$item->discount/100),0,",",".")}} ₫</td>
				</tr>
				@endforeach
				<tr>
					<td style="padding: 10px 9px;" colspan="4"></td>
					<td style="padding: 10px 9px;">Phí vận chuyển:</td>
					<td style="padding: 10px 9px;">0 ₫</td>
				</tr>
				<tr>
					<td style="padding: 10px 9px;" colspan="4"></td>
					<td style="padding: 10px 9px;">Thành tiền</td>
					<td style="padding: 10px 9px;">{{number_format($order->sum_money,0,",",".")}} ₫</td>
				</tr>
			</tbody>
		</table>
		<p>Milk Store cảm ơn quý khách.</p>

	</div>

	
</body>
</html>