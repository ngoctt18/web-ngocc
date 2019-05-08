<?php 
$menus_admin = [
    ['type' => 'header', 'name' => 'Menu chính'],
    ['type' => 'single', 'route' => 'admin.dashboard', 'icon' => 'fa fa-dashboard', 'name' => 'Trang điều khiển'],
    ['type' => 'single', 'route' => 'admin.catagory-types.index', 'icon' => 'fa fa-server', 'name' => 'Quản lý nhóm danh mục'],
    ['type' => 'single', 'route' => 'admin.catagories.index', 'icon' => 'fa fa-align-justify', 'name' => 'Quản lý danh mục'],
    ['type' => 'single', 'route' => 'admin.distributions.index', 'icon' => 'fa fa-industry', 'name' => 'Quản lý nhà phân phối'],
    [
        'type' => 'multi', 'name' => 'Quản lý sản phẩm', 'icon' => 'fa fa-product-hunt',
        'children' => [
            ['type' => 'single', 'route' => 'admin.products.index', 'icon' => 'fa fa-newspaper-o', 'name' => 'Danh sách sản phẩm'],
            ['type' => 'single', 'route' => 'admin.products.trash', 'icon' => 'fa fa-trash-o', 'name' => 'Sản phẩm đã xóa'],
        ]
    ],
    [
        'type' => 'multi', 'name' => 'Quản lý tin tức', 'icon' => 'fa fa-newspaper-o',
        'children' => [
            ['type' => 'single', 'route' => 'admin.news.index', 'icon' => 'fa fa-newspaper-o', 'name' => 'Danh sách bài viết'],
            ['type' => 'single', 'route' => 'admin.news.trash', 'icon' => 'fa fa-trash-o', 'name' => 'Thùng rác'],
        ]
    ],
    ['type' => 'single', 'route' => 'admin.users.index', 'icon' => 'fa fa-users', 'name' => 'Quản lý khách hàng'],
    [
        'type' => 'multi', 'name' => 'Quản lý đơn hàng', 'icon' => 'fa fa-cart-plus',
        'children' => [
            ['type' => 'single', 'route' => 'admin.orders.index', 'icon' => '', 'name' => 'Danh sách đơn hàng'],
            ['type' => 'single', 'route' => 'admin.orders.orders_pending', 'icon' => '', 'name' => 'Đơn hàng chờ xử lý'],
            ['type' => 'single', 'route' => 'admin.orders.orders_deliver', 'icon' => '', 'name' => 'Đơn hàng đang giao'],
            ['type' => 'single', 'route' => 'admin.orders.orders_success', 'icon' => '', 'name' => 'Giao thành công'],
            ['type' => 'single', 'route' => 'admin.orders.orders_error', 'icon' => '', 'name' => 'Giao thất bại'],
            ['type' => 'single', 'route' => 'admin.orders.orders_cancel', 'icon' => '', 'name' => 'Đơn hàng đã hủy'],
        ]
    ],
    ['type' => 'single', 'route' => 'admin.contacts.index', 'icon' => 'fa fa-commenting-o', 'name' => 'Quản lý lời nhắn'],
];  

$menus_writer = [
    ['type' => 'header', 'name' => 'Menu chính'],
    ['type' => 'single', 'route' => '', 'icon' => 'fa fa-user', 'name' => 'Thông tin cá nhân'],
    ['type' => 'single', 'route' => 'writer.dashboard', 'icon' => 'fa fa-dashboard', 'name' => 'Trang điều khiển'],
    [
        'type' => 'multi', 'name' => 'Quản lý tin tức', 'icon' => 'fa fa-newspaper-o',
        'children' => [
            ['type' => 'single', 'route' => 'writer.news.index', 'icon' => 'fa fa-newspaper-o', 'name' => 'Danh sách bài viết'],
            ['type' => 'single', 'route' => 'writer.news.trash', 'icon' => 'fa fa-trash-o', 'name' => 'Thùng rác'],
        ]
    ],
];  

?>
<ul class="sidebar-menu" data-widget="tree">
    @if(get_guard() == 'admin')
    @foreach($menus_admin as $menu)
    @component('admin.components.menu_item', ['menu' => $menu])
    @endcomponent
    @endforeach
    @elseif(get_guard() == 'writer')
    @foreach($menus_writer as $menu)
    @component('admin.components.menu_item', ['menu' => $menu])
    @endcomponent
    @endforeach
    @endif
</ul>

{{-- ['type' => 'single', 'route' => 'admin.products.index', 'icon' => 'fa fa-product-hunt', 'name' => 'Quản lý sản phẩm'], --}}