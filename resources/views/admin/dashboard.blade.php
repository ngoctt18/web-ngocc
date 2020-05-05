@extends('admin.layouts.master')
@section('title', 'Trang quản trị')
@section('styles')
    <link rel="stylesheet" href="{{ asset('../../bower_components/morris.js/morris.css') }}">
@endsection
@section('content')
    @include('admin.components.messages')
    <section class="content">
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>{{$orderCount}}</h3>
                        <p>Đơn hàng</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="{{ route('admin.orders.index') }}" class="small-box-footer">More info <i
                            class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>{{$newsCount}}</h3>
                        <p>Bài viết</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="{{ route('admin.news.index') }}" class="small-box-footer">More info <i
                            class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>{{$userCount}}</h3>
                        <p>Khách hàng</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person-add"></i>
                    </div>
                    <a href="{{ route('admin.users.index') }}" class="small-box-footer">More info <i
                            class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>{{$productCount}}</h3>
                        <p>Sản phẩm</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-pie-graph"></i>
                    </div>
                    <a href="{{ route('admin.products.index') }}" class="small-box-footer">More info <i
                            class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <div class="row">
            <div class="col-md-6">
                <!-- Thống kê đơn hàng -->
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Hôm nay có gì?</h3>
                    </div>
                    <div class="box-body">
                        <div class="chart" id="sales-chart" style="height:287px; position: relative;"></div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <div class="col-md-6">
                <!-- Thống kê đơn hàng -->
                <div class="box box-danger">
                    <div class="box-header with-border">
                        <h3 class="box-title"><a href="{{ route('admin.orders.index') }}">Tất cả đơn hàng</a></h3>
                    </div>
                    <div class="box-body">
                        <canvas id="pieChart" style="height:250px"></canvas>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thống kê số đơn hàng gần đây</h3>
                    </div>
                    <div class="box-body">
                        <ul class="nav nav-pills ranges">
                            <li class="active"><a href="#" data-range='7'>7 ngày</a></li>
                            <li><a href="#" data-range='30'>30 ngày</a></li>
                            <li><a href="#" data-range='60'>60 ngày</a></li>
                            <li><a href="#" data-range='90'>90 ngày</a></li>
                        </ul>
                        <div id="stats-container" style="height: 300px;"></div>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thống kê doanh thu gần đây</h3>
                    </div>
                    <div class="box-body">
                        <ul class="nav nav-pills revenueRanges">
                            <li class="active"><a href="#" data-range='7'>7 ngày</a></li>
                            <li><a href="#" data-range='30'>30 ngày</a></li>
                            <li><a href="#" data-range='60'>60 ngày</a></li>
                            <li><a href="#" data-range='90'>90 ngày</a></li>
                        </ul>
                        <div class="chart" id="revenue-container" style="height: 300px;"></div>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thống kê doanh thu theo tháng</h3>
                    </div>
                    <div class="box-body">
                        <div class="chart" id="month-line-chart" style="height: 300px;"></div>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <!-- ChartJS -->
    <script src="{{ asset('bower_components/chart.js/Chart.js') }}"></script>
    <!-- Morris.js charts -->
    <script src="{{ asset('bower_components/raphael/raphael.min.js') }}"></script>
    <script src="{{ asset('bower_components/morris.js/morris.min.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "GET",
                dataType: 'json',
                url: "{{ route('admin.dashboard.statistics_month') }}",
                data: null,
            })
                .done(function (data) {
                    // console.log(data);
                    monthLineChart.setData(data);
                })
                .fail(function () {
                    // alert( "error occured" );
                });

            var monthLineChart = new Morris.Bar({
                element: 'month-line-chart',
                resize: true,
                data: [0, 0],
                xkey: 'month',
                ykeys: ['revenue'],
                labels: ['Revenue'],
                lineColors: ['#3c8dbc'],
                hideHover: 'auto'
            });


            // Thống kê đơn hàng
            var pieChartCanvas = $('#pieChart').get(0).getContext('2d');
            var pieChart = new Chart(pieChartCanvas);
            var PieData = [
                {
                    value: {{$orders->where('status', '4')->count()}},
                    color: '#ff4242',
                    highlight: '#ff4242',
                    label: 'Đơn hàng bị hủy'
                },
                {
                    value: {{$orders->where('status', '2')->count()}},
                    color: '#00a65a',
                    highlight: '#00a65a',
                    label: 'Đơn hàng giao thành công'
                },
                {
                    value: {{$orders->where('status', '0')->count()}},
                    color: '#00c0ef',
                    highlight: '#00c0ef',
                    label: 'Đơn hàng chờ xử lý'
                },
                {
                    value: {{$orders->where('status', '1')->count()}},
                    color: '#3c8dbc',
                    highlight: '#3c8dbc',
                    label: 'Đơn hàng đang giao'
                },
                {
                    value: {{$orders->where('status', '3')->count()}},
                    color: '#333',
                    highlight: '#333',
                    label: 'Đơn hàng giao thất bại'
                }
            ];
            var pieOptions = {
                //Boolean - Whether we should show a stroke on each segment
                segmentShowStroke: true,
                //String - The colour of each segment stroke
                segmentStrokeColor: '#fff',
                //Number - The width of each segment stroke
                segmentStrokeWidth: 2,
                //Number - The percentage of the chart that we cut out of the middle
                percentageInnerCutout: 2, // This is 0 for Pie charts
                //Number - Amount of animation steps
                animationSteps: 100,
                //String - Animation easing effect
                animationEasing: 'easeOutBounce',
                //Boolean - Whether we animate the rotation of the Doughnut
                animateRotate: true,
                //Boolean - Whether we animate scaling the Doughnut from the centre
                animateScale: true,
                //Boolean - whether to make the chart responsive to window resizing
                responsive: true,
                // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
                maintainAspectRatio: true,
                //String - A legend template
                legendTemplate: '<ul class="<%=name.toLowerCase()%>-legend"> <% for (var i=0; i<segments.length; i++){%> <li><span style="background-color:<%=segments[i].fillColor%>"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li> <%}%> </ul>',
            }
            //Create pie or douhnut chart
            // You can switch between pie and douhnut using the method below.
            pieChart.Doughnut(PieData, pieOptions)

            // Thống kê đơn hàng
            //DONUT CHART
            var donut = new Morris.Donut({
                element: 'sales-chart',
                resize: true,
                colors: ["#00c0ef", "#3c8dbc", "#00a65a", "#333", "#ff4242"],
                data: [
                    {label: "Đơn hàng chờ xử lý", value: {{$orders_today->where('status', '0')->count()}} },
                    {label: "Đơn hàng đang giao", value: {{$orders_today->where('status', '1')->count()}} },
                    {label: "Đơn hàng giao thành công", value: {{$orders_today->where('status', '2')->count()}} },
                    {label: "Đơn hàng giao thất bại", value: {{$orders_today->where('status', '3')->count()}} },
                    {label: "Đơn hàng bị hủy", value: {{$orders_today->where('status', '4')->count()}} },
                ],
                hideHover: 'auto'
            });


            // Create a function that will handle AJAX requests
            function requestData(days, chart) {
                $.ajax({
                    type: "GET",
                    dataType: 'json',
                    url: "{{ route('admin.dashboard.chart_range_day') }}", // This is the URL to the API
                    data: {days: days}
                })
                    .done(function (data) {
                        // When the response to the AJAX request comes back render the chart with new data
                        chart.setData(data);
                    })
                    .fail(function () {
                        // If there is no communication between the server, show an error
                        // alert( "error occured" );
                    });
            }

            var chart = Morris.Bar({
                // ID of the element in which to draw the chart.
                element: 'stats-container',
                resize: true,
                data: [0, 0], // Set initial data (ideally you would provide an array of default data)
                barColors: ['#00a65a'],
                xkey: 'date', // Set the key for X-axis
                ykeys: ['orders'], // Set the key for Y-axis
                labels: ['Orders'], // Set the label when bar is rolled over
            });
            // Request initial data for the past 7 days:
            requestData(7, chart);
            $('ul.ranges a').click(function (e) {
                e.preventDefault();
                $('ul.ranges li').removeClass('active');
                $(this).closest('li').addClass('active');
                // Get the number of days from the data attribute
                var days = $(this).attr('data-range');
                // Request the data and render the chart using our handy function
                requestData(days, chart);
            });


            // ----- Thống kê doanh thu theo ngày -----
            // Create a function that will handle AJAX requests
            function requestRevenueData(days, revenueChart) {
                $.ajax({
                    type: "GET",
                    dataType: 'json',
                    url: "{{ route('admin.dashboard.chart_revenue_range_day') }}", // This is the URL to the API
                    data: {days: days}
                })
                    .done(function (data) {
                        // console.log('data: '+data);
                        // When the response to the AJAX request comes back render the chart with new data
                        revenueChart.setData(data);
                    })
                    .fail(function () {
                        // If there is no communication between the server, show an error
                        // alert( "error occured" );
                    });
            }

            var revenueChart = new Morris.Area({
                element: 'revenue-container',
                resize: true,
                data: [{date: '2019 Q1', revenue: 2666},],
                xkey: 'date',
                ykeys: ['revenue'],
                labels: ['Revenue'],
                lineColors: ['#3c8dbc', '#a0d0e0'],
                hideHover: 'auto'
            });
            // Request initial data for the past 7 days:
            requestRevenueData(7, revenueChart);
            $('ul.revenueRanges a').click(function (e) {
                e.preventDefault();
                $('ul.revenueRanges li').removeClass('active');
                $(this).closest('li').addClass('active');
                // Get the number of days from the data attribute
                var days = $(this).attr('data-range');
                // console.log('days: '+days);
                // Request the data and render the chart using our handy function
                requestRevenueData(days, revenueChart);
            });


        });
    </script>
@endsection
