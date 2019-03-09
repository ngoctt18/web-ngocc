<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Invoice - #DH00{{$order->id}}</title>
    <style type="text/css">
    @page {
        margin: 0px;
    }
    body {
        margin: 0px;
        font-family: DejaVu Sans;
    }
    a {
        color: #fff;
        text-decoration: none;
    }
    table {
        font-size: x-small;
        text-align: left;
    }
    tfoot tr td {
        font-weight: bold;
        font-size: x-small;
    }
    .invoice table {
        margin: 15px;
    }

    .invoice h3 {
        margin-left: 15px;
    }
    .information {
        background-color: #60A7A6;
        color: #FFF;
    }
    .information .logo {
        margin: 5px;
    }
    .information table {
        padding: 10px;
    }
    th, td {
        padding: 12px;
        border-bottom: 1px solid #ddd;
    }
</style>

</head>
<body>
    <div class="information">
        <table width="100%">
            <tr>
                <td align="left" style="width: 40%;">
                    <h3>{{$order->user->name}}</h3>
                    <p>{{$order->user->address}}</p>
                    <p>Ngày mua: {{$order->input_date->format('H:i - d/m/Y')}}</p>
                    <p>Trạng thái đơn hàng: @if($order->status == '0') {{"Đang chờ xử lý"}} @elseif($order->status == '1') {{"Đang giao hàng"}} @elseif($order->status == '2') {{"Giao hàng thành công"}} @elseif($order->status == '3') {{"Giao hàng thất bại"}} @elseif($order->status == '4') {{"Đã hủy"}} @endif</p>
                </td>
                <td align="center">
                    <h3>Hóa đơn bán hàng</h3>
                </td>
                <td align="right" style="width: 40%;">

                    <h3>Milk Store</h3>
                    <p>{{ config('app.url') }}</p>
                    <p>Văn Trì, Minh Khai, Bắc Từ Liêm</p>
                    <p>Hà Nội</p>
                </td>
            </tr>

        </table>
    </div>
    <br/>
    <div class="invoice">
        <h3>Hóa đơn #DH00{{$order->id}}</h3>
        <table width="100%">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Giảm giá</th>
                    <th>Thành tiền</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($order->orderDetails as $key => $item)
                <tr>
                    <td>{{$key+1}}</td>
                    <td>{{$item->product->name}}</td>
                    <td>{{$item->quantity}}</td>
                    <td>{{number_format($item->price,0,",",".")}} ₫</td>
                    <td>{{$item->discount}}%</td>
                    <td>{{number_format(($item->quantity*$item->price)-($item->quantity*$item->price*$item->discount/100),0,",",".")}} ₫</td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="6"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>Hà Nội {{now()->format('H:i - d/m/Y')}}</td>
                    <td colspan="2"></td>
                    <td align="left">Tạm tính:</td>
                    <td align="left" class="gray">{{number_format($order->sum_money,0,",",".")}} ₫</td>
                </tr>
                <tr>
                    <td colspan="4"></td>
                    <td align="left">Phí vận chuyển:</td>
                    <td align="left" class="gray">0 ₫</td>
                </tr>
                <tr>
                    <td colspan="4"></td>
                    <td align="left">Thành tiền:</td>
                    <td align="left" class="gray">{{number_format($order->sum_money,0,",",".")}} ₫</td>
                </tr>
            </tfoot>
        </table>
    </div>
    <div class="information" style="position: absolute; bottom: 0;">
        <table width="100%">
            <tr>
                <td align="left" style="width: 50%;">
                    Copyright &copy; {{ date('Y') }} decemberr18. All rights
                    reserved.
                </td>
                <td align="right" style="width: 50%;">
                    Website {{ config('app.url') }}
                </td>
            </tr>

        </table>
    </div>
</body>
</html>