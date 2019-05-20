-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2019 lúc 02:19 PM
-- Phiên bản máy phục vụ: 10.3.11-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websitebansua`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `phone`, `images`, `password`, `email`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '0975853528', NULL, '$2y$10$I74rCsrhpUrjG7jnknydzeI.hnxLcgR6pnjntxm6y1xhWm7lI7Q1.', 'admin@admin.com', 'Hưng Yên', '1', 'VS0Tpoy2b8doIsxdN7FphNkxb8pMbIPCz6yKH1rwohKiveBqZX4pKkVo7AG0', '2019-02-11 23:20:16', '2019-05-12 02:18:58'),
(2, 'Nguyen Dieu Anh', 'ndanh00', '123456', NULL, '$2y$10$wGgWuay.A6RqHYKHG5SpQObpPxZkRWt2MN4KxcoKectEWj9atxvJe', 'ndanh00@admin.com', 'Quảng Ninh', '1', 'cXqx1f9piomGKkoJqlsFedrfCCbhHxVsh9YIxfpuijW50kvxnYhJgG2SJdCy', '2019-02-18 07:07:38', '2019-04-08 04:38:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catagories`
--

CREATE TABLE `catagories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catagory_type_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catagories`
--

INSERT INTO `catagories` (`id`, `name`, `slug`, `description`, `catagory_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sữa Meiji', 'sua-meiji', 'Sữa Meiji bán chạy số 1 Nhật Bản là sữa mát Tốt Cho Hệ Tiêu Hóa chống táo bón hiệu quả, đồng thời bổ sung đầy đủ DHA giúp bé Phát Triển Toàn Diện.', 1, '1', '2019-02-11 23:20:17', '2019-02-28 09:48:21'),
(2, 'Glico ICreo', 'glico-icreo', 'Sữa Icreo Glico với công thức đặc biệt gần giống sữa mẹ nhất giúp bé phát triển toàn diện tốt cho hệ tiêu hóa của trẻ. Sữa bột Glico bổ sung đầy đủ DHA và các dưỡng chất cần thiết cho bé.', 1, '1', '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(3, 'Sữa Nan', 'sua-nan', 'Sữa Nan là một dòng sữa mát nổi tiếng được các bà mẹ tin dùng. Sữa chứa các thành phần dinh dưỡng quan trọng giúp bé phát triển về não bộ, khả năng tiếp thu nhanh, phát triển về thị giác, hệ tiêu hóa tốt, hệ miễn dịch cao và cân bằng thể chất, cân nặng.', 1, '1', '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(4, 'Sữa Pediasure', 'sua-pediasure', 'Sữa Pediasure là một trong những sản phẩm sữa bột nổi tiếng của Abbott Hoa Kỳ được nhập khẩu chính hãng từ Úc, Singapore và Mỹ đặc trị chứng biếng ăn, thoát khỏi tình trạng còi xương và suy dinh dưỡng ở trẻ nhỏ.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(5, 'Sữa Similac', 'sua-similac', 'Sữa Similac được sản xuất theo công thức dinh dưỡng sữa mẹ chứa đầy đủ các dưỡng chất thiết yếu giúp bé tăng trưởng và phát triển khỏe mạnh.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(6, 'Sữa Enfa', 'sua-enfa', 'Sữa Enfa là một trong những loại sữa bột nổi tiếng được rất nhiều người biết đến, là sự kết hợp độc đáo của nhiều dưỡng chất quan trọng cho sự phát triển toàn diện và chức năng não bộ của bé. ', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(7, 'Sữa Friso', 'sua-friso', 'Sữa Friso là sản phẩm sữa bột cho bé được rất nhiều các bà mẹ lựa chọn sử dụng cho con yêu bởi sản phẩm luôn chú trọng đến sự phát triển hệ miễn dịch và trí não tốt nhất của trẻ.', 1, '0', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(8, 'Sữa XO', 'sua-xo', 'Sữa XO là một trong những loại sữa bột cho bé được các hàng triệu bà mẹ trên thế giới tin dùng, với những thành phần dưỡng chất có trong sữa giúp trẻ phát triển toàn diện.', 1, '0', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(9, 'Sữa Abbott Grow', 'sua-abbott-grow', 'Abbott Grow thương hiệu sữa số 1 HOA KỲ được cả thế giới tin dùng. Với công thức đặc biệt chứa AHA, DHA, Cholin, Taurin, Canxi cùng các vitamin và khoáng chất thiết yếu giúp bé phát triển toàn diện bé cao hơn, thông minh hơn, mắt sáng hơn.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(10, 'Sữa Physiolac', 'sua-physiolac', 'PHYSIOLAC là dòng sản phẩm được các bà mẹ tại Pháp cũng như toàn thế giới tin tưởng lựa chọn là người bạn đồng hành giúp bé yêu phát triển tốt nhất. ', 1, '0', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(11, 'Sữa Hipp', 'sua-hipp', 'Sữa bột HiPP cung cấp protein ở dạng dễ tiêu hóa nhất, các loại vitamin, khoáng chất và các dưỡng chất cần thiết để con yêu phát triển toàn diện với cơ thể khỏe mạnh, trí não thông minh và mau lớn. Với công thức mới giúp bé ăn ngon miệng và phù hợp với tiêu hóa của trẻ.', 1, '0', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(12, 'Sữa Gallia', 'sua-gallia', 'Gallia sữa số 1 tại Pháp được các bà mẹ Châu Âu tin tưởng sử dụng. Với công thức riêng biệt giúp bổ sung đầy đủ chất dinh dưỡng cho trẻ nhỏ.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(13, 'Sữa Morinaga', 'sua-morinaga', 'Sữa Morinaga Nhật Bản hỗ trợ tăng cân và phát triển chiều cao toàn hiện, là dòng \"sữa rau\" sữa mát hỗ trợ tình trạng táo bón ở trẻ. Morinaga là loại sữa được các bác sĩ ở Viện \"Nhi\" của Nhật thường sử dụng cho trẻ.', 1, '0', '2019-02-11 23:20:18', '2019-04-08 14:31:43'),
(14, 'Sữa Aptamil', 'sua-aptamil', 'Sữa Aptamil Anh là một trong những dòng sữa nổi tiếng và bán chạy nhất Châu Âu hiện nay. Sữa được công ty Danone Việt Nam nhập khẩu và phân phối độc quyền tại Việt Nam với công thức sữa được cho là giống sữa mẹ nhất.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(16, 'Sữa TH true Milk.', 'sua-th-true-milk', 'Sữa TH true Milk Sữa TH true Milk Sữa TH true Milk Sữa TH true Milk Sữa TH true Milk Sữa TH true Milk Sữa TH true Milk Sữa TH true Milk Sữa TH true Milk', 2, '1', '2019-02-12 03:06:17', '2019-02-12 07:00:06'),
(17, 'Sữa Mộc Châu', 'sua-moc-chau', 'Sữa Mộc Châu', 2, '1', '2019-02-12 03:06:17', '2019-02-12 03:06:17'),
(18, 'Sữa Milo', 'sua-milo', 'Sữa Milo', 2, '1', '2019-02-12 03:06:17', '2019-02-12 03:06:17'),
(19, 'Sữa đặc có đường', 'sua-dac-co-duong', 'Sữa đặc có đường ngon ngon', 3, '1', '2019-03-05 09:27:56', '2019-03-05 09:27:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catagories_types`
--

CREATE TABLE `catagories_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catagories_types`
--

INSERT INTO `catagories_types` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sữa bột cho bé', 'sua-bot-cho-be', '1', '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(2, 'Sữa tươi', 'sua-tuoi', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(3, 'Sữa đặc', 'sua-dac', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(4, 'Sữa các loại', 'sua-cac-loai', '0', '2019-03-06 07:02:03', '2019-03-06 07:03:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Tran Van Ngoc', 'ngocngocngoc@sd.ff', '0975853528', 'Tran Van Ngoc LIÊN HỆ VỚI CHÚNG TÔI GỬI LỜI NHẮN We\'d love to hear from you - please use the form to send us your message or ideas. Or simply pop in for a cup of fresh tea and a cookie', '2019-02-18 03:35:01', '2019-02-18 03:35:01'),
(2, 'Nguyen Dieu Anh', 'ndanh00@gmail.com', '0168997859', 'Hello world!', '2019-02-18 04:00:01', '2019-02-18 04:00:01'),
(5, 'ádasdasdasd', 'asasdasd@asdasd.asd', '0975856968', 'ádasdasdasd  asasdasd@asdasd.asd asasdasd@asdasd.asd', '2019-02-26 09:44:28', '2019-02-26 09:44:28'),
(6, 'Nguyen Dieu Anh', 'annd@gmail.com', '0975845696', 'Good luck and have a nice day :D', '2019-03-06 03:45:24', '2019-03-06 03:45:24'),
(7, 'Quynh Nhu', 'qnhu@gmail.com', '0975848963', 'We\'d love to hear from you - please use the form to send us your message or ideas. Or simply pop in for a cup of fresh tea and a cookie', '2019-03-07 03:15:06', '2019-03-07 03:15:06'),
(8, 'Milk Sore', 'milkstore@mail.uk', '0975852648', 'Đồ án tốt nghiệp. Website bán sữa', '2019-04-08 05:34:38', '2019-04-08 05:34:38'),
(9, 'Trần Tuấn Ngọc', 'trantuanngoc182@gmail.com', '0975853528', 'Chúc cho buổi lễ bảo vệ đồ án diễn ra thành công.!', '2019-05-11 14:48:06', '2019-05-11 14:48:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `distributions`
--

CREATE TABLE `distributions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','2','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `distributions`
--

INSERT INTO `distributions` (`id`, `name`, `slug`, `email`, `phone`, `address`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vinamilk', 'vinamilk', 'Vinamilk@email.com', NULL, NULL, 'Là thương hiệu sữa hàng đầu Việt Nam với lịch sử 40 năm phát triển. Chất lượng sản phẩm, dịch vụ luôn được cải tiến để đáp ứng tốt nhất nhu cầu của người tiêu dùng.', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(2, 'Abbott', 'abbott', 'Abbott@email.com', NULL, NULL, 'Abbott là một hãng sữa của Mỹ, được các bà mẹ biết đến và lựa chọn nhiều nhất.', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(3, 'Meiji', 'meiji', 'Meiji@email.com', NULL, NULL, 'Đến từ tập đoàn Meiji Nhật Bản, hiện đây là loại sữa được các bà mẹ tin dùng khá nhiều. ', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(4, 'Dutch Lady', 'dutch-lady', 'DutchLady@email.com', '0168997856', 'Dutch Lady USA USA USA', '<p>Dutch Lady, thường được biết đến dưới c&aacute;i t&ecirc;n thuần Việt hơn l&agrave; &quot;C&ocirc; g&aacute;i H&agrave; Lan&quot; l&agrave; thương hiệu sữa của Dutch Lady Việt Nam.</p>', '0', '2019-02-11 23:20:18', '2019-02-28 09:52:35'),
(5, 'Enfa', 'enfa', 'Enfa@email.com', '0168997859', 'Enfa USA', '<p>L&agrave; một thương hiệu sữa của tập đo&agrave;n Mead Johnson Nutrition, Mỹ. Enfa l&agrave; d&ograve;ng sản phẩm chất lượng tốt được nhiều gia đ&igrave;nh lựa chọn cho b&eacute; y&ecirc;u của m&igrave;nh.</p>', '1', '2019-02-11 23:20:18', '2019-03-06 08:01:53'),
(6, 'XO', 'xo', 'XO@email.com', NULL, NULL, ' XO là hiệu sữa thuộc công ty Namyang, Hàn Quốc.', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(7, 'NAN', 'nan', 'NAN@email.com', NULL, NULL, 'NAN là hiệu sữa thuộc tập đoàn Nestlé (trụ sở chính đặt tại Thụy Sĩ) và được sản xuất tại rất nhiều quốc gia khác nhau như: Nga, Hà Lan, Đức, Philipines,...', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(8, 'Physiolac', 'physiolac', 'Physiolac@email.com', NULL, NULL, 'Là một hiệu sữa của công ty Gilbert Gabolatoies, thành viên của Groupe Batteur - tập đoàn dược phẩm, thực phẩm dinh dưỡng hàng đầu tại Pháp. ', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(10, 'Mead Johnson', 'mead-johnson', 'MeadJohnson@email.com', NULL, NULL, 'Thương hiệu sữa Mead Johnson cũng là một trong những thương hiệu sữa lớn – nằm trong đại gia đình dinh dưỡng Mead Johnson.', '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(12, 'TH', 'th', 'th@th.vn', '0975853596', 'USA', '<p><strong>Được </strong><em><strong>th&agrave;nh lập từ năm 1888, Abbott &ndash; c&ocirc;ng ty chăm s&oacute;c sức khỏe h&agrave;ng đầu thế giới, chuy&ecirc;n nghi&ecirc;n cứu, ph&aacute;t triển, sản xuất v&agrave; đưa ra c&aacute;c sản phẩm v&agrave; dịch vụ chăm s&oacute;c sức khỏe c&oacute; chất lượng cao trong lĩnh vực dinh dưỡng, dược phẩm, thiết bị chẩn đo&aacute;n v&agrave; điều trị. Abbott đến Việt Nam v&agrave;o năm 1995 v&agrave; cam kết hết l&ograve;ng chia sẻ tr&aacute;ch nhiệm c&ocirc;ng d&acirc;n với x&atilde; hội Việt Nam. Với hiểu biết s&acirc;u sắc về khoa học dinh dưỡng v&agrave; c&aacute;c nhu cầu trong cuộc sống, Abbott lu&ocirc;n ti&ecirc;n phong trong lĩnh vực dinh dưỡng v&agrave; chăm s&oacute;c sức khỏe nhằm n&acirc;ng cao chất lượng cuộc sống. C&aacute;c sản phẩm dinh dưỡng của Abbott d&agrave;nh cho trẻ em, người lớn tuổi cũng như chăm s&oacute;c sức khỏe nằm trong số c&aacute;c nh&atilde;n hiệu được tin cậy nhất tr&ecirc;n thế giới</strong></em></p>', '1', '2019-02-12 07:19:20', '2019-02-12 07:20:35'),
(14, 'Tên nhà phân phối', 'ten-nha-phan-phoi', 'email@rmail.com', '0975845269', 'Ha Noi, Viet Nam', '<p>M&ocirc; tả&nbsp;</p>', '1', '2019-05-11 08:20:17', '2019-05-11 08:20:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(22, 'App\\Product', 14, 'product_details', '1550046659-cam', '1550046659-cam.jpg', 'image/jpeg', 'media', 1702108, '[]', '{\"0\":\"change_false\",\"generated_conversions\":{\"thumb\":true}}', '[]', 20, '2019-02-13 08:36:26', '2019-02-13 08:36:28'),
(23, 'App\\Product', 14, 'product_details', '1550046660-cat0', '1550046660-cat0.jpg', 'image/jpeg', 'media', 84215, '[]', '{\"0\":\"change_false\",\"generated_conversions\":{\"thumb\":true}}', '[]', 21, '2019-02-13 08:36:28', '2019-02-13 08:36:29'),
(25, 'App\\Product', 14, 'product_details', '1550047033-cat4', '1550047033-cat4.jpg', 'image/jpeg', 'media', 75446, '[]', '{\"0\":\"change_false\",\"generated_conversions\":{\"thumb\":true}}', '[]', 23, '2019-02-13 08:37:17', '2019-02-13 08:37:17'),
(26, 'App\\Product', 14, 'product_details', '1550047035-cat3', '1550047035-cat3.jpg', 'image/jpeg', 'media', 100895, '[]', '{\"0\":\"change_false\",\"generated_conversions\":{\"thumb\":true}}', '[]', 24, '2019-02-13 08:37:17', '2019-02-13 08:37:17'),
(28, 'App\\Product', 14, 'product_details', '1550047053-1', '1550047053-1.jpg', 'image/jpeg', 'media', 4039, '[]', '{\"0\":\"change_false\",\"generated_conversions\":{\"thumb\":true}}', '[]', 26, '2019-02-13 08:37:38', '2019-02-13 08:37:38'),
(29, 'App\\Product', 14, 'product_details', '1550047054-1', '1550047054-1.jpg', 'image/jpeg', 'media', 4039, '[]', '{\"0\":\"change_false\",\"generated_conversions\":{\"thumb\":true}}', '[]', 27, '2019-02-13 08:37:38', '2019-02-13 08:37:38'),
(31, 'App\\Product', 13, 'product_avatar', '1550140468-p1_compactdf3d', '1550140468-p1_compactdf3d.jpg', 'image/jpeg', 'media', 4060, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 29, '2019-02-14 10:34:38', '2019-02-14 10:34:40'),
(32, 'App\\Product', 13, 'product_details', '1550140470-p2_09f4b32a-bf88-4e2f-ab81-a18b3ccd86a5_compactbbfc', '1550140470-p2_09f4b32a-bf88-4e2f-ab81-a18b3ccd86a5_compactbbfc.jpg', 'image/jpeg', 'media', 4940, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 30, '2019-02-14 10:34:41', '2019-02-14 10:34:41'),
(33, 'App\\Product', 13, 'product_details', '1550140472-p3_adf14166-2aee-4475-9b67-cfdf806e820f_grandea330', '1550140472-p3_adf14166-2aee-4475-9b67-cfdf806e820f_grandea330.jpg', 'image/jpeg', 'media', 29787, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 31, '2019-02-14 10:34:41', '2019-02-14 10:34:41'),
(34, 'App\\Product', 13, 'product_details', '1550140475-p5_compactdf3d', '1550140475-p5_compactdf3d.jpg', 'image/jpeg', 'media', 4186, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 32, '2019-02-14 10:34:41', '2019-02-14 10:34:41'),
(35, 'App\\Product', 13, 'product_details', '1550140543-p5_grandedf3d', '1550140543-p5_grandedf3d.jpg', 'image/jpeg', 'media', 26011, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 33, '2019-02-14 10:35:45', '2019-02-14 10:35:45'),
(39, 'App\\Product', 11, 'product_avatar', '1550303628-p27_largeac2c', '1550303628-p27_largeac2c.jpg', 'image/jpeg', 'media', 23405, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 34, '2019-02-16 07:53:55', '2019-02-16 07:53:58'),
(40, 'App\\Product', 11, 'product_details', '1550303633-p26_compact1037', '1550303633-p26_compact1037.jpg', 'image/jpeg', 'media', 5212, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 35, '2019-02-16 07:53:58', '2019-02-16 07:53:58'),
(41, 'App\\Product', 1, 'product_avatar', '1550303641-p26_compact1037', '1550303641-p26_compact1037.jpg', 'image/jpeg', 'media', 5212, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 36, '2019-02-16 07:54:06', '2019-02-16 07:54:06'),
(42, 'App\\Product', 1, 'product_details', '1550303645-p25_medium2839', '1550303645-p25_medium2839.jpg', 'image/jpeg', 'media', 8905, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 37, '2019-02-16 07:54:06', '2019-02-16 07:54:07'),
(43, 'App\\Product', 10, 'product_avatar', '1550303656-p25_large2839', '1550303656-p25_large2839.jpg', 'image/jpeg', 'media', 26329, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 38, '2019-02-16 07:54:36', '2019-02-16 07:54:37'),
(44, 'App\\Product', 10, 'product_details', '1550303667-p24_largeffda', '1550303667-p24_largeffda.jpg', 'image/jpeg', 'media', 15887, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 39, '2019-02-16 07:54:37', '2019-02-16 07:54:37'),
(45, 'App\\Product', 10, 'product_details', '1550303670-p2_09f4b32a-bf88-4e2f-ab81-a18b3ccd86a5_grandebbfc', '1550303670-p2_09f4b32a-bf88-4e2f-ab81-a18b3ccd86a5_grandebbfc.jpg', 'image/jpeg', 'media', 27221, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 40, '2019-02-16 07:54:37', '2019-02-16 07:54:37'),
(46, 'App\\Product', 10, 'product_details', '1550303674-p4_compactdf3d', '1550303674-p4_compactdf3d.jpg', 'image/jpeg', 'media', 3570, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 41, '2019-02-16 07:54:37', '2019-02-16 07:54:38'),
(47, 'App\\Product', 10, 'product_details', '1550303672-p3_compactdf3d', '1550303672-p3_compactdf3d.jpg', 'image/jpeg', 'media', 5248, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 42, '2019-02-16 07:54:38', '2019-02-16 07:54:38'),
(48, 'App\\Product', 9, 'product_avatar', '1550303682-p24_largeffda', '1550303682-p24_largeffda.jpg', 'image/jpeg', 'media', 15887, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 43, '2019-02-16 07:54:49', '2019-02-16 07:54:49'),
(49, 'App\\Product', 9, 'product_details', '1550303685-p25_medium2839', '1550303685-p25_medium2839.jpg', 'image/jpeg', 'media', 8905, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 44, '2019-02-16 07:54:49', '2019-02-16 07:54:50'),
(50, 'App\\Product', 9, 'product_details', '1550303687-p5_grandedf3d', '1550303687-p5_grandedf3d.jpg', 'image/jpeg', 'media', 26011, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 45, '2019-02-16 07:54:50', '2019-02-16 07:54:50'),
(51, 'App\\Product', 8, 'product_avatar', '1550303700-p23_large2839', '1550303700-p23_large2839.jpg', 'image/jpeg', 'media', 35994, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 46, '2019-02-16 07:55:07', '2019-02-16 07:55:07'),
(52, 'App\\Product', 8, 'product_details', '1550303703-p24_compactffda', '1550303703-p24_compactffda.jpg', 'image/jpeg', 'media', 3372, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 47, '2019-02-16 07:55:07', '2019-02-16 07:55:07'),
(53, 'App\\Product', 8, 'product_details', '1550303706-p17_large13bb', '1550303706-p17_large13bb.jpg', 'image/jpeg', 'media', 28492, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 48, '2019-02-16 07:55:07', '2019-02-16 07:55:08'),
(55, 'App\\Product', 7, 'product_details', '1550303715-p22_mediumffda', '1550303715-p22_mediumffda.jpg', 'image/jpeg', 'media', 10273, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 50, '2019-02-16 07:55:19', '2019-02-16 07:55:20'),
(56, 'App\\Product', 7, 'product_details', '1550303718-p25_grande2839', '1550303718-p25_grande2839.jpg', 'image/jpeg', 'media', 29214, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 51, '2019-02-16 07:55:20', '2019-02-16 07:55:20'),
(57, 'App\\Product', 6, 'product_avatar', '1550303724-p18_large592f', '1550303724-p18_large592f.jpg', 'image/jpeg', 'media', 31010, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 52, '2019-02-16 07:55:36', '2019-02-16 07:55:36'),
(58, 'App\\Product', 6, 'product_details', '1550303728-p22_largeffda', '1550303728-p22_largeffda.jpg', 'image/jpeg', 'media', 31521, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 53, '2019-02-16 07:55:36', '2019-02-16 07:55:37'),
(59, 'App\\Product', 6, 'product_details', '1550303732-p17_large13bb', '1550303732-p17_large13bb.jpg', 'image/jpeg', 'media', 28492, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 54, '2019-02-16 07:55:37', '2019-02-16 07:55:37'),
(60, 'App\\Product', 6, 'product_details', '1550303734-p5_largedf3d', '1550303734-p5_largedf3d.jpg', 'image/jpeg', 'media', 23405, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 55, '2019-02-16 07:55:37', '2019-02-16 07:55:37'),
(61, 'App\\Product', 5, 'product_avatar', '1550303749-p12_largea330', '1550303749-p12_largea330.jpg', 'image/jpeg', 'media', 18483, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 56, '2019-02-16 07:56:07', '2019-02-16 07:56:07'),
(62, 'App\\Product', 5, 'product_details', '1550303766-p11_large8e6f', '1550303766-p11_large8e6f.jpg', 'image/jpeg', 'media', 23799, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 57, '2019-02-16 07:56:07', '2019-02-16 07:56:08'),
(63, 'App\\Product', 5, 'product_details', '1550303754-p13_aed32629-bf9c-49cf-983b-eedcf2fe6a20_grande93eb', '1550303754-p13_aed32629-bf9c-49cf-983b-eedcf2fe6a20_grande93eb.jpg', 'image/jpeg', 'media', 22344, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 58, '2019-02-16 07:56:08', '2019-02-16 07:56:08'),
(64, 'App\\Product', 4, 'product_avatar', '1550303776-p16_large8236', '1550303776-p16_large8236.jpg', 'image/jpeg', 'media', 27827, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 59, '2019-02-16 07:56:25', '2019-02-16 07:56:26'),
(65, 'App\\Product', 4, 'product_details', '1550303778-p4_compactdf3d', '1550303778-p4_compactdf3d.jpg', 'image/jpeg', 'media', 3570, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 60, '2019-02-16 07:56:26', '2019-02-16 07:56:26'),
(66, 'App\\Product', 4, 'product_details', '1550303780-p2_compactdf3d', '1550303780-p2_compactdf3d.jpg', 'image/jpeg', 'media', 4940, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 61, '2019-02-16 07:56:26', '2019-02-16 07:56:27'),
(67, 'App\\Product', 4, 'product_details', '1550303783-p6_grandeac2c', '1550303783-p6_grandeac2c.jpg', 'image/jpeg', 'media', 28454, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 62, '2019-02-16 07:56:27', '2019-02-16 07:56:27'),
(69, 'App\\Product', 3, 'product_details', '1550303793-p6_compactac2c', '1550303793-p6_compactac2c.jpg', 'image/jpeg', 'media', 4774, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 64, '2019-02-16 07:56:50', '2019-02-16 07:56:51'),
(70, 'App\\Product', 3, 'product_details', '1550303800-p9_largeb6c0', '1550303800-p9_largeb6c0.jpg', 'image/jpeg', 'media', 28693, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 65, '2019-02-16 07:56:51', '2019-02-16 07:56:51'),
(71, 'App\\Product', 3, 'product_details', '1550303809-p3_largedf3d', '1550303809-p3_largedf3d.jpg', 'image/jpeg', 'media', 27021, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 66, '2019-02-16 07:56:51', '2019-02-16 07:56:51'),
(72, 'App\\Product', 2, 'product_avatar', '1550303837-p13_largea6a5', '1550303837-p13_largea6a5.jpg', 'image/jpeg', 'media', 20462, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 67, '2019-02-16 07:57:31', '2019-02-16 07:57:32'),
(73, 'App\\Product', 2, 'product_details', '1550303840-p12_largea330', '1550303840-p12_largea330.jpg', 'image/jpeg', 'media', 18483, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 68, '2019-02-16 07:57:32', '2019-02-16 07:57:32'),
(74, 'App\\Product', 2, 'product_details', '1550303843-p9_largeb6c0', '1550303843-p9_largeb6c0.jpg', 'image/jpeg', 'media', 28693, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 69, '2019-02-16 07:57:32', '2019-02-16 07:57:33'),
(75, 'App\\Product', 2, 'product_details', '1550303846-p5_largedf3d', '1550303846-p5_largedf3d.jpg', 'image/jpeg', 'media', 23405, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 70, '2019-02-16 07:57:33', '2019-02-16 07:57:33'),
(76, 'App\\Product', 2, 'product_details', '1550303849-p3_largedf3d', '1550303849-p3_largedf3d.jpg', 'image/jpeg', 'media', 27021, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 71, '2019-02-16 07:57:33', '2019-02-16 07:57:34'),
(77, 'App\\Product', 14, 'product_avatar', '1550304402-p16_large8236', '1550304402-p16_large8236.jpg', 'image/jpeg', 'media', 27827, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 72, '2019-02-16 08:06:44', '2019-02-16 08:06:44'),
(80, 'App\\News', 78, 'news_image', 'cong-phuong-xuan-truong-xuat-ngoai-hagl-con-mo-vo-dich-v-league', 'cong-phuong-xuan-truong-xuat-ngoai-hagl-con-mo-vo-dich-v-league.jpg', 'image/jpeg', 'media', 259191, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 74, '2019-02-20 04:58:44', '2019-02-20 04:58:46'),
(82, 'App\\News', 76, 'news_image', 'chu-dinh-nghiem', 'chu-dinh-nghiem.JPG', 'image/jpeg', 'media', 131347, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 76, '2019-02-20 09:56:07', '2019-02-20 09:56:09'),
(85, 'App\\Product', 16, 'product_avatar', '1550825837-b1_medium693b', '1550825837-b1_medium693b.jpg', 'image/jpeg', 'media', 6718, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 79, '2019-02-22 08:57:44', '2019-02-22 08:57:46'),
(86, 'App\\Product', 16, 'product_details', '1550825842-b3_1024x1024693b', '1550825842-b3_1024x1024693b.jpg', 'image/jpeg', 'media', 68665, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 80, '2019-02-22 08:57:46', '2019-02-22 08:57:47'),
(87, 'App\\Product', 16, 'product_details', '1550825841-b2_medium693b', '1550825841-b2_medium693b.jpg', 'image/jpeg', 'media', 3707, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 81, '2019-02-22 08:57:47', '2019-02-22 08:57:47'),
(88, 'App\\Product', 17, 'product_avatar', '1550825901-b4_medium693b', '1550825901-b4_medium693b.jpg', 'image/jpeg', 'media', 9712, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 82, '2019-02-22 08:58:41', '2019-02-22 08:58:42'),
(89, 'App\\Product', 17, 'product_details', '1550825903-b3_medium693b', '1550825903-b3_medium693b.jpg', 'image/jpeg', 'media', 7303, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 83, '2019-02-22 08:58:42', '2019-02-22 08:58:42'),
(90, 'App\\Product', 17, 'product_details', '1550825906-b2_1024x1024693b', '1550825906-b2_1024x1024693b.jpg', 'image/jpeg', 'media', 22789, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 84, '2019-02-22 08:58:42', '2019-02-22 08:58:43'),
(91, 'App\\Product', 15, 'product_avatar', '1550826028-b2_1024x1024693b', '1550826028-b2_1024x1024693b.jpg', 'image/jpeg', 'media', 22789, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 85, '2019-02-22 09:00:57', '2019-02-22 09:00:57'),
(92, 'App\\Product', 15, 'product_details', '1550826030-b1_1024x1024693b', '1550826030-b1_1024x1024693b.jpg', 'image/jpeg', 'media', 42643, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 86, '2019-02-22 09:00:57', '2019-02-22 09:00:58'),
(93, 'App\\Product', 15, 'product_details', '1550826032-b4_medium693b', '1550826032-b4_medium693b.jpg', 'image/jpeg', 'media', 9712, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 87, '2019-02-22 09:00:58', '2019-02-22 09:00:58'),
(95, 'App\\News', 81, 'news_image', 'fnktrumpa20181202', 'fnktrumpa20181202.jpg', 'image/jpeg', 'media', 118467, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 89, '2019-02-26 10:37:23', '2019-03-01 09:18:51'),
(96, 'App\\News', 83, 'news_image', 'santin_zing_2', 'santin_zing_2.jpg', 'image/jpeg', 'media', 136841, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 90, '2019-02-27 01:52:55', '2019-03-01 09:18:52'),
(103, 'App\\News', 80, 'news_image', '9-1550629341111', '9-1550629341111.jpg', 'image/jpeg', 'media', 62837, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 96, '2019-02-27 03:05:56', '2019-03-01 09:18:54'),
(110, 'App\\News', 88, 'news_image', 'voices', 'voices.jpg', 'image/jpeg', 'media', 345573, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 102, '2019-03-01 08:49:14', '2019-03-01 09:18:54'),
(117, 'App\\Product', 18, 'product_avatar', '1551431562-3c773ab92d20a081802bbd22d563a6b6', '1551431562-3c773ab92d20a081802bbd22d563a6b6.jpg', 'image/jpeg', 'media', 305727, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 109, '2019-03-01 09:12:48', '2019-03-01 09:12:50'),
(118, 'App\\Product', 18, 'product_details', '1551431564-51b9a1e647100cd6df003cbc00ff2618', '1551431564-51b9a1e647100cd6df003cbc00ff2618.jpg', 'image/jpeg', 'media', 316032, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 110, '2019-03-01 09:12:50', '2019-03-01 09:12:51'),
(119, 'App\\Product', 18, 'product_details', '1551431565-3c773ab92d20a081802bbd22d563a6b6', '1551431565-3c773ab92d20a081802bbd22d563a6b6.jpg', 'image/jpeg', 'media', 305727, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 111, '2019-03-01 09:12:51', '2019-03-01 09:12:51'),
(122, 'App\\Product', 7, 'product_avatar', '1551431820-p25_large2839', '1551431820-p25_large2839.jpg', 'image/jpeg', 'media', 26329, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 113, '2019-03-01 09:17:07', '2019-03-01 09:17:08'),
(123, 'App\\Product', 3, 'product_avatar', '1551431823-p5_largedf3d', '1551431823-p5_largedf3d.jpg', 'image/jpeg', 'media', 23405, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 114, '2019-03-01 09:17:09', '2019-03-01 09:17:09'),
(124, 'App\\News', 82, 'news_image', 'santin_zing_2', 'santin_zing_2.jpg', 'image/jpeg', 'media', 136841, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 115, '2019-03-01 10:14:31', '2019-03-01 10:14:31'),
(127, 'App\\User', 2, 'user_avatar', 'cat4', 'cat4.jpg', 'image/jpeg', 'media', 75446, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 116, '2019-03-04 10:37:42', '2019-03-04 10:37:42'),
(129, 'App\\Product', 19, 'product_avatar', '1551778138-0992631e7b86c3622b83d23107f2b9bd', '1551778138-0992631e7b86c3622b83d23107f2b9bd.jpg', 'image/jpeg', 'media', 91298, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 118, '2019-03-05 09:29:34', '2019-03-05 09:29:37'),
(130, 'App\\Product', 19, 'product_details', '1551778139-0992631e7b86c3622b83d23107f2b9bd', '1551778139-0992631e7b86c3622b83d23107f2b9bd.jpg', 'image/jpeg', 'media', 91298, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 119, '2019-03-05 09:29:37', '2019-03-05 09:29:38'),
(131, 'App\\Product', 20, 'product_avatar', '1551778253-903793e80c74c18627a6410a9dae8b9e', '1551778253-903793e80c74c18627a6410a9dae8b9e.jpg', 'image/jpeg', 'media', 254120, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 120, '2019-03-05 09:31:11', '2019-03-05 09:31:11'),
(132, 'App\\Product', 20, 'product_details', '1551778255-8acc422420668f4fa4c6c5fd8bf87969', '1551778255-8acc422420668f4fa4c6c5fd8bf87969.jpg', 'image/jpeg', 'media', 424062, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 121, '2019-03-05 09:31:11', '2019-03-05 09:31:12'),
(133, 'App\\Product', 20, 'product_details', '1551778257-a0fc9a41546b1fdb002c6f814d8fec95', '1551778257-a0fc9a41546b1fdb002c6f814d8fec95.jpg', 'image/jpeg', 'media', 421581, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 122, '2019-03-05 09:31:12', '2019-03-05 09:31:13'),
(134, 'App\\Product', 20, 'product_details', '1551778258-903793e80c74c18627a6410a9dae8b9e', '1551778258-903793e80c74c18627a6410a9dae8b9e.jpg', 'image/jpeg', 'media', 254120, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 123, '2019-03-05 09:31:13', '2019-03-05 09:31:13'),
(135, 'App\\Product', 21, 'product_avatar', '1551778336-f6d67c5be676794682fc1d5cdd8aecf3', '1551778336-f6d67c5be676794682fc1d5cdd8aecf3.jpg', 'image/jpeg', 'media', 174899, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 124, '2019-03-05 09:32:22', '2019-03-05 09:32:23'),
(136, 'App\\Product', 21, 'product_details', '1551778337-0992631e7b86c3622b83d23107f2b9bd', '1551778337-0992631e7b86c3622b83d23107f2b9bd.jpg', 'image/jpeg', 'media', 91298, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 125, '2019-03-05 09:32:23', '2019-03-05 09:32:24'),
(137, 'App\\Product', 21, 'product_details', '1551778341-38735941_946945828821022_6472690494471143424_o', '1551778341-38735941_946945828821022_6472690494471143424_o.jpg', 'image/jpeg', 'media', 599224, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 126, '2019-03-05 09:32:24', '2019-03-05 09:32:25'),
(138, 'App\\Product', 22, 'product_avatar', '1551778393-1451ea24330b72dedd80a1b2637cfe96', '1551778393-1451ea24330b72dedd80a1b2637cfe96.jpg', 'image/jpeg', 'media', 124960, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 127, '2019-03-05 09:33:59', '2019-03-05 09:34:00'),
(139, 'App\\Product', 22, 'product_details', '1551778396-d19214d98ab67d4d62176c570428bd95', '1551778396-d19214d98ab67d4d62176c570428bd95.jpg', 'image/jpeg', 'media', 137158, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 128, '2019-03-05 09:34:00', '2019-03-05 09:34:00'),
(140, 'App\\Product', 22, 'product_details', '1551778397-89b6111642be70d53b55445f9583b024', '1551778397-89b6111642be70d53b55445f9583b024.jpg', 'image/jpeg', 'media', 149623, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 129, '2019-03-05 09:34:00', '2019-03-05 09:34:01'),
(141, 'App\\Product', 23, 'product_avatar', '1551778895-enfagrow-premium-toddler-next-step-680g', '1551778895-enfagrow-premium-toddler-next-step-680g.jpg', 'image/jpeg', 'media', 446858, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 130, '2019-03-05 09:42:22', '2019-03-05 09:42:23'),
(142, 'App\\Product', 23, 'product_details', '1551778898-enfagrow-premium-toddler-next-step-680g (2)', '1551778898-enfagrow-premium-toddler-next-step-680g-(2).jpg', 'image/jpeg', 'media', 510441, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 131, '2019-03-05 09:42:23', '2019-03-05 09:42:23'),
(143, 'App\\Product', 23, 'product_details', '1551778900-enfagrow-premium-toddler-next-step-680g (1)', '1551778900-enfagrow-premium-toddler-next-step-680g-(1).jpg', 'image/jpeg', 'media', 444962, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 132, '2019-03-05 09:42:23', '2019-03-05 09:42:24'),
(144, 'App\\News', 89, 'news_image', 'milk-cinammon-15454460707642090721344', 'milk-cinammon-15454460707642090721344.jpg', 'image/jpeg', 'media', 165111, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 133, '2019-03-06 07:00:03', '2019-03-06 07:00:05'),
(145, 'App\\Product', 24, 'product_avatar', '1551859718-thung-sua-tuoi-tiet-trung-ba-vi-co-duong-hop-180ml-48-hop-201811291108187498', '1551859718-thung-sua-tuoi-tiet-trung-ba-vi-co-duong-hop-180ml-48-hop-201811291108187498.jpg', 'image/jpeg', 'media', 310457, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 134, '2019-03-06 08:09:45', '2019-03-06 08:09:45'),
(146, 'App\\Product', 24, 'product_details', '1551859776-thung-sua-tuoi-tiet-trung-ba-vi-co-duong-hop-180ml-48-hop-201811291108189349', '1551859776-thung-sua-tuoi-tiet-trung-ba-vi-co-duong-hop-180ml-48-hop-201811291108189349.jpg', 'image/jpeg', 'media', 342907, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 135, '2019-03-06 08:09:45', '2019-03-06 08:09:46'),
(147, 'App\\Product', 24, 'product_details', '1551859779-thung-sua-tuoi-tiet-trung-ba-vi-co-duong-hop-180ml-48-hop-201811291108184866', '1551859779-thung-sua-tuoi-tiet-trung-ba-vi-co-duong-hop-180ml-48-hop-201811291108184866.jpg', 'image/jpeg', 'media', 447727, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 136, '2019-03-06 08:09:46', '2019-03-06 08:09:46'),
(148, 'App\\Product', 25, 'product_avatar', '1551860034-loc-tiec-trung-lothamilk-huong-socola-chai-18-4-org', '1551860034-loc-tiec-trung-lothamilk-huong-socola-chai-18-4-org.jpg', 'image/jpeg', 'media', 178660, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 137, '2019-03-06 08:14:41', '2019-03-06 08:14:42'),
(149, 'App\\Product', 25, 'product_details', '1551860038-loc-sua-tuoi-tiet-trung-lothamilk-so-co-la-chai-180ml-201811280031307588', '1551860038-loc-sua-tuoi-tiet-trung-lothamilk-so-co-la-chai-180ml-201811280031307588.jpg', 'image/jpeg', 'media', 329278, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 138, '2019-03-06 08:14:42', '2019-03-06 08:14:42'),
(150, 'App\\Product', 25, 'product_details', '1551860042-loc-tiec-trung-lothamilk-huong-socola-chai-18-5-org', '1551860042-loc-tiec-trung-lothamilk-huong-socola-chai-18-5-org.jpg', 'image/jpeg', 'media', 302102, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 139, '2019-03-06 08:14:42', '2019-03-06 08:14:42'),
(151, 'App\\Product', 26, 'product_avatar', '1551860171-48da4c1c9b53cd8930ddcdc169f54a62', '1551860171-48da4c1c9b53cd8930ddcdc169f54a62.jpg', 'image/jpeg', 'media', 251270, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 140, '2019-03-06 08:16:47', '2019-03-06 08:16:48'),
(152, 'App\\Product', 26, 'product_details', '1551860173-96514bb0f1b7b098d6c975ecc8e1101e', '1551860173-96514bb0f1b7b098d6c975ecc8e1101e.jpg', 'image/jpeg', 'media', 132611, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 141, '2019-03-06 08:16:48', '2019-03-06 08:16:49'),
(153, 'App\\Product', 26, 'product_details', '1551860175-cffd1ae00b490d3f11041d76397392d6', '1551860175-cffd1ae00b490d3f11041d76397392d6.jpg', 'image/jpeg', 'media', 205549, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 142, '2019-03-06 08:16:49', '2019-03-06 08:16:49'),
(154, 'App\\Product', 27, 'product_avatar', '1551860274-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-2-org', '1551860274-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-2-org.jpg', 'image/jpeg', 'media', 221170, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 143, '2019-03-06 08:18:32', '2019-03-06 08:18:33'),
(155, 'App\\Product', 27, 'product_details', '1551860275-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-3-org', '1551860275-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-3-org.jpg', 'image/jpeg', 'media', 226761, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 144, '2019-03-06 08:18:33', '2019-03-06 08:18:33'),
(156, 'App\\Product', 27, 'product_details', '1551860278-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-5-org', '1551860278-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-5-org.jpg', 'image/jpeg', 'media', 199518, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 145, '2019-03-06 08:18:33', '2019-03-06 08:18:34'),
(160, 'App\\User', 40, 'user_avatar', 'dog0', 'dog0.jpg', 'image/jpeg', 'media', 25766, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 149, '2019-03-28 03:37:20', '2019-03-28 03:37:20'),
(161, 'App\\User', 38, 'user_avatar', 'twitter', 'twitter.jpg', 'image/jpeg', 'media', 14207, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 150, '2019-03-28 04:46:01', '2019-03-28 04:46:02'),
(162, 'App\\Product', 29, 'product_avatar', '1554717623-9515860983838', '1554717623-9515860983838.jpg', 'image/jpeg', 'media', 45318, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 151, '2019-04-08 10:01:29', '2019-04-08 10:01:31'),
(163, 'App\\Product', 29, 'product_details', '1554717628-9514940989470', '1554717628-9514940989470.jpg', 'image/jpeg', 'media', 66262, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 152, '2019-04-08 10:01:31', '2019-04-08 10:01:32'),
(164, 'App\\Product', 30, 'product_avatar', '1554717872-12802975399966', '1554717872-12802975399966.jpg', 'image/jpeg', 'media', 53834, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 153, '2019-04-08 10:04:40', '2019-04-08 10:04:40'),
(165, 'App\\Product', 30, 'product_details', '1554717874-12803671556126', '1554717874-12803671556126.jpg', 'image/jpeg', 'media', 65761, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 154, '2019-04-08 10:04:40', '2019-04-08 10:04:41'),
(166, 'App\\Product', 31, 'product_avatar', '1554718117-16247522689054', '1554718117-16247522689054.jpg', 'image/jpeg', 'media', 82080, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 155, '2019-04-08 11:18:27', '2019-04-08 11:18:28'),
(167, 'App\\Product', 31, 'product_details', '1554722290-9514940989470', '1554722290-9514940989470.jpg', 'image/jpeg', 'media', 66262, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 156, '2019-04-08 11:18:28', '2019-04-08 11:18:28'),
(168, 'App\\User', 20, 'user_avatar', 'download-f5s-chat', 'download-f5s-chat.jpg', 'image/jpeg', 'media', 544641, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 157, '2019-04-11 09:15:48', '2019-04-11 09:15:49'),
(169, 'App\\Product', 28, 'product_avatar', '1555131340-suaongtho', '1555131340-suaongtho.jpg', 'image/jpeg', 'media', 83078, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 158, '2019-04-13 04:55:52', '2019-04-13 04:55:54'),
(170, 'App\\Product', 28, 'product_details', '1555131343-_ng-th_-d_-min_grande', '1555131343-_ng-th_-d_-min_grande.png', 'image/png', 'media', 59358, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 159, '2019-04-13 04:55:54', '2019-04-13 04:55:55'),
(171, 'App\\Product', 32, 'product_avatar', '1555131373-sua-dac-ong-thọ-hop-giay-1284g', '1555131373-sua-dac-ong-thọ-hop-giay-1284g.png', 'image/png', 'media', 67376, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 160, '2019-04-13 04:58:25', '2019-04-13 04:58:26'),
(172, 'App\\Product', 32, 'product_details', '1555131531-bd7cf2837b1dce761eb423153b534b10', '1555131531-bd7cf2837b1dce761eb423153b534b10.jpg', 'image/jpeg', 'media', 63825, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 161, '2019-04-13 04:59:10', '2019-04-13 04:59:11'),
(173, 'App\\Product', 28, 'product_details', '1555131538-_ng-th_-d_-min_grande', '1555131538-_ng-th_-d_-min_grande.png', 'image/png', 'media', 59358, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 162, '2019-04-13 04:59:18', '2019-04-13 04:59:18'),
(174, 'App\\User', 42, 'user_avatar', '1', '1.jpg', 'image/jpeg', 'media', 4039, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 163, '2019-04-13 10:06:57', '2019-04-13 10:06:59'),
(175, 'App\\User', 36, 'user_avatar', 'cat3', 'cat3.jpg', 'image/jpeg', 'media', 100895, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 164, '2019-04-13 10:07:27', '2019-04-13 10:07:28'),
(176, 'App\\User', 30, 'user_avatar', 'cat0', 'cat0.jpg', 'image/jpeg', 'media', 84215, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 165, '2019-04-13 10:07:46', '2019-04-13 10:07:47'),
(177, 'App\\User', 23, 'user_avatar', 'artworks', 'artworks.jpg', 'image/jpeg', 'media', 60187, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 166, '2019-04-13 10:08:12', '2019-04-13 10:08:12'),
(178, 'App\\User', 22, 'user_avatar', '1soapforintroverts', '1soapforintroverts.jpg', 'image/jpeg', 'media', 93327, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 167, '2019-04-13 10:08:28', '2019-04-13 10:08:29'),
(179, 'App\\User', 21, 'user_avatar', 'anhduong', 'anhduong.jpg', 'image/jpeg', 'media', 688140, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 168, '2019-04-13 10:08:57', '2019-04-13 10:08:58'),
(181, 'App\\User', 6, 'user_avatar', 'me', 'me.JPG', 'image/jpeg', 'media', 975966, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 170, '2019-04-13 10:11:08', '2019-04-13 10:11:10'),
(182, 'App\\User', 7, 'user_avatar', 'IMG_1972', 'IMG_1972.JPG', 'image/jpeg', 'media', 1050752, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 171, '2019-04-13 10:20:36', '2019-04-13 10:20:38'),
(183, 'App\\User', 8, 'user_avatar', 'me', 'me.JPG', 'image/jpeg', 'media', 975966, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 172, '2019-04-13 10:21:10', '2019-04-13 10:21:12'),
(184, 'App\\User', 9, 'user_avatar', 'Nước', 'Nước.jpg', 'image/jpeg', 'media', 579569, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 173, '2019-04-13 10:21:36', '2019-04-13 10:21:38'),
(185, 'App\\User', 10, 'user_avatar', 'large', 'large.jpg', 'image/jpeg', 'media', 110472, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 174, '2019-04-13 10:23:36', '2019-04-13 10:23:36'),
(186, 'App\\User', 16, 'user_avatar', 'nevergiveup', 'nevergiveup.jpg', 'image/jpeg', 'media', 19925, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 175, '2019-04-13 10:24:20', '2019-04-13 10:24:20'),
(188, 'App\\User', 14, 'user_avatar', 'halong', 'halong.jpg', 'image/jpeg', 'media', 1231335, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 177, '2019-04-13 10:25:18', '2019-04-13 10:25:20'),
(189, 'App\\User', 13, 'user_avatar', '- memories will come out & intersperse with the rain ... for better or worse', '--memories-will-come-out-&-intersperse-with-the-rain-...-for-better-or-worse.jpg', 'image/jpeg', 'media', 308403, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 178, '2019-04-13 10:25:52', '2019-04-13 10:25:52'),
(190, 'App\\User', 12, 'user_avatar', 'đừng quá dựa dẫm vào 1 ai vì ngay cả cái bóng cũng bỏ bạn lúc tối tăm ... ', 'đừng-quá-dựa-dẫm-vào-1-ai-vì-ngay-cả-cái-bóng-cũng-bỏ-bạn-lúc-tối-tăm-...-.jpg', 'image/jpeg', 'media', 1022142, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 179, '2019-04-13 10:26:09', '2019-04-13 10:26:10'),
(192, 'App\\User', 11, 'user_avatar', '37017964_898071297058727_7646719813422678016_o', '37017964_898071297058727_7646719813422678016_o.jpg', 'image/jpeg', 'media', 930678, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 180, '2019-04-13 10:27:20', '2019-04-13 10:27:22'),
(196, 'App\\User', 1, 'user_avatar', 'artworks-000284721428-738t02-t500x500', 'artworks-000284721428-738t02-t500x500.jpg', 'image/jpeg', 'media', 30224, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 184, '2019-04-13 10:35:38', '2019-04-13 10:35:39'),
(197, 'App\\User', 57, 'user_avatar', 'FB_IMG_1455002897033', 'FB_IMG_1455002897033.jpg', 'image/jpeg', 'media', 64007, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 185, '2019-05-06 04:42:36', '2019-05-06 04:42:37'),
(198, 'App\\User', 58, 'user_avatar', 't.hờ', 't.hờ.jpg', 'image/jpeg', 'media', 277350, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 186, '2019-05-06 06:30:34', '2019-05-06 06:30:35'),
(199, 'App\\User', 56, 'user_avatar', '39440ce730bcd8c78f7c1775923d3df1', '39440ce730bcd8c78f7c1775923d3df1.jpg', 'image/jpeg', 'media', 35998, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 187, '2019-05-06 06:32:44', '2019-05-06 06:32:45'),
(200, 'App\\User', 3, 'user_avatar', '1KeanuReeves', '1KeanuReeves.jpg', 'image/jpeg', 'media', 77974, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 188, '2019-05-06 07:56:01', '2019-05-06 07:56:01'),
(202, 'App\\User', 59, 'user_avatar', 'IMG_0151', 'IMG_0151.JPG', 'image/jpeg', 'media', 1870569, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 189, '2019-05-06 07:56:12', '2019-05-06 07:56:14'),
(204, 'App\\User', 5, 'user_avatar', 'Imagine_Dragons_Dan_Reynolds', 'Imagine_Dragons_Dan_Reynolds.jpg', 'image/jpeg', 'media', 82495, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 191, '2019-05-06 08:03:05', '2019-05-06 08:03:05'),
(205, 'App\\User', 4, 'user_avatar', 'hat', 'hat.JPG', 'image/jpeg', 'media', 74749, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 192, '2019-05-06 08:55:47', '2019-05-06 08:55:47'),
(206, 'App\\User', 15, 'user_avatar', 'killmeinmydream', 'killmeinmydream.jpg', 'image/jpeg', 'media', 216555, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 193, '2019-05-06 08:57:35', '2019-05-06 08:57:35'),
(207, 'App\\Product', 33, 'product_avatar', '1557197116-d7603d8689d61311c9101643d60a241f', '1557197116-d7603d8689d61311c9101643d60a241f.jpg', 'image/jpeg', 'media', 66140, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 194, '2019-05-07 02:46:48', '2019-05-07 02:46:51'),
(208, 'App\\Product', 33, 'product_details', '1557197119-483f763d12475bc93fdafd45e622749c', '1557197119-483f763d12475bc93fdafd45e622749c.jpg', 'image/jpeg', 'media', 30243, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 195, '2019-05-07 02:46:51', '2019-05-07 02:46:51'),
(209, 'App\\Product', 33, 'product_details', '1557197121-1eecfd2ce5e7e8607f854cd679241441', '1557197121-1eecfd2ce5e7e8607f854cd679241441.jpg', 'image/jpeg', 'media', 33050, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 196, '2019-05-07 02:46:51', '2019-05-07 02:46:52'),
(210, 'App\\Product', 33, 'product_details', '1557197122-09a34890f14868421456ef837dbb55f4', '1557197122-09a34890f14868421456ef837dbb55f4.jpg', 'image/jpeg', 'media', 31020, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 197, '2019-05-07 02:46:52', '2019-05-07 02:46:52'),
(211, 'App\\Product', 34, 'product_avatar', '1557197253-50cfea3f586ec36d6c69f1c7b037162b', '1557197253-50cfea3f586ec36d6c69f1c7b037162b.jpg', 'image/jpeg', 'media', 43796, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 198, '2019-05-07 02:48:43', '2019-05-07 02:48:43'),
(212, 'App\\Product', 34, 'product_details', '1557197255-8b618cbc57d11db5dbb0cdf536109a53', '1557197255-8b618cbc57d11db5dbb0cdf536109a53.jpg', 'image/jpeg', 'media', 44650, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 199, '2019-05-07 02:48:44', '2019-05-07 02:48:44'),
(213, 'App\\Product', 34, 'product_details', '1557197257-50cfea3f586ec36d6c69f1c7b037162b', '1557197257-50cfea3f586ec36d6c69f1c7b037162b.jpg', 'image/jpeg', 'media', 43796, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 200, '2019-05-07 02:48:44', '2019-05-07 02:48:44'),
(214, 'App\\Product', 35, 'product_avatar', '1557197513-51551333aef212c666eba0e9ebf23aee', '1557197513-51551333aef212c666eba0e9ebf23aee.jpg', 'image/jpeg', 'media', 61093, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 201, '2019-05-07 02:54:37', '2019-05-07 02:54:38'),
(215, 'App\\Product', 35, 'product_details', '1557197516-9d2dc0f5c121a2e7a860a34bdb65e81e', '1557197516-9d2dc0f5c121a2e7a860a34bdb65e81e.jpg', 'image/jpeg', 'media', 77484, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 202, '2019-05-07 02:54:38', '2019-05-07 02:54:39'),
(216, 'App\\Product', 35, 'product_details', '1557197519-f39fc85f03d7b926dd928f79e8fb01ad', '1557197519-f39fc85f03d7b926dd928f79e8fb01ad.jpg', 'image/jpeg', 'media', 77728, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 203, '2019-05-07 02:54:39', '2019-05-07 02:54:39'),
(217, 'App\\Product', 35, 'product_details', '1557197522-51551333aef212c666eba0e9ebf23aee', '1557197522-51551333aef212c666eba0e9ebf23aee.jpg', 'image/jpeg', 'media', 61093, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 204, '2019-05-07 02:54:39', '2019-05-07 02:54:40'),
(218, 'App\\Product', 36, 'product_avatar', '1557197774-75d288d291373b39efc83c356ee50595', '1557197774-75d288d291373b39efc83c356ee50595.jpg', 'image/jpeg', 'media', 58076, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 205, '2019-05-07 02:56:23', '2019-05-07 02:56:23'),
(219, 'App\\Product', 36, 'product_details', '1557197776-8792ac5badb07359a1f2628571d4ebff', '1557197776-8792ac5badb07359a1f2628571d4ebff.jpg', 'image/jpeg', 'media', 57881, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 206, '2019-05-07 02:56:23', '2019-05-07 02:56:24'),
(220, 'App\\Product', 37, 'product_avatar', '1557197895-6f90fed0f69622dc4cfb97cd2877091a', '1557197895-6f90fed0f69622dc4cfb97cd2877091a.jpg', 'image/jpeg', 'media', 21491, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 207, '2019-05-07 02:58:40', '2019-05-07 02:58:40'),
(221, 'App\\Product', 37, 'product_details', '1557197898-02b8663cfcf51f724913e1321ba4c7b9', '1557197898-02b8663cfcf51f724913e1321ba4c7b9.jpg', 'image/jpeg', 'media', 67239, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 208, '2019-05-07 02:58:40', '2019-05-07 02:58:41'),
(222, 'App\\Product', 37, 'product_details', '1557197901-c9c748aa65361fb6404379bf3fdb2aa6', '1557197901-c9c748aa65361fb6404379bf3fdb2aa6.jpg', 'image/jpeg', 'media', 45872, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 209, '2019-05-07 02:58:41', '2019-05-07 02:58:41'),
(228, 'App\\Product', 40, 'product_avatar', '1557311453-1soapforintroverts', '1557311453-1soapforintroverts.jpg', 'image/jpeg', 'media', 72665, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 210, '2019-05-08 10:31:09', '2019-05-08 10:31:09'),
(229, 'App\\Product', 40, 'product_details', '1557311454-2016-01-12 11.36.03', '1557311454-2016-01-12-11.36.03.jpg', 'image/jpeg', 'media', 50534, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 211, '2019-05-08 10:31:10', '2019-05-08 10:31:10'),
(230, 'App\\Product', 41, 'product_avatar', '1557311596-1KeanuReeves', '1557311596-1KeanuReeves.jpg', 'image/jpeg', 'media', 71866, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 212, '2019-05-08 10:33:25', '2019-05-08 10:33:25'),
(231, 'App\\Product', 41, 'product_details', '1557311591-1soapforintroverts', '1557311591-1soapforintroverts.jpg', 'image/jpeg', 'media', 72665, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 213, '2019-05-08 10:33:25', '2019-05-08 10:33:26'),
(232, 'App\\Product', 42, 'product_avatar', '1557311628-anime', '1557311628-anime.jpg', 'image/jpeg', 'media', 443267, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 214, '2019-05-08 10:34:10', '2019-05-08 10:34:11'),
(233, 'App\\Product', 42, 'product_details', '1557311636-20160209_174147', '1557311636-20160209_174147.jpg', 'image/jpeg', 'media', 227180, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 215, '2019-05-08 10:34:11', '2019-05-08 10:34:12'),
(234, 'App\\Product', 38, 'product_avatar', '1557323312-85d99f0257414b5f8f8083f23bff8b0a', '1557323312-85d99f0257414b5f8f8083f23bff8b0a.jpg', 'image/jpeg', 'media', 66465, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 216, '2019-05-08 13:48:43', '2019-05-08 13:48:45'),
(235, 'App\\Product', 38, 'product_details', '1557323299-38a402cc26669f6fb4a69107cf5618ef', '1557323299-38a402cc26669f6fb4a69107cf5618ef.jpg', 'image/jpeg', 'media', 83350, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 217, '2019-05-08 13:48:45', '2019-05-08 13:48:46'),
(236, 'App\\Product', 38, 'product_details', '1557323302-85d99f0257414b5f8f8083f23bff8b0a', '1557323302-85d99f0257414b5f8f8083f23bff8b0a.jpg', 'image/jpeg', 'media', 66465, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 218, '2019-05-08 13:48:46', '2019-05-08 13:48:47'),
(237, 'App\\Product', 43, 'product_avatar', '1557408545-6f90fed0f69622dc4cfb97cd2877091a', '1557408545-6f90fed0f69622dc4cfb97cd2877091a.jpg', 'image/jpeg', 'media', 21491, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 219, '2019-05-09 13:29:25', '2019-05-09 13:29:28'),
(238, 'App\\Product', 43, 'product_details', '1557408547-02b8663cfcf51f724913e1321ba4c7b9', '1557408547-02b8663cfcf51f724913e1321ba4c7b9.jpg', 'image/jpeg', 'media', 67239, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 220, '2019-05-09 13:29:28', '2019-05-09 13:29:28'),
(239, 'App\\News', 87, 'news_image', 'image001_2', 'image001_2.jpg', 'image/jpeg', 'media', 88073, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 221, '2019-05-10 04:03:45', '2019-05-10 04:03:47'),
(240, 'App\\News', 86, 'news_image', 'an_sang', 'an_sang.jpg', 'image/jpeg', 'media', 106877, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 222, '2019-05-10 04:05:36', '2019-05-10 04:05:36'),
(241, 'App\\News', 85, 'news_image', 'dua_hau', 'dua_hau.jpg', 'image/jpeg', 'media', 182657, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 223, '2019-05-10 04:06:19', '2019-05-10 04:06:20'),
(242, 'App\\News', 84, 'news_image', '75849678_xxl-copy', '75849678_xxl-copy.jpg', 'image/jpeg', 'media', 121171, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 224, '2019-05-10 04:07:37', '2019-05-10 04:07:38'),
(243, 'App\\News', 79, 'news_image', 'f57a418dc4cc2d9274dd', 'f57a418dc4cc2d9274dd.jpg', 'image/jpeg', 'media', 143774, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 225, '2019-05-10 04:08:31', '2019-05-10 04:08:31'),
(244, 'App\\News', 46, 'news_image', 'nuoc_mat_ong', 'nuoc_mat_ong.jpg', 'image/jpeg', 'media', 74157, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 226, '2019-05-10 04:12:25', '2019-05-10 04:12:25'),
(245, 'App\\News', 90, 'news_image', 'Laravel-logo', 'Laravel-logo.png', 'image/png', 'media', 5093, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 227, '2019-05-11 08:22:07', '2019-05-11 08:22:09'),
(246, 'App\\Product', 44, 'product_avatar', '1557629758-2016-01-12 11.36.03', '1557629758-2016-01-12-11.36.03.jpg', 'image/jpeg', 'media', 50534, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 228, '2019-05-12 02:56:23', '2019-05-12 02:56:25'),
(247, 'App\\Product', 44, 'product_details', '1557629760-1KeanuReeves', '1557629760-1KeanuReeves.jpg', 'image/jpeg', 'media', 71866, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 229, '2019-05-12 02:56:25', '2019-05-12 02:56:26'),
(248, 'App\\Product', 44, 'product_details', '1557629770-8', '1557629770-8.jpg', 'image/jpeg', 'media', 16772, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 230, '2019-05-12 02:56:26', '2019-05-12 02:56:26'),
(249, 'App\\Product', 44, 'product_details', '1557629768-09a34890f14868421456ef837dbb55f4', '1557629768-09a34890f14868421456ef837dbb55f4.jpg', 'image/jpeg', 'media', 31020, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 231, '2019-05-12 02:56:26', '2019-05-12 02:56:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(167, '2014_10_12_000000_create_users_table', 1),
(169, '2019_02_11_082045_create_admins_table', 1),
(170, '2019_02_11_082156_create_catagories_types_table', 1),
(171, '2019_02_11_082245_create_catagories_table', 1),
(172, '2019_02_11_082341_create_distributions_table', 1),
(173, '2019_02_11_082410_create_products_table', 1),
(174, '2019_02_11_082558_create_writers_table', 1),
(175, '2019_02_11_082745_create_orders_table', 1),
(178, '2019_02_12_150547_create_media_table', 2),
(179, '2019_02_15_150510_create_subscribes_table', 3),
(180, '2019_02_16_114159_create_shoppingcart_table', 4),
(181, '2019_02_18_102707_create_contacts_table', 5),
(186, '2019_02_11_083200_create_news_table', 6),
(187, '2019_02_18_135053_create_tags_table', 6),
(188, '2019_02_18_142741_create_new_tags_table', 6),
(189, '2019_02_25_170815_create_jobs_table', 7),
(192, '2019_02_11_083135_create_order_details_table', 8),
(196, '2014_10_12_100000_create_password_resets_table', 9),
(202, '2019_05_07_113028_create_news_comments_table', 10),
(203, '2019_05_07_113141_create_product_comments_table', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `count_views` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `content`, `author_id`, `status`, `count_views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(46, 'Sắn dây kết hợp cùng mật ong tạo thành chất cực độc?', 'san-day-ket-hop-cung-mat-ong-tao-thanh-chat-cuc-doc', '<p>Nhiều người lo sợ việc uống sắn d&acirc;y kết hợp c&ugrave;ng mật ong sẽ tạo th&agrave;nh chất cực độc c&oacute; thể g&acirc;y chết người.</p>\r\n\r\n<p>Thời tiết nắng n&oacute;ng, sắn d&acirc;y l&agrave; loại nước giải nhiệt thường được khuyến c&aacute;o n&ecirc;n d&ugrave;ng h&agrave;ng ng&agrave;y. Tuy nhi&ecirc;n, nhiều người lại lo ngại khi c&oacute; th&ocirc;ng tin cho rằng uống sắn d&acirc;y kết hợp c&ugrave;ng mật ong sẽ tạo th&agrave;nh chất độc chết người.</p>\r\n\r\n<p>Về th&ocirc;ng tin n&agrave;y, PGS.TS Nguyễn Thị L&acirc;m, nguy&ecirc;n Ph&oacute; viện trưởng Viện Dinh dưỡng Quốc gia, khẳng định: &ldquo;Uống sắn d&acirc;y kết hợp c&ugrave;ng mật ong tạo chất độc chết người l&agrave; kh&ocirc;ng ch&iacute;nh x&aacute;c. Ch&uacute;ng ta vẫn c&oacute; thể nấu ch&egrave; bột sắn d&acirc;y v&agrave; th&ecirc;m mật ong cho thơm ngon, nhiều chất dinh dưỡng. Nhưng điều kiện l&agrave; mật ong phải đảm bảo an to&agrave;n về vệ sinh thực phẩm khi chế biến&rdquo;.</p>\r\n\r\n<p>Theo b&agrave; L&acirc;m, c&aacute;c thực phẩm kh&ocirc;ng kỵ nhau đến mức g&acirc;y nguy hiểm cho sức khỏe. Chỉ c&oacute; những thực phẩm c&oacute; thể t&aacute;c dụng hiệp đồng hoặc g&acirc;y hạn chế t&aacute;c dụng của nhau. V&iacute; dụ, uống tr&agrave;, c&agrave; ph&ecirc; đặc ngay sau bữa ăn c&oacute; thể g&acirc;y hạn chế hấp thu sắt. Nước, quả ch&iacute;n gi&agrave;u vitamin C lại gi&uacute;p tăng cường hấp thu sắt.</p>\r\n\r\n<p>&ldquo;Nếu bạn ăn c&aacute;c loại rau nhuận tr&agrave;ng c&ugrave;ng với hải sản như h&agrave;u, ngao - l&agrave; những thực phẩm dễ nhiễm khuẩn - cũng c&oacute; thể g&acirc;y rối loạn ti&ecirc;u h&oacute;a. Với sắn d&acirc;y, khi uống, cần lưu &yacute; những người vi&ecirc;m đại tr&agrave;ng, rối loạn ti&ecirc;u h&oacute;a kh&ocirc;ng n&ecirc;n sử dụng v&igrave; ch&uacute;ng c&oacute; thể g&acirc;y nhuận tr&agrave;ng&rdquo;, PGS L&acirc;m lưu &yacute;.</p>\r\n\r\n<p>Lương y Vũ Quốc Trung (H&agrave; Nội) cũng cho biết bột sắn sau khi tinh lọc chỉ c&ograve;n tinh bột, khi ăn v&agrave;o cơ thể chuyển h&oacute;a th&agrave;nh đường glucoza. C&ograve;n mật ong c&oacute; th&agrave;nh phần hầu hết l&agrave; đường glucoza, đường fructoza v&agrave; một số vitamin, vi lượng, hoạt chất sinh học.</p>\r\n\r\n<p>&ldquo;Mật ong l&agrave; chất bổ dưỡng tốt, c&oacute; t&aacute;c dụng chữa bệnh về đường ruột v&agrave; c&oacute; t&iacute;nh kh&aacute;ng khuẩn n&ecirc;n kh&ocirc;ng hề g&acirc;y hại. Về tương t&aacute;c với bột sắn d&acirc;y, ho&agrave;n to&agrave;n l&agrave; sự bịa đặt bởi mật ong t&iacute;nh b&igrave;nh, sắn d&acirc;y t&iacute;nh m&aacute;t kết hợp với nhau kh&ocirc;ng hề g&acirc;y ra phản ứng&rdquo;, lương y Trung cho hay.</p>', 2, '1', 61, '2019-02-18 08:15:46', '2019-05-12 02:54:38', NULL),
(47, 'Uống sữa tốt lắm', 'hic-corrupti-placeat-odit-repellat', 'Voluptatem aut consequuntur velit molestias voluptatem in vel. Aut natus sed quaerat laboriosam aspernatur doloribus voluptatem. Et eius non harum aut. Suscipit et vel voluptatibus ratione quidem. Dolor est officia laudantium. Sed voluptas voluptate numquam ex id eos. Molestias aliquam delectus officiis ut nihil. Quas aut culpa sed. Eos dicta repellat molestiae asperiores earum ratione. Dolorem consequatur distinctio possimus odit officia. Tempore ipsum perferendis dicta consequatur quis ducimus. Voluptatem consequuntur doloremque eos accusamus aliquam. Saepe voluptatem accusamus sit sed dolores labore accusantium. Eaque similique porro delectus.', NULL, '1', 60, '2019-02-18 08:15:46', '2019-05-10 04:10:20', '2019-05-10 04:10:20'),
(48, 'Uống sữa tăng canxi', 'quidem-sed-error', 'Iste aperiam minus voluptatem quaerat excepturi nisi. Iste consequatur id vel nihil iusto minima ut sit. Eum asperiores placeat perferendis ratione. Nemo est iste est quas sunt rerum. Rerum quidem hic nihil nihil. Qui illum culpa porro laborum quaerat aut id. Qui velit voluptate cupiditate qui asperiores soluta. Maiores sint numquam voluptatem ut repellat expedita quis doloremque. Doloribus porro at corrupti sunt sequi quia repudiandae ipsa.', 3, '1', 60, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(49, 'Uống sữa tươi mỗi ngày nhé', 'nam-ut-dolor-nihil', 'Ab maxime consequatur cumque omnis qui. Veniam vero blanditiis sint ut enim commodi. Sequi repudiandae qui ut quidem vel. Id non qui illo ipsa ut. Dolor nihil iusto et. Eos corrupti maiores ipsum et quos ea inventore laboriosam. Totam ratione aut explicabo autem omnis praesentium sint. Veritatis qui itaque doloribus aut alias id ut. Maxime quisquam neque expedita recusandae. Et eveniet deserunt possimus ad id repudiandae. Quisquam magni dicta tempora laborum vero voluptatem laudantium quae.', 2, '1', 60, '2019-02-18 08:15:46', '2019-02-19 13:58:56', NULL),
(50, 'Uống sữa đi nào!', 'iste-eveniet-accusantium-eveniet-vero', 'Odit similique commodi ratione accusamus et nisi. Eos ratione qui placeat labore. Explicabo ullam aut quam nihil quisquam quibusdam qui. Quasi molestiae accusamus quae asperiores eum ut. Vel quo eius aut reprehenderit et et in. Voluptatem commodi omnis eum asperiores. Eos consequatur est culpa temporibus voluptate sit sint. Accusamus dolore adipisci eligendi aut non ratione cupiditate sed. Fugiat fuga eligendi et sed aspernatur odit et. Non reprehenderit voluptatibus sed inventore sapiente et officiis. Recusandae molestiae velit autem ut magni et sint.', 1, '1', 61, '2019-02-18 08:15:46', '2019-05-12 02:54:40', NULL),
(51, 'Nihil quod doloribus voluptatem fugit.', 'et-est-blanditiis-praesentium-fuga', 'Nulla sit maxime quo quia autem. Consequatur dolores iste et inventore. Voluptates repellendus corporis modi. Fugiat excepturi officia laborum et ad magni dignissimos. Aut dicta laboriosam consequatur nam architecto eos ipsum. Recusandae odio possimus dolorum sed. At sed voluptatem et occaecati unde voluptatem fugiat nobis. Voluptatibus ab perspiciatis quam voluptatem. Nesciunt consequuntur aut ea libero adipisci. Ducimus dolorem expedita laboriosam odit quidem fugit non. Earum quia quia velit possimus quia. Numquam incidunt et dolor aut. Non non quia unde illo ducimus natus.', NULL, '1', 60, '2019-02-18 08:15:46', '2019-02-19 13:58:34', NULL),
(52, 'Atque perspiciatis ea amet voluptatem.', 'nam-possimus-excepturi-quasi', 'Libero voluptate illo quod quis. Quibusdam dolores voluptatum est dolorem ipsa atque incidunt nihil. Autem dolores cupiditate at ad autem corrupti accusantium. Ipsum dolores corrupti ab ut. Perferendis et et molestiae et. At unde saepe recusandae labore ea eaque aut tempora. Quos eum quis alias. Iure quia excepturi illo cupiditate veritatis magnam deleniti. Modi delectus totam aut reiciendis. Sed voluptatem dolorem inventore quidem reiciendis accusamus eum. Vel facilis non porro voluptas. Et aperiam nesciunt et quibusdam repudiandae id aut. Ea ducimus et porro quod fuga. Nulla in ullam ratione aut quae consequatur.', 1, '1', 60, '2019-02-18 08:15:46', '2019-02-20 04:05:40', '2019-02-20 04:05:40'),
(53, 'Aperiam ut qui similique.', 'voluptatibus-commodi-aut-corrupti', 'Aut repellendus tenetur perferendis quia doloribus. Sunt ex iste aut quos esse. Recusandae aut maxime nesciunt et sed repellat nisi. Fugit reprehenderit consequatur fuga laborum at. Et quo ut provident sed molestias quas illo. Exercitationem commodi dolorem similique. Delectus ut et autem quia quam reprehenderit. Soluta non beatae omnis vero harum. Temporibus inventore omnis magni suscipit. Eum quisquam ipsum error ratione iste.', 3, '1', 60, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(54, 'Et est officia non aut.', 'adipisci-adipisci-rerum', 'Expedita vel eos rerum voluptas ut rerum aut. Id eos accusamus occaecati amet voluptatum excepturi dolorem. Consequatur aut ut id veniam quo non dicta. Sunt aspernatur voluptas cupiditate nisi atque. Eaque consequuntur sit maiores eligendi et laboriosam. Illo voluptatem est quibusdam at quis incidunt quas. Asperiores earum quasi ut repellendus soluta minus enim harum. Deleniti natus est facere rerum aut in. Tempora nesciunt dolore aut omnis quisquam voluptatem dolorem repudiandae. Et sint maxime cumque ducimus numquam excepturi corrupti.', NULL, '1', 60, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(55, 'Aperiam et atque molestiae.', 'cum-esse-et', 'Sit fuga et et corrupti quis vitae consequatur. Doloremque tenetur incidunt consectetur vitae nam. Modi incidunt eos iusto sit nihil dolorem. Magnam doloremque corporis nisi quia repellendus laudantium. Est ut labore nam enim vel enim dolorem. Culpa eum ex ea et itaque voluptatem cupiditate. Dolores assumenda sunt quam possimus non maiores qui. Qui ut voluptatem corporis et. Quod facilis repellendus iusto molestiae. Totam eaque perferendis quis magni officia. Non ipsa ipsum sit minima ducimus sed.', 3, '1', 60, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(56, 'Ad consequatur asperiores itaque.', 'voluptatem-placeat-tempore-impedit-dolorem', 'Sit et doloribus cumque alias. Nobis et iusto mollitia doloribus illum aperiam. Quis illo excepturi aut placeat. Delectus delectus est rerum dolore. Recusandae molestiae distinctio facere sunt explicabo. Libero cupiditate maiores pariatur voluptatem necessitatibus. Repellendus qui atque ratione vitae qui corporis hic.', 3, '1', 60, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(57, 'Recusandae omnis et repudiandae praesentium.', 'sequi-adipisci-eius-corporis-provident', 'Ex dolor minus qui magnam harum aut. Iste quo quia omnis illo nesciunt eum ea perspiciatis. Animi eaque totam dolore et alias. Et consequatur voluptates enim omnis. Deserunt amet adipisci temporibus consectetur aut eveniet. Non recusandae vero eveniet nostrum tenetur iusto. Autem eum dolore iure. Sit voluptates sint occaecati corrupti. Eos quaerat ea quis et. Nisi omnis minima fugiat nam non asperiores tenetur. Placeat qui est qui.', 2, '1', 60, '2019-02-18 08:15:46', '2019-03-03 03:09:00', NULL),
(58, 'Laboriosam doloribus alias ducimus ut.', 'molestias-unde-consequuntur-vel-reprehenderit-qui', 'Est tempora est in et dolore. Et mollitia modi sed. Non et aut ratione. Eum molestiae voluptas aperiam cum error molestiae. Consequatur ea omnis vitae. Aut quisquam iusto qui magni aut sint natus deleniti. Et mollitia facilis molestiae explicabo nihil. Non quos iste qui voluptatem excepturi. Est rem totam corporis nihil architecto. Expedita esse nesciunt necessitatibus accusantium culpa. Consequatur veniam in quam et id. Assumenda id ullam eum aliquid aspernatur quas.', 1, '1', 60, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(60, 'Ducimus vitae ad blanditiis voluptatem.', 'voluptatibus-voluptatem-sed-cumque', 'Laborum veritatis blanditiis quae sit et. Id ratione dolorum praesentium consequuntur. Atque optio non corporis dolore. Veritatis veritatis velit sapiente ipsa aut deleniti in officiis. Porro quia sapiente maiores autem. Totam ex eius aut omnis itaque velit impedit. Et repellat sed ut veritatis. Consequatur vel quis sunt saepe quaerat. Et nihil maxime ea aliquid reiciendis est quo. Quia provident praesentium quia nesciunt. Qui vitae vitae est sit blanditiis voluptatem. Distinctio repudiandae nam tenetur aspernatur omnis tempora consequatur. Unde qui sunt delectus est. Architecto sequi aliquid voluptas eos.', NULL, '1', 60, '2019-02-18 08:15:46', '2019-02-20 04:05:22', '2019-02-20 04:05:22'),
(63, 'Xóa Non qui dolore tempore.', 'xoa-non-qui-dolore-tempore', '<p>Exercitationem sint hic qui exercitationem praesentium. Dolorem quia sunt quo. Repellendus nostrum quod accusantium qui illo velit. Dicta et magnam illum sint tenetur consequatur. Optio consectetur corporis sit dignissimos. Porro inventore officia possimus et cupiditate quibusdam. Ad tempora et et animi ut omnis quos. Et sed omnis incidunt aliquam suscipit qui sunt consequatur. Voluptatem et aspernatur alias repellat eos recusandae. Unde dolorem explicabo expedita quis. Illum ea magni vel non porro dolorem odit. Doloremque provident porro amet voluptas sapiente. Nobis deserunt quo quia.</p>', 2, '1', 60, '2019-02-18 08:15:46', '2019-03-07 03:16:44', NULL),
(65, 'Consequuntur nam accusamus qui.', 'consequuntur-nam-accusamus-qui', '<p>Quo distinctio incidunt vel sequi. Et ea esse sunt tenetur at ipsam. Aspernatur voluptatem assumenda dolorum ipsa saepe aliquam. Ut repudiandae et officia corrupti non nihil molestias. Quidem error voluptatum error omnis non cupiditate pariatur veniam. Minus est sed eligendi aperiam ut iusto. Et rerum natus dolor illum voluptatem sit. Saepe deleniti in explicabo sequi aliquid ad. Pariatur exercitationem aut doloribus officiis vitae alias ut. Qui delectus illum ipsum ab et.</p>', NULL, '1', 60, '2019-02-18 08:15:46', '2019-03-07 03:16:47', NULL),
(66, 'Sunt est in velit qui laboriosam.', 'sunt-est-in-velit-qui-laboriosam', '<p>Pariatur sunt vel eligendi iure ab odit. Et doloribus quam ad et et. Reprehenderit voluptate eaque illo aliquam. Consequatur et perferendis fuga velit mollitia voluptatum aliquam. Ut qui qui sit corporis. Et et velit quae qui. Ab mollitia voluptatibus voluptatem soluta architecto enim tempore.</p>', 1, '0', 60, '2019-02-18 08:15:46', '2019-03-07 03:16:54', NULL),
(67, 'Molestias tempora totam.', 'molestias-tempora-totam', '<p>Doloribus quo hic optio accusantium cum modi. Voluptatem minus porro modi sed optio aut possimus autem. Excepturi facere eius eius omnis. Officiis natus fugit debitis cumque. Eum beatae et perspiciatis est dicta optio et dolorum. Et hic vel reprehenderit necessitatibus qui quia. Et temporibus aliquid repudiandae voluptas. Iusto libero dignissimos molestiae ea. Voluptate quidem optio consectetur minus quod a. Nisi sed rem aut reprehenderit.</p>', 2, '0', 60, '2019-02-18 08:15:46', '2019-03-07 03:16:58', NULL),
(68, 'Recusandae a eligendi.', 'recusandae-a-eligendi', '<p>Totam voluptates placeat sapiente sunt quaerat. Possimus soluta vel iste pariatur. Qui et saepe explicabo ut doloremque velit minima. Porro numquam quia dolores molestias non. Sit nostrum natus id natus sunt incidunt. Est voluptatem dicta iusto et enim. Quasi molestiae omnis in occaecati et similique praesentium ipsam. Harum perspiciatis quo ut ducimus repudiandae omnis. Autem autem maxime temporibus repudiandae. Tempore cum quia est autem necessitatibus occaecati ipsam. Id et dolores quo quos modi. Et perferendis molestiae cupiditate accusamus reprehenderit ipsum ad. Qui fugit laudantium non. Ipsum velit deserunt a.</p>', 2, '0', 60, '2019-02-18 08:15:46', '2019-03-07 03:17:01', NULL),
(69, 'Architecto eos et nobis.', 'architecto-eos-et-nobis', '<p>Omnis aut nihil rerum expedita sapiente et ducimus. Aliquam odit consequatur quisquam accusantium. Ipsum dolore sunt quibusdam sed. A veniam impedit soluta eos itaque qui. Voluptatem enim perferendis veniam non officia neque temporibus. Voluptatibus repellat nesciunt eum ea voluptatibus quas dolor quae. Qui optio et ratione est. Omnis voluptatum maxime voluptas enim. Ullam nostrum totam amet autem nobis odio ex amet. Facere deleniti eveniet maiores nam cupiditate aut ullam voluptates. Alias dolor qui itaque fugit nesciunt. Fuga nesciunt doloremque voluptatem ut fugiat.</p>', 1, '0', 60, '2019-02-18 08:15:46', '2019-03-07 03:17:05', NULL),
(70, 'Unde aut consequuntur.', 'unde-aut-consequuntur', '<p>Fugiat assumenda eum asperiores harum aperiam aperiam in. Vel pariatur illo eos officiis. Occaecati rerum non sint perferendis. Ullam nihil veritatis culpa. Sit laborum expedita corporis qui dolorum eius eius nisi. Repellendus aliquam omnis veniam repellendus. Et velit aut libero. Dolorem atque id labore ut. Sit voluptates eos molestias sed sit quas. Sunt enim maiores ut et sapiente maxime. In molestiae quis consequatur voluptatem illo. Esse inventore cum qui non nostrum rerum. Beatae doloribus aspernatur iure qui qui aliquid. Nisi alias velit saepe reprehenderit earum ut.</p>', 3, '1', 3, '2019-02-18 08:15:46', '2019-03-07 03:17:45', NULL),
(71, 'Dolore maiores ut a.', 'et-eos-ut-minima-rem', 'Sint in voluptatibus ad consectetur in assumenda. Corrupti in vel ut facilis fugit est. Voluptatem velit ut nam quod tenetur dolor. Quaerat quod fugiat corporis velit voluptatem repellat itaque. Harum dignissimos aut occaecati rerum. Placeat nihil repudiandae harum voluptatibus. Nisi molestiae sunt quia. Quia quos doloribus voluptate et nulla amet. Eius ipsa tempore eius voluptatum hic velit. Sunt et esse ea eum fugit rerum eius veritatis. Aut consequuntur accusantium excepturi totam. Porro nemo voluptates quae voluptatem quod molestiae. Rem voluptatum mollitia ullam aliquam rerum voluptate. Qui voluptas atque voluptas.', 2, '1', 9, '2019-02-18 08:15:46', '2019-03-03 03:08:52', '2019-03-03 03:08:52'),
(72, 'Voluptates consequatur rerum labore.', 'voluptates-consequatur-rerum-labore', '<p>Sint minus deserunt et. Quia iure aspernatur earum. Voluptas dolor harum cum sit. Dignissimos sed eaque debitis laborum. Omnis et quis perspiciatis exercitationem quia. Voluptatem nihil suscipit sequi. Atque voluptas magnam saepe reiciendis recusandae perferendis minima doloribus.</p>', 1, '1', 2, '2019-02-18 08:15:46', '2019-05-12 02:55:28', '2019-05-12 02:55:28'),
(73, 'Et fuga aut eius.', 'et-fuga-aut-eius', '<p>Iusto hic mollitia natus et qui odio qui. Fuga consectetur est ipsum voluptates. Aperiam saepe cupiditate eos architecto. Ullam quia nostrum aspernatur ipsa dolores. Quia sed earum accusamus maxime. Vitae fugiat pariatur omnis. Optio laudantium ipsam corporis sapiente at reiciendis vitae culpa. Ut reprehenderit ex molestiae sunt in molestiae assumenda. Maxime voluptas voluptatum eum sapiente accusamus.</p>', 1, '1', 2, '2019-02-18 08:15:46', '2019-05-12 02:55:22', '2019-05-12 02:55:22'),
(74, 'Doloribus dolorum ipsam qui.', 'doloribus-dolorum-ipsam-qui', 'Repellat consequatur aperiam provident quaerat. Adipisci dolor vero quas tempora fuga placeat. Totam dolorem in esse aut velit quod dignissimos. Sapiente sed et quis cupiditate. Quibusdam voluptatibus cum quam natus est. Excepturi dolorem doloribus quod eum provident. Molestias vel dignissimos ducimus. Ipsa ut occaecati voluptate ullam reiciendis et. Accusamus facilis maiores consequatur quod.', 2, '1', 8, '2019-02-18 08:15:46', '2019-05-12 02:55:18', '2019-05-12 02:55:18'),
(75, 'Magnam totam et sit.', 'magnam-totam-et-sit', '<p>Quo dolores possimus accusantium. Et quaerat nam reprehenderit nisi quia sunt officia. Laborum magni rerum consequatur eius id. Quidem saepe nam consequuntur incidunt. Architecto quam sit voluptatem aut consequatur. Soluta officiis consequatur laudantium doloremque error voluptatem sequi et. Tempora adipisci dolor nostrum repellat voluptatum. Recusandae assumenda vel ea ut at. Eos voluptate est perspiciatis culpa. Dolor quod deserunt sed. Nemo fugit similique omnis quo rerum culpa modi. Et qui voluptas debitis et vel optio dolorum. Qui fugit temporibus et recusandae non ut ratione sequi. Voluptatem deserunt omnis officia sed voluptate.</p>', 1, '1', 6, '2019-02-18 08:15:46', '2019-05-12 02:55:14', '2019-05-12 02:55:14'),
(76, 'Tiêu đề bài viết Tiêu đề bài viết', 'tieu-de-bai-viet-tieu-de-bai-viet', '<p>Mỹ v&agrave; Triều Ti&ecirc;n đ&atilde; c&ugrave;ng ngồi v&agrave;o b&agrave;n thảo luận về chương tr&igrave;nh nghị sự cho hội nghị thượng đỉnh giữa TT Trump v&agrave; l&atilde;nh đạo Kim Jong Un nhưng vẫn chưa thỏa thuận được g&igrave;.</p>\r\n\r\n<p>&quot;Hiện tại, hai b&ecirc;n vẫn chưa thỏa thuận được g&igrave;.&nbsp;Th&agrave;nh c&ocirc;ng hay thất bại của hội nghị thượng đỉnh phụ thuộc v&agrave;o kết quả của c&aacute;c cuộc đ&agrave;m ph&aacute;n b&ecirc;n lề một tuần trước hội nghị thượng đỉnh&quot;, một nguồn tin ngoại giao n&oacute;i với&nbsp;<em>Chosun Ilbo</em>.</p>\r\n\r\n<p>Stephen Biegun, đặc ph&aacute;i vi&ecirc;n của&nbsp;Mỹ&nbsp;về&nbsp;Triều Ti&ecirc;n, vừa đến H&agrave; Nội. &Ocirc;ng đang chuẩn bị cho c&aacute;c cuộc đ&agrave;m ph&aacute;n trong tuần qua.</p>\r\n\r\n<p>Biegun đ&atilde; cử Alex Wong, trợ l&yacute; thứ trưởng ngoại giao, tới H&agrave; Nội v&agrave;o ng&agrave;y 18/2 để gặp Pak Chol, ph&oacute; chủ tịch Ủy ban h&ograve;a b&igrave;nh ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương của Triều Ti&ecirc;n.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"My - Trieu tiep tuc tranh cai ve chuong trinh cho hoi nghi thuong dinh hinh anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/lce_vjrcc/2019_02_20/biegun.jpg\" style=\"height:1380px; width:2460px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đặc ph&aacute;i vi&ecirc;n Mỹ về Triều Ti&ecirc;n Stephen Biegun được c&aacute;c ph&oacute;ng vi&ecirc;n v&acirc;y quanh sau khi đến Seoul v&agrave;o ng&agrave;y 3/2 để thảo luận với c&aacute;c quan chức&nbsp;H&agrave;n Quốc&nbsp;v&agrave; Triều Ti&ecirc;n. Ảnh:&nbsp;<em>Reuters</em>.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Mỹ đang đề xuất mở văn ph&ograve;ng li&ecirc;n lạc, tuy&ecirc;n bố chấm dứt Chiến tranh Triều Ti&ecirc;n v&agrave; nối lại c&aacute;c tour du lịch trọn g&oacute;i đến Khu nghỉ dưỡng N&uacute;i Kumgang để đổi lấy việc th&aacute;o dỡ cơ sở hạt nh&acirc;n Yongbyon v&agrave; căn cứ t&ecirc;n lửa Tongchang-ri. Tuy nhi&ecirc;n, B&igrave;nh Nhưỡng chủ yếu quan t&acirc;m đến việc dỡ bỏ c&aacute;c lệnh trừng phạt quốc tế bằng c&aacute;ch phi hạt nh&acirc;n h&oacute;a c&agrave;ng &iacute;t c&agrave;ng tốt.</p>', NULL, '1', 1, '2019-02-20 04:58:12', '2019-05-10 04:07:59', '2019-05-10 04:07:59'),
(77, 'êu đề bài viết', 'tieu-de-bai-viet', '<p>&agrave;i viết&nbsp;&agrave;i viết&nbsp;</p>', NULL, '1', 10, '2019-02-20 04:58:27', '2019-02-20 07:06:53', '2019-02-20 07:06:53'),
(78, 'êu đề bài viết', 'tieu-de', '<p>&agrave;i viết&nbsp;&agrave;i viết&nbsp;</p>', NULL, '1', 19, '2019-02-20 04:58:43', '2019-02-20 07:06:49', '2019-02-20 07:06:49'),
(79, 'Cung bậc cảm xúc ngày tân binh thủ đô lên đường nhập ngũ', 'cung-bac-cam-xuc-ngay-tan-binh-thu-do-len-duong-nhap-ngu', '<p>C&oacute; cả nụ cười, nước mắt, những &aacute;nh nh&igrave;n t&acirc;m trạng v&agrave; nhiều c&aacute;i &ocirc;m thật chặt trong buổi s&aacute;ng h&agrave;ng ngh&igrave;n thanh ni&ecirc;n H&agrave; Nội nhập ngũ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;2 năm tới.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Nhung cung bac cam xuc ngay tan binh thu do len duong nhap ngu hinh anh 10\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/ayhunwx/2019_02_20/nhap_ngu_zing_9.jpg\" style=\"height:1280px; width:1920px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&quot;Bạn b&egrave; chơi với nhau từ b&eacute; đến giờ, cũng chỉ ch&uacute;c n&oacute; ở trong đơn vị r&egrave;n luyện tốt, hẹn 2 năm nữa gặp lại&quot;, Thanh H&ugrave;ng, người đến tiễn bạn l&ecirc;n đường, chia sẻ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, '1', 40, '2019-02-20 07:15:10', '2019-05-12 02:54:37', NULL),
(80, 'Thanh niên cả nước hăng hái lên đường nhập ngũ', 'thanh-nien-ca-nuoc-hang-hai-len-duong-nhap-ngu', '<h2>S&aacute;ng nay 20/2, lễ giao nhận qu&acirc;n năm 2019 ch&iacute;nh thức được tổ chức tại 43 tỉnh, th&agrave;nh. Tr&ecirc;n khắp cả nước, h&agrave;ng vạn thanh ni&ecirc;n hăng h&aacute;i l&ecirc;n đường nhập ngũ, thực hiện nghĩa vụ với Tổ quốc.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Theo thường trực Hội đồng Nghĩa vụ qu&acirc;n sự tỉnh Ph&uacute; Y&ecirc;n</strong>, năm 2019 c&oacute; 1.800 thanh ni&ecirc;n được tuyển chọn nhập ngũ v&agrave;o c&aacute;c đơn vị trong qu&acirc;n đội. Số thanh ni&ecirc;n n&agrave;y sẽ được giao về c&aacute;c đơn vị: Sư đo&agrave;n 2 (Qu&acirc;n khu 5), Binh đo&agrave;n T&acirc;y Nguy&ecirc;n v&agrave; c&aacute;c qu&acirc;n, binh chủng: Ph&ograve;ng kh&ocirc;ng - Kh&ocirc;ng qu&acirc;n, Hải qu&acirc;n, C&ocirc;ng binh, H&oacute;a học, Bộ Chỉ huy Qu&acirc;n sự tỉnh Ph&uacute; Y&ecirc;n, Bộ Chỉ huy Bộ đội Bi&ecirc;n ph&ograve;ng tỉnh Ph&uacute; Y&ecirc;n, C&ocirc;ng an tỉnh Ph&uacute; Y&ecirc;n.</p>\r\n\r\n<p><img alt=\"Thanh niên cả nước hăng hái lên đường nhập ngũ - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/02/20/bi-thu-img-5181-1550635327011.jpg\" /></p>\r\n\r\n<p>B&iacute; thư tỉnh ủy Ph&uacute; Y&ecirc;n tặng hoa, động vi&ecirc;n c&aacute;c thanh ni&ecirc;n l&ecirc;n đường nhập ngũ (Ảnh: Trung Thi)</p>\r\n\r\n<p>Chiến sĩ Nguyễn Minh Hơn, th&agrave;nh phố Tuy H&ograve;a, tỉnh Ph&uacute; Y&ecirc;n, chia sẻ: &quot;Khi được chọn l&agrave; thanh ni&ecirc;n nhập ngũ em rất vui. Em hứa l&agrave; sẽ chấp h&agrave;nh tốt c&aacute;c quy định của đơn vị v&agrave; xứng danh l&agrave; anh bộ đội cụ Hồ&quot;.</p>\r\n\r\n<p><img alt=\"Thanh niên cả nước hăng hái lên đường nhập ngũ - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/02/20/thanh-nien-img-5233-copy-1550635311835.jpg\" /></p>\r\n\r\n<p>Ph&uacute; Y&ecirc;n tổ chức giao nhận qu&acirc;n an to&agrave;n (Ảnh: Trung Thi)</p>\r\n\r\n<p>T&iacute;nh đến 8 giờ s&aacute;ng nay c&ocirc;ng t&aacute;c giao qu&acirc;n tr&ecirc;n địa b&agrave;n tỉnh Ph&uacute; Y&ecirc;n đ&atilde; ho&agrave;n th&agrave;nh an to&agrave;n tuyệt đối. Việc giao nhận qu&acirc;n đảm bảo số lượng, chất lượng v&agrave; thời gian.</p>\r\n\r\n<p>Trong đợt giao qu&acirc;n năm 2019 n&agrave;y,&nbsp;<strong>to&agrave;n tỉnh Quảng Nam</strong>&nbsp;c&oacute; 2.400 thanh ni&ecirc;n l&ecirc;n đường nhập ngũ. Trong đ&oacute;, đang ch&uacute; &yacute; c&oacute; h&agrave;ng chục Đảng vi&ecirc;n, thanh ni&ecirc;n v&agrave; c&ocirc;ng chức tr&ecirc;n địa b&agrave;n tự nguyện viết đơn t&igrave;nh nguyện nhập ngũ.</p>', NULL, '1', 31, '2019-02-20 10:00:41', '2019-02-27 03:21:01', NULL),
(81, 'Thượng đỉnh Mỹ - Triều: Cái bắt tay có tạo đột phá hòa bình?', 'thuong-dinh-my-trieu-cai-bat-tay-co-tao-dot-pha-hoa-binh', '<p>- Cuộc gặp n&agrave;y c&oacute; vai tr&ograve; quan trọng như thế n&agrave;o?</p>\r\n\r\n<p>-&nbsp;<strong>Tiến sĩ Lim Tai Wei,&nbsp;Viện nghi&ecirc;n cứu Đ&ocirc;ng &Aacute; thuộc Đại học Quốc gia Singapore (NUS)</strong>:&nbsp;Tổng thống Donald Trump đứng trước th&aacute;ch thức phải chứng minh những người chỉ tr&iacute;ch rằng &ocirc;ng c&oacute; thể đạt được kết quả l&acirc;u d&agrave;i từ cuộc gặp n&agrave;y. Ở trong nước, &ocirc;ng đối mặt với một quốc hội do đảng D&acirc;n chủ kiểm so&aacute;t v&agrave; cần ghi điểm trước cử tri cho chiến dịch tranh cử sắp tới.</p>\r\n\r\n<p>Về ph&iacute;a &ocirc;ng Kim, đ&acirc;y l&agrave; cơ hội cđể vận động Mỹ dỡ bỏ bớt c&aacute;c trừng phạt kinh tế, v&agrave; &ocirc;ng phải c&oacute; một v&agrave;i động th&aacute;i phi hạt nh&acirc;n h&oacute;a.</p>\r\n\r\n<p>-&nbsp;<strong>Gi&aacute;o sư&nbsp;Zhu Feng, Đại học Nam Kinh </strong>: T&ocirc;i nghĩ vấn đề l&agrave; liệu c&aacute;c th&agrave;nh tựu của hội nghị c&oacute; l&agrave;m h&agrave;i l&ograve;ng cộng đồng quốc tế hay kh&ocirc;ng. C&aacute;ch tiếp cận của TT Trump đối với vấn đề Triều Ti&ecirc;n đ&atilde; thay đổi một c&aacute;ch đ&aacute;ng kể từ cuộc gặp lần trước, chẳng hạn Nh&agrave; Trắng kh&ocirc;ng c&ograve;n đ&ograve;i hỏi thời hạn cho phi hạt nh&acirc;n h&oacute;a b&aacute;n đảo Triều Ti&ecirc;n.&nbsp;</p>', 2, '1', 51, '2019-02-26 10:37:23', '2019-02-27 03:21:03', NULL),
(82, 'Thượng đỉnh Mỹ - Triều ngày 1: Gặp gỡ 20 phút và ăn tối tại Metropole', 'thuong-dinh-my-trieu-ngay-1-gap-go-20-phut-va-an-toi-tai-metropole', '<p>Theo dự kiến, hai nh&agrave; l&atilde;nh đạo sẽ ch&iacute;nh thức bắt đầu cuộc gặp thượng đỉnh v&agrave;o 18h30 tối ng&agrave;y 27/2, với địa điểm l&agrave; kh&aacute;ch sạn Sofitel Metropole Legend tr&ecirc;n phố Ng&ocirc; Quyền.</p>\r\n\r\n<p>Nh&agrave; Trắng th&ocirc;ng b&aacute;o&nbsp; Tổng thống&nbsp;Mỹ&nbsp;Donald Trump&nbsp;sẽ gặp nh&agrave; l&atilde;nh đạo&nbsp;Triều Ti&ecirc;n&nbsp;Kim Jong Un&nbsp;tại kh&aacute;ch sạn Metropole v&agrave;o l&uacute;c 18h30 (giờ H&agrave; Nội)</p>\r\n\r\n<p>Dự kiến hai nh&agrave; l&atilde;nh đạo sẽ c&oacute; buổi n&oacute;i chuyện ri&ecirc;ng k&eacute;o d&agrave;i 20 ph&uacute;t, v&agrave; sau đ&oacute; &ocirc;ng Trump v&agrave; &ocirc;ng Kim sẽ tham dự bữa ăn tối c&ugrave;ng c&aacute;c phụ t&aacute; trong v&ograve;ng hơn một tiếng rưỡi đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/sgtnrb/2019_02_26/Lichtrinh_1.jpg\" style=\"height:1590px; width:660px\" /></p>\r\n\r\n<p>Tổng thống Mỹ đặt ch&acirc;n xuống H&agrave; Nội v&agrave;o tối ng&agrave;y 26/2, &ocirc;ng Trump đăng d&ograve;ng<em>&nbsp;tweet</em>: &quot;Vừa mới tới Việt Nam. Cảm ơn tất cả mọi người về m&agrave;n ch&agrave;o đ&oacute;n tuyệt vời ở H&agrave; Nội. Đ&aacute;m đ&ocirc;ng rất nồng nhiệt v&agrave; đầy t&igrave;nh y&ecirc;u&quot;.</p>\r\n\r\n<p>Trong khi đ&oacute; &ocirc;ng Kim Jong Un đ&atilde; được đ&oacute;n tiếp từ buổi s&aacute;ng ở nh&agrave; ga Đồng Đăng, th&agrave;nh phố Lạng Sơn sau h&agrave;nh tr&igrave;nh 3.000 km từ B&igrave;nh Nhưỡng k&eacute;o d&agrave;i 3 ng&agrave;y. Nh&agrave; l&atilde;nh đạo Triều Ti&ecirc;n tiếp tục di chuyển bằng chiếc S600 Pullman để tới thủ đ&ocirc; H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 30, '2019-02-27 01:52:41', '2019-05-07 06:43:14', NULL),
(83, 'Thượng đỉnh Mỹ - ', 'thuong-dinh-my-trieu-ngay-1-gap-go-20-phut-va-an-toi-tai-metropole', '<p>Theo dự kiến, hai nh&agrave; l&atilde;nh đạo sẽ ch&iacute;nh thức bắt đầu cuộc gặp thượng đỉnh v&agrave;o 18h30 tối ng&agrave;y 27/2, với địa điểm l&agrave; kh&aacute;ch sạn Sofitel Metropole Legend tr&ecirc;n phố Ng&ocirc; Quyền.</p>\r\n\r\n<p>Nh&agrave; Trắng th&ocirc;ng b&aacute;o&nbsp; Tổng thống&nbsp;Mỹ&nbsp;Donald Trump&nbsp;sẽ gặp nh&agrave; l&atilde;nh đạo&nbsp;Triều Ti&ecirc;n&nbsp;Kim Jong Un&nbsp;tại kh&aacute;ch sạn Metropole v&agrave;o l&uacute;c 18h30 (giờ H&agrave; Nội)</p>\r\n\r\n<p>Dự kiến hai nh&agrave; l&atilde;nh đạo sẽ c&oacute; buổi n&oacute;i chuyện ri&ecirc;ng k&eacute;o d&agrave;i 20 ph&uacute;t, v&agrave; sau đ&oacute; &ocirc;ng Trump v&agrave; &ocirc;ng Kim sẽ tham dự bữa ăn tối c&ugrave;ng c&aacute;c phụ t&aacute; trong v&ograve;ng hơn một tiếng rưỡi đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/sgtnrb/2019_02_26/Lichtrinh_1.jpg\" style=\"height:1590px; width:660px\" /></p>\r\n\r\n<p>Tổng thống Mỹ đặt ch&acirc;n xuống H&agrave; Nội v&agrave;o tối ng&agrave;y 26/2, &ocirc;ng Trump đăng d&ograve;ng<em>&nbsp;tweet</em>: &quot;Vừa mới tới Việt Nam. Cảm ơn tất cả mọi người về m&agrave;n ch&agrave;o đ&oacute;n tuyệt vời ở H&agrave; Nội. Đ&aacute;m đ&ocirc;ng rất nồng nhiệt v&agrave; đầy t&igrave;nh y&ecirc;u&quot;.</p>\r\n\r\n<p>Trong khi đ&oacute; &ocirc;ng Kim Jong Un đ&atilde; được đ&oacute;n tiếp từ buổi s&aacute;ng ở nh&agrave; ga Đồng Đăng, th&agrave;nh phố Lạng Sơn sau h&agrave;nh tr&igrave;nh 3.000 km từ B&igrave;nh Nhưỡng k&eacute;o d&agrave;i 3 ng&agrave;y. Nh&agrave; l&atilde;nh đạo Triều Ti&ecirc;n tiếp tục di chuyển bằng chiếc S600 Pullman để tới thủ đ&ocirc; H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 25, '2019-02-27 01:52:54', '2019-02-27 03:02:46', NULL),
(84, 'Uống trà sữa vào buổi tối, cô gái thức thâu đêm', 'uong-tra-sua-vao-buoi-toi-co-gai-thuc-thau-dem', '<p><strong>&ldquo;T&ocirc;i kh&ocirc;ng nghĩ thủ phạm l&agrave; tr&agrave; sữa cho tới lần thứ 2 bị mất ngủ v&igrave; loại đồ uống n&agrave;y. Rất th&iacute;ch nhưng c&oacute; lẽ từ nay, t&ocirc;i sẽ kh&ocirc;ng bao giờ d&aacute;m uống trước khi đi ngủ&rdquo;, My chia sẻ.</strong></p>\r\n\r\n<p>Tr&agrave; sữa l&agrave; đồ uống quen thuộc của giới trẻ, thậm ch&iacute; cả người cao tuổi. Tuy nhi&ecirc;n, loại đồ uống n&agrave;y khiến nhiều người rơi v&agrave;o cảnh &ldquo;hối hận kh&ocirc;ng kịp&rdquo; v&igrave; đ&atilde; lỡ miệng.</p>\r\n\r\n<h3><strong>Mất ngủ v&igrave; tr&agrave; sữa</strong></h3>\r\n\r\n<p>Thanh My (28 tuổi, ở Thanh Xu&acirc;n, H&agrave; Nội) chia sẻ bản th&acirc;n đ&atilde; &iacute;t nhất 2 lần thức th&acirc;u đ&ecirc;m v&igrave; uống tr&agrave; sữa trước khi đi ngủ. Sau đ&oacute;, c&ocirc; kh&ocirc;ng thể n&agrave;o chợp mắt d&ugrave; rất mệt. Kết quả, gần 6h s&aacute;ng, c&ocirc; mới c&oacute; thể thiếp đi chừng 5 ph&uacute;t.</p>\r\n\r\n<p>&ldquo;T&ocirc;i kh&ocirc;ng nghĩ thủ phạm l&agrave; tr&agrave; sữa cho tới lần thứ 2 bị mất ngủ v&igrave; loại đồ uống n&agrave;y. D&ugrave; rất th&iacute;ch nhưng c&oacute; lẽ từ nay, t&ocirc;i sẽ kh&ocirc;ng bao giờ d&aacute;m uống trước khi đi ngủ&rdquo;, My chia sẻ.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ Thanh My, nhiều người cũng chia sẻ gặp t&igrave;nh trạng tương tự khi uống loại đồ uống n&agrave;y. TS.BS Trương Hồng Sơn, Viện trưởng Viện Y học ứng dụng Việt Nam, cho biết tr&agrave; sữa cơ bản thường gồm c&aacute;c th&agrave;nh phần l&agrave; tr&agrave;, sữa, tr&acirc;n ch&acirc;u, đường...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Một ly tr&agrave; sữa chứa bao nhi&ecirc;u calo?</strong></h3>\r\n\r\n<p>Theo TS Sơn, do th&agrave;nh phần chủ yếu l&agrave; từ tinh bột, n&ecirc;n mặc d&ugrave; nh&igrave;n những hạt tr&acirc;n ch&acirc;u n&agrave;y rất nhỏ b&eacute;, nhưng lại c&oacute; chứa rất nhiều năng lượng. Một hạt tr&acirc;n ch&acirc;u c&oacute; thể chứa tới 5-14 kcal. Th&ocirc;ng thường, một cốc tr&agrave; sữa sẽ thường được th&ecirc;m 2 th&igrave;a tr&acirc;n ch&acirc;u, c&oacute; thể cung cấp tới 100 kcal. B&ecirc;n cạnh đ&oacute;, một ly tr&agrave; sữa tr&acirc;n ch&acirc;u c&oacute; thể sẽ chứa tới 50 g đường (cung cấp 200 kcal).</p>', 2, '1', 17, '2019-02-27 01:53:48', '2019-05-12 02:47:27', NULL),
(85, 'Bỏ hạt dưa hấu, sai lầm nhiều người mắc phải', 'bo-hat-dua-hau-sai-lam-nhieu-nguoi-mac-phai', '<p><strong>Dưa hấu l&agrave; tr&aacute;i c&acirc;y giải kh&aacute;t rất phổ biến v&agrave;o m&ugrave;a h&egrave;. Tuy nhi&ecirc;n, nếu sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch, loại quả n&agrave;y c&oacute; thể bị mất chất dinh dưỡng v&agrave; g&acirc;y ra những ảnh hưởng tới sức khỏe.</strong></p>\r\n\r\n<p>Dưa hấu l&agrave; loại quả được nhiều người lựa chọn v&agrave;o m&ugrave;a h&egrave; v&igrave; n&oacute; c&oacute; t&aacute;c dụng l&agrave;m m&aacute;t, giữ nước v&agrave; l&agrave;m dịu cơn kh&aacute;t trong thời tiết oi bức. Tuy nhi&ecirc;n, ăn dưa hấu sai c&aacute;ch, thiếu khoa học c&oacute; thể khiến cơ thể mệt mỏi, đồng thời trầm trọng th&ecirc;m t&igrave;nh trạng bệnh ở những người bị tiểu đường, c&oacute; vấn đề về thận...</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; những sai lầm thường gặp khi ăn dưa hấu rất dễ bị nhiều người v&ocirc; t&igrave;nh bỏ qua.</p>\r\n\r\n<h3><strong>Bỏ hạt dưa hấu</strong></h3>\r\n\r\n<p>Nhiều người c&oacute; th&oacute;i quen bỏ hạt khi ăn dưa hấu v&igrave; cảm thấy kh&oacute; chịu v&agrave; hạt hơi đắng. Tuy nhi&ecirc;n, hạt dưa hấu lại l&agrave; nguồn dồi d&agrave;o của magi&ecirc; v&agrave; kẽm, gi&uacute;p chống lại cảm lạnh th&ocirc;ng thường.</p>\r\n\r\n<p>Hạt dưa hấu cũng chứa nhiều loại axit cần thiết cho cơ thể con người như tryptophan (gi&uacute;p ngủ ngon), glutamic (tăng cường hoạt động tr&iacute; n&atilde;o) v&agrave; lysine (hỗ trợ h&igrave;nh th&agrave;nh collagen v&agrave; hấp thu canxi). Thậm ch&iacute;, n&oacute; c&ograve;n chứa c&aacute;c hoạt chất tốt cho đời sống t&igrave;nh dục của nam giới.</p>\r\n\r\n<h3><strong>Ăn qu&aacute; nhiều dưa hấu</strong></h3>\r\n\r\n<p>Dưa hấu chứa lượng nước v&agrave; chất xơ dồi d&agrave;o. Tuy nhi&ecirc;n, ti&ecirc;u thụ với số lượng lớn c&oacute; thể g&acirc;y ra c&aacute;c vấn đề ti&ecirc;u h&oacute;a như ti&ecirc;u chảy, đầy hơi, ợ n&oacute;ng...</p>\r\n\r\n<p>V&igrave; chứa nhiều nước, ăn dưa hấu qu&aacute; nhiều c&oacute; thể g&acirc;y nhiễm độc nước hoặc hydrate h&oacute;a qu&aacute; mức. Nguy&ecirc;n nh&acirc;n l&agrave; cơ thể kh&ocirc;ng kịp b&agrave;i tiết hết lượng nước trong dưa hấu, dẫn đến tăng thể t&iacute;ch m&aacute;u, g&acirc;y sưng, kiệt sức, thận yếu. N&oacute; cũng l&agrave;m mất nồng độ natri trong cơ thể.</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia dinh dưỡng, 100 g dưa hấu cung cấp khoảng 30 calo. V&igrave; n&oacute; chủ yếu l&agrave; nước, rất dễ ti&ecirc;u thụ tới 500 g dưa hấu, tương đương 150 calo. Ngo&agrave;i ra, 100 g dưa hấu chứa khoảng 6 g đường, 500 g dưa hấu sẽ chứa 30 g đường. V&igrave; vậy, tốt nhất bạn n&ecirc;n ăn từ 100 g đến 150 g đường mỗi ng&agrave;y từ tất cả thực phẩm kết hợp.</p>', 2, '1', 11, '2019-02-27 01:53:59', '2019-05-12 02:54:18', NULL),
(86, 'Tại sao bạn nên ăn sáng như một vị vua?', 'tai-sao-ban-nen-an-sang-nhu-mot-vi-vua', '<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu Hy Lạp ph&aacute;t hiện ti&ecirc;u thụ bữa s&aacute;ng gi&agrave;u năng lượng c&oacute; thể tăng cường sức khỏe tim mạch hiệu quả.</p>\r\n\r\n<p>Theo&nbsp;<em>Daily Mail</em>, c&aacute;c nh&agrave; nghi&ecirc;n cứu ph&aacute;t hiện ăn &iacute;t nhất 400 calo v&agrave;o bữa s&aacute;ng l&agrave;m giảm mức độ t&iacute;ch tụ mảng b&aacute;m trong động mạch - nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y ra bệnh tim.</p>\r\n\r\n<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu tại Đại học Kapodistrian (Athens) đ&atilde; tiến h&agrave;nh đ&aacute;nh gi&aacute; gần 2.000 người - với độ tuổi trung b&igrave;nh l&agrave; 63 - ở Corinthia, Hy Lạp.</p>\r\n\r\n<p>Những người tham gia được chia th&agrave;nh 3 nh&oacute;m dựa tr&ecirc;n lượng calo ti&ecirc;u thụ h&agrave;ng ng&agrave;y của họ cho bữa s&aacute;ng: năng lượng cao (nhiều hơn 20%), năng lượng thấp (5-20%) v&agrave; bỏ bữa s&aacute;ng (&iacute;t hơn 5%). Trung b&igrave;nh, một phụ nữ cần 2.000 calo mỗi ng&agrave;y v&agrave; nam giới l&agrave; 2.500 calo.</p>\r\n\r\n<p>Tổng cộng, 240 người c&oacute; bữa s&aacute;ng gi&agrave;u năng lượng, gần 900 người ăn bữa s&aacute;ng &iacute;t năng lượng v&agrave; khoảng 680 người thường xuy&ecirc;n bỏ ăn s&aacute;ng.</p>\r\n\r\n<p>Nh&oacute;m nghi&ecirc;n cứu kh&ocirc;ng chỉ định r&otilde; thực phẩm n&agrave;o l&agrave; tốt nhất cho bữa s&aacute;ng. Tuy nhi&ecirc;n, họ cho biết ph&ocirc; mai, sữa, ngũ cốc v&agrave; b&aacute;nh m&igrave; l&agrave; những thực phẩm ch&iacute;nh được những người thuộc nh&oacute;m gi&agrave;u năng lượng ti&ecirc;u thụ nhiều. Trong khi đ&oacute;, bữa s&aacute;ng của những người thuộc nh&oacute;m năng lượng thấp thường bao gồm c&agrave; ph&ecirc; hoặc sữa &iacute;t b&eacute;o c&ugrave;ng với b&aacute;nh m&igrave; k&egrave;m bơ, mật ong, &ocirc;-liu hoặc tr&aacute;i c&acirc;y.&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Tai sao ban nen an sang nhu mot vi vua? hinh anh 1 \" src=\"https://znews-photo.zadn.vn/w660/Uploaded/sgorvz/2019_03_08/an_sang.jpg\" style=\"height:572px; width:1024px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ăn một bữa s&aacute;ng gi&agrave;u năng lượng với ngũ cốc, b&aacute;nh m&igrave;, ph&ocirc; mai, sữa c&oacute; thể tăng cường sức khỏe tim mạch của bạn. Ảnh:&nbsp;<em>Dailymail.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu nhận thấy những người ăn bữa s&aacute;ng nhiều năng lượng c&oacute; động mạch khỏe mạnh hơn đ&aacute;ng kể so với những người ăn &iacute;t hoặc kh&ocirc;ng ăn s&aacute;ng.</p>\r\n\r\n<p>Độ cứng động mạch l&agrave; bất thường ở 15% người bỏ bữa s&aacute;ng v&agrave; 9,5% người ăn bữa s&aacute;ng &iacute;t năng lượng. Trong khi đ&oacute;, tỷ lệ n&agrave;y ở những người ti&ecirc;u thụ bữa s&aacute;ng gi&agrave;u năng lượng l&agrave; 8,7%.</p>\r\n\r\n<p>Tương tự, nhiều mảng b&aacute;m được t&igrave;m thấy trong c&aacute;c động mạch cảnh - mạch m&aacute;u lớn ở cổ - của 28% người bỏ bữa s&aacute;ng. Ngược lại, con số n&agrave;y chỉ l&agrave; 26% ở những người ăn bữa s&aacute;ng &iacute;t năng lượng v&agrave; 18% ở những người ăn s&aacute;ng nhiều năng lượng.</p>', 2, '1', 102, '2019-02-27 02:26:15', '2019-05-12 02:48:08', NULL),
(87, 'Giải pháp nào cho trẻ suy dinh dưỡng, thấp còi?', 'giai-phap-nao-cho-tre-suy-dinh-duong-thap-coi', '<p>C&aacute;n mốc phục vụ hơn 1 triệu ly sữa mỗi ng&agrave;y, 3 năm li&ecirc;n tiếp đứng đầu ng&agrave;nh sữa đặc trị trẻ em, GrowPlus+ của NutiFood đ&atilde; đưa ra giải ph&aacute;p cho trẻ suy dinh dưỡng thấp c&ograve;i.</p>\r\n\r\n<p>Đến nay, Việt Nam vẫn nằm trong số 36 quốc gia c&oacute; tỷ lệ suy dinh dưỡng, thấp c&ograve;i cao tr&ecirc;n phạm vi to&agrave;n cầu. Theo&nbsp;<em>Tổng cục Thống k&ecirc;</em>, t&iacute;nh sơ bộ đến năm 2017, tỷ lệ trẻ em dưới 5 tuổi bị suy dinh dưỡng, thấp c&ograve;i tại Việt Nam vẫn l&agrave; 24,2%, một con số đ&aacute;ng b&aacute;o động. Nghĩa l&agrave;, cứ khoảng 4 trẻ sẽ c&oacute; một trẻ bị suy dinh dưỡng, thấp c&ograve;i. Đặc biệt, t&igrave;nh trạng n&agrave;y diễn ra kh&ocirc;ng chỉ ở v&ugrave;ng n&ocirc;ng th&ocirc;n ngh&egrave;o kh&oacute; m&agrave; ngay tại nhiều đ&ocirc; thị lớn, hoặc trong gia đ&igrave;nh c&oacute; điều kiện chăm s&oacute;c con c&aacute;i tốt vẫn phải đối mặt với nguy cơ b&eacute; bị suy dinh dưỡng, thấp c&ograve;i.</p>\r\n\r\n<p>Suy dinh dưỡng kh&ocirc;ng g&acirc;y ra hậu quả nguy hiểm tức thời, nhưng nếu k&eacute;o d&agrave;i sẽ ảnh hưởng xấu đến sức khỏe cũng như sự ph&aacute;t triển về sau của b&eacute;. Cụ thể, t&igrave;nh trạng n&agrave;y tăng tỷ lệ tử vong ở trẻ em dưới 5 tuổi. Trẻ dễ mắc bệnh nhiễm tr&ugrave;ng: Nhiễm tr&ugrave;ng h&ocirc; hấp, ti&ecirc;u chảy... thường nặng, k&eacute;o d&agrave;i. Bệnh ăn uống k&eacute;m nhưng nhu cầu năng lượng gia tăng l&agrave;m cho suy dinh dưỡng trở n&ecirc;n nặng nề hơn.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Giai phap nao cho tre suy dinh duong, thap coi? hinh anh 1 \" src=\"https://znews-photo.zadn.vn/w660/Uploaded/wyhktpu/2019_05_02/image001_2.jpg\" style=\"height:688px; width:1034px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>GrowPlus+ được nhiều phụ huynh lựa chọn cho con m&igrave;nh.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ngo&agrave;i ra, trẻ c&oacute; thể chậm ph&aacute;t triển thể chất, tr&iacute; n&atilde;o; giảm ph&aacute;t triển hệ cơ xương, ảnh hưởng chiều cao, tầm v&oacute;c. Giảm ph&aacute;t triển tr&iacute; n&atilde;o do thiếu dưỡng chất cho n&atilde;o: Chất b&eacute;o, chất đường, sắt, iốt, DHA, taurine... Trẻ chậm chạp, giao tiếp x&atilde; hội thường k&eacute;m, giảm học hỏi, tiếp thu.</p>\r\n\r\n<p>C&ograve;n nhiều hệ quả kh&aacute;c như nguy cơ b&eacute;o ph&igrave; sau giai đoạn suy dinh dưỡng do thấp chiều cao. Khả năng l&agrave;m việc, lao động k&eacute;m hơn khi trưởng th&agrave;nh. Trẻ dễ trở th&agrave;nh người phụ nữ thấp b&eacute;/trẻ g&aacute;i suy dinh dưỡng dẫn đến nguy cơ sinh con suy dinh dưỡng.</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 92, '2019-02-27 02:59:28', '2019-05-12 02:38:21', NULL);
INSERT INTO `news` (`id`, `title`, `slug`, `content`, `author_id`, `status`, `count_views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(88, 'MẶT TÍCH CỰC VÀ CƠ HỘI PHÁ VỠ BẾ TẮC ĐÀM PHÁN MỸ TRIỀU', 'mat-tich-cuc-va-co-hoi-pha-vo-be-tac-dam-phan-my-trieu', '<p><strong>Dường như điểm bất đồng trong cuộc đ&agrave;m ph&aacute;n l&agrave; tiến tr&igrave;nh phi hạt nh&acirc;n h&oacute;a v&agrave; c&aacute;c biện ph&aacute;p trừng phạt. L&agrave;m thế n&agrave;o để ph&aacute; vỡ sự bế tắc đ&oacute;?</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trước Hội nghị Thượng đỉnh Mỹ - Triều, phần lớn những dự đo&aacute;n đều hướng đến 4 điều: tuy&ecirc;n bố kết th&uacute;c chiến tranh, th&agrave;nh lập văn ph&ograve;ng đại diện ở B&igrave;nh Nhưỡng (cũng c&oacute; thể l&agrave; Washington D.C);&nbsp;Triều Ti&ecirc;n&nbsp;&ldquo;hy sinh&rdquo; tổ hợp hạt nh&acirc;n Yongbyon để đổi lấy sự dỡ bỏ cấm vận; hai b&ecirc;n tiếp tục hợp t&aacute;c đưa binh sĩ trong chiến tranh Triều Ti&ecirc;n hồi hương.</p>\r\n\r\n<p>Tuy vậy những g&igrave; m&agrave; ch&uacute;ng ta thấy sau ng&agrave;y họp cuối c&ugrave;ng chỉ l&agrave; b&agrave;n tiệc trưa trống vắng, lễ k&yacute; kết bị hủy bỏ v&agrave; buổi họp b&aacute;o chỉ c&oacute; một nguy&ecirc;n thủ tham dự thay v&igrave; hai.</p>\r\n\r\n<p>Hẳn l&agrave; l&uacute;c n&agrave;y nhiều người bắt đầu suy đo&aacute;n về mối nguy từ việc kh&ocirc;ng c&oacute; thỏa thuận được đưa ra. Một số lo lắng quan hệ ngoại giao của hai nước sẽ rơi v&agrave;o bế tắc, kh&oacute; c&oacute; thể h&oacute;a giải được. Nhiều người lại đặt ra c&acirc;u hỏi nỗ lực ngoại giao n&agrave;y liệu c&oacute; đ&aacute;ng?</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&ocirc;ng c&oacute; thỏa thuận lại c&oacute; mặt t&iacute;ch cực của n&oacute;.</p>\r\n\r\n<p>Trong hai ng&agrave;y tại H&agrave; Nội, Mỹ v&agrave; Triều Ti&ecirc;n đ&atilde; c&oacute; cơ hội để b&agrave;y tỏ quan điểm của m&igrave;nh một c&aacute;ch r&otilde; r&agrave;ng. Thay v&igrave; đẩy nhanh tiến tr&igrave;nh đ&agrave;m ph&aacute;n để tạo ra những th&agrave;nh phẩm chắp v&aacute;, hai b&ecirc;n c&ugrave;ng ngồi xuống n&oacute;i chuyện với nhau ở cấp sự vụ để t&igrave;m ra những điểm đồng thuận chung. C&oacute; thể đối với một số người, đ&acirc;y l&agrave; sự thất bại về mặt ngoại giao nhưng thực sự n&oacute; l&agrave; thắng lợi trong tiến tr&igrave;nh.</p>\r\n\r\n<blockquote>\r\n<p>Chừng n&agrave;o Triều Ti&ecirc;n vẫn cần đến b&agrave;n đ&agrave;m ph&aacute;n để giảm nhẹ cấm vận, ch&iacute;nh quyền chủ tịch Kim sẽ kh&ocirc;ng l&agrave;m những việc nguy hại đến vị thế của m&igrave;nh.</p>\r\n</blockquote>\r\n\r\n<p>Kết quả của hội nghị hiển nhi&ecirc;n thu được những phản ứng tr&aacute;i chiều từ c&aacute;c nước trong khu vực.</p>\r\n\r\n<p>H&agrave;n Quốc&nbsp;hẳn sẽ v&ocirc; c&ugrave;ng thất vọng. Ch&iacute;nh quyền tổng thống Moon Jae-in lu&ocirc;n muốn đẩy nhanh c&aacute;c dự &aacute;n li&ecirc;n Triều nhưng một mặt vẫn tu&acirc;n thủ c&aacute;c biện ph&aacute;p trừng phạt quốc tế nhằm v&agrave;o Triều Ti&ecirc;n. Tổng thống Moon giờ đ&acirc;y c&oacute; rất &iacute;t sự lựa chọn, ngo&agrave;i việc tiếp tục đ&oacute;ng vai tr&ograve; điều phối vi&ecirc;n giữa Triều Ti&ecirc;n v&agrave; Hoa Kỳ. Ch&uacute;ng ta c&oacute; quyền hy vọng rằng nếu khả năng về một sự đột ph&aacute; quan hệ giữa hai b&ecirc;n Mỹ - Triều c&agrave;ng &iacute;t, H&agrave;n Quốc sẽ c&agrave;ng ki&ecirc;n quyết hơn trong việc th&uacute;c đẩy c&aacute;c quyết s&aacute;ch ngoại giao, thậm ch&iacute; c&oacute; thể đưa ra những nhượng bộ đơn phương lớn hơn cho Triều Ti&ecirc;n.</p>\r\n\r\n<p>Mặt kh&aacute;c, với Nhật Bản, khi ch&iacute;nh s&aacute;ch gia tăng sức &eacute;p tối đa với Triều Ti&ecirc;n chưa được x&oacute;a bỏ ho&agrave;n to&agrave;n, kết quả tại H&agrave; Nội lại c&oacute; thể khiến thủ tướng Shinzo Abe nở nụ cười. Ch&iacute;nh quyền Abe vẫn đang tiếp tục đẩy mạnh sự cần thiết của việc duy tr&igrave; &aacute;p lực với Triều Ti&ecirc;n. Quyết định của Mỹ kh&ocirc;ng dỡ bỏ c&aacute;c biện ph&aacute;p trừng phạt khi kh&ocirc;ng c&oacute; sự nhượng bộ thỏa đ&aacute;ng từ ph&iacute;a Triều Ti&ecirc;n l&agrave; sự đảm bảo cho việc duy tr&igrave; &aacute;p lực với B&igrave;nh Nhưỡng m&agrave; ch&iacute;nh quyền Abe hướng tới. V&agrave; n&oacute; c&oacute; lẽ sẽ tiếp tục tồn tại đến khi Chủ tịch Kim Jong-un tiến h&agrave;nh cải c&aacute;ch. Tuy nhi&ecirc;n, đặt trong ho&agrave;n cảnh H&agrave;n Quốc v&agrave; Mỹ tiếp tục l&ocirc;i k&eacute;o Triều Ti&ecirc;n về mặt ngoại giao, Nhật Bản cũng sẽ mở đường d&acirc;y đối thoại với Triều Ti&ecirc;n để giải quyết h&agrave;ng loạt vấn đề li&ecirc;n quan đến t&ecirc;n lửa đạn đạo tầm ngắn v&agrave; trung cũng như việc nước n&agrave;y bắt giữ c&ocirc;ng d&acirc;n Nhật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong khi đ&oacute;,&nbsp;<a href=\"https://news.zing.vn/tieu-diem/trung-quoc.html\">Trung Quốc</a>&nbsp;v&agrave;&nbsp;<a href=\"https://news.zing.vn/tieu-diem/nga.html\">Nga</a>&nbsp;đều mong chờ cấm vận được dỡ bỏ v&agrave; tuy&ecirc;n bố chấm dứt chiến tranh được đưa ra. Hai nước đ&atilde; nhiều lần k&ecirc;u gọi nới lỏng c&aacute;c lệnh trừng phạt v&agrave; th&uacute;c đẩy&nbsp;<a href=\"https://news.zing.vn/tieu-diem/hoi-dong-bao-an.html\">Hội đồng Bảo an</a>&nbsp;<a href=\"https://news.zing.vn/tieu-diem/lien-hop-quoc.html\">Li&ecirc;n Hợp Quốc</a>&nbsp;xem x&eacute;t sửa đổi c&aacute;c biện ph&aacute;p li&ecirc;n quan đến vấn đề Triều Ti&ecirc;n. Khi Hội nghị thượng đỉnh Mỹ - Triều tr&igrave; ho&atilde;n h&agrave;nh động nhằm giải quyết kh&oacute; khăn tr&ecirc;n b&aacute;n đảo Triều Ti&ecirc;n, điều quan trọng l&agrave; phải quan s&aacute;t Nga v&agrave; Trung Quốc phản ứng thế n&agrave;o với quyết định giữ vững lệnh trừng phạt của Mỹ</p>\r\n\r\n<p>&Iacute;t nhất, c&aacute;c b&ecirc;n trong khu vực vẫn c&oacute; thể mong đợi về việc giữ nguy&ecirc;n hiện trạng an ninh trong v&agrave; xung quanh b&aacute;n đảo Triều Ti&ecirc;n. Chừng n&agrave;o Triều Ti&ecirc;n vẫn cần đến b&agrave;n đ&agrave;m ph&aacute;n để giảm nhẹ cấm vận, ch&iacute;nh quyền chủ tịch Kim sẽ kh&ocirc;ng l&agrave;m những việc nguy hại đến vị thế của m&igrave;nh.</p>\r\n\r\n<p>Điều đ&oacute; c&oacute; nghĩa l&agrave; những h&agrave;nh động như thử hạt nh&acirc;n hay ph&oacute;ng t&ecirc;n lửa &iacute;t nhất sẽ kh&ocirc;ng t&aacute;i diễn. C&ugrave;ng l&uacute;c, ch&iacute;nh phủ Mỹ sẽ vẫn mở con đường ngoại giao với Triều Ti&ecirc;n bởi chi ph&iacute; chiến tranh sẽ rất đắt đỏ. Giải quyết bằng qu&acirc;n đội cũng kh&ocirc;ng phải con đường Mỹ v&agrave; Triều Ti&ecirc;n chọn lựa.</p>\r\n\r\n<p>V&agrave; giờ c&acirc;u hỏi đặt ra l&agrave; những g&igrave; sẽ chờ đợi ở ph&iacute;a trước?</p>\r\n\r\n<blockquote>\r\n<p>Hai b&ecirc;n cần tập trung v&agrave;o lợi &iacute;ch cốt l&otilde;i c&oacute; thể đạt được hơn l&agrave; vị thế cứng nhắc v&agrave; chấp nhận x&acirc;y dựng, củng cố trong thời gian d&agrave;i thay v&igrave; chiến thắng vang dội th&ocirc;ng qua cuộc gặp ngoại giao.</p>\r\n</blockquote>\r\n\r\n<p>Sau mỗi cuộc gặp bế tắc sẽ lu&ocirc;n c&oacute; một b&ecirc;n chủ động đứng ra, tiếp tục mời đ&agrave;m ph&aacute;n. Nhưng điều n&agrave;y cần thời gian. Ch&uacute;ng ta phải chờ. Thực tế, cho đến nay, cả Mỹ v&agrave; Triều Ti&ecirc;n chưa b&ecirc;n n&agrave;o khẳng định thỏa thuận đ&atilde; ho&agrave;n tất hay thỏa thuận kh&ocirc;ng thể đạt được, chỉ l&agrave; chưa thể k&yacute; kết ngay b&acirc;y giờ m&agrave; th&ocirc;i. T&oacute;m lại, kh&ocirc;ng b&ecirc;n n&agrave;o muốn chiến tranh vũ trang nhưng cả hai cần thời gian, gắn kết th&ecirc;m về mặt ngoại giao để t&igrave;m được sự đồng thuận chung.</p>\r\n\r\n<p>Dường như điểm bất đồng trong cuộc đ&agrave;m ph&aacute;n l&agrave; tiến tr&igrave;nh phi hạt nh&acirc;n h&oacute;a v&agrave; c&aacute;c biện ph&aacute;p trừng phạt. C&acirc;u hỏi được đặt ra l&agrave;: l&agrave;m thế n&agrave;o để ph&aacute; vỡ sự bế tắc đ&oacute;?</p>\r\n\r\n<p>Hai b&ecirc;n cần s&aacute;ng tạo trong việc tạo dựng vị thế của m&igrave;nh ph&ugrave; hợp với lợi &iacute;ch tr&ecirc;n b&agrave;n đ&agrave;m ph&aacute;n. V&iacute; dụ về ph&iacute;a Mỹ, buộc Triều Ti&ecirc;n trở th&agrave;nh quốc gia c&oacute; tr&aacute;ch nhiệm l&agrave; mục ti&ecirc;u cơ bản, đương nhi&ecirc;n vẫn cần th&ecirc;m những nhượng bộ để th&aacute;o gỡ hai điểm bất đồng tr&ecirc;n. C&ograve;n đối với Triều Ti&ecirc;n, ch&iacute;nh quyền được c&ocirc;ng nhận v&agrave; ph&aacute;t triển kinh tế l&agrave; những ưu ti&ecirc;n h&agrave;ng đầu - nhưng gỡ bỏ cấm vận kh&ocirc;ng phải l&agrave; con đường duy nhất để đạt được những mục ti&ecirc;u đ&oacute;.</p>\r\n\r\n<p>Thượng đỉnh Mỹ - Triều tại H&agrave; Nội kh&eacute;p lại nhưng cả hai nước vẫn c&ograve;n cơ hội t&aacute;i lập c&aacute;c cuộc đ&agrave;m ph&aacute;n ở cấp sự vụ để tạo ra c&aacute;c giải ph&aacute;p bền vững, l&acirc;u d&agrave;i m&agrave; c&aacute;c hội nghị ngoại giao kh&oacute; c&oacute; thể đạt được.</p>\r\n\r\n<p>Nếu cả Mỹ v&agrave; Triều Ti&ecirc;n đều giữ những k&ecirc;nh ngoại giao mở, hy vọng chắc chắn vẫn c&ograve;n.</p>', NULL, '1', 59, '2019-03-01 08:49:14', '2019-05-12 02:44:15', NULL),
(89, 'Từ khi nào con người lại uống sữa của các loài khác?', 'tu-khi-nao-con-nguoi-lai-uong-sua-cua-cac-loai-khac', '<h2>Phải chăng con người l&agrave; lo&agrave;i duy nhất tr&ecirc;n đời c&oacute; h&agrave;nh vi uống sữa từ c&aacute;c lo&agrave;i vật kh&aacute;c?</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kể từ khi chăn nu&ocirc;i trở th&agrave;nh ch&igrave;a kh&oacute;a then chốt cho duy tr&igrave; sự sống, th&igrave; việc uống sữa của c&aacute;c lo&agrave;i như b&ograve;... cũng trở th&agrave;nh một th&oacute;i quen ăn uống của con người.</p>\r\n\r\n<p><strong>Lịch sử &quot;Lấy sữa lo&agrave;i kh&aacute;c để uống&quot; của con người</strong></p>\r\n\r\n<p>Quay ngược thời gian trở lại 12000 &ndash; 15000 năm về trước, con người khi đ&oacute; chỉ vừa biết c&aacute;ch chăn nu&ocirc;i v&agrave; g&acirc;y giống c&aacute;c lo&agrave;i nhai lại nhỏ, điển h&igrave;nh l&agrave; d&ecirc; v&agrave; cừu.</p>\r\n\r\n<p>Đối với c&aacute;c bộ tộc du mục, việc nu&ocirc;i c&aacute;c lo&agrave;i vật n&agrave;y mang đến cho họ một nguồn gi&aacute; trị rất to lớn. L&ocirc;ng v&agrave; da được đan th&agrave;nh quần &aacute;o, xương được d&ugrave;ng l&agrave;m vũ kh&iacute; hoặc trang sức. Nhưng đặc biệt, việc nu&ocirc;i d&ecirc; v&agrave; cừu thực sự l&agrave; rất ph&ugrave; hợp với điều kiện của c&aacute;c tộc du mục thời kỳ ấy, bởi ch&uacute;ng kh&ocirc;ng đ&ograve;i hỏi qu&aacute; nhiều c&ocirc;ng sức chăm s&oacute;c.&nbsp;Ch&uacute;ng c&oacute; thể ăn bất k&igrave; thứ g&igrave; m&agrave; vẫn tồn tại được.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/cows-154544595774132705650.jpg\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 1.\" src=\"https://kenh14cdn.com/2018/12/22/cows-154544595774132705650.jpg\" /></a></p>\r\n\r\n<p>Chăn nu&ocirc;i gia s&uacute;c l&uacute;c đ&oacute; được v&iacute; như c&oacute; một chiếc kho lạnh của người xưa, v&igrave; n&oacute; cung cấp một kh&ocirc;ng gian dự trữ dinh dưỡng cho tương lai. V&agrave; trong qu&aacute; tr&igrave;nh chăn nu&ocirc;i, họ nhận ra c&aacute;c lo&agrave;i vật n&agrave;y đều nu&ocirc;i con bằng sữa, c&oacute; nghĩa l&agrave; sữa của ch&uacute;ng về mặt logic l&agrave; bổ dưỡng.</p>\r\n\r\n<p>Kể từ đ&oacute;, họ cũng&nbsp;đ&atilde; học được c&aacute;ch vắt sữa từ c&aacute;c lo&agrave;i động vật n&agrave;y để đ&aacute;p ứng nhu cầu dinh dưỡng ri&ecirc;ng. Điều n&agrave;y cũng c&oacute; &yacute; nghĩa hạn chế tập t&iacute;nh giết th&uacute; lấy thịt, bởi v&igrave; việc vắt sữa cung cấp nguồn dinh dưỡng l&acirc;u d&agrave;i hơn hẳn.</p>\r\n\r\n<p>Th&uacute; vị l&agrave; l&uacute;c ấy b&ograve; nh&agrave; chưa tồn tại, chỉ c&oacute; tổ ti&ecirc;n của ch&uacute;ng &ndash; b&ograve; Aurochs. So với b&ograve; nh&agrave; b&acirc;y giờ th&igrave; Aurochs c&oacute; k&iacute;ch thước to hơn, v&agrave; cũng l&agrave; lo&agrave;i rất hung hăng, khiến cho con người thực sự kh&oacute; khăn để thuần h&oacute;a n&oacute;. D&ugrave; sao cuối c&ugrave;ng ch&uacute;ng cũng trở n&ecirc;n bớt hoang d&atilde; hơn, ph&ugrave; hợp với sự chăn nu&ocirc;i của con người hơn, v&agrave; cuối c&ugrave;ng l&agrave; tiến h&oacute;a th&agrave;nh b&ograve; nh&agrave; b&acirc;y giờ.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/20181217212730-15454459577341009578511.png\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 2.\" src=\"https://kenh14cdn.com/2018/12/22/20181217212730-15454459577341009578511.png\" /></a></p>\r\n\r\n<p><strong>Con người &ndash; lo&agrave;i chuy&ecirc;n uống sữa lo&agrave;i kh&aacute;c ngay cả khi đ&atilde; trưởng th&agrave;nh</strong></p>\r\n\r\n<p>Thực sự th&igrave; trong thế giới động vật, ch&uacute;ng ta l&agrave; lo&agrave;i duy nhất trực tiếp uống sữa từ lo&agrave;i kh&aacute;c. Hoặc &iacute;t nhất l&agrave; lo&agrave;i duy nhất vẫn l&agrave;m vậy khi đ&atilde; trưởng th&agrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để giải th&iacute;ch được điều n&agrave;y, bạn cần hiểu hai kh&aacute;i niệm: lactase v&agrave; lactose. Lactose l&agrave; một loại đường ch&iacute;nh trong sữa. Lactase l&agrave; enzyme c&oacute; khả năng ph&aacute; vỡ c&aacute;c ph&acirc;n tử đường lactose th&agrave;nh c&aacute;c phần m&agrave; m&aacute;u c&oacute; thể hấp thụ được l&agrave; glucose v&agrave; galactose. Tất cả c&aacute;c động vật sơ sinh đều c&oacute; thể hấp thụ được sữa mẹ l&agrave; nhờ c&oacute; gen quy định enzyme lactase. V&agrave; gene n&agrave;y sẽ dần biến mất v&agrave;o khoảng thời gian cai sữa.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/milk-cinammon-15454460707642090721344.jpg\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 4.\" src=\"https://kenh14cdn.com/2018/12/22/milk-cinammon-15454460707642090721344.jpg\" /></a></p>\r\n\r\n<p>Con người nhờ c&oacute; tiến h&oacute;a v&agrave; tập t&iacute;nh chăn nu&ocirc;i động vật lấy sữa đ&atilde; dẫn đến th&oacute;i quen uống sữa ngay cả khi đ&atilde; trưởng th&agrave;nh. Lactase persistence l&agrave; thuật ngữ để chỉ khả năng tiếp tục hoạt động của enzyme lactase ở tuổi trưởng th&agrave;nh của mỗi người, được coi l&agrave; một sự tiến h&oacute;a khi cho ph&eacute;p con người c&oacute; thể kết hợp nhiều sữa v&agrave; sản phẩm từ sữa hơn v&agrave;o chế độ ăn của m&igrave;nh.</p>\r\n\r\n<p>Chốt lại, nhu cầu dinh dưỡng, khả năng thuần h&oacute;a c&aacute;c lo&agrave;i kh&aacute;c, sự tiến h&oacute;a v&agrave; một v&agrave;i điều kiện sống (như bối cảnh du mục) l&agrave; những l&yacute; do đ&atilde; th&uacute;c đẩy con người t&igrave;m đến nguồn sữa của c&aacute;c lo&agrave;i động vật kh&aacute;c.</p>\r\n\r\n<p>Tham khảo: Science News</p>', NULL, '1', 82, '2019-03-06 07:00:03', '2019-05-12 02:43:37', NULL),
(90, 'Tiêu đề bài viết', 'tieu-de-bai-viet', '<p>Nội dung b&agrave;i viết</p>', NULL, '1', 0, '2019-05-11 08:22:07', '2019-05-12 02:57:19', '2019-05-12 02:57:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_comments`
--

CREATE TABLE `news_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_comments`
--

INSERT INTO `news_comments` (`id`, `user_id`, `news_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 88, NULL, 'Hai bên cần tập trung vào lợi ích cốt lõi có thể đạt được hơn là vị thế cứng nhắc và chấp nhận xây dựng, củng cố trong thời gian dài thay vì chiến thắng vang dội thông qua cuộc gặp ngoại giao.', '2019-04-22 19:01:48', '2019-04-22 19:01:48', NULL),
(2, 2, 88, NULL, 'Sau mỗi cuộc gặp bế tắc sẽ luôn có một bên chủ động đứng ra, tiếp tục mời đàm phán. Nhưng điều này cần thời gian. Chúng ta phải chờ. Thực tế, cho đến nay, cả Mỹ và Triều Tiên chưa bên nào khẳng định thỏa thuận đã hoàn tất hay thỏa thuận không thể đạt', '2019-04-20 16:34:53', '2019-04-20 16:34:53', NULL),
(3, 3, 88, 2, '11 Sau mỗi cuộc gặp bế tắc sẽ luôn có một bên chủ động đứng ra, tiếp tục mời đàm phán. Nhưng điều này cần thời gian. Chúng ta phải chờ. Thực tế, cho đến nay, cả Mỹ và Triều Tiên chưa bên nào khẳng định thỏa thuận đã hoàn tất hay thỏa thuận không thể', '2019-04-24 06:42:41', '2019-04-24 06:42:41', NULL),
(4, 15, 51, NULL, 'I almost think I could, if I must, I must,\' the King was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a lesson to you how it.', '2019-03-22 16:36:06', '2019-03-22 16:36:06', NULL),
(5, 58, 58, NULL, 'Bill! I wouldn\'t say anything about it, you know--\' \'What did they live at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Mock Turtle, and said to herself \'That\'s.', '2019-03-27 01:45:34', '2019-03-27 01:45:34', NULL),
(6, 4, 67, NULL, 'There was a dead silence instantly, and neither of the busy farm-yard--while the lowing of the cattle in the beautiful garden, among the trees, a little bird as soon as she spoke. Alice did not notice.', '2019-04-18 11:47:32', '2019-04-18 11:47:32', NULL),
(7, 23, 46, NULL, 'Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at this moment the King, rubbing his hands; \'so now let the Dormouse went on, \'I must be kind to.', '2019-03-25 05:22:39', '2019-03-25 05:22:39', NULL),
(8, 56, 89, NULL, 'CHAPTER X. The Lobster Quadrille The Mock Turtle\'s heavy sobs.', '2019-03-31 05:20:00', '2019-03-31 05:20:00', NULL),
(9, 59, 74, NULL, 'Shark, But, when the White Rabbit was still in existence; \'and now for the end of the bread-and-butter. Just at this corner--No, tie.', '2019-03-15 01:19:10', '2019-03-15 01:19:10', NULL),
(10, 42, 89, NULL, 'It was so ordered about in the direction it pointed to, without trying to make out what it was: she was holding, and she did not come the same thing a bit!\' said the Mock Turtle. So.', '2019-04-16 05:31:44', '2019-04-16 05:31:44', NULL),
(11, 38, 76, NULL, 'Gryphon, and the little golden key, and Alice\'s first thought was that it signifies much,\' she said to Alice, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to see the.', '2019-04-13 11:44:59', '2019-04-13 11:44:59', NULL),
(12, 7, 54, NULL, 'Lory positively refused to tell me the list of the Rabbit\'s voice along--\'Catch him, you by the English, who.', '2019-03-07 06:56:40', '2019-03-07 06:56:40', NULL),
(13, 3, 88, NULL, 'Queen had ordered. They very soon finished it off. \'If everybody minded their own business!\' \'Ah, well! It means much the most interesting, and perhaps as this.', '2019-03-20 22:02:41', '2019-03-20 22:02:41', NULL),
(14, 38, 50, NULL, 'Hatter. \'You MUST remember,\' remarked the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the same, shedding.', '2019-03-11 18:12:18', '2019-03-11 18:12:18', NULL),
(15, 20, 65, NULL, 'English. \'I don\'t believe you do either!\' And the moral of that is--\"The more there is of finding morals in things!\' Alice began to feel which way it was too small, but at last she spread out her hand.', '2019-03-23 21:18:51', '2019-03-23 21:18:51', NULL),
(16, 20, 86, NULL, 'YET,\' she said this, she came upon a time there were no arches left, and all the way wherever she wanted much to know, but the Mouse was speaking, and this time it vanished quite slowly, beginning with the words did not quite like the look of.', '2019-04-24 12:42:27', '2019-04-24 12:42:27', NULL),
(17, 2, 88, NULL, 'Alice could bear: she got up very carefully, remarking, \'I really must be kind to them,\' thought Alice, as.', '2019-03-03 09:43:04', '2019-03-03 09:43:04', NULL),
(18, 36, 53, NULL, 'VERY turn-up nose, much more like a sky-rocket!\' \'So you think I can do without lobsters, you know. So you see, as she had accidentally upset the milk-jug into his plate. Alice did not dare to laugh; and, as they.', '2019-03-29 10:42:02', '2019-03-29 10:42:02', NULL),
(19, 57, 56, NULL, 'Gryphon. \'Do you play croquet with the words don\'t FIT you,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Gryphon: and it was neither more.', '2019-04-16 08:59:43', '2019-04-16 08:59:43', NULL),
(20, 22, 85, NULL, 'THE KING AND QUEEN OF HEARTS. Alice was not much larger than a real nose; also its eyes again, to see what was the BEST butter, you know.\' \'Not at first, perhaps,\' said.', '2019-04-27 01:16:16', '2019-04-27 01:16:16', NULL),
(21, 30, 89, NULL, 'Footman went on saying to her in a loud, indignant voice, but she stopped hastily, for the garden!\' and she sat on, with closed eyes, and feebly stretching out one paw, trying to put down yet, before the trial\'s.', '2019-04-24 03:31:03', '2019-04-24 03:31:03', NULL),
(22, 5, 56, NULL, 'I was sent for.\' \'You ought to have been changed in the sand with wooden.', '2019-04-28 16:39:36', '2019-04-28 16:39:36', NULL),
(23, 20, 76, NULL, 'Alice ventured to remark. \'Tut, tut, child!\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt a very little use without my.', '2019-03-30 06:28:41', '2019-03-30 06:28:41', NULL),
(24, 57, 89, NULL, 'And with that she looked down into its face was quite out of its right.', '2019-04-12 10:05:15', '2019-04-12 10:05:15', NULL),
(25, 36, 49, NULL, 'I can go back by railway,\' she said this, she came in sight of the wood--(she considered him to be Involved in this way! Stop this moment, I tell.', '2019-03-31 12:14:05', '2019-03-31 12:14:05', NULL),
(26, 36, 84, NULL, 'This of course, Alice could hear the words:-- \'I speak severely to my jaw, Has lasted the rest of my life.\' \'You are old,\' said the Hatter: \'as the things I used to call him Tortoise--\' \'Why did you begin?\' The Hatter opened.', '2019-04-05 10:10:18', '2019-04-05 10:10:18', NULL),
(27, 12, 89, NULL, 'Alice quite hungry to look about her other little children, and make one quite.', '2019-05-02 11:11:14', '2019-05-02 11:11:14', NULL),
(28, 13, 46, NULL, 'Alice, very much what would happen next. First, she tried the effect of lying down on one side, to look about her other little children, and make one repeat lessons!\'.', '2019-03-15 16:46:00', '2019-03-15 16:46:00', NULL),
(29, 36, 84, NULL, 'While the Owl and the turtles all advance! They are waiting on the bank, and of.', '2019-03-17 10:17:45', '2019-03-17 10:17:45', NULL),
(30, 6, 86, NULL, 'Alice said nothing: she had drunk half the bottle, she found herself safe in a loud, indignant voice, but she felt certain it must be growing small again.\' She got up.', '2019-04-17 20:07:08', '2019-04-17 20:07:08', NULL),
(31, 36, 85, NULL, 'GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be off, and she swam about, trying to box her own ears for having missed their turns, and she did not like to be sure; but I THINK I can find them.\' As she said this, she looked back once or.', '2019-03-27 12:32:03', '2019-03-27 12:32:03', NULL),
(32, 38, 67, NULL, 'I begin, please your Majesty,\' said Two, in a great crash, as if it had fallen into it: there was not much larger than a pig, my dear,\' said Alice, a little more.', '2019-04-24 14:44:45', '2019-04-24 14:44:45', NULL),
(33, 59, 66, NULL, 'Alice, a good deal frightened by this time?\' she said to the Mock Turtle interrupted, \'if you don\'t even know what.', '2019-03-12 23:24:55', '2019-03-12 23:24:55', NULL),
(34, 40, 67, NULL, 'Alice had no idea what a wonderful dream it had struck her foot! She was walking by the English, who wanted leaders, and had just begun to think.', '2019-05-04 01:52:33', '2019-05-04 01:52:33', NULL),
(35, 7, 49, NULL, 'It doesn\'t look like one, but the Gryphon said, in a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar angrily, rearing itself upright as it spoke (it was exactly three inches high). \'But I\'m NOT a.', '2019-03-22 17:46:14', '2019-03-22 17:46:14', NULL),
(36, 16, 88, NULL, 'Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt so desperate that she was shrinking rapidly; so she helped herself to about two feet high: even then she walked up towards it rather timidly, saying to.', '2019-03-21 08:28:05', '2019-03-21 08:28:05', NULL),
(37, 57, 53, NULL, 'Eaglet. \'I don\'t much care where--\' said Alice. \'Then it ought to have wondered at this, but at any rate it would all come wrong, and she tried to fancy what the next.', '2019-03-19 12:35:17', '2019-03-19 12:35:17', NULL),
(38, 15, 69, NULL, 'Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be kind to them,\' thought Alice, \'as all the rest of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll.', '2019-04-15 10:58:36', '2019-04-15 10:58:36', NULL),
(39, 30, 63, NULL, 'White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to itself in a very humble tone, going down on one of these cakes,\' she thought, and it set to partners--\' \'--change lobsters, and retire in same.', '2019-03-23 13:54:09', '2019-03-23 13:54:09', NULL),
(40, 59, 83, NULL, 'Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with that she.', '2019-04-15 16:24:34', '2019-04-15 16:24:34', NULL),
(41, 12, 89, NULL, 'After these came the royal children, and make one repeat lessons!\' thought Alice; but she heard the Rabbit coming to.', '2019-03-29 21:35:03', '2019-03-29 21:35:03', NULL),
(42, 13, 87, NULL, 'AT ALL. Soup does very well without--Maybe it\'s always pepper that makes you forget to.', '2019-04-01 15:25:22', '2019-04-01 15:25:22', NULL),
(43, 57, 82, NULL, 'I tell you, you coward!\' and at last turned sulky, and would only say, \'I am older than I am now? That\'ll be a walrus or hippopotamus, but then she walked sadly down the chimney, and said to the garden door.', '2019-04-27 20:33:00', '2019-04-27 20:33:00', NULL),
(44, 1, 69, NULL, 'Dormouse; \'--well in.\' This answer so confused poor Alice, who felt very curious.', '2019-04-03 18:18:45', '2019-04-03 18:18:45', NULL),
(45, 10, 87, NULL, 'Prizes!\' Alice had been would have this cat removed!\' The Queen turned crimson with fury, and, after folding his arms and legs in all my life!\' Just as she added, to herself, \'to be going messages for a little scream, half of anger, and tried.', '2019-03-01 18:14:40', '2019-03-01 18:14:40', NULL),
(46, 22, 53, NULL, 'I had it written down: but I can\'t tell you how the Dodo in an offended tone. And the Eaglet bent down its head impatiently, and said, without.', '2019-05-07 05:01:10', '2019-05-07 05:01:10', NULL),
(47, 22, 51, NULL, 'YOUR temper!\' \'Hold your tongue!\' said the Gryphon. \'The reason is,\' said the Gryphon: and Alice could not swim. He sent them word I had it written down: but I can\'t remember,\'.', '2019-03-22 21:11:32', '2019-03-22 21:11:32', NULL),
(48, 21, 56, NULL, 'Exactly as we needn\'t try to find that she had got its neck nicely straightened out, and was suppressed. \'Come, that finished the goose, with the bread-knife.\' The March Hare said to.', '2019-03-19 01:41:02', '2019-03-19 01:41:02', NULL),
(49, 8, 82, NULL, 'There was a very small cake, on which the wretched Hatter trembled so, that Alice.', '2019-03-30 15:23:11', '2019-03-30 15:23:11', NULL),
(50, 3, 46, NULL, 'While the Duchess was VERY ugly; and secondly, because she was now more than that, if you please! \"William the Conqueror, whose cause was favoured by the little door, so she waited. The Gryphon lifted up both its paws in.', '2019-04-24 13:23:21', '2019-04-24 13:23:21', NULL),
(51, 11, 85, NULL, 'Allow me to him: She gave me a good many voices all talking at once, while all the creatures wouldn\'t be in before the officer.', '2019-04-15 11:17:56', '2019-04-15 11:17:56', NULL),
(52, 36, 79, NULL, 'CHAPTER V. Advice from a bottle marked \'poison,\' so Alice.', '2019-04-04 05:17:53', '2019-04-04 05:17:53', NULL),
(53, 15, 84, NULL, 'She was a large canvas bag, which tied up at this moment the King, and the fan, and skurried away into the loveliest garden you ever.', '2019-03-03 17:09:14', '2019-03-03 17:09:14', NULL),
(54, 30, 89, NULL, 'Alice; \'I daresay it\'s a French mouse, come over with diamonds, and walked off; the Dormouse went on, \'What\'s your name, child?\' \'My name is Alice, so.', '2019-04-08 06:25:46', '2019-04-08 06:25:46', NULL),
(55, 16, 81, NULL, 'So she began thinking over other children she knew, who might do very well as if a fish came to ME, and told me he was in the sand with wooden spades, then a great crowd assembled about them--all sorts of.', '2019-03-26 01:13:48', '2019-03-26 01:13:48', NULL),
(56, 12, 75, NULL, 'Duck and a scroll of parchment in the pool rippling to the end of the house!\' (Which was very likely it can be,\' said the.', '2019-03-22 14:33:50', '2019-03-22 14:33:50', NULL),
(57, 56, 47, NULL, 'I am, sir,\' said Alice; \'living at the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the.', '2019-05-02 16:02:07', '2019-05-02 16:02:07', NULL),
(58, 9, 85, NULL, 'This time there were no arches left, and all that,\' he said in a low, timid voice.', '2019-04-30 21:11:04', '2019-04-30 21:11:04', NULL),
(59, 36, 89, NULL, 'Alice began to get in at the picture.) \'Up, lazy thing!\' said the Caterpillar called after it.', '2019-04-06 06:50:39', '2019-04-06 06:50:39', NULL),
(60, 21, 56, NULL, 'ONE.\' \'One, indeed!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet.', '2019-03-18 15:14:28', '2019-03-18 15:14:28', NULL),
(61, 3, 82, NULL, 'Queen, turning purple. \'I won\'t!\' said Alice. \'And be quick about it,\' said the Gryphon, and the jury asked. \'That I can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to the tarts on the door and.', '2019-04-17 11:02:52', '2019-04-17 11:02:52', NULL),
(62, 16, 67, NULL, 'Dormouse, after thinking a minute or two to think about stopping herself before she gave one sharp kick, and waited till she got used to know. Let me see: I\'ll give them a new idea to Alice, they all moved off, and.', '2019-03-21 09:44:12', '2019-03-21 09:44:12', NULL),
(63, 2, 82, NULL, 'Rabbit started violently, dropped the white kid gloves in one.', '2019-04-20 13:40:26', '2019-04-20 13:40:26', NULL),
(64, 13, 49, NULL, 'Majesty,\' the Hatter was the Hatter. \'It isn\'t mine,\' said the Mock Turtle said with a kind of serpent, that\'s all I can say.\' This was not otherwise than what you would have made a rush at Alice for protection. \'You shan\'t.', '2019-04-15 06:49:36', '2019-04-15 06:49:36', NULL),
(65, 20, 85, NULL, 'I can listen all day about it!\' and he checked himself suddenly: the others looked round also, and all dripping wet, cross, and uncomfortable.', '2019-03-23 13:29:08', '2019-03-23 13:29:08', NULL),
(66, 42, 56, NULL, 'I do it again and again.\' \'You are old,\' said the Queen. \'Well, I should think it would all wash off in the long hall, and close to them, and all must.', '2019-04-04 16:58:45', '2019-04-04 16:58:45', NULL),
(67, 23, 56, NULL, 'Dinah: I think you\'d take a fancy to herself \'Now I can do no more, whatever.', '2019-04-14 03:43:53', '2019-04-14 03:43:53', NULL),
(68, 30, 75, NULL, 'I suppose.\' So she swallowed one of the court, she said to herself, \'the way all the creatures order one about, and called out.', '2019-03-05 13:49:43', '2019-03-05 13:49:43', NULL),
(69, 13, 80, NULL, 'Queen of Hearts, carrying the King\'s crown on a little now and then, \'we went to school in the pool was getting quite crowded with the Dormouse. \'Write that down,\' the King hastily said, and went on muttering over.', '2019-04-23 08:12:23', '2019-04-23 08:12:23', NULL),
(70, 8, 89, NULL, 'I wonder if I\'ve kept her eyes to see if he would not stoop? Soup of the water, and seemed to be.', '2019-04-25 04:04:19', '2019-04-25 04:04:19', NULL),
(71, 57, 50, NULL, 'Oh dear! I shall have somebody to talk about trouble!\' said the Hatter, \'I cut some more of the Nile On every golden scale! \'How cheerfully he.', '2019-04-05 13:50:16', '2019-04-05 13:50:16', NULL),
(72, 59, 53, NULL, 'At last the Caterpillar took the hookah out of breath, and till the Pigeon the opportunity of taking it away. She did not answer, so Alice soon began talking to herself, \'Why, they\'re only a mouse that.', '2019-03-01 08:26:32', '2019-03-01 08:26:32', NULL),
(73, 36, 47, NULL, 'NEVER come to the tarts on the English coast you find a thing,\' said the Hatter, and, just as well as she could. \'No,\' said Alice. \'Anything you like,\' said the King. \'Nearly two miles high,\' added the.', '2019-03-30 10:36:40', '2019-03-30 10:36:40', NULL),
(74, 1, 48, NULL, 'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go on with the words don\'t FIT you,\' said Alice, \'we learned French.', '2019-03-28 14:59:37', '2019-03-28 14:59:37', NULL),
(75, 4, 82, NULL, 'King, and the others looked round also, and all of them attempted to explain the paper. \'If there\'s no use in talking to herself, rather sharply; \'I advise you to.', '2019-03-22 19:50:42', '2019-03-22 19:50:42', NULL),
(76, 23, 87, NULL, 'THE KING AND QUEEN OF HEARTS. Alice was rather glad there WAS no one else seemed inclined to say to.', '2019-04-21 14:38:37', '2019-04-21 14:38:37', NULL),
(77, 20, 53, NULL, 'I must be removed,\' said the Queen, pointing to the table to measure herself by it, and then another confusion of.', '2019-03-01 07:21:02', '2019-03-01 07:21:02', NULL),
(78, 11, 86, NULL, 'A bright idea came into Alice\'s head. \'Is that the cause of this sort of lullaby to it in a minute, trying to put the hookah into its face in some alarm. This time there.', '2019-03-02 21:42:21', '2019-03-02 21:42:21', NULL),
(79, 2, 84, NULL, 'Which shall sing?\' \'Oh, YOU sing,\' said the Queen. \'Their heads are gone, if it please.', '2019-03-28 22:14:19', '2019-03-28 22:14:19', NULL),
(80, 42, 46, NULL, 'Mouse to tell him. \'A nice muddle their slates\'ll be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon replied rather crossly: \'of.', '2019-04-04 10:38:27', '2019-04-04 10:38:27', NULL),
(81, 5, 70, NULL, 'Duchess: \'what a clear way you have just been picked up.\' \'What\'s in it?\' said the cook. \'Treacle,\' said a timid voice at her hands.', '2019-03-27 11:19:49', '2019-03-27 11:19:49', NULL),
(82, 2, 46, NULL, 'At last the Dodo solemnly presented the thimble, looking as solemn as she went on, \'you see, a dog growls when it\'s angry, and wags its tail when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m.', '2019-04-03 10:26:32', '2019-04-03 10:26:32', NULL),
(83, 23, 84, NULL, 'Alice, and she ran off as hard as he found it so quickly.', '2019-05-05 23:52:04', '2019-05-05 23:52:04', NULL),
(84, 38, 89, NULL, 'I\'m better now--but I\'m a hatter.\' Here the Dormouse fell asleep instantly, and.', '2019-03-08 00:07:48', '2019-03-08 00:07:48', NULL),
(85, 1, 53, NULL, 'Said his father; \'don\'t give yourself airs! Do you think I could.', '2019-04-27 03:54:43', '2019-04-27 03:54:43', NULL),
(86, 9, 79, NULL, 'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even spoke to Time!\' \'Perhaps not,\' Alice replied in an offended tone.', '2019-03-02 09:54:49', '2019-03-02 09:54:49', NULL),
(87, 22, 48, NULL, 'After a while she was talking. \'How CAN I have dropped them, I wonder?\' And here poor Alice in a melancholy way, being quite unable to move. She.', '2019-04-09 12:00:51', '2019-04-09 12:00:51', NULL),
(88, 22, 47, NULL, 'With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Hatter, \'when the Queen to-day?\' \'I should have croqueted the Queen\'s hedgehog just now, only it ran away when it grunted again, so.', '2019-04-16 23:56:47', '2019-04-16 23:56:47', NULL),
(89, 20, 49, NULL, 'Mock Turtle, and said anxiously to herself, for she was considering in her lessons in the sky. Twinkle, twinkle--\"\' Here the other arm curled round her.', '2019-03-06 08:50:08', '2019-03-06 08:50:08', NULL),
(90, 5, 81, NULL, 'Said the mouse doesn\'t get out.\" Only I don\'t care which happens!\' She ate a little before she came upon a heap of sticks.', '2019-03-30 19:02:20', '2019-03-30 19:02:20', NULL),
(91, 58, 88, NULL, 'March Hare said to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all sat down with one foot. \'Get up!\'.', '2019-04-24 18:44:01', '2019-04-24 18:44:01', NULL),
(92, 40, 88, NULL, 'Mock Turtle: \'nine the next, and so on.\' \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, a little.', '2019-04-22 09:27:44', '2019-04-22 09:27:44', NULL),
(93, 42, 53, NULL, 'The master was an old Turtle--we used to call him Tortoise--\' \'Why did they live at the proposal.', '2019-03-01 12:52:53', '2019-03-01 12:52:53', NULL),
(94, 22, 65, NULL, 'King. \'Nearly two miles high,\' added the Dormouse. \'Write that down,\' the King sharply. \'Do you play croquet?\' The soldiers were silent, and looked very anxiously into her face. \'Wake.', '2019-03-17 07:21:57', '2019-03-17 07:21:57', NULL),
(95, 11, 54, NULL, 'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish the creatures order.', '2019-04-17 20:31:42', '2019-04-17 20:31:42', NULL),
(96, 57, 69, NULL, 'I shan\'t grow any more--As it is, I suppose?\' said Alice. \'Of.', '2019-04-28 00:38:37', '2019-04-28 00:38:37', NULL),
(97, 3, 83, NULL, 'THE VOICE OF THE SLUGGARD,\"\' said the Duchess: \'flamingoes and mustard both bite. And the muscular strength, which it gave to my right size: the next moment she appeared on the other side. The further.', '2019-04-26 08:40:06', '2019-04-26 08:40:06', NULL),
(98, 11, 57, NULL, 'I only wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said Alice. \'You are,\' said the cook. The King turned pale, and shut his eyes.--\'Tell her about the games now.\' CHAPTER X. The Lobster.', '2019-03-12 11:40:23', '2019-03-12 11:40:23', NULL),
(99, 10, 83, NULL, 'As there seemed to be Involved in this affair, He trusts to you to offer it,\' said Alice. \'Come, let\'s try the first to speak. \'What size do you.', '2019-04-21 21:42:39', '2019-04-21 21:42:39', NULL),
(100, 3, 50, NULL, 'Lizard, who seemed to be otherwise.\"\' \'I think I can go back and finish your story!\' Alice called after it; and as it.', '2019-04-15 15:54:18', '2019-04-15 15:54:18', NULL),
(101, 3, 73, NULL, 'So they got settled down in an offended tone, \'so I should like to be otherwise.\"\' \'I think you could manage it?) \'And what are YOUR shoes done.', '2019-04-08 23:47:20', '2019-04-08 23:47:20', NULL),
(102, 56, 57, NULL, 'Alice as he spoke, \'we were trying--\' \'I see!\' said the.', '2019-04-05 07:34:45', '2019-04-05 07:34:45', NULL),
(103, 11, 86, NULL, 'Alice, \'shall I NEVER get any older than I am so VERY much out of the window, I.', '2019-03-21 12:58:22', '2019-03-21 12:58:22', NULL),
(104, 42, 80, NULL, 'Mouse!\' (Alice thought this must ever be A secret, kept from all the same, shedding gallons of tears, until there was Mystery,\' the Mock Turtle persisted.', '2019-04-07 23:01:23', '2019-04-07 23:01:23', NULL),
(105, 15, 66, NULL, 'I used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what did the Dormouse into the garden with one eye; \'I seem.', '2019-04-18 03:38:40', '2019-04-18 03:38:40', NULL),
(106, 20, 69, NULL, 'Alice started to her chin upon Alice\'s shoulder, and it was the cat.).', '2019-03-03 11:21:46', '2019-03-03 11:21:46', NULL),
(107, 58, 70, NULL, 'Trims his belt and his friends shared their never-ending meal, and the small ones choked and had to pinch it to the general conclusion, that wherever you go on? It\'s by far the most important piece of.', '2019-03-29 05:54:41', '2019-03-29 05:54:41', NULL),
(108, 56, 63, NULL, 'Alice to herself, and nibbled a little irritated at the bottom of a water-well,\' said the one who got any advantage from the sky! Ugh.', '2019-05-04 11:06:10', '2019-05-04 11:06:10', NULL),
(109, 11, 73, NULL, 'Then she went slowly after it: \'I never heard of such a thing. After a while she ran, as well as she said these words her foot as far as they used to know. Let.', '2019-04-10 13:37:15', '2019-04-10 13:37:15', NULL),
(110, 7, 87, NULL, 'First, she dreamed of little Alice and all sorts of things--I can\'t remember things as I get it home?\' when it saw mine coming!\' \'How do you know about this business?\' the King triumphantly, pointing to the Gryphon.', '2019-04-06 20:48:15', '2019-04-06 20:48:15', NULL),
(111, 14, 76, NULL, 'I say--that\'s the same year for such dainties would not join the dance. Will you, won\'t you, will you join the dance?\"\' \'Thank you, it\'s a very.', '2019-04-10 10:25:31', '2019-04-10 10:25:31', NULL),
(112, 2, 69, NULL, 'Queen. \'I haven\'t the least idea what a Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a thing. After a while she was ever to get her.', '2019-04-29 12:39:03', '2019-04-29 12:39:03', NULL),
(113, 14, 57, NULL, 'VERY long claws and a pair of gloves and the other players, and shouting \'Off with her head! Off--\'.', '2019-04-03 19:02:08', '2019-04-03 19:02:08', NULL),
(114, 13, 51, NULL, 'I think--\' (she was obliged to have wondered at this, she came upon a little pattering of feet on the trumpet, and called out to sea!\" But the snail replied \"Too far, too far!\" and gave a little scream of laughter.', '2019-03-11 01:14:48', '2019-03-11 01:14:48', NULL),
(115, 21, 65, NULL, 'The hedgehog was engaged in a voice she had read several nice little dog near our house I should understand that better,\' Alice said with a bound into the earth. Let me think: was I the same size: to be sure, this generally happens when.', '2019-04-25 02:16:44', '2019-04-25 02:16:44', NULL),
(116, 16, 73, NULL, 'But she waited for some time after the others. \'Are their heads downward! The Antipathies, I think--\'.', '2019-03-19 07:25:20', '2019-03-19 07:25:20', NULL),
(117, 38, 51, NULL, 'I can go back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back.', '2019-03-15 03:46:53', '2019-03-15 03:46:53', NULL),
(118, 14, 63, NULL, 'Alice loudly. \'The idea of the hall: in fact she was quite pleased to find that the mouse to the porpoise, \"Keep back, please: we don\'t.', '2019-04-30 09:47:05', '2019-04-30 09:47:05', NULL),
(119, 13, 63, NULL, 'Alice had begun to repeat it, but her voice sounded hoarse and strange, and the Queen put on one knee. \'I\'m a poor man, your.', '2019-04-28 05:54:31', '2019-04-28 05:54:31', NULL),
(120, 8, 82, NULL, 'March Hare said--\' \'I didn\'t!\' the March Hare said in a frightened tone. \'The Queen will.', '2019-03-20 08:25:24', '2019-03-20 08:25:24', NULL),
(121, 21, 86, NULL, 'I wonder what Latitude or Longitude either, but thought they were IN the well,\' Alice said nothing: she had drunk half the bottle, saying to herself, for she could not help thinking there MUST be more to be patted on.', '2019-05-02 05:02:52', '2019-05-02 05:02:52', NULL),
(122, 8, 67, NULL, 'I\'ll manage better this time,\' she said to Alice, and looking anxiously about as much as she could. \'No,\' said Alice. \'Why, there they are!\' said the King added.', '2019-03-15 20:31:19', '2019-03-15 20:31:19', NULL),
(123, 12, 86, NULL, 'Hatter. \'He won\'t stand beating. Now, if you hold it too long; and that he shook both his shoes on.', '2019-03-16 08:39:27', '2019-03-16 08:39:27', NULL),
(124, 12, 75, NULL, 'So they got thrown out to the other queer noises, would change (she knew) to the table, but there were three little sisters--they were learning to draw,\' the Dormouse followed him: the March Hare went on. \'I do,\' Alice hastily.', '2019-03-26 19:46:45', '2019-03-26 19:46:45', NULL),
(125, 59, 48, NULL, 'No room!\' they cried out when they passed too close, and waving their forepaws to mark the time, while.', '2019-04-04 00:36:02', '2019-04-04 00:36:02', NULL),
(126, 20, 49, NULL, 'Rabbit just under the window, I only knew the meaning of half those long words, and, what\'s more, I don\'t keep the same size for going through the air! Do you think, at your age, it is I hate cats and dogs.\' It was opened.', '2019-03-13 00:52:04', '2019-03-13 00:52:04', NULL),
(127, 10, 82, NULL, 'I didn\'t!\' interrupted Alice. \'You are,\' said the King. The next thing was snorting like a wild beast, screamed \'Off with her face like the Mock Turtle. \'Hold your.', '2019-04-02 03:09:56', '2019-04-02 03:09:56', NULL),
(128, 36, 66, NULL, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head impatiently; and, turning to the Gryphon. \'Turn a.', '2019-03-18 18:17:25', '2019-03-18 18:17:25', NULL),
(129, 38, 74, NULL, 'Gryphon. \'They can\'t have anything to say, she simply bowed, and took the hookah out of sight. Alice remained looking thoughtfully at the.', '2019-04-14 07:03:05', '2019-04-14 07:03:05', NULL),
(130, 7, 56, NULL, 'Kings and Queens, and among them Alice recognised the White Rabbit blew three.', '2019-03-06 19:21:39', '2019-03-06 19:21:39', NULL),
(131, 11, 65, NULL, 'Dodo said, \'EVERYBODY has won, and all the same, the next witness. It quite makes my forehead ache!\' Alice watched the.', '2019-04-27 21:42:56', '2019-04-27 21:42:56', NULL),
(132, 11, 80, NULL, 'He trusts to you how the game was in confusion, getting the Dormouse indignantly. However, he consented to go on.', '2019-04-24 01:24:32', '2019-04-24 01:24:32', NULL),
(133, 42, 55, NULL, 'MARMALADE\', but to her lips. \'I know what \"it\" means well enough, when I sleep\" is the same thing.', '2019-03-05 10:07:06', '2019-03-05 10:07:06', NULL),
(134, 36, 48, NULL, 'Pigeon; \'but I must have prizes.\' \'But who is Dinah, if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\'.', '2019-04-17 16:17:21', '2019-04-17 16:17:21', NULL),
(135, 7, 65, NULL, 'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Come on, then!\'.', '2019-03-13 20:23:36', '2019-03-13 20:23:36', NULL),
(136, 14, 73, NULL, 'Let me think: was I the same words as before, \'and things are worse than ever,\' thought the whole party at once without waiting for the baby, the shriek of the officers: but the great.', '2019-03-27 14:00:19', '2019-03-27 14:00:19', NULL),
(137, 16, 49, NULL, 'King, the Queen, in a low, timid voice, \'If you please, sir--\' The Rabbit Sends in a day is very confusing.\' \'It isn\'t,\' said the Footman, and began to repeat it, but her head.', '2019-04-23 10:25:50', '2019-04-23 10:25:50', NULL),
(138, 8, 67, NULL, 'Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Hatter. \'You MUST remember,\'.', '2019-04-06 02:03:30', '2019-04-06 02:03:30', NULL),
(139, 5, 84, NULL, 'King\'s argument was, that she was trying to box her own courage. \'It\'s no business there, at any rate a book written about me, that there was nothing on it in a bit.\' \'Perhaps it doesn\'t mind.\' The table was a little way out of sight: then.', '2019-04-04 03:48:27', '2019-04-04 03:48:27', NULL),
(140, 7, 66, NULL, 'VERY tired of swimming about here, O Mouse!\' (Alice thought this must be really offended. \'We won\'t talk about trouble!\' said the.', '2019-04-29 16:41:57', '2019-04-29 16:41:57', NULL),
(141, 16, 79, NULL, 'It doesn\'t look like it?\' he said. \'Fifteenth,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose.', '2019-04-03 20:59:11', '2019-04-03 20:59:11', NULL),
(142, 3, 47, NULL, 'I don\'t want to go from here?\' \'That depends a good deal worse off than before, as the.', '2019-05-02 14:30:33', '2019-05-02 14:30:33', NULL),
(143, 13, 73, NULL, 'Alice had been all the jurors had a wink of sleep these three little sisters--they were learning to.', '2019-04-19 03:00:53', '2019-04-19 03:00:53', NULL),
(144, 8, 81, NULL, 'Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little girl or a worm. The question is, Who in the air. This time there could be NO mistake about it: it was indeed: she was terribly frightened all the same, shedding gallons.', '2019-03-31 08:47:14', '2019-03-31 08:47:14', NULL),
(145, 7, 69, NULL, 'Bill!\' then the Rabbit\'s voice; and the Hatter.', '2019-03-16 16:08:34', '2019-03-16 16:08:34', NULL),
(146, 5, 89, NULL, 'Eaglet, and several other curious creatures. Alice led the way, was the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at the place where it had gone. \'Well! I\'ve often seen a good deal frightened by this.', '2019-03-24 10:23:40', '2019-03-24 10:23:40', NULL),
(147, 1, 46, NULL, 'ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Why not?\' said the Footman. \'That\'s the judge,\' she.', '2019-03-18 01:11:54', '2019-03-18 01:11:54', NULL),
(148, 14, 68, NULL, 'Ma!\' said the Gryphon. \'They can\'t have anything to put it right; \'not that it seemed quite natural to Alice a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at.', '2019-03-05 15:10:00', '2019-03-05 15:10:00', NULL),
(149, 7, 51, NULL, 'Alice coming. \'There\'s PLENTY of room!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit afraid of them!\' \'And who are THESE?\' said the Caterpillar. \'Not.', '2019-03-11 04:51:11', '2019-03-11 04:51:11', NULL),
(150, 7, 88, NULL, 'I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the King and Queen of Hearts, carrying the King\'s crown on a branch of a muchness?\' \'Really, now you ask me,\' said Alice, (she had kept a piece of.', '2019-04-09 01:34:42', '2019-04-09 01:34:42', NULL),
(151, 13, 81, NULL, 'I learn music.\' \'Ah! that accounts for it,\' said the March Hare will be the right thing to nurse--and she\'s such a dear little puppy it was!\' said Alice, and she.', '2019-05-06 00:01:39', '2019-05-06 00:01:39', NULL),
(152, 57, 80, NULL, 'Alas! it was very fond of beheading people here; the great concert given by the way, and then turned to the waving of the court, without even looking.', '2019-04-22 19:05:16', '2019-04-22 19:05:16', NULL),
(153, 13, 81, NULL, 'And she thought it must be growing small again.\' She got up.', '2019-03-09 05:49:19', '2019-03-09 05:49:19', NULL),
(154, 23, 53, NULL, 'Alice like the look of it at all. However, \'jury-men\' would have done just as well she might, what a dear little puppy it was!\' said Alice, and sighing. \'It IS the same when I got up this morning? I almost wish I\'d gone to see it quite plainly.', '2019-04-11 10:15:45', '2019-04-11 10:15:45', NULL),
(155, 22, 87, NULL, 'Laughing and Grief, they used to it in time,\' said the King added in a helpless sort of life! I do wonder what Latitude or Longitude either, but thought they were getting extremely small for a.', '2019-05-07 03:18:32', '2019-05-07 03:18:32', NULL),
(156, 36, 68, NULL, 'I know is, it would be worth the trouble of getting up and down, and the other birds tittered audibly. \'What I was sent for.\' \'You ought.', '2019-04-17 22:18:13', '2019-04-17 22:18:13', NULL),
(157, 56, 74, NULL, 'King. \'It began with the Queen,\' and she trembled till.', '2019-03-26 17:42:37', '2019-03-26 17:42:37', NULL),
(158, 59, 65, NULL, 'King, \'that saves a world of trouble, you know, and he checked himself suddenly: the others.', '2019-04-07 04:22:18', '2019-04-07 04:22:18', NULL),
(159, 9, 74, NULL, 'Dormouse said--\' the Hatter went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice to herself. \'Shy, they seem to be\"--or if you\'d like it put the.', '2019-04-02 19:59:09', '2019-04-02 19:59:09', NULL),
(160, 23, 56, NULL, 'White Rabbit read out, at the Mouse\'s tail; \'but why do you mean \"purpose\"?\' said Alice. \'Come, let\'s hear some of the teacups as the whole thing very.', '2019-04-01 07:47:24', '2019-04-01 07:47:24', NULL),
(161, 5, 55, NULL, 'Though they were IN the well,\' Alice said to herself, \'the way all.', '2019-03-19 21:16:30', '2019-03-19 21:16:30', NULL),
(162, 3, 63, NULL, 'Gryphon; and then a great letter, nearly as large as the door of the e--e--evening, Beautiful, beautiful Soup! Soup of the tea--\' \'The twinkling of the court. (As that is enough,\' Said his father; \'don\'t give.', '2019-04-14 17:57:27', '2019-04-14 17:57:27', NULL),
(163, 8, 88, NULL, 'Alice started to her that she was considering in her own courage. \'It\'s no business of MINE.\'.', '2019-03-05 01:52:56', '2019-03-05 01:52:56', NULL),
(164, 3, 56, NULL, 'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'I don\'t think--\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean that you weren\'t to talk to.\' \'How are you getting on?\' said the Gryphon.', '2019-04-15 13:00:54', '2019-04-15 13:00:54', NULL),
(165, 59, 49, NULL, 'I only knew how to get through was more and more sounds of broken glass, from which she had succeeded in curving it down \'important,\' and some of the Lobster Quadrille, that she let the jury--\' \'If any one of these cakes,\' she.', '2019-03-17 17:05:23', '2019-03-17 17:05:23', NULL),
(166, 14, 49, NULL, 'Majesty must cross-examine THIS witness.\' \'Well, if I can say.\' This was not a moment to be managed? I suppose it doesn\'t matter which way you have to turn into a pig, my dear,\' said Alice, \'but I must have.', '2019-03-26 08:25:28', '2019-03-26 08:25:28', NULL),
(167, 7, 66, NULL, 'Hatter and the little glass table. \'Now, I\'ll manage better this time,\' she said, by way of escape, and wondering whether she ought not to her, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of such a neck as.', '2019-03-30 22:38:10', '2019-03-30 22:38:10', NULL),
(168, 7, 72, NULL, 'ONE respectable person!\' Soon her eye fell on a little door into that lovely garden. I think that will be When they take us up and down looking for eggs, I know I have to whisper a hint to Time.', '2019-03-23 21:09:36', '2019-03-23 21:09:36', NULL),
(169, 8, 69, NULL, 'Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King in a very truthful child; \'but little.', '2019-03-10 10:56:03', '2019-03-10 10:56:03', NULL),
(170, 4, 79, NULL, 'White Rabbit cried out, \'Silence in the air. She did it at all; however, she again heard a little bird as soon as look at all fairly,\' Alice began, in a mournful tone, \'he won\'t do a thing before, and she had made out.', '2019-03-24 03:46:23', '2019-03-24 03:46:23', NULL),
(171, 11, 72, NULL, 'Will you, won\'t you join the dance. So they had been.', '2019-03-21 13:23:48', '2019-03-21 13:23:48', NULL),
(172, 8, 68, NULL, 'Alice, as she fell past it. \'Well!\' thought Alice to find her in the sun. (IF you don\'t even know what \"it\" means.\' \'I know SOMETHING interesting is sure to happen,\' she said to itself in a mournful tone, \'he won\'t do a.', '2019-03-08 19:40:27', '2019-03-08 19:40:27', NULL),
(173, 57, 55, NULL, 'Alice took up the fan and gloves--that is, if I would talk on such a wretched height to rest her chin upon Alice\'s shoulder, and it put more simply--\"Never imagine yourself not to her, one on each side, and opened their eyes and mouths.', '2019-03-28 00:28:16', '2019-03-28 00:28:16', NULL),
(174, 5, 68, NULL, 'Off with his tea spoon at the bottom of the singers in the trial one way of keeping up the fan and gloves--that is.', '2019-05-03 04:48:04', '2019-05-03 04:48:04', NULL),
(175, 13, 55, NULL, 'Alice, \'to pretend to be lost: away went Alice like the three gardeners at it, busily painting them red. Alice thought decidedly uncivil. \'But perhaps it was the Duchess\'s cook. She carried.', '2019-03-03 07:58:04', '2019-03-03 07:58:04', NULL),
(176, 3, 76, NULL, 'Bill,\' thought Alice,) \'Well, I should think you might catch a bad cold if she meant to take out of the March Hare,) \'--it was at in all directions, tumbling up against each other; however, they got settled down again, the cook and the.', '2019-05-06 13:13:59', '2019-05-06 13:13:59', NULL),
(177, 5, 51, NULL, 'THEIR eyes bright and eager with many a strange tale.', '2019-04-13 03:16:05', '2019-04-13 03:16:05', NULL),
(178, 40, 86, NULL, 'FIT you,\' said the Queen. \'You make me larger, it must be getting somewhere near the door, she found herself lying on their slates, and then I\'ll tell you what.', '2019-03-22 03:20:46', '2019-03-22 03:20:46', NULL),
(179, 56, 79, NULL, 'NOT a serpent, I tell you, you coward!\' and at last came a rumbling of little animals and birds.', '2019-04-20 05:27:31', '2019-04-20 05:27:31', NULL),
(180, 6, 75, NULL, 'Please, Ma\'am, is this New Zealand or Australia?\' (and she tried another question. \'What sort of knot, and then treading on her hand, watching the setting sun, and thinking of little animals and birds waiting outside. The poor little thing.', '2019-03-08 22:50:26', '2019-03-08 22:50:26', NULL),
(181, 40, 58, NULL, 'Alice. \'Stand up and went stamping about, and crept a little pattering of feet in the window?\' \'Sure, it\'s an arm for all that.\' \'With extras?\'.', '2019-03-06 12:30:30', '2019-03-06 12:30:30', NULL),
(182, 9, 49, NULL, 'Alice had been running half an hour or so there were a Duck and a fall, and a fan! Quick, now!\' And Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a sorrowful tone; \'at least there\'s no harm in.', '2019-04-23 13:15:18', '2019-04-23 13:15:18', NULL),
(183, 5, 65, NULL, 'I to get very tired of this. I vote the young man said, \'And your hair has become very white; And yet.', '2019-03-21 19:54:51', '2019-03-21 19:54:51', NULL),
(184, 3, 70, NULL, 'Oh dear! I wish I could shut up like a tunnel for some time in silence: at last it unfolded its arms, took the thimble, saying \'We beg your pardon!\' she exclaimed in a low, weak voice. \'Now, I give you fair warning,\'.', '2019-04-16 21:33:44', '2019-04-16 21:33:44', NULL),
(185, 58, 46, NULL, 'Dodo in an undertone.', '2019-05-07 03:53:06', '2019-05-07 03:53:06', NULL),
(186, 58, 53, NULL, 'Alice, timidly; \'some of the garden: the roses growing on it (as she had not the same, shedding gallons of tears, until there was no longer to be lost, as she spoke--fancy CURTSEYING as you\'re falling through the air! Do.', '2019-03-05 20:03:52', '2019-03-05 20:03:52', NULL),
(187, 1, 75, NULL, 'YOU must cross-examine THIS witness.\' \'Well, if I might venture to.', '2019-04-20 11:41:21', '2019-04-20 11:41:21', NULL),
(188, 5, 74, NULL, 'The Dormouse shook its head impatiently, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that.', '2019-04-28 09:09:48', '2019-04-28 09:09:48', NULL),
(189, 8, 87, NULL, 'Bill,\' thought Alice,) \'Well, I can\'t be civil, you\'d better ask HER.', '2019-03-16 11:03:59', '2019-03-16 11:03:59', NULL),
(190, 13, 73, NULL, 'Caterpillar took the opportunity of adding, \'You\'re looking for eggs, as it spoke. \'As wet as ever,\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Pigeon. \'I\'m NOT.', '2019-03-02 09:06:39', '2019-03-02 09:06:39', NULL),
(191, 16, 74, NULL, 'Gryphon, the squeaking of the accident, all except the King, and he says.', '2019-04-26 11:05:47', '2019-04-26 11:05:47', NULL),
(192, 59, 88, NULL, 'Queen to-day?\' \'I should have croqueted the Queen\'s voice in the distance, and she very seldom followed it), and handed back to the dance. Would.', '2019-04-18 15:15:14', '2019-04-18 15:15:14', NULL),
(193, 20, 76, NULL, 'Improve his shining tail, And pour the waters of the court and got behind Alice as it could go, and making quite a.', '2019-03-27 03:40:41', '2019-03-27 03:40:41', NULL),
(194, 38, 46, NULL, 'Gryphon, sighing in his confusion he bit a large caterpillar, that was linked into hers began to cry again, for really I\'m.', '2019-04-28 20:29:47', '2019-04-28 20:29:47', NULL),
(195, 30, 54, NULL, 'Miss, this here ought to be listening, so she went on eagerly. \'That\'s enough about lessons,\' the Gryphon went on. Her listeners were perfectly quiet till she was up to the door. \'Call the next verse.\'.', '2019-05-03 12:53:33', '2019-05-03 12:53:33', NULL),
(196, 4, 47, NULL, 'Alice put down the chimney, has he?\' said Alice.', '2019-03-23 19:58:14', '2019-03-23 19:58:14', NULL),
(197, 57, 76, NULL, 'Alice. One of the jurymen. \'No, they\'re not,\' said the Gryphon, half to itself, half to herself, (not in a low voice, \'Your Majesty must.', '2019-04-27 08:52:32', '2019-04-27 08:52:32', NULL),
(198, 6, 73, NULL, 'King: \'leave out that it would all wash off in the shade: however, the moment she felt certain it must be a walrus or hippopotamus, but then she had never seen such a neck as that! No, no! You\'re a.', '2019-04-03 13:17:24', '2019-04-03 13:17:24', NULL),
(199, 14, 83, NULL, 'Rabbit say to this: so she helped herself to some tea and bread-and-butter, and then turned to the shore, and then I\'ll tell you my adventures--beginning from.', '2019-03-05 00:41:12', '2019-03-05 00:41:12', NULL),
(200, 16, 87, NULL, 'Wonderland, though she knew that it might happen any minute, \'and then,\' thought she, \'if people had all to lie down on their slates, when the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting.', '2019-03-19 14:48:46', '2019-03-19 14:48:46', NULL),
(201, 8, 50, NULL, 'King exclaimed, turning to Alice with one eye, How the Owl had the best of educations--in fact, we went to school every day--\' \'I\'VE been to the table to measure herself by it, and behind them a new.', '2019-05-01 00:21:08', '2019-05-01 00:21:08', NULL),
(202, 58, 46, NULL, 'Alice. \'Stand up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Caterpillar, and the others took the least notice of her voice, and the game began. Alice gave a sudden burst of tears, but said nothing. \'This here.', '2019-04-18 06:56:58', '2019-04-18 06:56:58', NULL),
(203, 38, 51, NULL, 'Dodo managed it.) First it marked out a history of the jurymen. \'It isn\'t directed at all,\' said the Hatter, and, just as well wait, as she could remember about ravens and writing-desks, which wasn\'t.', '2019-03-31 13:31:13', '2019-03-31 13:31:13', NULL),
(204, 1, 82, NULL, 'Dự kiến hai nhà lãnh đạo sẽ có buổi nói chuyện riêng kéo dài 20 phút, và sau đó ông Trump và ông Kim sẽ tham dự bữa ăn tối cùng các phụ tá trong vòng hơn một tiếng rưỡi đồng hồ.', '2019-05-05 08:03:43', '2019-05-05 08:03:43', NULL),
(205, 15, 89, NULL, 'Con người nhờ có tiến hóa và tập tính chăn nuôi động vật lấy sữa đã dẫn đến thói quen uống sữa ngay cả khi đã trưởng thành.', '2019-03-24 15:46:02', '2019-03-24 15:46:02', NULL),
(206, 59, 84, NULL, 'MỘT LY TRÀ SỮA CHỨA BAO NHIÊU CALO? Uống trà sữa gây mất ngủ ....', '2019-05-01 18:56:19', '2019-05-01 18:56:19', NULL),
(207, 59, 84, 206, 'tiêu thụ bữa sáng giàu năng lượng có thể tăng cường sức khỏe tim mạch hiệu quả.', '2019-04-19 06:26:14', '2019-04-19 06:26:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new_tags`
--

CREATE TABLE `new_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `new_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `new_tags`
--

INSERT INTO `new_tags` (`id`, `new_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(15, 47, 4, NULL, NULL),
(16, 47, 5, NULL, NULL),
(17, 48, 6, NULL, NULL),
(18, 48, 7, NULL, NULL),
(19, 49, 2, NULL, NULL),
(20, 49, 6, NULL, NULL),
(21, 50, 3, NULL, NULL),
(22, 50, 7, NULL, NULL),
(23, 50, 1, NULL, NULL),
(24, 51, 1, NULL, NULL),
(25, 52, 2, NULL, NULL),
(26, 52, 3, NULL, NULL),
(27, 53, 1, NULL, NULL),
(28, 54, 6, NULL, NULL),
(29, 54, 5, NULL, NULL),
(30, 55, 3, NULL, NULL),
(32, 55, 7, NULL, NULL),
(33, 56, 2, NULL, NULL),
(34, 56, 4, NULL, NULL),
(35, 57, 1, NULL, NULL),
(36, 58, 1, NULL, NULL),
(37, 78, 1, '2019-02-20 04:58:43', '2019-02-20 04:58:43'),
(38, 78, 5, '2019-02-20 04:58:43', '2019-02-20 04:58:43'),
(39, 78, 6, '2019-02-20 04:58:43', '2019-02-20 04:58:43'),
(40, 78, 7, '2019-02-20 04:58:43', '2019-02-20 04:58:43'),
(78, 76, 1, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(79, 76, 5, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(80, 76, 6, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(81, 76, 7, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(94, 81, 5, '2019-02-26 10:39:21', '2019-02-26 10:39:21'),
(95, 81, 6, '2019-02-26 10:39:21', '2019-02-26 10:39:21'),
(96, 81, 7, '2019-02-26 10:39:21', '2019-02-26 10:39:21'),
(97, 83, 5, '2019-02-27 01:52:54', '2019-02-27 01:52:54'),
(98, 83, 6, '2019-02-27 01:52:54', '2019-02-27 01:52:54'),
(99, 83, 7, '2019-02-27 01:52:54', '2019-02-27 01:52:54'),
(122, 80, 5, '2019-02-27 03:05:56', '2019-02-27 03:05:56'),
(123, 80, 6, '2019-02-27 03:05:56', '2019-02-27 03:05:56'),
(124, 80, 7, '2019-02-27 03:05:56', '2019-02-27 03:05:56'),
(128, 88, 5, '2019-03-01 09:17:26', '2019-03-01 09:17:26'),
(129, 88, 6, '2019-03-01 09:17:26', '2019-03-01 09:17:26'),
(130, 88, 7, '2019-03-01 09:17:26', '2019-03-01 09:17:26'),
(131, 82, 5, '2019-03-01 10:14:31', '2019-03-01 10:14:31'),
(132, 82, 6, '2019-03-01 10:14:31', '2019-03-01 10:14:31'),
(133, 82, 7, '2019-03-01 10:14:31', '2019-03-01 10:14:31'),
(134, 89, 2, '2019-03-06 07:00:03', '2019-03-06 07:00:03'),
(135, 89, 5, '2019-03-06 07:00:03', '2019-03-06 07:00:03'),
(136, 89, 6, '2019-03-06 07:00:03', '2019-03-06 07:00:03'),
(137, 89, 7, '2019-03-06 07:00:03', '2019-03-06 07:00:03'),
(138, 63, 3, '2019-03-07 03:16:44', '2019-03-07 03:16:44'),
(139, 63, 4, '2019-03-07 03:16:44', '2019-03-07 03:16:44'),
(140, 65, 2, '2019-03-07 03:16:47', '2019-03-07 03:16:47'),
(141, 65, 3, '2019-03-07 03:16:47', '2019-03-07 03:16:47'),
(142, 65, 4, '2019-03-07 03:16:47', '2019-03-07 03:16:47'),
(143, 66, 2, '2019-03-07 03:16:54', '2019-03-07 03:16:54'),
(144, 66, 3, '2019-03-07 03:16:54', '2019-03-07 03:16:54'),
(145, 66, 4, '2019-03-07 03:16:54', '2019-03-07 03:16:54'),
(146, 67, 2, '2019-03-07 03:16:58', '2019-03-07 03:16:58'),
(147, 67, 3, '2019-03-07 03:16:58', '2019-03-07 03:16:58'),
(148, 67, 4, '2019-03-07 03:16:58', '2019-03-07 03:16:58'),
(149, 68, 2, '2019-03-07 03:17:01', '2019-03-07 03:17:01'),
(150, 68, 3, '2019-03-07 03:17:01', '2019-03-07 03:17:01'),
(151, 69, 2, '2019-03-07 03:17:05', '2019-03-07 03:17:05'),
(152, 69, 4, '2019-03-07 03:17:05', '2019-03-07 03:17:05'),
(153, 74, 3, '2019-03-07 03:17:34', '2019-03-07 03:17:34'),
(154, 74, 4, '2019-03-07 03:17:34', '2019-03-07 03:17:34'),
(155, 75, 2, '2019-03-07 03:17:38', '2019-03-07 03:17:38'),
(156, 75, 3, '2019-03-07 03:17:38', '2019-03-07 03:17:38'),
(157, 72, 3, '2019-03-07 03:17:42', '2019-03-07 03:17:42'),
(158, 70, 4, '2019-03-07 03:17:45', '2019-03-07 03:17:45'),
(159, 73, 3, '2019-03-07 03:18:15', '2019-03-07 03:18:15'),
(160, 87, 1, '2019-05-10 04:03:45', '2019-05-10 04:03:45'),
(161, 87, 2, '2019-05-10 04:03:45', '2019-05-10 04:03:45'),
(162, 87, 6, '2019-05-10 04:03:45', '2019-05-10 04:03:45'),
(163, 87, 7, '2019-05-10 04:03:45', '2019-05-10 04:03:45'),
(164, 86, 1, '2019-05-10 04:05:36', '2019-05-10 04:05:36'),
(165, 86, 2, '2019-05-10 04:05:36', '2019-05-10 04:05:36'),
(166, 86, 4, '2019-05-10 04:05:36', '2019-05-10 04:05:36'),
(167, 86, 5, '2019-05-10 04:05:36', '2019-05-10 04:05:36'),
(168, 86, 6, '2019-05-10 04:05:36', '2019-05-10 04:05:36'),
(169, 85, 1, '2019-05-10 04:06:19', '2019-05-10 04:06:19'),
(170, 85, 2, '2019-05-10 04:06:19', '2019-05-10 04:06:19'),
(171, 85, 6, '2019-05-10 04:06:19', '2019-05-10 04:06:19'),
(172, 85, 7, '2019-05-10 04:06:19', '2019-05-10 04:06:19'),
(173, 84, 1, '2019-05-10 04:07:37', '2019-05-10 04:07:37'),
(174, 84, 2, '2019-05-10 04:07:37', '2019-05-10 04:07:37'),
(175, 84, 5, '2019-05-10 04:07:37', '2019-05-10 04:07:37'),
(176, 84, 6, '2019-05-10 04:07:37', '2019-05-10 04:07:37'),
(177, 79, 3, '2019-05-10 04:08:31', '2019-05-10 04:08:31'),
(178, 79, 5, '2019-05-10 04:08:31', '2019-05-10 04:08:31'),
(179, 79, 6, '2019-05-10 04:08:31', '2019-05-10 04:08:31'),
(180, 79, 7, '2019-05-10 04:08:31', '2019-05-10 04:08:31'),
(181, 46, 1, '2019-05-10 04:12:25', '2019-05-10 04:12:25'),
(182, 46, 2, '2019-05-10 04:12:25', '2019-05-10 04:12:25'),
(183, 46, 3, '2019-05-10 04:12:25', '2019-05-10 04:12:25'),
(184, 90, 1, '2019-05-11 08:22:07', '2019-05-11 08:22:07'),
(185, 90, 5, '2019-05-11 08:22:07', '2019-05-11 08:22:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_date` timestamp NULL DEFAULT NULL,
  `delivery_date` timestamp NULL DEFAULT NULL,
  `sum_money` int(100) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `address`, `input_date`, `delivery_date`, `sum_money`, `user_id`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Tran Tuan Ngoc', '0975853528', 'tranngoc@gmail.com', 'Van Giang Hung Yen', '2019-03-07 03:03:31', NULL, 1890120, 1, '4', 'Hàng dễ vỡ', '2019-03-07 03:03:31', '2019-03-07 03:03:31'),
(2, 'Nguyen Dieu Anh', '0975852369', 'ndanh00@gmail.com', 'Ha Logn Quang Ninh', '2019-03-05 08:21:19', NULL, 2022000, 2, '4', 'Giao hàng cẩn thận', '2019-03-05 08:21:19', '2019-03-05 08:21:19'),
(3, 'Tran Ngoc', '0168958596', 'ngongoc@hg.hh', 'Long Hung Van GIang', '2019-02-27 09:17:31', NULL, 1362000, 1, '4', 'Giao hàng nhanh ', '2019-02-27 09:17:31', '2019-02-27 09:17:31'),
(4, 'Ngoc TTT', '03216275586', 'ngocttt@gmail.com', '8690 Hand Plaza Apt. 521 West Wilfrid,, AZ 20783-8805', '2019-03-05 08:21:19', NULL, 820800, 22, '2', 'Giao hang Giao hàng nhanh Giao hàng cẩn thận', '2019-03-05 08:21:19', '2019-03-05 08:21:19'),
(5, 'Dieu Anh', '0974859636', 'ndanh@fas.dd', 'Van Giang, Hung Yen', '2019-02-23 08:21:19', NULL, 583000, 2, '2', 'sadasdasdasd', '2019-02-23 08:21:19', '2019-02-23 08:21:19'),
(6, 'Nguyen DIeu Anh', '01689978596', 'ndanh@gmail.com', 'Ha Long, Quang Ninh', '2019-03-04 03:24:09', NULL, 578000, 2, '2', 'nte', '2019-03-04 03:24:09', '2019-03-04 03:24:09'),
(9, 'Nguyen Dieu Anh', '0689748589', 'ndanh@gmail.com', 'Ha LOng, Quang Ninh', '2019-02-24 08:21:19', NULL, 2928000, 2, '4', 'note', '2019-02-24 08:21:19', '2019-02-24 08:21:19'),
(10, 'Tran Ngoc', '01689974856', 'ndanh@gail.com', 'Long HUng, Van Giang', '2019-02-25 08:21:19', NULL, 1706200, 2, '3', 'note', '2019-02-25 08:21:19', '2019-02-25 08:21:19'),
(11, 'Nguyễn Diệu Anh', '12345678', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Viet Nam', '2019-02-27 08:21:19', NULL, 1065960, 2, '4', 'giao hang can than nhe :D', '2019-02-27 08:21:19', '2019-02-27 08:21:19'),
(12, 'Nguyễn Diệu Anh', '12345678', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Việt Nam này', '2019-02-21 08:22:24', NULL, 1054900, 2, '2', 'Giao từ từ thôi', '2019-02-21 08:22:24', '2019-02-21 08:22:24'),
(13, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, Việt Nam này', '2019-03-02 08:03:39', NULL, 991400, 1, '2', 'Giao hàng nhanh', '2019-03-02 08:03:39', '2019-03-02 08:03:39'),
(14, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, Việt Nam', '2019-03-01 08:03:37', NULL, 1189200, 1, '2', 'giao hàng sau 3h', '2019-03-01 08:03:37', '2019-03-01 08:03:37'),
(15, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-03 08:22:30', NULL, 695400, 1, '2', NULL, '2019-03-03 08:22:30', '2019-03-03 08:22:30'),
(16, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-02-20 08:22:28', NULL, 408000, 1, '2', 'Nhiều sữa tươi', '2019-02-20 08:22:28', '2019-02-20 08:22:28'),
(17, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-03-06 08:25:09', NULL, 134000, 2, '2', 'Sữa tươi', '2019-03-06 08:25:09', '2019-03-06 08:25:09'),
(18, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-02-19 08:26:28', NULL, 401200, 2, '2', 'VN', '2019-02-19 08:26:28', '2019-02-19 08:26:28'),
(19, 'Trần Tuấn Ngọc', '0975853528', 'ngocner@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-08 07:32:59', NULL, 771400, 1, '4', 'ko có gì', '2019-03-08 07:32:59', '2019-03-08 07:32:59'),
(20, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-03-08 09:18:22', NULL, 1662520, 2, '2', 'giao hang tan nha', '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(21, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-09 08:05:33', NULL, 332000, 1, '2', NULL, '2019-03-09 08:05:33', '2019-03-09 08:05:33'),
(22, 'Trần Giao Linh', '0975852104', 'trantuanngoctn97@gdt.vy', '694 Ines Drive West Jalenburgh, FL 45663, USA', '2019-03-09 08:06:38', NULL, 105000, 36, '2', 'USA Mỹ', '2019-03-09 08:06:38', '2019-03-09 08:06:38'),
(23, 'Trần Giao Linh', '0975852104', 'trantuanngoctn97@gdt.vy', '694 Ines Drive West Jalenburgh, FL 45663, USA', '2019-03-10 08:07:23', NULL, 840000, 36, '2', 'USA', '2019-03-10 08:07:23', '2019-03-10 08:07:23'),
(24, 'Trần Giao Linh', '0975852104', 'trantuanngoctn97@gdt.vy', '694 Ines Drive West Jalenburgh, FL 45663, VN', '2019-03-12 14:00:50', NULL, 84000, 36, '2', NULL, '2019-03-12 14:00:50', '2019-03-12 14:00:50'),
(25, 'Trần Giao Linh', '0975852104', 'trantuanngoctn97@gdt.vy', '694 Ines Drive West Jalenburgh, FL 45663, VNN', '2019-03-12 14:02:48', NULL, 316000, 36, '2', NULL, '2019-03-12 14:02:48', '2019-03-12 14:02:48'),
(26, 'Trần Giao Linh', '0975852104', 'trantuanngoctn97@gdt.vy', '694 Ines Drive West Jalenburgh, FL 45663, HN', '2019-03-13 14:04:17', NULL, 425200, 36, '2', NULL, '2019-03-13 14:04:17', '2019-03-13 14:04:17'),
(27, 'Tran Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-03-14 03:03:07', NULL, 134000, 21, '2', NULL, '2019-03-14 03:03:07', '2019-03-14 03:03:07'),
(28, 'Tran Tung', '0975853526', 'ngocuser@gmail.cc', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-03-14 03:08:24', NULL, 634000, 21, '2', NULL, '2019-03-14 03:08:24', '2019-03-14 03:08:24'),
(29, 'Tran Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-03-14 17:23:50', NULL, 1173200, 21, '2', NULL, '2019-03-14 17:23:50', '2019-03-14 17:23:50'),
(30, 'Tran Van Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-03-14 17:26:18', NULL, 663000, 21, '2', NULL, '2019-03-14 17:26:18', '2019-03-14 17:26:18'),
(31, 'Tran Duy Hong', '0974521691', 'namanamnama@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-15 17:28:03', NULL, 253000, 38, '2', NULL, '2019-03-15 17:28:03', '2019-03-15 17:28:03'),
(32, 'Phan Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-03-15 17:34:36', NULL, 316000, 20, '2', NULL, '2019-03-15 17:34:36', '2019-03-15 17:34:36'),
(33, 'Quỳnh Như', '0975859698', 'email@email.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-03-16 17:35:04', NULL, 1202500, 20, '2', NULL, '2019-03-16 17:35:04', '2019-03-16 17:35:04'),
(34, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, VN', '2019-03-18 02:18:16', NULL, 153000, 20, '2', NULL, '2019-03-18 02:18:16', '2019-03-18 02:18:16'),
(35, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, Viet Nam', '2019-03-18 02:18:16', NULL, 282000, 20, '2', NULL, '2019-03-18 02:18:16', '2019-03-18 02:18:16'),
(36, 'Tran Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-03-19 02:20:20', NULL, 586500, 21, '2', NULL, '2019-03-19 02:20:20', '2019-03-19 02:20:20'),
(37, 'Tran Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-03-20 02:24:05', NULL, 311000, 21, '2', NULL, '2019-03-20 02:24:05', '2019-03-20 02:24:05'),
(38, 'Tran Duy Hong', '0974521691', 'namanamnama@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-20 02:25:08', NULL, 580000, 38, '2', NULL, '2019-03-20 02:25:08', '2019-03-20 02:25:08'),
(39, 'Tran Duy Hong', '0974521691', 'namanamnama@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-02-15 03:16:39', NULL, 200000, 38, '2', NULL, '2019-02-15 03:16:39', '2019-02-15 03:16:39'),
(43, 'Tran Duy Hong', '0974521691', 'namanamnama@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-02-13 03:16:39', NULL, 200000, 38, '2', NULL, '2019-02-13 03:16:39', '2019-02-13 03:16:39'),
(44, 'Nam Tran', '0975852639', 'trantuanngoctn97@gmail.def', '57323 Zboncak FortNorth Josie, AZ 31371, VN', '2019-02-14 03:16:39', NULL, 120000, 30, '2', NULL, '2019-02-14 03:16:39', '2019-02-14 03:16:39'),
(45, 'Nam Tran', '0975852639', 'trantuanngoctn97@gmail.def', '57323 Zboncak FortNorth Josie, AZ 31371, VN', '2019-03-21 09:19:42', NULL, 332000, 30, '2', NULL, '2019-03-21 09:19:42', '2019-03-21 09:19:42'),
(46, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-22 09:31:46', NULL, 100000, 1, '2', NULL, '2019-03-22 09:31:46', '2019-03-22 09:31:46'),
(47, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-22 09:32:49', NULL, 124000, 1, '2', NULL, '2019-03-22 09:32:49', '2019-03-22 09:32:49'),
(48, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-22 09:34:16', NULL, 87000, 1, '2', NULL, '2019-03-22 09:34:16', '2019-03-22 09:34:16'),
(49, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-02-15 10:33:30', NULL, 71000, 1, '2', NULL, '2019-02-15 10:33:30', '2019-02-15 10:33:30'),
(53, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-02-15 10:35:26', NULL, 373400, 1, '2', NULL, '2019-02-15 10:35:26', '2019-02-15 10:35:26'),
(54, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-02-15 01:46:39', NULL, 42000, 2, '2', NULL, '2019-02-15 01:46:39', '2019-02-15 01:46:39'),
(55, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-02-14 01:47:01', NULL, 82000, 2, '2', NULL, '2019-02-14 01:47:01', '2019-02-14 01:47:01'),
(56, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-02-14 01:47:01', NULL, 50000, 2, '2', NULL, '2019-02-14 01:47:01', '2019-02-14 01:47:01'),
(57, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-02-14 01:47:01', NULL, 71000, 2, '2', NULL, '2019-02-14 01:47:01', '2019-02-14 01:47:01'),
(58, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-03-23 01:54:11', NULL, 42000, 2, '2', NULL, '2019-03-23 01:54:11', '2019-03-23 01:54:11'),
(59, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, HL', '2019-03-23 01:56:35', NULL, 822000, 2, '2', NULL, '2019-03-23 01:56:35', '2019-03-23 01:56:35'),
(60, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, HY', '2019-03-23 02:04:48', NULL, 429200, 1, '2', NULL, '2019-03-23 02:04:48', '2019-03-23 02:04:48'),
(61, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, HY', '2019-03-23 02:06:03', NULL, 76000, 1, '2', NULL, '2019-03-23 02:06:03', '2019-03-23 02:06:03'),
(62, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-24 04:45:48', NULL, 630800, 1, '2', NULL, '2019-03-24 04:45:48', '2019-03-24 04:45:48'),
(63, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-24 10:06:34', NULL, 40000, 40, '2', NULL, '2019-03-24 10:06:34', '2019-03-24 10:06:34'),
(64, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-03-25 03:36:23', NULL, 386400, 40, '2', NULL, '2019-03-25 03:36:23', '2019-03-25 03:36:23'),
(65, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-25 03:36:48', NULL, 1680000, 40, '2', NULL, '2019-03-25 03:36:48', '2019-03-25 03:36:48'),
(66, 'Ngoc TT Github', '0975854150', 'trantuanngoctn97@gmail.com', 'Ngoc TT Github https://github.com/, VN', '2019-03-25 06:02:28', NULL, 670720, 42, '2', NULL, '2019-03-25 06:02:28', '2019-03-25 06:02:28'),
(67, 'Ngoc TT Github', '0975852636', 'trantuanngoctn97@gmail.com', 'Ngoc TT Github https://github.com/, VN', '2019-03-26 06:03:30', NULL, 921800, 42, '2', NULL, '2019-03-26 06:03:30', '2019-03-26 06:03:30'),
(68, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-26 06:04:57', NULL, 372000, 38, '2', NULL, '2019-03-26 06:04:57', '2019-03-26 06:04:57'),
(69, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-26 06:06:02', NULL, 256000, 38, '2', NULL, '2019-03-26 06:06:02', '2019-03-26 06:06:02'),
(70, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, vn', '2019-03-26 06:08:16', NULL, 700000, 38, '2', NULL, '2019-03-26 06:08:16', '2019-03-26 06:08:16'),
(71, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-27 06:08:38', NULL, 943700, 38, '2', NULL, '2019-03-27 06:08:38', '2019-03-27 06:08:38'),
(72, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-27 06:09:27', NULL, 613530, 38, '2', NULL, '2019-03-27 06:09:27', '2019-03-27 06:09:27'),
(73, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-27 06:20:43', NULL, 1085470, 30, '2', NULL, '2019-03-27 06:20:43', '2019-03-27 06:20:43'),
(74, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-27 06:21:08', NULL, 633770, 30, '2', NULL, '2019-03-27 06:21:08', '2019-03-27 06:21:08'),
(75, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-28 06:21:20', NULL, 460460, 30, '2', NULL, '2019-03-28 06:21:20', '2019-03-28 06:21:20'),
(76, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-03-28 06:22:06', NULL, 265000, 36, '2', NULL, '2019-03-28 06:22:06', '2019-03-28 06:22:06'),
(77, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-28 06:22:23', NULL, 491760, 40, '2', NULL, '2019-03-28 06:22:23', '2019-03-28 06:22:23'),
(78, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VND', '2019-03-28 06:27:21', NULL, 958400, 40, '2', NULL, '2019-03-28 06:27:21', '2019-03-28 06:27:21'),
(79, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, USD', '2019-03-28 06:27:43', NULL, 125000, 42, '2', NULL, '2019-03-28 06:27:43', '2019-03-28 06:27:43'),
(80, 'Ngoc TT Github', '0975841586', 'ngocgit@gmail.com', 'Ngoc TT Github https://github.com/, VN', '2019-03-29 07:13:06', NULL, 71000, 42, '2', NULL, '2019-03-29 07:13:06', '2019-03-29 07:13:06'),
(81, 'Ngoc Tran', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, VN', '2019-03-29 07:14:49', NULL, 261000, 22, '2', NULL, '2019-03-29 07:14:49', '2019-03-29 07:14:49'),
(82, 'Ngoc Tran', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, USA', '2019-03-29 07:52:43', NULL, 344400, 22, '2', NULL, '2019-03-29 07:52:43', '2019-03-29 07:52:43'),
(83, 'Ngoc Tran', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, VN', '2019-03-30 08:50:56', NULL, 82000, 22, '2', NULL, '2019-03-30 08:50:56', '2019-03-30 08:50:56'),
(84, 'Ngoc Tran', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, VN', '2019-03-30 08:51:50', NULL, 548760, 22, '2', NULL, '2019-03-30 08:51:50', '2019-03-30 08:51:50'),
(85, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-30 02:36:25', NULL, 344400, 1, '2', NULL, '2019-03-30 02:36:25', '2019-03-30 02:36:25'),
(86, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-30 02:36:39', NULL, 69000, 1, '2', NULL, '2019-03-30 02:36:39', '2019-03-30 02:36:39'),
(87, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-31 02:36:39', NULL, 840000, 1, '2', NULL, '2019-03-31 02:36:39', '2019-03-31 02:36:39'),
(88, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-31 02:36:39', NULL, 1168200, 1, '2', NULL, '2019-03-31 02:36:39', '2019-03-31 02:36:39'),
(89, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-31 02:36:39', NULL, 612000, 1, '2', NULL, '2019-03-31 02:36:39', '2019-03-31 02:36:39'),
(90, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-03-31 02:36:39', NULL, 1168200, 2, '2', NULL, '2019-03-31 02:36:39', '2019-03-31 02:36:39'),
(91, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-01 02:36:39', NULL, 670720, 2, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(92, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-01 02:36:39', NULL, 700000, 2, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(93, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-01 02:36:39', NULL, 584000, 2, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(94, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, VN', '2019-04-01 02:36:39', NULL, 91000, 20, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(95, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, VN', '2019-04-01 02:36:39', NULL, 322000, 20, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(96, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-04-02 02:41:24', NULL, 378530, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(97, 'Quỳnh Như', '0975859698', 'email@email.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-04-02 02:41:24', NULL, 958400, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(98, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-04-02 02:41:24', NULL, 491760, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(99, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-04-02 02:41:24', NULL, 187770, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(100, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, HY', '2019-04-03 03:00:32', NULL, 281760, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(101, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, HY', '2019-04-03 03:00:32', NULL, 633770, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(102, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, HY', '2019-04-03 03:00:32', NULL, 471400, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(103, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-03 03:00:32', NULL, 256000, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(104, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-03 03:00:32', NULL, 281760, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(105, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:02:15', NULL, 446760, 30, '2', NULL, '2019-04-04 03:02:15', '2019-04-04 03:02:15'),
(106, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-04-04 03:02:46', NULL, 356770, 30, '3', NULL, '2019-04-04 03:02:46', '2019-04-04 03:02:46'),
(107, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:03:10', NULL, 541200, 30, '2', NULL, '2019-04-04 03:03:10', '2019-04-04 03:03:10'),
(108, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:03:21', NULL, 621000, 30, '2', NULL, '2019-04-04 03:03:21', '2019-04-04 03:03:21'),
(109, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:03:35', NULL, 354200, 30, '2', NULL, '2019-04-04 03:03:35', '2019-04-04 03:03:35'),
(110, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-04 07:21:07', NULL, 69000, 23, '2', NULL, '2019-04-04 07:21:07', '2019-04-04 07:21:07'),
(111, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-04-04 07:21:19', NULL, 274000, 23, '2', NULL, '2019-04-04 07:21:19', '2019-04-04 07:21:19'),
(112, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-04 07:21:33', NULL, 381200, 23, '2', NULL, '2019-04-04 07:21:33', '2019-04-04 07:21:33'),
(113, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-05-01 07:27:51', NULL, 69000, 23, '2', NULL, '2019-05-01 07:27:51', '2019-05-01 07:27:51'),
(114, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-30 07:31:54', NULL, 407400, 23, '2', NULL, '2019-04-30 07:31:54', '2019-04-30 07:31:54'),
(115, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-05 04:50:48', NULL, 68000, 1, '2', 'VN', '2019-04-05 04:50:48', '2019-04-05 04:50:48'),
(116, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-06 05:27:48', NULL, 630800, 1, '2', NULL, '2019-04-06 05:27:48', '2019-04-06 05:27:48'),
(117, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-06 05:27:48', NULL, 1146600, 1, '2', NULL, '2019-04-06 05:27:48', '2019-04-06 05:27:48'),
(118, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-06 05:27:48', NULL, 935550, 1, '2', NULL, '2019-04-06 05:27:48', '2019-04-06 05:27:48'),
(119, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-07 09:57:56', NULL, 435600, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(120, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-07 09:57:56', NULL, 1573200, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(121, 'Hong Hue', '0987193299', 'honghue@gmail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-04-07 09:57:56', NULL, 935550, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(122, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, SkywayHowellstad', '2019-04-07 09:57:56', NULL, 586950, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(123, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, Ha Noi', '2019-04-08 09:59:30', NULL, 509600, 42, '2', NULL, '2019-04-08 09:59:30', '2019-04-08 09:59:30'),
(124, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-04-08 09:59:30', NULL, 29000, 40, '2', NULL, '2019-04-08 09:59:30', '2019-04-08 09:59:30'),
(125, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-04-09 07:35:45', NULL, 464600, 40, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(126, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-04-09 07:35:45', NULL, 607000, 40, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(127, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen Nghe An, VN', '2019-04-09 07:35:45', NULL, 130000, 20, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(128, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-04-09 07:35:45', NULL, 950400, 20, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(129, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen Nghe An, VN', '2019-04-09 07:35:45', NULL, 491760, 20, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(130, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen Nghe An, VN', '2019-04-10 09:04:53', NULL, 665200, 20, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(131, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-10 09:04:53', NULL, 2722500, 1, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(132, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, đahakj', '2019-04-10 09:04:53', NULL, 505000, 1, '2', 'ddad', '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(133, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-10 09:04:53', NULL, 79000, 2, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(134, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Viet Nam', '2019-03-13 09:04:53', NULL, 171000, 2, '2', NULL, '2019-03-13 09:04:53', '2019-03-13 09:04:53'),
(135, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang,, Hưng Yên', '2019-04-22 09:04:53', NULL, 719150, 1, '3', NULL, '2019-04-22 09:04:53', '2019-04-22 09:04:53'),
(136, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang,, Hưng Yên', '2019-04-12 09:51:30', NULL, 824000, 1, '2', NULL, '2019-04-12 09:51:30', '2019-04-12 09:51:30'),
(137, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang,, Hưng Yên', '2019-04-12 09:51:30', NULL, 182000, 1, '2', NULL, '2019-04-12 09:51:30', '2019-04-12 09:51:30'),
(138, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen tinh Nghe An, VN', '2019-04-11 09:49:36', NULL, 510000, 20, '2', NULL, '2019-04-11 09:49:36', '2019-04-11 09:49:36'),
(139, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen tinh Nghe An, VN', '2019-02-13 03:16:39', NULL, 132000, 20, '2', NULL, '2019-02-13 03:16:39', '2019-02-13 03:16:39'),
(140, 'Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-02-12 03:16:39', NULL, 804000, 21, '2', NULL, '2019-02-12 03:16:39', '2019-02-12 03:16:39'),
(141, 'Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-02-12 03:16:39', NULL, 516300, 21, '2', NULL, '2019-02-12 03:16:39', '2019-02-12 03:16:39'),
(142, 'Ngoc Tran', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, VN', '2019-02-12 03:16:39', NULL, 686660, 22, '2', NULL, '2019-02-12 03:16:39', '2019-02-12 03:16:39'),
(143, 'Ngoc Tran', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, 20783-8805', '2019-02-11 03:16:39', NULL, 436000, 22, '2', NULL, '2019-02-11 03:16:39', '2019-02-11 03:16:39'),
(144, 'Ngoc Tran', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, USA', '2019-02-11 03:16:39', NULL, 350000, 22, '2', NULL, '2019-02-11 03:16:39', '2019-02-11 03:16:39'),
(145, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, USA', '2019-02-10 03:16:39', NULL, 406000, 23, '2', NULL, '2019-02-10 03:16:39', '2019-02-10 03:16:39'),
(146, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, USA', '2019-02-22 09:04:53', NULL, 147000, 23, '2', NULL, '2019-02-22 09:04:53', '2019-02-22 09:04:53'),
(147, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, USA', '2019-04-13 10:02:11', NULL, 308000, 30, '2', NULL, '2019-04-13 10:02:11', '2019-04-13 10:02:11'),
(148, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, New Zealand', '2019-04-30 10:02:32', NULL, 613150, 30, '2', NULL, '2019-04-30 10:02:32', '2019-04-30 10:02:32'),
(149, 'Trần Giao Linh', '0975852104', 'giaolinhhy@gmail.cc', '694 Ines Drive West Jalenburgh, FL 45663, Jalenburgh', '2019-04-13 10:03:01', NULL, 495600, 36, '2', NULL, '2019-04-13 10:03:01', '2019-04-13 10:03:01'),
(150, 'Trần Giao Linh', '0975852104', 'giaolinhhy@gmail.cc', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-03-12 09:04:53', NULL, 613150, 36, '2', NULL, '2019-03-12 09:04:53', '2019-03-12 09:04:53'),
(151, 'Trần Giao Linh', '0975852104', 'giaolinhhy@gmail.cc', '694 Ines Drive West Jalenburgh, FL 45663, VN', '2019-04-05 10:03:56', NULL, 261000, 36, '2', NULL, '2019-04-05 10:03:56', '2019-04-05 10:03:56'),
(152, 'Tran Duy Hong', '0974521691', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen, Singrapore', '2019-04-20 10:04:32', NULL, 336400, 38, '2', NULL, '2019-04-20 10:04:32', '2019-04-20 10:04:32'),
(153, 'Tran Duy Hong', '0974521691', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen, Viet Nam', '2019-04-13 10:05:08', NULL, 475600, 38, '2', NULL, '2019-04-13 10:05:08', '2019-04-13 10:05:08'),
(154, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, USA', '2019-04-13 10:05:37', NULL, 55000, 40, '2', NULL, '2019-04-13 10:05:37', '2019-04-13 10:05:37'),
(155, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, Viet Nam', '2019-04-11 10:06:34', NULL, 625000, 40, '2', NULL, '2019-04-11 10:06:34', '2019-04-11 10:06:34'),
(156, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, Viet Nam', '2019-04-11 10:06:34', NULL, 605000, 42, '2', NULL, '2019-04-11 10:06:34', '2019-04-11 10:06:34'),
(157, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-04-14 10:06:34', NULL, 495600, 2, '2', NULL, '2019-04-14 10:06:34', '2019-04-14 10:06:34'),
(158, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-14 10:06:34', NULL, 178000, 2, '2', 'luu y', '2019-04-14 10:06:34', '2019-04-14 10:06:34'),
(159, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, Viet Nam', '2019-04-14 10:06:34', NULL, 565000, 1, '2', NULL, '2019-04-14 10:06:34', '2019-04-14 10:06:34'),
(160, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-15 10:06:34', NULL, 619150, 1, '2', NULL, '2019-04-15 10:06:34', '2019-04-15 10:06:34'),
(161, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, Viet Nam', '2019-04-15 10:06:34', NULL, 534000, 1, '2', 'giao hang can than', '2019-04-15 10:06:34', '2019-04-15 10:06:34'),
(162, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, HN', '2019-02-16 10:06:34', NULL, 150000, 57, '2', 'giao can than ', '2019-02-16 10:06:34', '2019-02-16 10:06:34'),
(163, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-16 10:06:34', NULL, 146000, 57, '2', 'giao hang', '2019-04-16 10:06:34', '2019-04-16 10:06:34'),
(164, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-17 10:06:34', NULL, 372000, 57, '2', 'ship', '2019-04-17 10:06:34', '2019-04-17 10:06:34'),
(165, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', 'Long Hung, Van Giang, Hưng Yên, Viet Nam', '2019-04-18 10:06:34', NULL, 578500, 57, '2', 'ship', '2019-04-18 10:06:34', '2019-04-18 10:06:34'),
(166, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-18 10:06:34', NULL, 922800, 57, '2', 'ship tai nha', '2019-04-18 10:06:34', '2019-04-18 10:06:34'),
(167, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-02-19 10:06:34', NULL, 747000, 57, '2', 'nha  o xa', '2019-02-19 10:06:34', '2019-02-19 10:06:34'),
(168, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', 'số nhà 47, Hẻm 25/38/106, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-04-20 10:06:34', NULL, 388000, 16, '2', 'mua hang gap', '2019-04-20 10:06:34', '2019-04-20 10:06:34'),
(169, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-21 10:06:34', NULL, 198000, 16, '2', 'luu y', '2019-04-21 10:06:34', '2019-04-21 10:06:34'),
(170, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-22 10:06:34', NULL, 446760, 16, '2', 'giao hang nhanh', '2019-04-22 10:06:34', '2019-04-22 10:06:34'),
(171, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', 'Long Hung, Van Giang,, Hưng Yên', '2019-04-23 10:06:34', NULL, 760000, 16, '2', 'luu y', '2019-04-23 10:06:34', '2019-04-23 10:06:34'),
(172, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-23 10:06:34', NULL, 600000, 16, '2', 'luu y', '2019-04-23 10:06:34', '2019-04-23 10:06:34'),
(173, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-02-24 10:06:34', NULL, 435600, 16, '2', 'mua hang', '2019-02-24 10:06:34', '2019-02-24 10:06:34'),
(174, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', 'Long Hung, Van Giang, Hưng Yên, Viet Nam', '2019-04-24 10:06:34', NULL, 505000, 16, '2', 'mua 1sp', '2019-04-24 10:06:34', '2019-04-24 10:06:34'),
(175, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-24 10:06:34', NULL, 579150, 16, '2', 'mua sua tuoi', '2019-04-24 10:06:34', '2019-04-24 10:06:34'),
(176, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', 'Beirut, Lebanon, D3028 CMD, ', '2019-04-25 10:06:34', NULL, 103000, 16, '2', 'giao hang nhanh', '2019-04-25 10:06:34', '2019-04-25 10:06:34'),
(177, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-25 10:06:34', NULL, 105000, 16, '2', 'Mua sữa tươi', '2019-04-25 10:06:34', '2019-04-25 10:06:34'),
(178, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-26 10:06:34', NULL, 700000, 16, '4', NULL, '2019-04-26 10:06:34', '2019-04-26 10:06:34'),
(179, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-27 10:06:34', NULL, 366660, 16, '2', NULL, '2019-04-27 10:06:34', '2019-04-27 10:06:34'),
(180, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-29 10:06:34', NULL, 623700, 16, '2', NULL, '2019-04-29 10:06:34', '2019-04-29 10:06:34'),
(181, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-29 10:06:34', NULL, 380000, 3, '2', NULL, '2019-04-29 10:06:34', '2019-04-29 10:06:34'),
(182, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 640000, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(183, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-04-30 10:06:34', NULL, 1099980, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(184, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 623700, 3, '4', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(185, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 544500, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(186, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-04-30 10:06:34', NULL, 475200, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(187, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-05-01 06:29:53', NULL, 516300, 3, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(188, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-05-01 06:29:53', NULL, 512000, 3, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(189, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'số nhà 47, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-01 06:29:53', NULL, 516300, 58, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(190, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-01 06:29:53', NULL, 512000, 58, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(191, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-01 06:29:53', NULL, 475200, 58, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(192, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'số nhà 47, Hẻm 25/38/106, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-02 06:29:53', NULL, 544500, 58, '2', NULL, '2019-05-02 06:29:53', '2019-05-02 06:29:53'),
(193, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'số nhà 47, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-02 06:29:53', NULL, 623700, 58, '2', NULL, '2019-05-02 06:29:53', '2019-05-02 06:29:53'),
(194, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-05-02 06:29:53', NULL, 733320, 58, '2', NULL, '2019-05-02 06:29:53', '2019-05-02 06:29:53'),
(195, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-03 06:29:53', NULL, 640000, 58, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(196, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-05-03 06:29:53', NULL, 760000, 58, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(197, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'số nhà 47, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-03 06:29:53', NULL, 623700, 58, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(198, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-03 06:29:53', NULL, 516300, 59, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(199, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-04 07:28:28', NULL, 512000, 59, '2', NULL, '2019-05-04 07:28:28', '2019-05-04 07:28:28'),
(200, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'số nhà 47, Hẻm 25/38/106, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-04 07:28:28', NULL, 475200, 59, '2', NULL, '2019-05-04 07:28:28', '2019-05-04 07:28:28'),
(201, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-05-05 07:44:43', NULL, 544500, 59, '2', NULL, '2019-05-05 07:44:43', '2019-05-05 07:44:43'),
(202, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-02-09 03:16:39', NULL, 623700, 59, '2', NULL, '2019-02-09 03:16:39', '2019-02-09 03:16:39'),
(203, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-02-09 03:16:39', NULL, 686660, 59, '2', NULL, '2019-02-09 03:16:39', '2019-02-09 03:16:39'),
(204, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-02-09 03:16:39', NULL, 700000, 59, '2', NULL, '2019-02-09 03:16:39', '2019-02-09 03:16:39'),
(205, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-02-08 03:16:39', NULL, 746660, 59, '2', NULL, '2019-02-08 03:16:39', '2019-02-08 03:16:39'),
(206, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-08 03:16:39', NULL, 516300, 56, '2', NULL, '2019-02-08 03:16:39', '2019-02-08 03:16:39'),
(207, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-07 03:16:39', NULL, 512000, 56, '2', NULL, '2019-02-07 03:16:39', '2019-02-07 03:16:39'),
(208, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-07 03:16:39', NULL, 475200, 56, '2', 'mua sua bot', '2019-02-07 03:16:39', '2019-02-07 03:16:39'),
(209, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-07 03:16:39', NULL, 544500, 56, '2', NULL, '2019-02-07 03:16:39', '2019-02-07 03:16:39'),
(210, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-06 03:16:39', NULL, 623700, 56, '2', NULL, '2019-02-06 03:16:39', '2019-02-06 03:16:39'),
(211, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-05 03:16:39', NULL, 366660, 56, '2', NULL, '2019-02-05 03:16:39', '2019-02-05 03:16:39'),
(212, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-04 03:16:39', NULL, 700000, 56, '2', NULL, '2019-02-04 03:16:39', '2019-02-04 03:16:39'),
(213, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-04 03:16:39', NULL, 600000, 56, '2', NULL, '2019-02-04 03:16:39', '2019-02-04 03:16:39'),
(214, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-03 03:16:39', NULL, 436000, 56, '2', NULL, '2019-02-03 03:16:39', '2019-02-03 03:16:39'),
(215, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-01 03:16:39', NULL, 235000, 56, '2', NULL, '2019-02-01 03:16:39', '2019-02-01 03:16:39'),
(216, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-01 03:16:39', NULL, 226000, 56, '2', NULL, '2019-02-01 03:16:39', '2019-02-01 03:16:39'),
(217, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-01 03:16:39', NULL, 256760, 56, '2', NULL, '2019-02-01 03:16:39', '2019-02-01 03:16:39'),
(218, 'Bui Thi Quyen', '0974859606', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam, ', '2019-02-20 03:16:39', NULL, 313000, 56, '2', NULL, '2019-02-20 03:16:39', '2019-02-20 03:16:39'),
(219, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-02-20 03:16:39', NULL, 435600, 5, '2', NULL, '2019-02-20 03:16:39', '2019-02-20 03:16:39'),
(220, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-02-21 03:16:39', NULL, 505000, 5, '2', NULL, '2019-02-21 03:16:39', '2019-02-21 03:16:39'),
(221, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-02-21 03:16:39', NULL, 140000, 5, '2', NULL, '2019-02-21 03:16:39', '2019-02-21 03:16:39'),
(222, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-02-21 03:16:39', NULL, 579150, 5, '2', NULL, '2019-02-21 03:16:39', '2019-02-21 03:16:39'),
(223, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-02-19 03:16:39', NULL, 274000, 5, '2', NULL, '2019-02-19 03:16:39', '2019-02-19 03:16:39'),
(224, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-01-31 08:25:32', NULL, 295000, 5, '2', NULL, '2019-01-31 08:25:32', '2019-01-31 08:25:32'),
(225, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-01-31 08:25:32', NULL, 516300, 5, '2', NULL, '2019-01-31 08:25:32', '2019-01-31 08:25:32'),
(226, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-01-30 08:25:32', NULL, 512000, 5, '2', NULL, '2019-01-30 08:25:32', '2019-01-30 08:25:32'),
(227, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-01-30 08:25:32', NULL, 475200, 5, '2', NULL, '2019-01-30 08:25:32', '2019-01-30 08:25:32'),
(228, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-01-30 08:25:32', NULL, 544500, 5, '2', NULL, '2019-01-30 08:25:32', '2019-01-30 08:25:32'),
(229, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-01-29 08:25:32', NULL, 623700, 5, '2', NULL, '2019-01-29 08:25:32', '2019-01-29 08:25:32'),
(230, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-28 08:25:32', NULL, 600000, 4, '2', NULL, '2019-01-28 08:25:32', '2019-01-28 08:25:32'),
(231, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-28 08:25:32', NULL, 388000, 4, '2', NULL, '2019-01-28 08:25:32', '2019-01-28 08:25:32'),
(232, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-27 08:25:32', NULL, 210000, 4, '2', NULL, '2019-01-27 08:25:32', '2019-01-27 08:25:32'),
(233, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-27 08:25:32', NULL, 256760, 4, '2', NULL, '2019-01-27 08:25:32', '2019-01-27 08:25:32'),
(234, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-26 08:25:32', NULL, 313000, 4, '2', NULL, '2019-01-26 08:25:32', '2019-01-26 08:25:32'),
(235, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-26 08:25:32', NULL, 516300, 4, '2', NULL, '2019-01-26 08:25:32', '2019-01-26 08:25:32'),
(236, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-25 08:25:32', NULL, 512000, 4, '2', NULL, '2019-01-25 08:25:32', '2019-01-25 08:25:32'),
(237, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-25 08:25:32', NULL, 475200, 4, '2', NULL, '2019-01-25 08:25:32', '2019-01-25 08:25:32'),
(238, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-01-24 08:25:32', NULL, 366660, 4, '2', NULL, '2019-01-24 08:25:32', '2019-01-24 08:25:32'),
(239, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-05-06 08:49:25', NULL, 320000, 4, '2', NULL, '2019-05-06 08:49:25', '2019-05-06 08:49:25'),
(240, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-05-06 08:49:33', NULL, 380000, 4, '2', NULL, '2019-05-06 08:49:33', '2019-05-06 08:49:33'),
(241, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-23 08:58:30', NULL, 512000, 6, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(242, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-23 08:58:30', NULL, 516300, 6, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(243, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-23 08:58:30', NULL, 475200, 6, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(244, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-22 08:58:30', NULL, 544500, 6, '4', NULL, '2019-01-22 08:58:30', '2019-01-22 08:58:30'),
(245, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-22 08:58:30', NULL, 623700, 6, '3', NULL, '2019-01-22 08:58:30', '2019-01-22 08:58:30'),
(246, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 366660, 6, '4', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(247, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 320000, 6, '2', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(248, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 380000, 6, '4', 'hihi', '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(249, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 315400, 6, '2', '8 rồi', '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(250, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 292000, 6, '4', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(251, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-20 08:58:30', NULL, 600000, 7, '4', NULL, '2019-01-20 08:58:30', '2019-01-20 08:58:30'),
(252, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-20 08:58:30', NULL, 388000, 7, '4', NULL, '2019-01-20 08:58:30', '2019-01-20 08:58:30');
INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `address`, `input_date`, `delivery_date`, `sum_money`, `user_id`, `status`, `note`, `created_at`, `updated_at`) VALUES
(253, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-20 08:58:30', NULL, 185000, 7, '4', NULL, '2019-01-20 08:58:30', '2019-01-20 08:58:30'),
(254, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 251000, 7, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(255, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 256760, 7, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(256, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-21 08:58:30', NULL, 313000, 7, '4', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(257, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 240000, 7, '3', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(258, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 435600, 7, '3', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(259, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 505000, 7, '3', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(260, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-05-06 09:02:45', NULL, 579150, 7, '2', NULL, '2019-05-06 09:02:45', '2019-05-06 09:02:45'),
(261, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-19 09:02:56', NULL, 98000, 7, '2', NULL, '2019-01-19 09:02:56', '2019-01-19 09:02:56'),
(262, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-19 09:02:56', NULL, 281300, 8, '2', NULL, '2019-01-19 09:02:56', '2019-01-19 09:02:56'),
(263, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-19 09:02:56', NULL, 235000, 8, '2', NULL, '2019-01-19 09:02:56', '2019-01-19 09:02:56'),
(264, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-18 09:02:56', NULL, 512000, 8, '2', NULL, '2019-01-18 09:02:56', '2019-01-18 09:02:56'),
(265, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-18 09:02:56', NULL, 475200, 8, '2', NULL, '2019-01-18 09:02:56', '2019-01-18 09:02:56'),
(266, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-17 09:02:56', NULL, 544500, 8, '2', NULL, '2019-01-17 09:02:56', '2019-01-17 09:02:56'),
(267, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-16 09:02:56', NULL, 623700, 8, '2', NULL, '2019-01-16 09:02:56', '2019-01-16 09:02:56'),
(268, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-16 09:02:56', NULL, 366660, 8, '4', NULL, '2019-01-16 09:02:56', '2019-01-16 09:02:56'),
(269, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-16 09:02:56', NULL, 320000, 8, '2', NULL, '2019-01-16 09:02:56', '2019-01-16 09:02:56'),
(270, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-15 09:02:56', NULL, 380000, 8, '2', NULL, '2019-01-15 09:02:56', '2019-01-15 09:02:56'),
(271, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-15 09:02:56', NULL, 315400, 8, '2', 'mua ít', '2019-01-15 09:02:56', '2019-01-15 09:02:56'),
(272, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-15 09:02:56', NULL, 292000, 8, '2', 'mua ít hàng', '2019-01-15 09:02:56', '2019-01-15 09:02:56'),
(273, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-14 09:02:56', NULL, 435600, 8, '2', NULL, '2019-01-14 09:02:56', '2019-01-14 09:02:56'),
(274, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-14 09:02:56', NULL, 516300, 9, '2', NULL, '2019-01-14 09:02:56', '2019-01-14 09:02:56'),
(275, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-13 09:02:56', NULL, 512000, 9, '2', NULL, '2019-01-13 09:02:56', '2019-01-13 09:02:56'),
(276, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-12 09:02:56', NULL, 475200, 9, '2', NULL, '2019-01-12 09:02:56', '2019-01-12 09:02:56'),
(277, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-12 09:02:56', NULL, 544500, 9, '2', NULL, '2019-01-12 09:02:56', '2019-01-12 09:02:56'),
(278, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-12 09:02:56', NULL, 623700, 9, '4', NULL, '2019-01-12 09:02:56', '2019-01-12 09:02:56'),
(279, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 366660, 9, '2', NULL, '2019-01-11 09:02:56', '2019-01-11 09:02:56'),
(280, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 320000, 9, '2', NULL, '2019-01-11 09:02:56', '2019-01-11 09:02:56'),
(281, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 380000, 9, '2', NULL, '2019-01-11 09:02:56', '2019-01-11 09:02:56'),
(282, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 601300, 9, '2', NULL, '2019-01-11 09:02:56', '2019-01-11 09:02:56'),
(283, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-10 09:02:56', NULL, 282000, 9, '2', NULL, '2019-01-10 09:02:56', '2019-01-10 09:02:56'),
(284, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-10 09:02:56', NULL, 579150, 9, '4', NULL, '2019-01-10 09:02:56', '2019-01-10 09:02:56'),
(285, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-10 09:02:56', NULL, 95000, 9, '2', NULL, '2019-01-10 09:02:56', '2019-01-10 09:02:56'),
(286, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 435600, 23, '2', 'mua cho chau', '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(287, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 505000, 23, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(288, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 579150, 23, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(289, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 69000, 23, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(290, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 180000, 23, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(291, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 340000, 23, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(292, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 330000, 23, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(293, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 200000, 57, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(294, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 480000, 57, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(295, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 380000, 57, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(296, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 250000, 57, '2', 'mua số lượng lớn mong được free ship', '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(297, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 185000, 57, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(298, 'Lo Minh Duc', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-01-23 08:58:30', NULL, 210000, 59, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(299, 'Lo Minh Duc', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-01-23 08:58:30', NULL, 340000, 59, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(300, 'Lo Minh Duc', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-01-23 08:58:30', NULL, 120000, 59, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(301, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-23 08:58:30', NULL, 435600, 21, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(302, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-23 08:58:30', NULL, 505000, 21, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(303, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-23 08:58:30', NULL, 579150, 21, '2', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(304, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-09 09:02:56', NULL, 145000, 21, '2', NULL, '2019-01-09 09:02:56', '2019-01-09 09:02:56'),
(305, 'Ngoc Tran Tuan', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, ', '2019-01-09 09:02:56', NULL, 240000, 22, '2', NULL, '2019-01-09 09:02:56', '2019-01-09 09:02:56'),
(306, 'Ngoc Tran Tuan', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, ', '2019-01-08 09:02:56', NULL, 125000, 22, '2', NULL, '2019-01-08 09:02:56', '2019-01-08 09:02:56'),
(307, 'Ngoc Tran Tuan', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, ', '2019-01-08 09:02:56', NULL, 680000, 22, '2', NULL, '2019-01-08 09:02:56', '2019-01-08 09:02:56'),
(308, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-08 09:02:56', NULL, 340000, 10, '2', NULL, '2019-01-08 09:02:56', '2019-01-08 09:02:56'),
(309, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-08 09:02:56', NULL, 600000, 10, '2', NULL, '2019-01-08 09:02:56', '2019-01-08 09:02:56'),
(310, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-08 09:02:56', NULL, 240000, 10, '2', NULL, '2019-01-08 09:02:56', '2019-01-08 09:02:56'),
(311, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-07 09:02:56', NULL, 235000, 10, '2', NULL, '2019-01-07 09:02:56', '2019-01-07 09:02:56'),
(312, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-07 09:02:56', NULL, 250000, 10, '2', NULL, '2019-01-07 09:02:56', '2019-01-07 09:02:56'),
(313, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-07 09:02:56', NULL, 256000, 10, '2', NULL, '2019-01-07 09:02:56', '2019-01-07 09:02:56'),
(314, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-06 09:02:56', NULL, 256760, 10, '2', NULL, '2019-01-06 09:02:56', '2019-01-06 09:02:56'),
(315, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-06 09:02:56', NULL, 123000, 10, '2', NULL, '2019-01-06 09:02:56', '2019-01-06 09:02:56'),
(316, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-05 09:02:56', NULL, 435600, 10, '4', NULL, '2019-01-05 09:02:56', '2019-01-05 09:02:56'),
(317, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-05 09:02:56', NULL, 505000, 10, '2', NULL, '2019-01-05 09:02:56', '2019-01-05 09:02:56'),
(318, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-05 09:02:56', NULL, 579150, 10, '2', NULL, '2019-01-05 09:02:56', '2019-01-05 09:02:56'),
(319, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-04-26 02:39:58', NULL, 516300, 11, '2', NULL, '2019-04-26 02:39:58', '2019-04-26 02:39:58'),
(320, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-04-27 02:39:58', NULL, 475200, 11, '2', NULL, '2019-04-27 02:39:58', '2019-04-27 02:39:58'),
(321, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-04-28 02:39:58', NULL, 544500, 11, '2', NULL, '2019-04-28 02:39:58', '2019-04-28 02:39:58'),
(322, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-05 09:02:56', NULL, 623700, 11, '2', NULL, '2019-01-05 09:02:56', '2019-01-05 09:02:56'),
(323, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-04 09:02:56', NULL, 686660, 11, '2', NULL, '2019-01-04 09:02:56', '2019-01-04 09:02:56'),
(324, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-04 09:02:56', NULL, 380000, 11, '2', NULL, '2019-01-04 09:02:56', '2019-01-04 09:02:56'),
(325, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-04 09:02:56', NULL, 340000, 11, '4', 'MUa nhiều', '2019-01-04 09:02:56', '2019-01-04 09:02:56'),
(326, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-04 09:02:56', NULL, 210000, 11, '4', 'Số lượng lớn', '2019-01-04 09:02:56', '2019-01-04 09:02:56'),
(327, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-03 09:02:56', NULL, 480000, 11, '2', NULL, '2019-01-03 09:02:56', '2019-01-03 09:02:56'),
(328, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-03 09:02:56', NULL, 435000, 11, '2', NULL, '2019-01-03 09:02:56', '2019-01-03 09:02:56'),
(329, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-03 09:02:56', NULL, 512000, 11, '2', 'Sữa mới', '2019-01-03 09:02:56', '2019-01-03 09:02:56'),
(330, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-02 09:02:56', NULL, 280000, 11, '2', NULL, '2019-01-02 09:02:56', '2019-01-02 09:02:56'),
(331, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-02 09:02:56', NULL, 392000, 11, '2', NULL, '2019-01-02 09:02:56', '2019-01-02 09:02:56'),
(332, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-01 09:02:56', NULL, 640000, 11, '2', NULL, '2019-01-01 09:02:56', '2019-01-01 09:02:56'),
(333, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD, ', '2019-01-01 09:02:56', NULL, 560000, 11, '2', NULL, '2019-01-01 09:02:56', '2019-01-01 09:02:56'),
(334, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-01-01 09:02:56', NULL, 512000, 15, '2', NULL, '2019-01-01 09:02:56', '2019-01-01 09:02:56'),
(335, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-01-01 09:02:56', NULL, 293000, 15, '2', 'VN', '2019-01-01 09:02:56', '2019-01-01 09:02:56'),
(336, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-03 09:02:56', NULL, 795000, 15, '2', NULL, '2019-03-03 09:02:56', '2019-03-03 09:02:56'),
(337, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-03 09:02:56', NULL, 375000, 15, '2', NULL, '2019-03-03 09:02:56', '2019-03-03 09:02:56'),
(338, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-03 09:02:56', NULL, 560000, 15, '2', NULL, '2019-03-03 09:02:56', '2019-03-03 09:02:56'),
(339, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-01 09:02:56', NULL, 640000, 15, '2', NULL, '2019-03-01 09:02:56', '2019-03-01 09:02:56'),
(340, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-01 09:02:56', NULL, 530000, 15, '2', NULL, '2019-03-01 09:02:56', '2019-03-01 09:02:56'),
(341, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-02 09:02:56', NULL, 579150, 15, '2', NULL, '2019-03-02 09:02:56', '2019-03-02 09:02:56'),
(342, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-06 09:02:56', NULL, 238000, 15, '2', NULL, '2019-03-06 09:02:56', '2019-03-06 09:02:56'),
(343, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-03-07 09:02:56', NULL, 210000, 15, '2', NULL, '2019-03-07 09:02:56', '2019-03-07 09:02:56'),
(344, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-04-07 03:38:41', NULL, 480000, 15, '2', NULL, '2019-04-07 03:38:41', '2019-04-07 03:38:41'),
(345, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-04-27 02:39:58', NULL, 600000, 15, '2', NULL, '2019-04-27 02:39:58', '2019-04-27 02:39:58'),
(346, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736, ', '2019-04-15 03:39:01', NULL, 680000, 15, '2', NULL, '2019-04-15 03:39:01', '2019-04-15 03:39:01'),
(347, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD, ', '2019-04-16 03:39:01', NULL, 530000, 3, '2', NULL, '2019-04-16 03:39:01', '2019-04-16 03:39:01'),
(348, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD, ', '2019-04-17 03:39:01', NULL, 1024000, 3, '2', NULL, '2019-04-17 03:39:01', '2019-04-17 03:39:01'),
(349, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD, ', '2019-04-18 03:39:01', NULL, 560000, 3, '2', NULL, '2019-04-18 03:39:01', '2019-04-18 03:39:01'),
(350, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD, ', '2019-04-19 03:39:01', NULL, 320000, 3, '2', NULL, '2019-04-19 03:39:01', '2019-04-19 03:39:01'),
(351, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD, ', '2019-04-20 03:39:01', NULL, 530000, 3, '2', NULL, '2019-04-20 03:39:01', '2019-04-20 03:39:01'),
(352, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD, ', '2019-03-07 03:50:38', NULL, 560000, 3, '2', 'Mua nhieu', '2019-03-07 03:50:38', '2019-03-07 03:50:38'),
(353, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-04 03:51:19', NULL, 640000, 14, '2', 'sữa bóe', '2019-03-04 03:51:19', '2019-03-04 03:51:19'),
(354, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-04 03:51:27', NULL, 560000, 14, '2', NULL, '2019-03-04 03:51:27', '2019-03-04 03:51:27'),
(355, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-05 03:51:27', NULL, 250000, 14, '2', NULL, '2019-03-05 03:51:27', '2019-03-05 03:51:27'),
(356, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-06 03:51:27', NULL, 250000, 14, '2', NULL, '2019-03-06 03:51:27', '2019-03-06 03:51:27'),
(357, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-07 03:51:27', NULL, 530000, 14, '2', NULL, '2019-03-07 03:51:27', '2019-03-07 03:51:27'),
(358, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-08 03:51:27', NULL, 512000, 14, '2', NULL, '2019-03-08 03:51:27', '2019-03-08 03:51:27'),
(359, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-03-05 03:51:19', NULL, 210000, 14, '2', NULL, '2019-03-05 03:51:19', '2019-03-05 03:51:19'),
(360, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-06 03:51:19', NULL, 580000, 14, '2', NULL, '2019-03-06 03:51:19', '2019-03-06 03:51:19'),
(361, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-03-07 03:51:19', NULL, 170000, 14, '2', 'hi', '2019-03-07 03:51:19', '2019-03-07 03:51:19'),
(362, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-04-26 02:39:58', NULL, 250000, 14, '2', NULL, '2019-04-26 02:39:58', '2019-04-26 02:39:58'),
(363, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-04-27 02:39:58', NULL, 240000, 14, '2', NULL, '2019-04-27 02:39:58', '2019-04-27 02:39:58'),
(364, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-02-07 03:56:08', NULL, 80000, 14, '2', NULL, '2019-02-07 03:56:08', '2019-02-07 03:56:08'),
(365, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-02-08 03:56:08', NULL, 505000, 14, '2', NULL, '2019-02-08 03:56:08', '2019-02-08 03:56:08'),
(366, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-02-09 03:56:08', NULL, 579150, 14, '2', NULL, '2019-02-09 03:56:08', '2019-02-09 03:56:08'),
(367, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-02-10 03:56:08', NULL, 600000, 14, '2', NULL, '2019-02-10 03:56:08', '2019-02-10 03:56:08'),
(368, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-05-07 04:13:44', NULL, 680000, 14, '2', NULL, '2019-05-07 04:13:44', '2019-05-07 04:13:44'),
(369, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-05-07 04:13:54', NULL, 336000, 14, '2', NULL, '2019-05-07 04:13:54', '2019-05-07 04:13:54'),
(370, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-02-01 03:56:08', NULL, 340000, 14, '2', NULL, '2019-02-01 03:56:08', '2019-02-01 03:56:08'),
(371, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-02-02 03:56:08', NULL, 480000, 14, '2', NULL, '2019-02-02 03:56:08', '2019-02-02 03:56:08'),
(372, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-02-03 03:56:08', NULL, 512000, 14, '2', NULL, '2019-02-03 03:56:08', '2019-02-03 03:56:08'),
(373, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'số nhà 47, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-08 14:21:18', NULL, 610000, 1, '2', 'Gapas', '2019-05-08 14:21:18', '2019-05-08 14:21:18'),
(374, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'thon Lai Oc, xa Long Hung, huyen Van Giang, tinh Hung Yen, ', '2019-05-08 14:21:18', NULL, 95000, 1, '2', NULL, '2019-05-08 14:21:18', '2019-05-08 14:21:18'),
(375, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'thon Lai Oc, xa Long Hung, huyen Van Giang, tinh Hung Yen, ', '2019-05-08 14:21:18', NULL, 818000, 1, '2', NULL, '2019-05-08 14:21:18', '2019-05-08 14:21:18'),
(376, 'Lo Minh Duc', '0975006960', 'lmduc@mail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-08 14:21:18', NULL, 118000, 59, '2', NULL, '2019-05-08 14:21:18', '2019-05-08 14:21:18'),
(377, 'Lo Minh Duc', '0975006960', 'lmduc@mail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-09 04:59:59', NULL, 50000, 59, '2', NULL, '2019-05-09 04:59:59', '2019-05-09 04:59:59'),
(378, 'Lo Minh Duc', '0975006960', 'lmduc@mail.com', 'số nhà 47, Hẻm 25/38/106, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-09 04:59:59', NULL, 600000, 59, '1', NULL, '2019-05-09 04:59:59', '2019-05-09 04:59:59'),
(379, 'Lo Minh Duc', '0975006960', 'lmduc@mail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-09 04:59:59', NULL, 390000, 59, '1', NULL, '2019-05-09 04:59:59', '2019-05-09 04:59:59'),
(380, 'Tran Duy Hong', '0974521691', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen, ', '2019-05-09 04:59:59', NULL, 221000, 38, '1', NULL, '2019-05-09 04:59:59', '2019-05-09 04:59:59'),
(381, 'Tran Duy Hong', '0974521691', 'guyhongit@mail.cc', 'thon Lai Oc, xa Long Hung, huyen Van Giang, tinh Hung Yen, ', '2019-05-10 08:15:58', NULL, 580000, 38, '1', 'Giao hang nhanh', '2019-05-10 08:15:58', '2019-05-10 08:15:58'),
(382, 'Tran Duy Hong', '0974521691', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen, ', '2019-05-10 08:15:58', NULL, 146000, 38, '1', NULL, '2019-05-10 08:15:58', '2019-05-10 08:15:58'),
(383, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-05-10 08:15:58', NULL, 280000, 40, '2', NULL, '2019-05-10 08:15:58', '2019-05-10 08:15:58'),
(384, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên, ', '2019-05-10 08:17:00', NULL, 435600, 40, '1', NULL, '2019-05-10 08:17:00', '2019-05-10 08:17:00'),
(385, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'số nhà 47, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', '2019-05-10 08:17:14', NULL, 505000, 40, '0', NULL, '2019-05-10 08:17:14', '2019-05-10 08:17:14'),
(386, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-05-10 08:18:09', NULL, 568000, 40, '0', 'Viet Nam 	Giao hàng tiêu chuẩn', '2019-05-10 08:18:09', '2019-05-10 08:18:09'),
(387, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-10 08:18:26', NULL, 390000, 40, '2', NULL, '2019-02-10 08:18:26', '2019-02-10 08:18:26'),
(388, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-01 08:18:26', NULL, 579150, 40, '2', 'Giao hàng tiêu chuẩn', '2019-02-01 08:18:26', '2019-02-01 08:18:26'),
(389, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-02 08:18:26', NULL, 324000, 40, '2', 'Giao hàng tiêu chuẩn', '2019-02-02 08:18:26', '2019-02-02 08:18:26'),
(390, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-03 08:18:26', NULL, 600000, 40, '2', NULL, '2019-02-03 08:18:26', '2019-02-03 08:18:26'),
(391, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-04 08:18:26', NULL, 388000, 40, '2', NULL, '2019-02-04 08:18:26', '2019-02-04 08:18:26'),
(392, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-05 08:18:26', NULL, 185000, 40, '2', NULL, '2019-02-05 08:18:26', '2019-02-05 08:18:26'),
(393, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-06 08:18:26', NULL, 1005280, 40, '2', 'Chỉnh sửa', '2019-02-06 08:18:26', '2019-02-06 08:18:26'),
(394, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-07 08:18:26', NULL, 579150, 40, '2', NULL, '2019-02-07 08:18:26', '2019-02-07 08:18:26'),
(395, 'Do Thi Ha', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen ', '2019-02-08 08:18:26', NULL, 562600, 40, '2', NULL, '2019-02-08 08:18:26', '2019-02-08 08:18:26'),
(396, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoctn97@gmail.com', 'thon Lai Oc, xa Long Hung, huyen Van Giang, tinh Hung Yen ', '2019-02-09 08:18:26', NULL, 100000, 1, '2', NULL, '2019-02-09 08:18:26', '2019-02-09 08:18:26'),
(397, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoctn97@gmail.com', 'thon Lai Oc, xa Long Hung, huyen Van Giang, tinh Hung Yen ', '2019-02-11 08:18:26', NULL, 108000, 1, '2', NULL, '2019-02-11 08:18:26', '2019-02-11 08:18:26'),
(398, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Việt Nam ', '2019-02-12 08:18:26', NULL, 640000, 2, '2', NULL, '2019-02-12 08:18:26', '2019-02-12 08:18:26'),
(399, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Việt Nam ', '2019-02-13 08:18:26', NULL, 560000, 2, '2', NULL, '2019-02-13 08:18:26', '2019-02-13 08:18:26'),
(400, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Việt Nam ', '2019-02-14 08:18:26', NULL, 568000, 2, '2', NULL, '2019-02-14 08:18:26', '2019-02-14 08:18:26'),
(401, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD ', '2019-02-15 08:18:26', NULL, 541000, 3, '2', NULL, '2019-02-15 08:18:26', '2019-02-15 08:18:26'),
(402, 'Keanu Reeves', '0389975223', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD ', '2019-02-16 08:18:26', NULL, 505000, 3, '2', NULL, '2019-02-16 08:18:26', '2019-02-16 08:18:26'),
(403, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', 'TP Hồ Chí Minh, Việt Nam ', '2019-02-21 08:18:26', NULL, 435600, 4, '2', NULL, '2019-02-21 08:18:26', '2019-02-21 08:18:26'),
(404, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', 'TP Hồ Chí Minh, Việt Nam ', '2019-02-28 08:18:26', NULL, 116000, 4, '2', NULL, '2019-02-28 08:18:26', '2019-02-28 08:18:26'),
(405, 'Dan Reynolds', '0498512589', 'shannon09@example.org', 'Las Vegas, Nevada, United States ', '2019-02-27 08:18:26', NULL, 715200, 5, '2', NULL, '2019-02-27 08:18:26', '2019-02-27 08:18:26'),
(406, 'Dan Reynolds', '0498512589', 'shannon09@example.org', 'Las Vegas, Nevada, United States ', '2019-02-26 08:18:26', NULL, 269000, 5, '2', NULL, '2019-02-26 08:18:26', '2019-02-26 08:18:26'),
(407, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', 'Cẩm Phả. Quảng Ninh, Việt Nam ', '2019-02-25 08:18:26', NULL, 505000, 6, '2', NULL, '2019-02-25 08:18:26', '2019-02-25 08:18:26'),
(408, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', 'Cẩm Phả. Quảng Ninh, Việt Nam ', '2019-02-23 08:18:26', NULL, 579150, 6, '2', NULL, '2019-02-23 08:18:26', '2019-02-23 08:18:26'),
(409, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', 'huyện Chương Mỹ, TĐ Hà Nội, Việt Nam ', '2019-02-21 08:18:26', NULL, 388000, 7, '2', NULL, '2019-02-21 08:18:26', '2019-02-21 08:18:26'),
(410, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', 'huyện Chương Mỹ, TĐ Hà Nội, Việt Nam ', '2019-02-20 08:18:26', NULL, 63000, 7, '2', NULL, '2019-02-20 08:18:26', '2019-02-20 08:18:26'),
(411, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', 'huyện Ý Yên, Tỉnh Nam Định, Việt Nam ', '2019-02-22 08:18:26', NULL, 185000, 8, '2', '0985497990', '2019-02-22 08:18:26', '2019-02-22 08:18:26'),
(412, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', 'huyện Ý Yên, Tỉnh Nam Định, Việt Nam ', '2019-02-15 08:18:26', NULL, 446760, 8, '2', 'LH 0985497990', '2019-02-15 08:18:26', '2019-02-15 08:18:26'),
(413, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847 ', '2019-02-16 08:18:26', NULL, 404300, 9, '4', 'LH 0985485950', '2019-02-16 08:18:26', '2019-02-16 08:18:26'),
(414, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847 ', '2019-02-17 08:18:26', NULL, 516300, 9, '4', 'LL 0985485950', '2019-02-17 08:18:26', '2019-02-17 08:18:26'),
(415, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc ', '2019-02-18 08:18:26', NULL, 747000, 10, '2', 'LH 0971025006', '2019-02-18 08:18:26', '2019-02-18 08:18:26'),
(416, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc ', '2019-02-19 08:18:26', NULL, 475200, 10, '3', NULL, '2019-02-19 08:18:26', '2019-02-19 08:18:26'),
(417, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD ', '2019-02-20 08:18:26', NULL, 544500, 11, '4', 'LH 0985401595', '2019-02-20 08:18:26', '2019-02-20 08:18:26'),
(418, 'Duong Tien Dat', '0985401595', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD ', '2019-02-23 08:18:26', NULL, 623700, 11, '3', '0985401595', '2019-02-23 08:18:26', '2019-02-23 08:18:26'),
(419, 'Nguyen Ngoc Son', '0985412301', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên ', '2019-02-24 08:18:26', NULL, 686660, 14, '2', 'LH 0985412301', '2019-02-24 08:18:26', '2019-02-24 08:18:26'),
(420, 'Do Hong Van', '0985496032', 'dohongvan@example.com', '208/14 Nguyễn Thượng Hiền, Phường 05, Quận Phú Nhuận, TP Hồ Chí Minh', '2019-05-11 08:07:23', NULL, 50000, 15, '0', NULL, '2019-05-11 08:07:23', '2019-05-11 08:07:23'),
(421, 'Do Hong Van', '0985496032', 'trantuanngoctn97@gmail.com', '4438 Bayer StreetsEast Aniyahaven, SD 24736 ', '2019-05-11 08:07:59', NULL, 102000, 15, '1', NULL, '2019-05-11 08:07:59', '2019-05-11 08:07:59'),
(422, 'Lê Văn Dũng', '0985412345', 'trantuanngoctn97@gmail.com', 'tỉnh Thanh Hóa, Việt Nam ', '2019-05-11 08:38:37', NULL, 280000, 16, '2', 'Milo sữa bột', '2019-05-11 08:38:37', '2019-05-11 08:38:37'),
(423, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Việt Nam ', '2019-05-12 02:20:04', NULL, 63000, 2, '2', 'giao hàng nhanh', '2019-05-12 02:20:04', '2019-05-12 04:09:49'),
(424, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847 ', '2019-05-12 02:20:33', NULL, 61000, 9, '1', 'LH: 0985485950', '2019-05-12 02:20:33', '2019-05-12 02:20:33'),
(425, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367 ', '2019-05-12 02:22:09', NULL, 125000, 21, '0', NULL, '2019-05-12 02:22:09', '2019-05-12 02:22:09'),
(426, 'Lo Minh Duc', '0975006960', 'lmduc@mail.com', 'Như Thanh, Thanh Hóa, VIệt Nam ', '2019-05-12 02:35:01', NULL, 579150, 59, '0', 'mua sữa bột', '2019-05-12 02:35:01', '2019-05-12 02:35:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `discount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `price`, `discount`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 2, 292000, 0, 2, 1, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(2, 2, 332000, 0, 3, 1, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(3, 1, 320000, 0, 5, 1, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(4, 1, 378000, 0, 6, 1, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(5, 2, 210000, 0, 1, 2, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(6, 1, 630000, 0, 7, 2, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(7, 1, 550000, 0, 8, 2, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(8, 1, 465000, 0, 9, 2, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(9, 1, 512000, 0, 10, 3, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(10, 2, 235000, 0, 11, 3, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(12, 1, 380000, 0, 4, 3, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(13, 1, 190000, 0, 17, 4, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(14, 2, 332000, 0, 3, 4, '2019-03-02 02:52:45', '2019-03-02 02:52:45'),
(16, 1, 190000, 0, 17, 5, '2019-03-04 03:19:04', '2019-03-04 03:19:04'),
(17, 3, 66000, 0, 18, 5, '2019-03-04 03:19:04', '2019-03-04 03:19:04'),
(18, 2, 190000, 0, 17, 6, '2019-03-04 03:24:09', '2019-03-04 03:24:09'),
(19, 3, 66000, 0, 18, 6, '2019-03-04 03:24:09', '2019-03-04 03:24:09'),
(22, 2, 544500, 1, 8, 9, '2019-03-04 03:33:00', '2019-03-04 03:33:00'),
(23, 3, 315400, 5, 3, 9, '2019-03-04 03:33:00', '2019-03-04 03:33:00'),
(24, 2, 446400, 4, 9, 9, '2019-03-04 03:33:00', '2019-03-04 03:33:00'),
(25, 3, 332000, 5, 3, 10, '2019-03-04 03:37:30', '2019-03-04 03:37:30'),
(26, 4, 190000, 0, 17, 10, '2019-03-04 03:37:30', '2019-03-04 03:37:30'),
(27, 3, 378000, 6, 6, 11, '2019-03-05 04:57:28', '2019-03-05 04:57:28'),
(29, 1, 332000, 5, 3, 12, '2019-03-05 08:17:56', '2019-03-05 08:17:56'),
(30, 1, 550000, 1, 8, 12, '2019-03-05 08:17:56', '2019-03-05 08:17:56'),
(31, 2, 210000, 3, 1, 13, '2019-03-05 09:25:08', '2019-03-05 09:25:08'),
(32, 2, 292000, 0, 2, 13, '2019-03-05 09:25:08', '2019-03-05 09:25:08'),
(33, 1, 340000, 2, 22, 14, '2019-03-06 06:55:18', '2019-03-06 06:55:18'),
(34, 2, 48000, 0, 21, 14, '2019-03-06 06:55:18', '2019-03-06 06:55:18'),
(35, 1, 600000, 0, 23, 14, '2019-03-06 06:55:18', '2019-03-06 06:55:18'),
(36, 1, 160000, 0, 20, 14, '2019-03-06 06:55:18', '2019-03-06 06:55:18'),
(37, 2, 190000, 0, 17, 15, '2019-03-06 08:19:21', '2019-03-06 08:19:21'),
(38, 1, 332000, 5, 3, 15, '2019-03-06 08:19:21', '2019-03-06 08:19:21'),
(39, 2, 29000, 0, 27, 16, '2019-03-06 08:20:09', '2019-03-06 08:20:09'),
(40, 2, 34000, 0, 26, 16, '2019-03-06 08:20:09', '2019-03-06 08:20:09'),
(41, 2, 21000, 0, 25, 16, '2019-03-06 08:20:09', '2019-03-06 08:20:09'),
(42, 1, 240000, 0, 24, 16, '2019-03-06 08:20:09', '2019-03-06 08:20:09'),
(43, 2, 29000, 0, 27, 17, '2019-03-06 08:25:09', '2019-03-06 08:25:09'),
(44, 1, 34000, 0, 26, 17, '2019-03-06 08:25:09', '2019-03-06 08:25:09'),
(45, 2, 21000, 0, 25, 17, '2019-03-06 08:25:09', '2019-03-06 08:25:09'),
(46, 2, 34000, 0, 26, 18, '2019-03-06 08:26:28', '2019-03-06 08:26:28'),
(47, 1, 340000, 2, 22, 18, '2019-03-06 08:26:28', '2019-03-06 08:26:28'),
(48, 1, 332000, 5, 3, 19, '2019-03-07 03:02:03', '2019-03-07 03:02:03'),
(49, 2, 190000, 0, 17, 19, '2019-03-07 03:02:03', '2019-03-07 03:02:03'),
(50, 1, 34000, 0, 26, 19, '2019-03-07 03:02:03', '2019-03-07 03:02:03'),
(51, 2, 21000, 0, 25, 19, '2019-03-07 03:02:03', '2019-03-07 03:02:03'),
(52, 2, 29000, 0, 27, 20, '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(53, 1, 34000, 0, 26, 20, '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(54, 2, 21000, 0, 25, 20, '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(55, 1, 240000, 0, 24, 20, '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(56, 1, 600000, 0, 23, 20, '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(57, 1, 340000, 2, 22, 20, '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(58, 1, 378000, 6, 6, 20, '2019-03-08 09:18:22', '2019-03-08 09:18:22'),
(59, 2, 29000, 0, 27, 21, '2019-03-09 08:05:33', '2019-03-09 08:05:33'),
(60, 1, 34000, 0, 26, 21, '2019-03-09 08:05:33', '2019-03-09 08:05:33'),
(61, 1, 240000, 0, 24, 21, '2019-03-09 08:05:33', '2019-03-09 08:05:33'),
(62, 1, 29000, 0, 27, 22, '2019-03-09 08:06:38', '2019-03-09 08:06:38'),
(63, 1, 34000, 0, 26, 22, '2019-03-09 08:06:38', '2019-03-09 08:06:38'),
(64, 2, 21000, 0, 25, 22, '2019-03-09 08:06:38', '2019-03-09 08:06:38'),
(65, 1, 600000, 0, 23, 23, '2019-03-09 08:07:23', '2019-03-09 08:07:23'),
(66, 1, 240000, 0, 24, 23, '2019-03-09 08:07:23', '2019-03-09 08:07:23'),
(67, 1, 29000, 0, 27, 24, '2019-03-12 14:00:50', '2019-03-12 14:00:50'),
(68, 1, 34000, 0, 26, 24, '2019-03-12 14:00:50', '2019-03-12 14:00:50'),
(69, 1, 21000, 0, 25, 24, '2019-03-12 14:00:50', '2019-03-12 14:00:50'),
(70, 1, 240000, 0, 24, 25, '2019-03-12 14:02:48', '2019-03-12 14:02:48'),
(71, 1, 34000, 0, 26, 25, '2019-03-12 14:02:48', '2019-03-12 14:02:48'),
(72, 2, 21000, 0, 25, 25, '2019-03-12 14:02:48', '2019-03-12 14:02:48'),
(73, 1, 34000, 0, 26, 26, '2019-03-12 14:04:17', '2019-03-12 14:04:17'),
(74, 2, 29000, 0, 27, 26, '2019-03-12 14:04:17', '2019-03-12 14:04:17'),
(75, 1, 340000, 2, 22, 26, '2019-03-12 14:04:17', '2019-03-12 14:04:17'),
(76, 2, 29000, 0, 27, 27, '2019-03-14 17:01:29', '2019-03-14 17:01:29'),
(77, 1, 34000, 0, 26, 27, '2019-03-14 17:01:29', '2019-03-14 17:01:29'),
(78, 2, 21000, 0, 25, 27, '2019-03-14 17:01:29', '2019-03-14 17:01:29'),
(79, 1, 600000, 0, 23, 28, '2019-03-14 17:02:04', '2019-03-14 17:02:04'),
(80, 1, 34000, 0, 26, 28, '2019-03-14 17:02:04', '2019-03-14 17:02:04'),
(81, 1, 600000, 0, 23, 29, '2019-03-14 17:23:50', '2019-03-14 17:23:50'),
(82, 1, 340000, 2, 22, 29, '2019-03-14 17:23:50', '2019-03-14 17:23:50'),
(83, 1, 240000, 0, 24, 29, '2019-03-14 17:23:50', '2019-03-14 17:23:50'),
(84, 1, 29000, 0, 27, 30, '2019-03-14 17:26:18', '2019-03-14 17:26:18'),
(85, 1, 34000, 0, 26, 30, '2019-03-14 17:26:18', '2019-03-14 17:26:18'),
(86, 1, 600000, 0, 23, 30, '2019-03-14 17:26:18', '2019-03-14 17:26:18'),
(87, 1, 190000, 0, 17, 31, '2019-03-14 17:28:03', '2019-03-14 17:28:03'),
(88, 1, 29000, 0, 27, 31, '2019-03-14 17:28:03', '2019-03-14 17:28:03'),
(89, 1, 34000, 0, 26, 31, '2019-03-14 17:28:03', '2019-03-14 17:28:03'),
(90, 1, 240000, 0, 24, 32, '2019-03-14 17:34:36', '2019-03-14 17:34:36'),
(91, 1, 34000, 0, 26, 32, '2019-03-14 17:34:36', '2019-03-14 17:34:36'),
(92, 2, 21000, 0, 25, 32, '2019-03-14 17:34:36', '2019-03-14 17:34:36'),
(93, 2, 29000, 0, 27, 33, '2019-03-14 17:35:04', '2019-03-14 17:35:04'),
(94, 1, 600000, 0, 23, 33, '2019-03-14 17:35:04', '2019-03-14 17:35:04'),
(95, 1, 550000, 1, 8, 33, '2019-03-14 17:35:04', '2019-03-14 17:35:04'),
(96, 1, 40000, 0, 28, 34, '2019-03-22 02:18:17', '2019-03-22 02:18:17'),
(97, 2, 29000, 0, 27, 34, '2019-03-22 02:18:17', '2019-03-22 02:18:17'),
(98, 1, 34000, 0, 26, 34, '2019-03-22 02:18:17', '2019-03-22 02:18:17'),
(99, 1, 21000, 0, 25, 34, '2019-03-22 02:18:17', '2019-03-22 02:18:17'),
(100, 1, 240000, 0, 24, 35, '2019-03-22 02:19:31', '2019-03-22 02:19:31'),
(101, 2, 21000, 0, 25, 35, '2019-03-22 02:19:31', '2019-03-22 02:19:31'),
(102, 1, 550000, 1, 8, 36, '2019-03-22 02:20:20', '2019-03-22 02:20:20'),
(103, 2, 21000, 0, 25, 36, '2019-03-22 02:20:20', '2019-03-22 02:20:20'),
(104, 2, 21000, 0, 25, 37, '2019-03-22 02:24:05', '2019-03-22 02:24:05'),
(105, 1, 240000, 0, 24, 37, '2019-03-22 02:24:05', '2019-03-22 02:24:05'),
(106, 1, 29000, 0, 27, 37, '2019-03-22 02:24:05', '2019-03-22 02:24:05'),
(107, 2, 240000, 0, 24, 38, '2019-03-22 02:25:08', '2019-03-22 02:25:08'),
(108, 2, 21000, 0, 25, 38, '2019-03-22 02:25:08', '2019-03-22 02:25:08'),
(109, 2, 29000, 0, 27, 38, '2019-03-22 02:25:08', '2019-03-22 02:25:08'),
(110, 5, 40000, 0, 28, 39, '2019-03-22 02:51:07', '2019-03-22 02:51:07'),
(111, 5, 40000, 0, 28, 43, '2019-03-22 03:16:39', '2019-03-22 03:16:39'),
(112, 3, 40000, 0, 28, 44, '2019-03-22 09:14:58', '2019-03-22 09:14:58'),
(113, 2, 29000, 0, 27, 45, '2019-03-22 09:19:42', '2019-03-22 09:19:42'),
(114, 1, 34000, 0, 26, 45, '2019-03-22 09:19:42', '2019-03-22 09:19:42'),
(115, 1, 240000, 0, 24, 45, '2019-03-22 09:19:42', '2019-03-22 09:19:42'),
(116, 2, 21000, 0, 25, 46, '2019-03-22 09:31:46', '2019-03-22 09:31:46'),
(117, 2, 29000, 0, 27, 46, '2019-03-22 09:31:46', '2019-03-22 09:31:46'),
(118, 1, 66000, 0, 18, 47, '2019-03-22 09:32:49', '2019-03-22 09:32:49'),
(119, 2, 29000, 0, 27, 47, '2019-03-22 09:32:49', '2019-03-22 09:32:49'),
(120, 3, 29000, 0, 27, 48, '2019-03-22 09:34:16', '2019-03-22 09:34:16'),
(121, 1, 29000, 0, 27, 49, '2019-03-22 10:33:30', '2019-03-22 10:33:30'),
(122, 2, 21000, 0, 25, 49, '2019-03-22 10:33:30', '2019-03-22 10:33:30'),
(123, 1, 332000, 5, 3, 53, '2019-03-22 10:35:26', '2019-03-22 10:35:26'),
(127, 2, 21000, 0, 25, 54, '2019-03-23 01:46:39', '2019-03-23 01:46:39'),
(128, 1, 40000, 0, 28, 55, '2019-03-23 01:47:01', '2019-03-23 01:47:01'),
(129, 2, 21000, 0, 25, 55, '2019-03-23 01:47:01', '2019-03-23 01:47:01'),
(130, 1, 29000, 0, 27, 56, '2019-03-23 01:51:33', '2019-03-23 01:51:33'),
(131, 1, 21000, 0, 25, 56, '2019-03-23 01:51:33', '2019-03-23 01:51:33'),
(132, 2, 21000, 0, 25, 57, '2019-03-23 01:52:00', '2019-03-23 01:52:00'),
(133, 2, 21000, 0, 25, 58, '2019-03-23 01:54:11', '2019-03-23 01:54:11'),
(134, 3, 240000, 0, 24, 59, '2019-03-23 01:56:35', '2019-03-23 01:56:35'),
(135, 3, 34000, 0, 26, 59, '2019-03-23 01:56:35', '2019-03-23 01:56:35'),
(136, 2, 48000, 0, 21, 60, '2019-03-23 02:04:48', '2019-03-23 02:04:48'),
(137, 1, 340000, 2, 22, 60, '2019-03-23 02:04:48', '2019-03-23 02:04:48'),
(138, 1, 34000, 0, 26, 61, '2019-03-23 02:06:03', '2019-03-23 02:06:03'),
(139, 2, 21000, 0, 25, 61, '2019-03-23 02:06:03', '2019-03-23 02:06:03'),
(140, 2, 332000, 5, 3, 62, '2019-03-23 04:45:48', '2019-03-23 04:45:48'),
(141, 1, 40000, 0, 28, 63, '2019-03-25 10:06:34', '2019-03-25 10:06:34'),
(142, 2, 21000, 0, 25, 64, '2019-03-28 03:36:24', '2019-03-28 03:36:24'),
(143, 1, 29000, 0, 27, 64, '2019-03-28 03:36:24', '2019-03-28 03:36:24'),
(144, 1, 332000, 5, 3, 64, '2019-03-28 03:36:24', '2019-03-28 03:36:24'),
(145, 2, 240000, 0, 24, 65, '2019-03-28 03:36:48', '2019-03-28 03:36:48'),
(146, 2, 600000, 0, 23, 65, '2019-03-28 03:36:48', '2019-03-28 03:36:48'),
(147, 1, 378000, 6, 6, 66, '2019-03-28 06:02:28', '2019-03-28 06:02:28'),
(148, 1, 332000, 5, 3, 66, '2019-03-28 06:02:28', '2019-03-28 06:02:28'),
(149, 2, 465000, 4, 9, 67, '2019-03-28 06:03:30', '2019-03-28 06:03:30'),
(150, 1, 29000, 0, 27, 67, '2019-03-28 06:03:30', '2019-03-28 06:03:30'),
(151, 1, 240000, 0, 24, 68, '2019-03-28 06:04:57', '2019-03-28 06:04:57'),
(152, 2, 66000, 0, 18, 68, '2019-03-28 06:04:57', '2019-03-28 06:04:57'),
(153, 2, 48000, 0, 21, 69, '2019-03-28 06:06:02', '2019-03-28 06:06:02'),
(154, 1, 160000, 0, 20, 69, '2019-03-28 06:06:02', '2019-03-28 06:06:02'),
(155, 1, 320000, 0, 5, 70, '2019-03-28 06:08:16', '2019-03-28 06:08:16'),
(156, 1, 380000, 0, 4, 70, '2019-03-28 06:08:16', '2019-03-28 06:08:16'),
(157, 1, 320000, 0, 5, 71, '2019-03-28 06:08:38', '2019-03-28 06:08:38'),
(158, 1, 630000, 1, 7, 71, '2019-03-28 06:08:38', '2019-03-28 06:08:38'),
(159, 1, 235000, 0, 11, 72, '2019-03-28 06:09:27', '2019-03-28 06:09:27'),
(160, 1, 123000, 1, 13, 72, '2019-03-28 06:09:27', '2019-03-28 06:09:27'),
(161, 1, 262000, 2, 14, 72, '2019-03-28 06:09:27', '2019-03-28 06:09:27'),
(162, 2, 380000, 0, 4, 73, '2019-03-28 06:20:43', '2019-03-28 06:20:43'),
(163, 1, 123000, 1, 13, 73, '2019-03-28 06:20:43', '2019-03-28 06:20:43'),
(164, 1, 210000, 3, 1, 73, '2019-03-28 06:20:43', '2019-03-28 06:20:43'),
(165, 1, 512000, 0, 10, 74, '2019-03-28 06:21:08', '2019-03-28 06:21:08'),
(166, 1, 123000, 1, 13, 74, '2019-03-28 06:21:08', '2019-03-28 06:21:08'),
(167, 1, 210000, 3, 1, 75, '2019-03-28 06:21:20', '2019-03-28 06:21:20'),
(168, 1, 262000, 2, 14, 75, '2019-03-28 06:21:20', '2019-03-28 06:21:20'),
(169, 3, 25000, 0, 19, 76, '2019-03-28 06:22:06', '2019-03-28 06:22:06'),
(170, 1, 190000, 0, 17, 76, '2019-03-28 06:22:06', '2019-03-28 06:22:06'),
(171, 1, 262000, 2, 14, 77, '2019-03-28 06:22:23', '2019-03-28 06:22:23'),
(172, 1, 235000, 0, 11, 77, '2019-03-28 06:22:23', '2019-03-28 06:22:23'),
(173, 1, 512000, 0, 10, 78, '2019-03-28 06:27:21', '2019-03-28 06:27:21'),
(174, 1, 465000, 4, 9, 78, '2019-03-28 06:27:21', '2019-03-28 06:27:21'),
(175, 5, 25000, 0, 19, 79, '2019-03-28 06:27:43', '2019-03-28 06:27:43'),
(176, 2, 21000, 0, 25, 80, '2019-03-28 07:13:06', '2019-03-28 07:13:06'),
(177, 1, 29000, 0, 27, 80, '2019-03-28 07:13:06', '2019-03-28 07:13:06'),
(178, 1, 21000, 0, 25, 81, '2019-03-28 07:14:49', '2019-03-28 07:14:49'),
(179, 1, 240000, 0, 24, 81, '2019-03-28 07:14:49', '2019-03-28 07:14:49'),
(180, 1, 332000, 5, 3, 82, '2019-03-28 07:52:43', '2019-03-28 07:52:43'),
(181, 1, 29000, 0, 27, 82, '2019-03-28 07:52:43', '2019-03-28 07:52:43'),
(182, 1, 40000, 0, 28, 83, '2019-03-28 08:50:56', '2019-03-28 08:50:56'),
(183, 2, 21000, 0, 25, 83, '2019-03-28 08:50:56', '2019-03-28 08:50:56'),
(184, 1, 262000, 2, 14, 84, '2019-03-28 08:51:50', '2019-03-28 08:51:50'),
(185, 1, 292000, 0, 2, 84, '2019-03-28 08:51:50', '2019-03-28 08:51:50'),
(186, 1, 29000, 0, 27, 85, '2019-04-04 02:36:25', '2019-04-04 02:36:25'),
(187, 1, 332000, 5, 3, 85, '2019-04-04 02:36:25', '2019-04-04 02:36:25'),
(188, 1, 40000, 0, 28, 86, '2019-04-04 02:36:39', '2019-04-04 02:36:39'),
(189, 1, 29000, 0, 27, 86, '2019-04-04 02:36:39', '2019-04-04 02:36:39'),
(190, 1, 240000, 0, 24, 87, '2019-04-04 02:37:07', '2019-04-04 02:37:07'),
(191, 1, 600000, 0, 23, 87, '2019-04-04 02:37:07', '2019-04-04 02:37:07'),
(192, 1, 550000, 1, 8, 88, '2019-04-04 02:37:39', '2019-04-04 02:37:39'),
(193, 1, 630000, 1, 7, 88, '2019-04-04 02:37:39', '2019-04-04 02:37:39'),
(194, 1, 292000, 0, 2, 89, '2019-04-04 02:38:09', '2019-04-04 02:38:09'),
(195, 1, 320000, 0, 5, 89, '2019-04-04 02:38:09', '2019-04-04 02:38:09'),
(196, 1, 550000, 1, 8, 90, '2019-04-04 02:39:08', '2019-04-04 02:39:08'),
(197, 1, 630000, 1, 7, 90, '2019-04-04 02:39:08', '2019-04-04 02:39:08'),
(198, 1, 378000, 6, 6, 91, '2019-04-04 02:39:23', '2019-04-04 02:39:23'),
(199, 1, 332000, 5, 3, 91, '2019-04-04 02:39:23', '2019-04-04 02:39:23'),
(200, 1, 380000, 0, 4, 92, '2019-04-04 02:39:38', '2019-04-04 02:39:38'),
(201, 1, 320000, 0, 5, 92, '2019-04-04 02:39:38', '2019-04-04 02:39:38'),
(202, 2, 292000, 0, 2, 93, '2019-04-04 02:39:55', '2019-04-04 02:39:55'),
(203, 1, 25000, 0, 19, 94, '2019-04-04 02:40:51', '2019-04-04 02:40:51'),
(204, 1, 66000, 0, 18, 94, '2019-04-04 02:40:51', '2019-04-04 02:40:51'),
(205, 1, 190000, 0, 17, 95, '2019-04-04 02:41:04', '2019-04-04 02:41:04'),
(206, 2, 66000, 0, 18, 95, '2019-04-04 02:41:04', '2019-04-04 02:41:04'),
(207, 1, 262000, 2, 14, 96, '2019-04-04 02:41:24', '2019-04-04 02:41:24'),
(208, 1, 123000, 1, 13, 96, '2019-04-04 02:41:24', '2019-04-04 02:41:24'),
(209, 1, 465000, 4, 9, 97, '2019-04-04 02:41:39', '2019-04-04 02:41:39'),
(210, 1, 512000, 0, 10, 97, '2019-04-04 02:41:39', '2019-04-04 02:41:39'),
(211, 1, 235000, 0, 11, 98, '2019-04-04 02:41:53', '2019-04-04 02:41:53'),
(212, 1, 262000, 2, 14, 98, '2019-04-04 02:41:53', '2019-04-04 02:41:53'),
(213, 1, 66000, 0, 18, 99, '2019-04-04 02:42:13', '2019-04-04 02:42:13'),
(214, 1, 123000, 1, 13, 99, '2019-04-04 02:42:13', '2019-04-04 02:42:13'),
(215, 1, 25000, 0, 19, 100, '2019-04-04 03:00:32', '2019-04-04 03:00:32'),
(216, 1, 262000, 2, 14, 100, '2019-04-04 03:00:32', '2019-04-04 03:00:32'),
(217, 1, 123000, 1, 13, 101, '2019-04-04 03:00:44', '2019-04-04 03:00:44'),
(218, 1, 512000, 0, 10, 101, '2019-04-04 03:00:44', '2019-04-04 03:00:44'),
(219, 1, 465000, 4, 9, 102, '2019-04-04 03:01:20', '2019-04-04 03:01:20'),
(220, 1, 25000, 0, 19, 102, '2019-04-04 03:01:20', '2019-04-04 03:01:20'),
(221, 1, 66000, 0, 18, 103, '2019-04-04 03:01:46', '2019-04-04 03:01:46'),
(222, 1, 190000, 0, 17, 103, '2019-04-04 03:01:46', '2019-04-04 03:01:46'),
(223, 1, 262000, 2, 14, 104, '2019-04-04 03:02:02', '2019-04-04 03:02:02'),
(224, 1, 25000, 0, 19, 104, '2019-04-04 03:02:02', '2019-04-04 03:02:02'),
(225, 1, 190000, 0, 17, 105, '2019-04-04 03:02:15', '2019-04-04 03:02:15'),
(226, 1, 262000, 2, 14, 105, '2019-04-04 03:02:15', '2019-04-04 03:02:15'),
(227, 1, 123000, 1, 13, 106, '2019-04-04 03:02:46', '2019-04-04 03:02:46'),
(228, 1, 235000, 0, 11, 106, '2019-04-04 03:02:46', '2019-04-04 03:02:46'),
(229, 1, 48000, 0, 21, 107, '2019-04-04 03:03:10', '2019-04-04 03:03:10'),
(230, 1, 160000, 0, 20, 107, '2019-04-04 03:03:10', '2019-04-04 03:03:10'),
(231, 1, 340000, 2, 22, 107, '2019-04-04 03:03:10', '2019-04-04 03:03:10'),
(232, 1, 21000, 0, 25, 108, '2019-04-04 03:03:21', '2019-04-04 03:03:21'),
(233, 1, 600000, 0, 23, 108, '2019-04-04 03:03:21', '2019-04-04 03:03:21'),
(234, 1, 21000, 0, 25, 109, '2019-04-04 03:03:35', '2019-04-04 03:03:35'),
(235, 1, 340000, 2, 22, 109, '2019-04-04 03:03:35', '2019-04-04 03:03:35'),
(236, 1, 40000, 0, 28, 110, '2019-04-04 07:21:07', '2019-04-04 07:21:07'),
(237, 1, 29000, 0, 27, 110, '2019-04-04 07:21:07', '2019-04-04 07:21:07'),
(238, 1, 34000, 0, 26, 111, '2019-04-04 07:21:19', '2019-04-04 07:21:19'),
(239, 1, 240000, 0, 24, 111, '2019-04-04 07:21:19', '2019-04-04 07:21:19'),
(240, 1, 48000, 0, 21, 112, '2019-04-04 07:21:33', '2019-04-04 07:21:33'),
(241, 1, 340000, 2, 22, 112, '2019-04-04 07:21:33', '2019-04-04 07:21:33'),
(242, 1, 40000, 0, 28, 113, '2019-04-04 07:27:51', '2019-04-04 07:27:51'),
(243, 1, 29000, 0, 27, 113, '2019-04-04 07:27:51', '2019-04-04 07:27:51'),
(244, 2, 210000, 3, 1, 114, '2019-04-04 07:31:54', '2019-04-04 07:31:54'),
(245, 2, 34000, 0, 26, 115, '2019-04-08 04:50:48', '2019-04-08 04:50:48'),
(246, 2, 332000, 5, 3, 116, '2019-04-08 05:27:48', '2019-04-08 05:27:48'),
(247, 2, 585000, 2, 29, 117, '2019-04-08 10:02:15', '2019-04-08 10:02:15'),
(248, 1, 440000, 1, 31, 118, '2019-04-08 11:19:34', '2019-04-08 11:19:34'),
(249, 1, 505000, 1, 30, 118, '2019-04-08 11:19:34', '2019-04-08 11:19:34'),
(250, 1, 440000, 1, 31, 119, '2019-04-09 09:57:56', '2019-04-09 09:57:56'),
(251, 2, 505000, 1, 30, 120, '2019-04-09 09:58:19', '2019-04-09 09:58:19'),
(252, 1, 585000, 2, 29, 120, '2019-04-09 09:58:19', '2019-04-09 09:58:19'),
(253, 1, 440000, 1, 31, 121, '2019-04-09 09:58:57', '2019-04-09 09:58:57'),
(254, 1, 505000, 1, 30, 121, '2019-04-09 09:58:57', '2019-04-09 09:58:57'),
(255, 1, 505000, 1, 30, 122, '2019-04-09 09:59:16', '2019-04-09 09:59:16'),
(256, 3, 29000, 0, 27, 122, '2019-04-09 09:59:16', '2019-04-09 09:59:16'),
(257, 1, 40000, 0, 28, 123, '2019-04-09 09:59:30', '2019-04-09 09:59:30'),
(258, 1, 34000, 0, 26, 123, '2019-04-09 09:59:30', '2019-04-09 09:59:30'),
(259, 1, 440000, 1, 31, 123, '2019-04-09 09:59:30', '2019-04-09 09:59:30'),
(260, 1, 29000, 0, 27, 124, '2019-04-11 07:35:34', '2019-04-11 07:35:34'),
(261, 1, 440000, 1, 31, 125, '2019-04-11 07:35:45', '2019-04-11 07:35:45'),
(262, 1, 29000, 0, 27, 125, '2019-04-11 07:35:46', '2019-04-11 07:35:46'),
(263, 3, 34000, 0, 26, 126, '2019-04-11 07:36:02', '2019-04-11 07:36:02'),
(264, 1, 505000, 0, 30, 126, '2019-04-11 07:36:02', '2019-04-11 07:36:02'),
(265, 2, 25000, 0, 19, 127, '2019-04-11 08:57:33', '2019-04-11 08:57:33'),
(266, 2, 40000, 0, 28, 127, '2019-04-11 08:57:33', '2019-04-11 08:57:33'),
(267, 2, 495000, 4, 9, 128, '2019-04-11 08:57:56', '2019-04-11 08:57:56'),
(268, 1, 262000, 2, 14, 129, '2019-04-11 08:58:08', '2019-04-11 08:58:08'),
(269, 1, 235000, 0, 11, 129, '2019-04-11 08:58:08', '2019-04-11 08:58:08'),
(270, 1, 190000, 0, 17, 130, '2019-04-11 09:04:53', '2019-04-11 09:04:53'),
(271, 1, 495000, 4, 9, 130, '2019-04-11 09:04:53', '2019-04-11 09:04:53'),
(272, 5, 550000, 1, 8, 131, '2019-04-12 15:39:42', '2019-04-12 15:39:42'),
(273, 1, 505000, 0, 30, 132, '2019-04-12 15:46:31', '2019-04-12 15:46:31'),
(274, 2, 29000, 0, 27, 133, '2019-04-13 09:49:36', '2019-04-13 09:49:36'),
(275, 1, 21000, 0, 25, 133, '2019-04-13 09:49:36', '2019-04-13 09:49:36'),
(276, 4, 21000, 0, 25, 134, '2019-04-13 09:51:30', '2019-04-13 09:51:30'),
(277, 3, 29000, 0, 27, 134, '2019-04-13 09:51:31', '2019-04-13 09:51:31'),
(278, 1, 60000, 0, 32, 135, '2019-04-13 09:52:11', '2019-04-13 09:52:11'),
(279, 2, 40000, 0, 28, 135, '2019-04-13 09:52:11', '2019-04-13 09:52:11'),
(280, 1, 585000, 1, 29, 135, '2019-04-13 09:52:11', '2019-04-13 09:52:11'),
(281, 2, 340000, 0, 22, 136, '2019-04-13 09:52:41', '2019-04-13 09:52:41'),
(282, 3, 48000, 0, 21, 136, '2019-04-13 09:52:41', '2019-04-13 09:52:41'),
(283, 2, 25000, 0, 19, 137, '2019-04-13 09:52:58', '2019-04-13 09:52:58'),
(284, 2, 66000, 0, 18, 137, '2019-04-13 09:52:58', '2019-04-13 09:52:58'),
(285, 2, 160000, 0, 20, 138, '2019-04-13 09:53:52', '2019-04-13 09:53:52'),
(286, 1, 190000, 0, 17, 138, '2019-04-13 09:53:52', '2019-04-13 09:53:52'),
(287, 2, 66000, 0, 18, 139, '2019-04-13 09:54:07', '2019-04-13 09:54:07'),
(288, 1, 292000, 0, 2, 140, '2019-04-13 09:54:53', '2019-04-13 09:54:53'),
(289, 1, 512000, 0, 10, 140, '2019-04-13 09:54:53', '2019-04-13 09:54:53'),
(290, 1, 235000, 0, 11, 141, '2019-04-13 09:55:22', '2019-04-13 09:55:22'),
(291, 1, 290000, 3, 1, 141, '2019-04-13 09:55:22', '2019-04-13 09:55:22'),
(292, 1, 378000, 3, 6, 142, '2019-04-13 09:55:54', '2019-04-13 09:55:54'),
(293, 1, 320000, 0, 5, 142, '2019-04-13 09:55:54', '2019-04-13 09:55:54'),
(294, 1, 340000, 0, 22, 143, '2019-04-13 09:56:17', '2019-04-13 09:56:17'),
(295, 2, 48000, 0, 21, 143, '2019-04-13 09:56:17', '2019-04-13 09:56:17'),
(296, 1, 160000, 0, 20, 144, '2019-04-13 09:56:31', '2019-04-13 09:56:31'),
(297, 1, 190000, 0, 17, 144, '2019-04-13 09:56:31', '2019-04-13 09:56:31'),
(298, 1, 66000, 0, 18, 145, '2019-04-13 09:57:01', '2019-04-13 09:57:01'),
(299, 1, 340000, 0, 22, 145, '2019-04-13 09:57:01', '2019-04-13 09:57:01'),
(300, 1, 60000, 0, 32, 146, '2019-04-13 09:57:23', '2019-04-13 09:57:23'),
(301, 3, 29000, 0, 27, 146, '2019-04-13 09:57:23', '2019-04-13 09:57:23'),
(302, 2, 34000, 0, 26, 147, '2019-04-13 10:02:11', '2019-04-13 10:02:11'),
(303, 1, 240000, 0, 24, 147, '2019-04-13 10:02:11', '2019-04-13 10:02:11'),
(304, 1, 34000, 0, 26, 148, '2019-04-13 10:02:32', '2019-04-13 10:02:32'),
(305, 1, 585000, 1, 29, 148, '2019-04-13 10:02:32', '2019-04-13 10:02:32'),
(306, 1, 60000, 0, 32, 149, '2019-04-13 10:03:01', '2019-04-13 10:03:01'),
(307, 1, 440000, 1, 31, 149, '2019-04-13 10:03:01', '2019-04-13 10:03:01'),
(308, 1, 34000, 0, 26, 150, '2019-04-13 10:03:16', '2019-04-13 10:03:16'),
(309, 1, 585000, 1, 29, 150, '2019-04-13 10:03:16', '2019-04-13 10:03:16'),
(310, 1, 21000, 0, 25, 151, '2019-04-13 10:03:56', '2019-04-13 10:03:56'),
(311, 1, 240000, 0, 24, 151, '2019-04-13 10:03:56', '2019-04-13 10:03:56'),
(312, 1, 21000, 0, 25, 152, '2019-04-13 10:04:32', '2019-04-13 10:04:32'),
(313, 1, 332000, 5, 3, 152, '2019-04-13 10:04:32', '2019-04-13 10:04:32'),
(314, 1, 440000, 1, 31, 153, '2019-04-13 10:05:08', '2019-04-13 10:05:08'),
(315, 1, 40000, 0, 28, 153, '2019-04-13 10:05:08', '2019-04-13 10:05:08'),
(316, 1, 34000, 0, 26, 154, '2019-04-13 10:05:37', '2019-04-13 10:05:37'),
(317, 1, 21000, 0, 25, 154, '2019-04-13 10:05:37', '2019-04-13 10:05:37'),
(318, 1, 600000, 0, 23, 155, '2019-04-13 10:05:54', '2019-04-13 10:05:54'),
(319, 1, 25000, 0, 19, 155, '2019-04-13 10:05:54', '2019-04-13 10:05:54'),
(320, 5, 25000, 0, 19, 156, '2019-04-13 10:06:34', '2019-04-13 10:06:34'),
(321, 3, 160000, 0, 20, 156, '2019-04-13 10:06:34', '2019-04-13 10:06:34'),
(322, 1, 60000, 0, 32, 157, '2019-04-22 07:31:38', '2019-04-22 07:31:38'),
(323, 1, 440000, 1, 31, 157, '2019-04-22 07:31:38', '2019-04-22 07:31:38'),
(324, 2, 29000, 0, 27, 158, '2019-04-22 07:31:53', '2019-04-22 07:31:53'),
(325, 3, 40000, 0, 28, 158, '2019-04-22 07:31:53', '2019-04-22 07:31:53'),
(326, 1, 60000, 0, 32, 159, '2019-04-24 02:39:59', '2019-04-24 02:39:59'),
(327, 1, 505000, 0, 30, 159, '2019-04-24 02:39:59', '2019-04-24 02:39:59'),
(328, 1, 585000, 1, 29, 160, '2019-04-24 06:57:18', '2019-04-24 06:57:18'),
(329, 1, 40000, 0, 28, 160, '2019-04-24 06:57:18', '2019-04-24 06:57:18'),
(330, 1, 29000, 0, 27, 161, '2019-04-24 06:59:59', '2019-04-24 06:59:59'),
(331, 1, 505000, 0, 30, 161, '2019-04-24 06:59:59', '2019-04-24 06:59:59'),
(332, 3, 29000, 0, 27, 162, '2019-05-06 04:43:05', '2019-05-06 04:43:05'),
(333, 3, 21000, 0, 25, 162, '2019-05-06 04:43:05', '2019-05-06 04:43:05'),
(334, 2, 40000, 0, 28, 163, '2019-05-06 04:43:21', '2019-05-06 04:43:21'),
(335, 1, 66000, 0, 18, 163, '2019-05-06 04:43:21', '2019-05-06 04:43:21'),
(336, 1, 240000, 0, 24, 164, '2019-05-06 04:43:37', '2019-05-06 04:43:37'),
(337, 2, 66000, 0, 18, 164, '2019-05-06 04:43:37', '2019-05-06 04:43:37'),
(338, 1, 550000, 1, 8, 165, '2019-05-06 04:43:50', '2019-05-06 04:43:50'),
(339, 1, 34000, 0, 26, 165, '2019-05-06 04:43:50', '2019-05-06 04:43:50'),
(340, 2, 332000, 5, 3, 166, '2019-05-06 04:51:16', '2019-05-06 04:51:16'),
(341, 1, 292000, 0, 2, 166, '2019-05-06 04:51:16', '2019-05-06 04:51:16'),
(342, 1, 235000, 0, 11, 167, '2019-05-06 06:14:41', '2019-05-06 06:14:41'),
(343, 1, 512000, 0, 10, 167, '2019-05-06 06:14:41', '2019-05-06 06:14:41'),
(344, 1, 340000, 0, 22, 168, '2019-05-06 06:20:37', '2019-05-06 06:20:37'),
(345, 1, 48000, 0, 21, 168, '2019-05-06 06:20:37', '2019-05-06 06:20:37'),
(346, 3, 66000, 0, 18, 169, '2019-05-06 06:20:51', '2019-05-06 06:20:51'),
(347, 1, 190000, 0, 17, 170, '2019-05-06 06:23:24', '2019-05-06 06:23:24'),
(348, 1, 262000, 2, 14, 170, '2019-05-06 06:23:24', '2019-05-06 06:23:24'),
(349, 1, 160000, 0, 20, 171, '2019-05-06 06:23:51', '2019-05-06 06:23:51'),
(350, 1, 600000, 0, 23, 171, '2019-05-06 06:23:51', '2019-05-06 06:23:51'),
(351, 1, 600000, 0, 23, 172, '2019-05-06 06:24:01', '2019-05-06 06:24:01'),
(352, 1, 440000, 1, 31, 173, '2019-05-06 06:24:16', '2019-05-06 06:24:16'),
(353, 1, 505000, 0, 30, 174, '2019-05-06 06:24:35', '2019-05-06 06:24:35'),
(354, 1, 585000, 1, 29, 175, '2019-05-06 06:24:43', '2019-05-06 06:24:43'),
(355, 1, 40000, 0, 28, 176, '2019-05-06 06:24:54', '2019-05-06 06:24:54'),
(356, 1, 29000, 0, 27, 176, '2019-05-06 06:24:54', '2019-05-06 06:24:54'),
(357, 1, 34000, 0, 26, 176, '2019-05-06 06:24:54', '2019-05-06 06:24:54'),
(358, 5, 21000, 0, 25, 177, '2019-05-06 06:25:30', '2019-05-06 06:25:30'),
(359, 1, 380000, 0, 4, 178, '2019-05-06 06:26:59', '2019-05-06 06:26:59'),
(360, 1, 320000, 0, 5, 178, '2019-05-06 06:26:59', '2019-05-06 06:26:59'),
(361, 1, 378000, 3, 6, 179, '2019-05-06 06:27:09', '2019-05-06 06:27:09'),
(362, 1, 630000, 1, 7, 180, '2019-05-06 06:27:22', '2019-05-06 06:27:22'),
(363, 1, 380000, 0, 4, 181, '2019-05-06 06:28:48', '2019-05-06 06:28:48'),
(364, 2, 320000, 0, 5, 182, '2019-05-06 06:29:01', '2019-05-06 06:29:01'),
(365, 3, 378000, 3, 6, 183, '2019-05-06 06:29:11', '2019-05-06 06:29:11'),
(366, 1, 630000, 1, 7, 184, '2019-05-06 06:29:19', '2019-05-06 06:29:19'),
(367, 1, 550000, 1, 8, 185, '2019-05-06 06:29:30', '2019-05-06 06:29:30'),
(368, 1, 495000, 4, 9, 186, '2019-05-06 06:29:38', '2019-05-06 06:29:38'),
(369, 1, 290000, 3, 1, 187, '2019-05-06 06:29:53', '2019-05-06 06:29:53'),
(370, 1, 235000, 0, 11, 187, '2019-05-06 06:29:53', '2019-05-06 06:29:53'),
(371, 1, 512000, 0, 10, 188, '2019-05-06 06:30:00', '2019-05-06 06:30:00'),
(372, 1, 290000, 3, 1, 189, '2019-05-06 06:30:58', '2019-05-06 06:30:58'),
(373, 1, 235000, 0, 11, 189, '2019-05-06 06:30:58', '2019-05-06 06:30:58'),
(374, 1, 512000, 0, 10, 190, '2019-05-06 06:31:11', '2019-05-06 06:31:11'),
(375, 1, 495000, 4, 9, 191, '2019-05-06 06:31:25', '2019-05-06 06:31:25'),
(376, 1, 550000, 1, 8, 192, '2019-05-06 06:31:34', '2019-05-06 06:31:34'),
(377, 1, 630000, 1, 7, 193, '2019-05-06 06:31:41', '2019-05-06 06:31:41'),
(378, 2, 378000, 3, 6, 194, '2019-05-06 06:31:52', '2019-05-06 06:31:52'),
(379, 2, 320000, 0, 5, 195, '2019-05-06 06:32:01', '2019-05-06 06:32:01'),
(380, 2, 380000, 0, 4, 196, '2019-05-06 06:32:09', '2019-05-06 06:32:09'),
(381, 1, 630000, 1, 7, 197, '2019-05-06 07:28:28', '2019-05-06 07:28:28'),
(382, 1, 290000, 3, 1, 198, '2019-05-06 07:35:37', '2019-05-06 07:35:37'),
(383, 1, 235000, 0, 11, 198, '2019-05-06 07:35:37', '2019-05-06 07:35:37'),
(384, 1, 512000, 0, 10, 199, '2019-05-06 07:35:45', '2019-05-06 07:35:45'),
(385, 1, 495000, 4, 9, 200, '2019-05-06 07:37:01', '2019-05-06 07:37:01'),
(386, 1, 550000, 1, 8, 201, '2019-05-06 07:44:43', '2019-05-06 07:44:43'),
(387, 1, 630000, 1, 7, 202, '2019-05-06 07:53:34', '2019-05-06 07:53:34'),
(388, 1, 378000, 3, 6, 203, '2019-05-06 07:53:52', '2019-05-06 07:53:52'),
(389, 1, 320000, 0, 5, 203, '2019-05-06 07:53:52', '2019-05-06 07:53:52'),
(390, 1, 320000, 0, 5, 204, '2019-05-06 07:54:02', '2019-05-06 07:54:02'),
(391, 1, 380000, 0, 4, 204, '2019-05-06 07:54:02', '2019-05-06 07:54:02'),
(392, 1, 378000, 3, 6, 205, '2019-05-06 07:54:11', '2019-05-06 07:54:11'),
(393, 1, 380000, 0, 4, 205, '2019-05-06 07:54:11', '2019-05-06 07:54:11'),
(394, 1, 290000, 3, 1, 206, '2019-05-06 07:54:43', '2019-05-06 07:54:43'),
(395, 1, 235000, 0, 11, 206, '2019-05-06 07:54:43', '2019-05-06 07:54:43'),
(396, 1, 512000, 0, 10, 207, '2019-05-06 07:54:53', '2019-05-06 07:54:53'),
(397, 1, 495000, 4, 9, 208, '2019-05-06 07:55:04', '2019-05-06 07:55:04'),
(398, 1, 550000, 1, 8, 209, '2019-05-06 07:55:12', '2019-05-06 07:55:12'),
(399, 1, 630000, 1, 7, 210, '2019-05-06 07:55:19', '2019-05-06 07:55:19'),
(400, 1, 378000, 3, 6, 211, '2019-05-06 07:55:30', '2019-05-06 07:55:30'),
(401, 1, 380000, 0, 4, 212, '2019-05-06 07:57:19', '2019-05-06 07:57:19'),
(402, 1, 320000, 0, 5, 212, '2019-05-06 07:57:19', '2019-05-06 07:57:19'),
(403, 1, 600000, 0, 23, 213, '2019-05-06 07:58:02', '2019-05-06 07:58:02'),
(404, 1, 340000, 0, 22, 214, '2019-05-06 08:00:22', '2019-05-06 08:00:22'),
(405, 2, 48000, 0, 21, 214, '2019-05-06 08:00:22', '2019-05-06 08:00:22'),
(406, 1, 160000, 0, 20, 215, '2019-05-06 08:00:32', '2019-05-06 08:00:32'),
(407, 3, 25000, 0, 19, 215, '2019-05-06 08:00:32', '2019-05-06 08:00:32'),
(408, 1, 66000, 0, 18, 216, '2019-05-06 08:00:41', '2019-05-06 08:00:41'),
(409, 1, 160000, 0, 20, 216, '2019-05-06 08:00:41', '2019-05-06 08:00:41'),
(410, 1, 262000, 2, 14, 217, '2019-05-06 08:00:49', '2019-05-06 08:00:49'),
(411, 1, 190000, 0, 17, 218, '2019-05-06 08:00:58', '2019-05-06 08:00:58'),
(412, 1, 123000, 0, 13, 218, '2019-05-06 08:00:58', '2019-05-06 08:00:58'),
(413, 1, 440000, 1, 31, 219, '2019-05-06 08:24:45', '2019-05-06 08:24:45'),
(414, 1, 505000, 0, 30, 220, '2019-05-06 08:24:52', '2019-05-06 08:24:52'),
(415, 1, 60000, 0, 32, 221, '2019-05-06 08:25:02', '2019-05-06 08:25:02'),
(416, 2, 40000, 0, 28, 221, '2019-05-06 08:25:02', '2019-05-06 08:25:02'),
(417, 1, 585000, 1, 29, 222, '2019-05-06 08:25:10', '2019-05-06 08:25:10'),
(418, 1, 34000, 0, 26, 223, '2019-05-06 08:25:18', '2019-05-06 08:25:18'),
(419, 1, 240000, 0, 24, 223, '2019-05-06 08:25:18', '2019-05-06 08:25:18'),
(420, 1, 21000, 0, 25, 224, '2019-05-06 08:25:32', '2019-05-06 08:25:32'),
(421, 1, 34000, 0, 26, 224, '2019-05-06 08:25:32', '2019-05-06 08:25:32'),
(422, 1, 240000, 0, 24, 224, '2019-05-06 08:25:32', '2019-05-06 08:25:32'),
(423, 1, 290000, 3, 1, 225, '2019-05-06 08:25:43', '2019-05-06 08:25:43'),
(424, 1, 235000, 0, 11, 225, '2019-05-06 08:25:43', '2019-05-06 08:25:43'),
(425, 1, 512000, 0, 10, 226, '2019-05-06 08:25:56', '2019-05-06 08:25:56'),
(426, 1, 495000, 4, 9, 227, '2019-05-06 08:26:05', '2019-05-06 08:26:05'),
(427, 1, 550000, 1, 8, 228, '2019-05-06 08:26:12', '2019-05-06 08:26:12'),
(428, 1, 630000, 1, 7, 229, '2019-05-06 08:26:19', '2019-05-06 08:26:19'),
(429, 1, 600000, 0, 23, 230, '2019-05-06 08:39:02', '2019-05-06 08:39:02'),
(430, 1, 340000, 0, 22, 231, '2019-05-06 08:39:15', '2019-05-06 08:39:15'),
(431, 1, 48000, 0, 21, 231, '2019-05-06 08:39:15', '2019-05-06 08:39:15'),
(432, 1, 160000, 0, 20, 232, '2019-05-06 08:39:27', '2019-05-06 08:39:27'),
(433, 2, 25000, 0, 19, 232, '2019-05-06 08:39:27', '2019-05-06 08:39:27'),
(434, 1, 262000, 2, 14, 233, '2019-05-06 08:39:35', '2019-05-06 08:39:35'),
(435, 1, 190000, 0, 17, 234, '2019-05-06 08:39:43', '2019-05-06 08:39:43'),
(436, 1, 123000, 0, 13, 234, '2019-05-06 08:39:43', '2019-05-06 08:39:43'),
(437, 1, 235000, 0, 11, 235, '2019-05-06 08:40:09', '2019-05-06 08:40:09'),
(438, 1, 290000, 3, 1, 235, '2019-05-06 08:40:09', '2019-05-06 08:40:09'),
(439, 1, 512000, 0, 10, 236, '2019-05-06 08:40:20', '2019-05-06 08:40:20'),
(440, 1, 495000, 4, 9, 237, '2019-05-06 08:40:29', '2019-05-06 08:40:29'),
(441, 1, 378000, 3, 6, 238, '2019-05-06 08:40:43', '2019-05-06 08:40:43'),
(442, 1, 320000, 0, 5, 239, '2019-05-06 08:49:25', '2019-05-06 08:49:25'),
(443, 1, 380000, 0, 4, 240, '2019-05-06 08:49:33', '2019-05-06 08:49:33'),
(444, 1, 512000, 0, 10, 241, '2019-05-06 08:58:30', '2019-05-06 08:58:30'),
(445, 1, 235000, 0, 11, 242, '2019-05-06 08:58:37', '2019-05-06 08:58:37'),
(446, 1, 290000, 3, 1, 242, '2019-05-06 08:58:37', '2019-05-06 08:58:37'),
(447, 1, 495000, 4, 9, 243, '2019-05-06 08:58:45', '2019-05-06 08:58:45'),
(448, 1, 550000, 1, 8, 244, '2019-05-06 08:58:52', '2019-05-06 08:58:52'),
(449, 1, 630000, 1, 7, 245, '2019-05-06 08:58:59', '2019-05-06 08:58:59'),
(450, 1, 378000, 3, 6, 246, '2019-05-06 08:59:15', '2019-05-06 08:59:15'),
(451, 1, 320000, 0, 5, 247, '2019-05-06 08:59:22', '2019-05-06 08:59:22'),
(452, 1, 380000, 0, 4, 248, '2019-05-06 08:59:30', '2019-05-06 08:59:30'),
(453, 1, 332000, 5, 3, 249, '2019-05-06 08:59:46', '2019-05-06 08:59:46'),
(454, 1, 292000, 0, 2, 250, '2019-05-06 08:59:55', '2019-05-06 08:59:55'),
(455, 1, 600000, 0, 23, 251, '2019-05-06 09:01:23', '2019-05-06 09:01:23'),
(456, 1, 340000, 0, 22, 252, '2019-05-06 09:01:32', '2019-05-06 09:01:32'),
(457, 1, 48000, 0, 21, 252, '2019-05-06 09:01:32', '2019-05-06 09:01:32'),
(458, 1, 160000, 0, 20, 253, '2019-05-06 09:01:40', '2019-05-06 09:01:40'),
(459, 1, 25000, 0, 19, 253, '2019-05-06 09:01:40', '2019-05-06 09:01:40'),
(460, 1, 25000, 0, 19, 254, '2019-05-06 09:01:56', '2019-05-06 09:01:56'),
(461, 1, 66000, 0, 18, 254, '2019-05-06 09:01:56', '2019-05-06 09:01:56'),
(462, 1, 160000, 0, 20, 254, '2019-05-06 09:01:56', '2019-05-06 09:01:56'),
(463, 1, 262000, 2, 14, 255, '2019-05-06 09:02:04', '2019-05-06 09:02:04'),
(464, 1, 190000, 0, 17, 256, '2019-05-06 09:02:12', '2019-05-06 09:02:12'),
(465, 1, 123000, 0, 13, 256, '2019-05-06 09:02:12', '2019-05-06 09:02:12'),
(466, 4, 60000, 0, 32, 257, '2019-05-06 09:02:24', '2019-05-06 09:02:24'),
(467, 1, 440000, 1, 31, 258, '2019-05-06 09:02:31', '2019-05-06 09:02:31'),
(468, 1, 505000, 0, 30, 259, '2019-05-06 09:02:37', '2019-05-06 09:02:37'),
(469, 1, 585000, 1, 29, 260, '2019-05-06 09:02:45', '2019-05-06 09:02:45'),
(470, 1, 40000, 0, 28, 261, '2019-05-06 09:02:56', '2019-05-06 09:02:56'),
(471, 2, 29000, 0, 27, 261, '2019-05-06 09:02:56', '2019-05-06 09:02:56'),
(472, 1, 290000, 3, 1, 262, '2019-05-06 09:07:05', '2019-05-06 09:07:05'),
(473, 1, 235000, 0, 11, 263, '2019-05-06 09:07:12', '2019-05-06 09:07:12'),
(474, 1, 512000, 0, 10, 264, '2019-05-06 09:07:21', '2019-05-06 09:07:21'),
(475, 1, 495000, 4, 9, 265, '2019-05-06 09:07:29', '2019-05-06 09:07:29'),
(476, 1, 550000, 1, 8, 266, '2019-05-06 09:07:36', '2019-05-06 09:07:36'),
(477, 1, 630000, 1, 7, 267, '2019-05-06 09:07:43', '2019-05-06 09:07:43'),
(478, 1, 378000, 3, 6, 268, '2019-05-06 09:07:52', '2019-05-06 09:07:52'),
(479, 1, 320000, 0, 5, 269, '2019-05-06 09:07:58', '2019-05-06 09:07:58'),
(480, 1, 380000, 0, 4, 270, '2019-05-06 09:08:04', '2019-05-06 09:08:04'),
(481, 1, 332000, 5, 3, 271, '2019-05-06 09:08:22', '2019-05-06 09:08:22'),
(482, 1, 292000, 0, 2, 272, '2019-05-06 09:08:31', '2019-05-06 09:08:31'),
(483, 1, 440000, 1, 31, 273, '2019-05-06 09:16:59', '2019-05-06 09:16:59'),
(484, 1, 290000, 3, 1, 274, '2019-05-06 09:19:04', '2019-05-06 09:19:04'),
(485, 1, 235000, 0, 11, 274, '2019-05-06 09:19:04', '2019-05-06 09:19:04'),
(486, 1, 512000, 0, 10, 275, '2019-05-06 09:19:10', '2019-05-06 09:19:10'),
(487, 1, 495000, 4, 9, 276, '2019-05-06 09:19:17', '2019-05-06 09:19:17'),
(488, 1, 550000, 1, 8, 277, '2019-05-06 09:19:23', '2019-05-06 09:19:23'),
(489, 1, 630000, 1, 7, 278, '2019-05-06 09:19:29', '2019-05-06 09:19:29'),
(490, 1, 378000, 3, 6, 279, '2019-05-06 09:19:36', '2019-05-06 09:19:36'),
(491, 1, 320000, 0, 5, 280, '2019-05-06 09:19:43', '2019-05-06 09:19:43'),
(492, 1, 380000, 0, 4, 281, '2019-05-06 09:19:50', '2019-05-06 09:19:50'),
(493, 1, 320000, 0, 5, 282, '2019-05-06 09:20:08', '2019-05-06 09:20:08'),
(494, 1, 290000, 3, 1, 282, '2019-05-06 09:20:08', '2019-05-06 09:20:08'),
(495, 1, 240000, 0, 24, 283, '2019-05-06 09:20:25', '2019-05-06 09:20:25'),
(496, 2, 21000, 0, 25, 283, '2019-05-06 09:20:25', '2019-05-06 09:20:25'),
(497, 1, 585000, 1, 29, 284, '2019-05-06 09:20:34', '2019-05-06 09:20:34'),
(498, 1, 40000, 0, 28, 285, '2019-05-06 09:20:45', '2019-05-06 09:20:45'),
(499, 1, 34000, 0, 26, 285, '2019-05-06 09:20:45', '2019-05-06 09:20:45'),
(500, 1, 21000, 0, 25, 285, '2019-05-06 09:20:45', '2019-05-06 09:20:45'),
(501, 1, 440000, 1, 31, 286, '2019-05-06 09:22:27', '2019-05-06 09:22:27'),
(502, 1, 505000, 0, 30, 287, '2019-05-06 09:22:34', '2019-05-06 09:22:34'),
(503, 1, 585000, 1, 29, 288, '2019-05-06 09:22:41', '2019-05-06 09:22:41'),
(504, 1, 40000, 0, 28, 289, '2019-05-06 09:22:52', '2019-05-06 09:22:52'),
(505, 1, 29000, 0, 27, 289, '2019-05-06 09:22:52', '2019-05-06 09:22:52'),
(506, 3, 60000, 0, 32, 290, '2019-05-06 09:23:01', '2019-05-06 09:23:01'),
(507, 10, 34000, 0, 26, 291, '2019-05-06 09:23:21', '2019-05-06 09:23:21'),
(508, 5, 66000, 0, 18, 292, '2019-05-06 09:23:37', '2019-05-06 09:23:37'),
(509, 5, 40000, 0, 28, 293, '2019-05-06 09:24:05', '2019-05-06 09:24:05'),
(510, 10, 48000, 0, 21, 294, '2019-05-06 09:24:24', '2019-05-06 09:24:24'),
(511, 2, 190000, 0, 17, 295, '2019-05-06 09:25:03', '2019-05-06 09:25:03'),
(512, 10, 25000, 0, 19, 296, '2019-05-06 09:25:25', '2019-05-06 09:25:25'),
(513, 1, 160000, 0, 20, 297, '2019-05-06 09:25:38', '2019-05-06 09:25:38'),
(514, 1, 25000, 0, 19, 297, '2019-05-06 09:25:38', '2019-05-06 09:25:38'),
(515, 10, 21000, 0, 25, 298, '2019-05-06 09:26:57', '2019-05-06 09:26:57'),
(516, 10, 34000, 0, 26, 299, '2019-05-06 09:27:05', '2019-05-06 09:27:05'),
(517, 3, 40000, 0, 28, 300, '2019-05-06 09:27:14', '2019-05-06 09:27:14'),
(518, 1, 440000, 1, 31, 301, '2019-05-06 09:48:06', '2019-05-06 09:48:06'),
(519, 1, 505000, 0, 30, 302, '2019-05-06 09:48:13', '2019-05-06 09:48:13'),
(520, 1, 585000, 1, 29, 303, '2019-05-06 09:48:20', '2019-05-06 09:48:20'),
(521, 1, 40000, 0, 28, 304, '2019-05-06 09:48:39', '2019-05-06 09:48:39'),
(522, 1, 29000, 0, 27, 304, '2019-05-06 09:48:39', '2019-05-06 09:48:39'),
(523, 1, 34000, 0, 26, 304, '2019-05-06 09:48:39', '2019-05-06 09:48:39'),
(524, 2, 21000, 0, 25, 304, '2019-05-06 09:48:39', '2019-05-06 09:48:39'),
(525, 5, 48000, 0, 21, 305, '2019-05-06 09:52:06', '2019-05-06 09:52:06'),
(526, 5, 25000, 0, 19, 306, '2019-05-06 09:52:14', '2019-05-06 09:52:14'),
(527, 2, 340000, 0, 22, 307, '2019-05-06 09:52:32', '2019-05-06 09:52:32'),
(528, 1, 340000, 0, 22, 308, '2019-05-06 09:54:42', '2019-05-06 09:54:42'),
(529, 1, 600000, 0, 23, 309, '2019-05-06 09:54:48', '2019-05-06 09:54:48'),
(530, 5, 48000, 0, 21, 310, '2019-05-06 09:54:55', '2019-05-06 09:54:55'),
(531, 1, 160000, 0, 20, 311, '2019-05-06 09:55:04', '2019-05-06 09:55:04'),
(532, 3, 25000, 0, 19, 311, '2019-05-06 09:55:04', '2019-05-06 09:55:04'),
(533, 10, 25000, 0, 19, 312, '2019-05-06 09:55:12', '2019-05-06 09:55:12'),
(534, 1, 66000, 0, 18, 313, '2019-05-06 10:00:33', '2019-05-06 10:00:33'),
(535, 1, 190000, 0, 17, 313, '2019-05-06 10:00:33', '2019-05-06 10:00:33'),
(536, 1, 262000, 2, 14, 314, '2019-05-06 10:00:41', '2019-05-06 10:00:41'),
(537, 1, 123000, 0, 13, 315, '2019-05-06 10:00:52', '2019-05-06 10:00:52'),
(538, 1, 440000, 1, 31, 316, '2019-05-06 10:01:05', '2019-05-06 10:01:05'),
(539, 1, 505000, 0, 30, 317, '2019-05-06 10:01:11', '2019-05-06 10:01:11'),
(540, 1, 585000, 1, 29, 318, '2019-05-06 10:01:18', '2019-05-06 10:01:18'),
(541, 1, 290000, 3, 1, 319, '2019-05-07 02:39:58', '2019-05-07 02:39:58'),
(542, 1, 235000, 0, 11, 319, '2019-05-07 02:39:59', '2019-05-07 02:39:59'),
(543, 1, 495000, 4, 9, 320, '2019-05-07 02:40:06', '2019-05-07 02:40:06'),
(544, 1, 550000, 1, 8, 321, '2019-05-07 02:40:13', '2019-05-07 02:40:13'),
(545, 1, 630000, 1, 7, 322, '2019-05-07 02:40:21', '2019-05-07 02:40:21'),
(546, 1, 378000, 3, 6, 323, '2019-05-07 02:40:29', '2019-05-07 02:40:29'),
(547, 1, 320000, 0, 5, 323, '2019-05-07 02:40:29', '2019-05-07 02:40:29'),
(548, 1, 380000, 0, 4, 324, '2019-05-07 02:40:36', '2019-05-07 02:40:36'),
(549, 10, 34000, 0, 26, 325, '2019-05-07 02:40:58', '2019-05-07 02:40:58'),
(550, 10, 21000, 0, 25, 326, '2019-05-07 02:41:14', '2019-05-07 02:41:14'),
(551, 2, 240000, 0, 24, 327, '2019-05-07 02:41:27', '2019-05-07 02:41:27'),
(552, 15, 29000, 0, 27, 328, '2019-05-07 02:41:44', '2019-05-07 02:41:44'),
(553, 1, 512000, 0, 33, 329, '2019-05-07 02:49:04', '2019-05-07 02:49:04'),
(554, 5, 56000, 0, 34, 330, '2019-05-07 02:49:12', '2019-05-07 02:49:12'),
(555, 7, 56000, 0, 34, 331, '2019-05-07 02:49:23', '2019-05-07 02:49:23'),
(556, 2, 320000, 0, 38, 332, '2019-05-07 03:34:00', '2019-05-07 03:34:00'),
(557, 2, 280000, 0, 37, 333, '2019-05-07 03:34:19', '2019-05-07 03:34:19'),
(558, 1, 512000, 0, 33, 334, '2019-05-07 03:36:22', '2019-05-07 03:36:22'),
(559, 3, 56000, 0, 34, 335, '2019-05-07 03:36:41', '2019-05-07 03:36:41'),
(560, 1, 125000, 0, 36, 335, '2019-05-07 03:36:41', '2019-05-07 03:36:41'),
(561, 3, 265000, 0, 35, 336, '2019-05-07 03:36:48', '2019-05-07 03:36:48'),
(562, 3, 125000, 0, 36, 337, '2019-05-07 03:36:56', '2019-05-07 03:36:56'),
(563, 2, 280000, 0, 37, 338, '2019-05-07 03:37:07', '2019-05-07 03:37:07'),
(564, 2, 320000, 0, 38, 339, '2019-05-07 03:37:23', '2019-05-07 03:37:23'),
(565, 2, 265000, 0, 35, 340, '2019-05-07 03:37:36', '2019-05-07 03:37:36'),
(566, 1, 585000, 1, 29, 341, '2019-05-07 03:37:56', '2019-05-07 03:37:56'),
(567, 7, 34000, 0, 26, 342, '2019-05-07 03:38:07', '2019-05-07 03:38:07'),
(568, 10, 21000, 0, 25, 343, '2019-05-07 03:38:16', '2019-05-07 03:38:16'),
(569, 2, 240000, 0, 24, 344, '2019-05-07 03:38:41', '2019-05-07 03:38:41'),
(570, 1, 600000, 0, 23, 345, '2019-05-07 03:38:51', '2019-05-07 03:38:51'),
(571, 2, 340000, 0, 22, 346, '2019-05-07 03:39:01', '2019-05-07 03:39:01'),
(572, 2, 265000, 0, 35, 347, '2019-05-07 03:39:25', '2019-05-07 03:39:25'),
(573, 2, 512000, 0, 33, 348, '2019-05-07 03:39:33', '2019-05-07 03:39:33'),
(574, 2, 280000, 0, 37, 349, '2019-05-07 03:39:41', '2019-05-07 03:39:41'),
(575, 1, 320000, 0, 38, 350, '2019-05-07 03:41:57', '2019-05-07 03:41:57'),
(576, 2, 265000, 0, 35, 351, '2019-05-07 03:50:25', '2019-05-07 03:50:25'),
(577, 10, 56000, 0, 34, 352, '2019-05-07 03:50:38', '2019-05-07 03:50:38'),
(578, 2, 320000, 0, 38, 353, '2019-05-07 03:51:19', '2019-05-07 03:51:19'),
(579, 2, 280000, 0, 37, 354, '2019-05-07 03:51:27', '2019-05-07 03:51:27'),
(580, 2, 125000, 0, 36, 355, '2019-05-07 03:51:35', '2019-05-07 03:51:35'),
(581, 2, 125000, 0, 36, 356, '2019-05-07 03:52:55', '2019-05-07 03:52:55'),
(582, 2, 265000, 0, 35, 357, '2019-05-07 03:53:03', '2019-05-07 03:53:03'),
(583, 1, 512000, 0, 33, 358, '2019-05-07 03:53:10', '2019-05-07 03:53:10'),
(584, 10, 21000, 0, 25, 359, '2019-05-07 03:53:20', '2019-05-07 03:53:20'),
(585, 20, 29000, 0, 27, 360, '2019-05-07 03:53:29', '2019-05-07 03:53:29'),
(586, 5, 34000, 0, 26, 361, '2019-05-07 03:54:43', '2019-05-07 03:54:43'),
(587, 10, 25000, 0, 19, 362, '2019-05-07 03:54:51', '2019-05-07 03:54:51'),
(588, 5, 48000, 0, 21, 363, '2019-05-07 03:55:59', '2019-05-07 03:55:59'),
(589, 2, 40000, 0, 28, 364, '2019-05-07 03:56:08', '2019-05-07 03:56:08'),
(590, 1, 505000, 0, 30, 365, '2019-05-07 03:56:38', '2019-05-07 03:56:38'),
(591, 1, 585000, 1, 29, 366, '2019-05-07 04:11:54', '2019-05-07 04:11:54'),
(592, 1, 600000, 0, 23, 367, '2019-05-07 04:12:02', '2019-05-07 04:12:02'),
(593, 2, 340000, 0, 22, 368, '2019-05-07 04:13:44', '2019-05-07 04:13:44'),
(594, 7, 48000, 0, 21, 369, '2019-05-07 04:13:54', '2019-05-07 04:13:54'),
(595, 10, 34000, 0, 26, 370, '2019-05-07 04:14:05', '2019-05-07 04:14:05'),
(596, 3, 160000, 0, 20, 371, '2019-05-07 04:15:56', '2019-05-07 04:15:56'),
(597, 1, 512000, 0, 10, 372, '2019-05-07 04:16:07', '2019-05-07 04:16:07'),
(598, 2, 280000, 0, 37, 373, '2019-05-09 14:21:18', '2019-05-09 14:21:18'),
(599, 2, 25000, 0, 19, 373, '2019-05-09 14:21:18', '2019-05-09 14:21:18'),
(600, 1, 29000, 0, 27, 374, '2019-05-09 15:19:53', '2019-05-09 15:19:53'),
(601, 1, 66000, 0, 18, 374, '2019-05-09 15:19:53', '2019-05-09 15:19:53'),
(602, 1, 512000, 0, 33, 375, '2019-05-09 15:25:02', '2019-05-09 15:25:02'),
(603, 1, 56000, 0, 34, 375, '2019-05-09 15:25:02', '2019-05-09 15:25:02'),
(604, 2, 125000, 0, 36, 375, '2019-05-09 15:25:02', '2019-05-09 15:25:02'),
(605, 2, 34000, 0, 26, 376, '2019-05-10 04:59:44', '2019-05-10 04:59:44'),
(606, 1, 29000, 0, 27, 376, '2019-05-10 04:59:44', '2019-05-10 04:59:44'),
(607, 1, 21000, 0, 25, 376, '2019-05-10 04:59:44', '2019-05-10 04:59:44'),
(608, 1, 21000, 0, 25, 377, '2019-05-10 04:59:59', '2019-05-10 04:59:59'),
(609, 1, 29000, 0, 27, 377, '2019-05-10 04:59:59', '2019-05-10 04:59:59'),
(610, 1, 320000, 0, 38, 378, '2019-05-10 05:00:10', '2019-05-10 05:00:10'),
(611, 1, 280000, 0, 37, 378, '2019-05-10 05:00:10', '2019-05-10 05:00:10'),
(612, 1, 125000, 0, 36, 379, '2019-05-10 05:00:20', '2019-05-10 05:00:20'),
(613, 1, 265000, 0, 35, 379, '2019-05-10 05:00:20', '2019-05-10 05:00:20'),
(614, 5, 21000, 0, 25, 380, '2019-05-10 05:01:06', '2019-05-10 05:01:06'),
(615, 4, 29000, 0, 27, 380, '2019-05-10 05:01:07', '2019-05-10 05:01:07'),
(616, 1, 240000, 0, 24, 381, '2019-05-10 05:01:29', '2019-05-10 05:01:29'),
(617, 1, 340000, 0, 22, 381, '2019-05-10 05:01:29', '2019-05-10 05:01:29'),
(618, 1, 66000, 0, 18, 382, '2019-05-10 05:02:48', '2019-05-10 05:02:48'),
(619, 2, 40000, 0, 28, 382, '2019-05-10 05:02:48', '2019-05-10 05:02:48'),
(620, 1, 280000, 0, 37, 383, '2019-05-10 08:15:58', '2019-05-10 08:15:58'),
(621, 1, 440000, 1, 31, 384, '2019-05-10 08:17:00', '2019-05-10 08:17:00'),
(622, 1, 505000, 0, 30, 385, '2019-05-10 08:17:14', '2019-05-10 08:17:14'),
(623, 1, 512000, 0, 33, 386, '2019-05-10 08:18:09', '2019-05-10 08:18:09'),
(624, 1, 56000, 0, 34, 386, '2019-05-10 08:18:09', '2019-05-10 08:18:09'),
(625, 1, 265000, 0, 35, 387, '2019-05-10 08:18:26', '2019-05-10 08:18:26'),
(626, 1, 125000, 0, 36, 387, '2019-05-10 08:18:26', '2019-05-10 08:18:26'),
(627, 1, 585000, 1, 29, 388, '2019-05-10 08:18:39', '2019-05-10 08:18:39'),
(628, 1, 29000, 0, 27, 389, '2019-05-10 08:19:02', '2019-05-10 08:19:02'),
(629, 1, 34000, 0, 26, 389, '2019-05-10 08:19:02', '2019-05-10 08:19:02'),
(630, 1, 21000, 0, 25, 389, '2019-05-10 08:19:02', '2019-05-10 08:19:02'),
(631, 1, 240000, 0, 24, 389, '2019-05-10 08:19:02', '2019-05-10 08:19:02'),
(632, 1, 600000, 0, 23, 390, '2019-05-10 08:19:10', '2019-05-10 08:19:10'),
(633, 1, 340000, 0, 22, 391, '2019-05-10 08:19:22', '2019-05-10 08:19:22'),
(634, 1, 48000, 0, 21, 391, '2019-05-10 08:19:22', '2019-05-10 08:19:22'),
(635, 1, 160000, 0, 20, 392, '2019-05-10 08:46:01', '2019-05-10 08:46:01'),
(636, 1, 25000, 0, 19, 392, '2019-05-10 08:46:01', '2019-05-10 08:46:01'),
(637, 3, 262000, 2, 14, 393, '2019-05-10 10:09:41', '2019-05-10 12:51:47'),
(638, 1, 235000, 0, 11, 393, '2019-05-10 10:09:41', '2019-05-10 13:01:05'),
(639, 1, 585000, 1, 29, 394, '2019-05-10 13:20:37', '2019-05-10 13:20:37'),
(640, 2, 290000, 3, 1, 395, '2019-05-10 13:20:52', '2019-05-10 13:20:52'),
(641, 2, 21000, 0, 25, 396, '2019-05-10 13:21:30', '2019-05-10 13:21:30'),
(642, 2, 29000, 0, 27, 396, '2019-05-10 13:21:30', '2019-05-10 13:21:30'),
(643, 2, 34000, 0, 26, 397, '2019-05-10 13:21:45', '2019-05-10 13:21:45'),
(644, 1, 40000, 0, 28, 397, '2019-05-10 13:21:45', '2019-05-10 13:21:45'),
(645, 2, 320000, 0, 38, 398, '2019-05-10 13:22:06', '2019-05-10 13:22:06'),
(646, 2, 280000, 0, 37, 399, '2019-05-10 13:22:16', '2019-05-10 13:22:16'),
(647, 1, 56000, 0, 34, 400, '2019-05-10 13:22:39', '2019-05-10 13:22:39'),
(648, 1, 512000, 0, 33, 400, '2019-05-10 13:22:39', '2019-05-10 13:22:39'),
(649, 1, 29000, 0, 27, 401, '2019-05-10 13:23:54', '2019-05-10 13:23:54'),
(650, 1, 512000, 0, 33, 401, '2019-05-10 13:23:54', '2019-05-10 13:23:54'),
(651, 1, 505000, 0, 30, 402, '2019-05-10 13:24:15', '2019-05-10 13:24:15'),
(652, 1, 440000, 1, 31, 403, '2019-05-10 13:24:34', '2019-05-10 13:24:34'),
(653, 1, 60000, 0, 32, 404, '2019-05-10 13:24:47', '2019-05-10 13:24:47'),
(654, 1, 56000, 0, 34, 404, '2019-05-10 13:24:47', '2019-05-10 13:24:47'),
(655, 1, 495000, 4, 9, 405, '2019-05-10 13:25:32', '2019-05-10 13:25:32'),
(656, 1, 240000, 0, 24, 405, '2019-05-10 13:25:32', '2019-05-10 13:25:32'),
(657, 1, 240000, 0, 24, 406, '2019-05-10 13:25:43', '2019-05-10 13:25:43'),
(658, 1, 29000, 0, 27, 406, '2019-05-10 13:25:43', '2019-05-10 13:25:43'),
(659, 1, 505000, 0, 30, 407, '2019-05-10 13:26:06', '2019-05-10 13:26:06'),
(660, 1, 585000, 1, 29, 408, '2019-05-10 13:26:53', '2019-05-10 13:26:53'),
(661, 1, 48000, 0, 21, 409, '2019-05-10 13:27:43', '2019-05-10 13:27:43'),
(662, 1, 340000, 0, 22, 409, '2019-05-10 13:27:43', '2019-05-10 13:27:43'),
(663, 1, 29000, 0, 27, 410, '2019-05-10 13:27:55', '2019-05-10 13:27:55'),
(664, 1, 34000, 0, 26, 410, '2019-05-10 13:27:55', '2019-05-10 13:27:55'),
(665, 1, 160000, 0, 20, 411, '2019-05-10 13:28:28', '2019-05-10 13:28:28'),
(666, 1, 25000, 0, 19, 411, '2019-05-10 13:28:28', '2019-05-10 13:28:28'),
(667, 1, 190000, 0, 17, 412, '2019-05-10 13:28:46', '2019-05-10 13:28:46'),
(668, 1, 262000, 2, 14, 412, '2019-05-10 13:28:46', '2019-05-10 13:28:46'),
(669, 1, 123000, 0, 13, 413, '2019-05-10 13:29:07', '2019-05-10 13:29:07'),
(670, 1, 290000, 3, 1, 413, '2019-05-10 13:29:07', '2019-05-10 13:29:07'),
(671, 1, 235000, 0, 11, 414, '2019-05-10 13:29:20', '2019-05-10 13:29:20'),
(672, 1, 290000, 3, 1, 414, '2019-05-10 13:29:20', '2019-05-10 13:29:20'),
(673, 1, 512000, 0, 10, 415, '2019-05-10 13:29:50', '2019-05-10 13:29:50'),
(674, 1, 235000, 0, 11, 415, '2019-05-10 13:29:50', '2019-05-10 13:29:50'),
(675, 1, 495000, 4, 9, 416, '2019-05-10 13:30:03', '2019-05-10 13:30:03'),
(676, 1, 550000, 1, 8, 417, '2019-05-10 13:30:30', '2019-05-10 13:30:30'),
(677, 1, 630000, 1, 7, 418, '2019-05-10 13:30:42', '2019-05-10 13:30:42'),
(678, 1, 378000, 3, 6, 419, '2019-05-10 13:31:12', '2019-05-10 13:31:12'),
(679, 1, 320000, 0, 5, 419, '2019-05-10 13:31:12', '2019-05-10 13:31:12'),
(680, 1, 29000, 0, 27, 420, '2019-05-11 08:07:23', '2019-05-11 08:07:23'),
(681, 1, 21000, 0, 25, 420, '2019-05-11 08:07:23', '2019-05-11 08:07:23'),
(682, 3, 34000, 0, 26, 421, '2019-05-11 08:07:59', '2019-05-11 08:07:59'),
(683, 1, 280000, 0, 37, 422, '2019-05-11 08:38:37', '2019-05-11 08:38:37'),
(684, 1, 29000, 0, 27, 423, '2019-05-12 02:20:04', '2019-05-12 02:20:04'),
(685, 1, 34000, 0, 26, 423, '2019-05-12 02:20:04', '2019-05-12 02:20:04'),
(686, 1, 21000, 0, 25, 424, '2019-05-12 02:20:34', '2019-05-12 02:20:34'),
(687, 1, 40000, 0, 28, 424, '2019-05-12 02:20:34', '2019-05-12 02:20:34'),
(688, 1, 125000, 0, 36, 425, '2019-05-12 02:22:09', '2019-05-12 02:22:09'),
(689, 1, 585000, 1, 29, 426, '2019-05-12 02:35:01', '2019-05-12 02:35:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catagory_id` int(10) UNSIGNED NOT NULL,
  `distribution_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `qty_remain` int(11) UNSIGNED DEFAULT 100,
  `count_buys` int(10) UNSIGNED DEFAULT 0,
  `count_views` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `discount`, `images`, `thumbnail`, `hot`, `warranty`, `brand`, `description`, `intro`, `catagory_id`, `distribution_id`, `status`, `qty_remain`, `count_buys`, `count_views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sữa Nan Nga số 1 (800g)', 'sua-nan-nga-so-1-800g', 290000, 3, NULL, NULL, NULL, NULL, 'Nan', '<p>Vi khuẩn biphidum BL tăng cường khả năng miễn dịch cho trẻ nhỏ DHA ch&iacute;nh l&agrave; (omega 3) v&agrave; ARA (omega 6) ph&aacute;t triển n&atilde;o bộ, thị gi&aacute;c Chất đạm OPTIPRO ph&aacute;t triển chiều cao tối đa</p>', '<p>Sữa bột Nan Nga số 1 800g để b&eacute; ph&aacute;t triển to&agrave;n diện Sữa bột Nan Nga số 1 800g hộp lớn l&agrave; sữa bột cho b&eacute; y&ecirc;u được chế biến theo c&ocirc;ng thức d&agrave;nh cho trẻ sơ sinh để đảm bảo tăng trưởng l&agrave;nh mạnh cho b&eacute; từ khi mới sinh. Trong th&agrave;nh phần c&oacute; chứa Bifidus BL l&agrave; 1 loại probiotic tự nhi&ecirc;n được t&igrave;m thấy trong sữa mẹ gi&uacute;p hỗ trợ một hệ thực vật đường ruột khỏe mạnh v&agrave; c&acirc;n bằng hệ miễn dịch. C&aacute;ch pha: 30ml nước/ 1 th&igrave;a bột (th&igrave;a c&oacute; sẵn trong hộp). Sản phẩm đ&oacute;ng hộp 800gr D&agrave;nh cho b&eacute; 0-6 th&aacute;ng tuổi</p>', 3, 7, '1', 80, 25, 32, '2019-02-11 23:29:18', '2019-05-10 13:29:20', NULL),
(2, 'Sữa Nan Supreme số 2 800g Thụy Sĩ', 'sua-nan-supreme-so-2-800g-thuy-si', 292000, 0, NULL, NULL, NULL, NULL, 'Nan', '<p>Bổ sung 31 dưỡng chất gi&uacute;p trẻ ph&aacute;t triển to&agrave;n diện Chứa HMO tăng cường sức đề kh&aacute;ng của trẻ Chứa DHA v&agrave; ARA ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực 800g d&agrave;nh cho b&eacute; từ 6-24 th&aacute;ng tuổi</p>', '<p>Sữa Nan Supreme số 2 800g Thụy Sĩ ph&ograve;ng ngừa dị ứng cho trẻ Sữa Nan Supreme số 2 800g Thụy Sĩ bổ sung 2FL HM-O gi&uacute;p tăng cường hệ miễn dịch gi&uacute;p b&eacute; ph&aacute;t triển khỏe mạnh Đ&acirc;y l&agrave; d&ograve;ng sữa c&ocirc;ng thức được chứng nhận an to&agrave;n cho trẻ bởi EFSA (Ủy ban An To&agrave;n Thực Phẩm Ch&acirc;u &Acirc;u) v&agrave; FDA (Cục Quản l&yacute; Thực phẩm v&agrave; Dược Phẩm Hoa Kỳ) Đặc biệt trong sữa c&oacute; bổ sung th&agrave;nh phần HMO (Oligosaccharides chỉ t&igrave;m thấy trong sữa mẹ) gi&uacute;p tăng cường sức đề kh&aacute;ng cho b&eacute; y&ecirc;u Sữa Nan Supreme số 2 800g Thụy Sĩ c&oacute; 100% đạm whey thủy ph&acirc;n một phần ph&ograve;ng ngừa nguy cơ dị ứng cho trẻ Sản phẩm được nhập khẩu ch&iacute;nh h&atilde;ng từ Đức</p>', 3, 7, '1', 92, 16, 20, '2019-02-11 23:20:19', '2019-05-06 09:08:31', NULL),
(3, 'Sữa Nan Supreme số 1 400g Thụy Sĩ', 'sua-nan-supreme-so-1-400g-thuy-si', 332000, 5, NULL, NULL, NULL, NULL, 'Nan', '<p>Bổ sung 31 dưỡng chất gi&uacute;p trẻ ph&aacute;t triển to&agrave;n diện Chứa HMO tăng cường sức đề kh&aacute;ng của trẻ Chứa DHA v&agrave; ARA ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực 800g d&agrave;nh cho b&eacute; từ 6-24 th&aacute;ng tuổi</p>', '<p>Sữa Nan Supreme số 1 400g Thụy Sĩ ph&ograve;ng ngừa dị ứng cho trẻ Sữa Nan Supreme số 1 400g Thụy Sĩ bổ sung 2FL HM-O gi&uacute;p tăng cường hệ miễn dịch gi&uacute;p b&eacute; ph&aacute;t triển khỏe mạnh Sản phẩm l&agrave; d&ograve;ng sữa c&ocirc;ng thức được chứng nhận an to&agrave;n cho trẻ bởi FDA (Cục Quản l&yacute; Thực phẩm v&agrave; Dược Phẩm Hoa Kỳ) v&agrave; EFSA (Ủy ban An To&agrave;n Thực Phẩm Ch&acirc;u &Acirc;u) Sữa bổ sung HMO (Oligosaccharides trong sữa mẹ) l&agrave; th&agrave;nh phần đặc biệt chỉ được t&igrave;m thấy trong sữa mẹ gi&uacute;p tăng cường sức đề kh&aacute;ng cho b&eacute; y&ecirc;u Sữa Nan Supreme số 1 400g Thụy Sĩ c&oacute; 100% đạm whey thủy ph&acirc;n một phần ph&ograve;ng ngừa nguy cơ dị ứng cho trẻ Sản phẩm được nhập khẩu ho&agrave;n to&agrave;n từ Đức</p>', 3, 7, '1', 85, 25, 34, '2019-02-11 23:20:20', '2019-05-12 02:53:27', NULL),
(4, 'Sữa Abbott Grow Gold 6+ hương vani 900g', 'sua-abbott-grow-gold-6-huong-vani-900g', 380000, 0, NULL, NULL, NULL, NULL, 'Abbott', '<p>Hệ dưỡng chất ti&ecirc;n tiến Growth Power hỗ trợ ti&ecirc;u h&oacute;a, ph&aacute;t triển vượt trội Ph&aacute;t triển n&atilde;o bộ, tăng cường tr&iacute; nhớ Gi&uacute;p b&eacute; lu&ocirc;n khỏe mạnh, ph&aacute;t triển chiều cao 900g d&agrave;nh cho b&eacute; từ 5 tuổi trở l&ecirc;n Thương hiệu Abbott Hoa Kỳ</p>', '<p>Sữa Abbott Grow Gold 6+ hương vani 900g Từ 6 tuổi trở l&ecirc;n, b&eacute; cần một hệ dưỡng chất mới để vừa đ&aacute;p ứng đủ nhu cầu dinh dưỡng h&agrave;ng ng&agrave;y cho hoạt động thể chất m&agrave; c&ograve;n cần phải k&iacute;ch th&iacute;ch sự ph&aacute;t triển của n&atilde;o bộ, khả năng s&aacute;ng tạo của trẻ nữa. Sữa bột c&ocirc;ng thức Abbott Grow Gold 6+ với hệ dưỡng chất ti&ecirc;n tiến Growth Power chứa h&oacute;a 30 dưỡng chất gồm cả DHA, Cholin, v&agrave; h&agrave;m lượng Canxi tối ưu, đ&aacute;p ứng đầy đủ nhu cầu dinh dưỡng, hỗ trợ sự tăng trưởng v&agrave; ph&aacute;t triển vượt trội của trẻ trong suốt giai đoạn đến trường.</p>', 9, 2, '1', 84, 23, 28, '2019-02-11 23:20:21', '2019-05-07 02:40:36', NULL),
(5, 'Sữa Abbott Grow 4 hương Vani 900g', 'sua-abbott-grow-4-huong-vani-900g', 320000, 0, NULL, NULL, NULL, NULL, 'Abbott', '<p>H&agrave;m lượng canxi v&agrave; vitamin D cao hỗ trợ ph&aacute;t triển chiều cao tối ưu H&agrave;m lượng DHA, Taurin, Omega 9 gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c. Tăng cường sức đề kh&aacute;ng trẻ nhỏ D&agrave;nh cho b&eacute; tr&ecirc;n 2 tuổi Hương vani 900g - Hoa Kỳ</p>', '<p>Sữa bột cho b&eacute; Abbott Grow 4 hương Vani 900g d&agrave;nh cho c&aacute;c b&eacute; từ 2 tuổi trở l&ecirc;n Nguy&ecirc;n liệu Sữa Abbott grow 4 to&agrave;n phần bổ sung lecithin v&agrave; sữa t&aacute;ch kem (58,3%), mật bắp, sucrose, lactose, KHO&Aacute;NG CHẤT (canxi carbonat, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat), VITAMIN (acid ascorbic, cholin bitartrat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat, pyridoxin hydroclorid, canxi pantothenat, thiamin hydroclorid, vitamin K1, riboflavin, acid folic, d-biotin), hương vani, dầu c&aacute; (nguồn cung cấp DHA), taurin.</p>', 9, 2, '1', 80, 24, 31, '2019-02-11 23:20:22', '2019-05-11 09:56:59', NULL),
(6, 'Sữa Abbott Grow Gold 3+ hương Vani 900g', 'sua-abbott-grow-gold-3-huong-vani-900g', 378000, 3, NULL, NULL, NULL, NULL, 'Abbott', '<p>Hệ dưỡng chất ti&ecirc;n tiến G Power+ gi&agrave;u dưỡng chất v&agrave; protein Gi&agrave;u vitamin D, Canxi, phốt pho tốt cho xương, ph&aacute;t triển chiều cao DHA, Taurin, Cholin, kẽm, sắt, đồng, I ốt,...tố cho n&atilde;o bộ v&agrave; thị gi&aacute;c Trọng lượng 900g - Hoa Kỳ D&agrave;nh cho b&eacute; từ 3-6 tuổi</p>', '<p>Sữa bột cho b&eacute; Abbott Grow Gold 3+ hương Vani 900g Nguy&ecirc;n liệu Sữa t&aacute;ch kem v&agrave; sữa nguy&ecirc;n kem bổ sung lecithin (60,3%), lactose, sucrose, mật bắp, KHO&Aacute;NG CHẤT (tricanxi phosphat, sắt sulfat, kẽm sulfat, đồng sulfat, mangan sulfat, natri selenat), hỗn hợp inulin v&agrave; fructo-oligosaccharid, hương vani, VITAMIN (cholin bitartrat, natri ascorbat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat, canxi pantothenat, pyridoxin hydroclorid, thiamin hydroclorid, acid folic, vitamin K1, d-biotin, cyanocobalamin), dầu c&aacute; tinh chế (nguồn cung cấp DHA), taurin.</p>', 9, 2, '1', 82, 27, 30, '2019-02-11 23:20:23', '2019-05-10 13:31:12', NULL),
(7, 'Sữa Enfamil Premium Infant Formula (0-12 tháng)', 'sua-enfamil-premium-infant-formula-0-12-thang', 630000, 1, NULL, NULL, NULL, NULL, 'Enfa', '<p>Bổ sung DHA, sắt, choline tốt cho tr&iacute; n&atilde;o v&agrave; thị lực của trẻ Vitamin v&agrave; kho&aacute;ng chất gi&uacute;p b&eacute; ph&aacute;t triển to&agrave;n diện về thể chất v&agrave; tinh thần S&aacute;nh vừa đủ, thơm ngon, kh&ocirc;ng ngấy D&agrave;nh cho b&eacute; từ 0-12 th&aacute;ng tuổi Trọng lượng: 629g</p>', '<p>Sữa cho b&eacute; Enfamil Premium Infant Formula (0-12 th&aacute;ng) Sản phẩm kết hợp c&ocirc;ng thức độc quyền Neuro Complete c&ugrave;ng với c&aacute;c loại vitamin v&agrave; kho&aacute;ng chất của b&eacute; l&agrave; DHA, sắt, choline đem tốt cho n&atilde;o bộ v&agrave; thị lực của trẻ nhỏ Sữa bột cho b&eacute; Enfamil Premium Infant Formula (0-12 th&aacute;ng) l&agrave; nguy&ecirc;n liệu hết sức thần khiết mẹ kh&ocirc;ng lo b&eacute; bị dị ứng khi uống..</p>', 6, 5, '1', 85, 20, 28, '2019-02-11 23:20:24', '2019-05-10 13:30:42', NULL),
(8, 'Sữa Enfagrow Premium Toddler Next Step (1-3 tuổi)', 'sua-enfagrow-premium-toddler-next-step-1-3-tuoi', 550000, 1, NULL, NULL, NULL, NULL, 'Enfa', '<p>Bổ sung 22 kho&aacute;ng chất hỗ trợ tăng trưởng l&agrave;nh mạnh Sữa bổ sung Omega 3 DHA v&agrave; cắt tốt cho n&atilde;o bộ Tăng sức đề kh&aacute;ng, chống t&aacute;c nh&acirc;n oxy h&oacute;a nhờ vitamin C v&agrave; E Trọng lượng: 680g</p>', '<p>Sữa bột cho b&eacute; Enfagrow Premium Toddler Next Step (1-3 tuổi) Nh&igrave;n b&eacute; chập chững những bước đi đầu ti&ecirc;n cũng như bắt đầu bập bẹ gọi tiếng ba, m&aacute; l&agrave; niềm vui v&ocirc; bờ bến của những người l&agrave;m cha l&agrave;m mẹ. Giai đoạn n&agrave;y rơi v&agrave;o độ tuổi từ 1-3 v&agrave; cũng l&agrave; l&uacute;c b&eacute; cần bổ sung dinh dưỡng v&agrave; năng lượng cần thiết để ph&aacute;t triển chiều cao, c&acirc;n nặng tối đa bắt kịp đ&agrave; ph&aacute;t triển của c&aacute;c b&eacute; c&ugrave;ng trang lưa. Ch&iacute;nh v&igrave; thế, thương hiệu Mead Johnson đ&atilde; nghi&ecirc;n cứu th&agrave;nh c&ocirc;ng sản phẩm sữa đ&aacute;p ứng đủ năng lượng cho hoạt động v&agrave; ph&aacute;t triển h&agrave;ng ng&agrave;y đ&oacute; l&agrave; sữa bột cho b&eacute; Enfagrow Premium Toddler Next Step (1-3 year) 680g.</p>', 6, 5, '1', 82, 16, 33, '2019-02-11 23:20:25', '2019-05-10 13:30:30', NULL),
(9, 'Sữa Enfagrow A+ 360° Brain DHA số 4 (1.8kg)', 'sua-enfagrow-a-3600-brain-dha-so-4-18kg', 495000, 4, NULL, NULL, NULL, NULL, 'Enfa', '<p>D&agrave;nh cho b&eacute; từ 2 - 6 tuổi Tăng th&ecirc;m 40% h&agrave;m lượng DHA Bổ sung MFGM Pro gi&uacute;p b&eacute; ph&aacute;t triển tr&iacute; n&atilde;o tốt hơn cả về TƯ DUY v&agrave; CẢM X&Uacute;C Hỗ trợ hệ miễn dịch 3 chiều Dễ hấp thụ v&agrave; ti&ecirc;u h&oacute;a tốt.</p>', '<p>Sữa bột dinh dưỡng Enfagrow A+ 360&deg; Brain DHA số 4 (1.8kg) Độ tuổi sử dụng: C&aacute;c b&eacute; từ 2-6 tuổi.</p>', 6, 5, '1', 80, 32, 33, '2019-02-11 23:20:26', '2019-05-10 13:30:03', NULL),
(10, 'Sữa Enfagrow A+ 360° Brain DHA số 3 (900g)', 'sua-enfagrow-a-3600-brain-dha-so-3-900g', 512000, 0, NULL, NULL, NULL, NULL, 'Enfa', '<p>D&agrave;nh cho b&eacute; từ 1-3 tuổi Bổ sung MFGM Pro gi&uacute;p b&eacute; ph&aacute;t triển tr&iacute; n&atilde;o tốt hơn cả về TƯ DUY v&agrave; CẢM X&Uacute;C Hỗ trợ hệ miễn dịch 3 chiều Dễ hấp thụ v&agrave; ti&ecirc;u h&oacute;a tốt.</p>', '<p>Sữa Enfagrow A+ 360&deg; Brain DHA số 3 (900g) Th&agrave;nh phần: Bột bơ sữa (nguồn của MGFM), bột kem (dầu hạt cải, chất rắn glucose, dầu hướng dương, lactose, dầu dừa, dầu đậu n&agrave;nh, đạm bơ c&ocirc; đặc, mono v&agrave; diglycerides, kali citrat, đạm sữa c&ocirc; lập, natri ascorbat, kali phosphat, ascorbyl palmitat, vitamin E v&agrave; lecithin đậu n&agrave;nh), Siro mật bắp (thực vật), sữa bột kh&ocirc;ng b&eacute;o, sữa bột nguy&ecirc;n kem, đường sucrose (thực vật), galactooligosaccharide, polydextrose, c&aacute;c kho&aacute;ng chất (canxi carbonat, đồng sulphat, magie phốtphat, kẽm sulphat, sắt sulphat, mangan sulphat, kali i-ot v&agrave; kali citrat), hương vani tổng hợp, c&aacute;c vitamin cần thiết (vitamin A palmitat, vitamin B1, B6, vitamin B12, vitamin C, vitamin D, vitamin K, vitamin E, biotin, canxi phanthothenat, choline bitartrate, acid folic, vitamin PP, vitamin K), dầu c&aacute; l&aacute; nguồn của Axit Docosahexaenoic (DHA), beta-glucan từ men, taurine v&agrave; c&aacute;c chất chống oxy h&oacute;a (Axit ascobic).</p>', 6, 5, '1', 83, 23, 27, '2019-02-11 23:20:27', '2019-05-10 13:29:50', NULL),
(11, 'Sữa Enfamil A+ Lactofree Care hộp 400g', 'sua-enfamil-a-lactofree-care-hop-400g', 235000, 0, '', '', '', '', 'Enfa', '<p>Kh&ocirc;ng chứa đường lactose Chứa đạm nguồn gốc sữa b&ograve; H&agrave;m lượng DHA khuyến nghị của c&aacute;c chuy&ecirc;n gia D&agrave;nh cho b&eacute; từ 0 - 12 th&aacute;ng tuổi.</p>', '<p>Sữa Enfamil A+ Lactofree Care hộp 400g gi&uacute;p b&eacute; ph&aacute;t triển thể chất v&agrave; sức khỏe to&agrave;n diện Được đặc chế cho trẻ bị ti&ecirc;u chảy do bất (kh&ocirc;ng) dung nạp lactose. Đ&acirc;y l&agrave; sản phẩm dinh dưỡng đặc biệt với đạm sữa b&ograve; v&agrave; kh&ocirc;ng chứa lactose. Được đặc chế hỗ trợ ph&aacute;t triển tr&iacute; tuệ v&agrave; thị lực ở trẻ nhỏ do chứa DHA &amp; ARA. H&agrave;m lượng của DHA trong sản phẩm gi&uacute;p đạt khuyến nghị của FAO/WHO cho trẻ 0-12 th&aacute;ng sinh đủ th&aacute;ng.</p>', 6, 5, '1', 80, 24, 31, '2019-02-11 23:20:28', '2019-05-10 13:29:50', NULL),
(13, 'Sữa tươi uống', 'sua-tuoi-uong', 123000, 0, NULL, NULL, NULL, NULL, 'Meiji', '<p>&ocirc; tả ngắn</p>', '<p>ới thiệu sản phẩm</p>', 1, 3, '1', 88, 14, 22, '2019-02-13 00:04:29', '2019-05-10 13:29:07', NULL),
(14, 'Sữa hạt óc chó', 'sua-hat-oc-cho', 262000, 2, NULL, NULL, NULL, NULL, 'Meiji', '<p>M&ocirc; tả ngắn&nbsp;Sữa hạt &oacute;c ch&oacute; 2</p>', '<p>Giới thiệu sản phẩm&nbsp;Sữa hạt &oacute;c ch&oacute; 2</p>', 1, 6, '1', 90, 20, 28, '2019-02-13 07:57:30', '2019-05-11 09:50:02', NULL),
(16, 'Sữa tươi TH 2019', 'sua-tuoi-th-2019', 150000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>Sữa tươi TH 2019</p>', '<p>Sữa tươi TH 2019</p>', 16, 1, '0', 100, 13, 14, '2019-02-22 08:57:44', '2019-04-24 02:48:39', NULL),
(17, 'Sữa Tươi True Global', 'sua-tuoi-true-global', 190000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>Sữa Tươi True Global</p>', '<p>Sữa Tươi True Global</p>', 16, 1, '1', 85, 21, 36, '2019-02-22 08:58:41', '2019-05-12 02:38:41', NULL),
(18, 'Lốc 6 Hộp Sữa Nguyên Kem Devondale FullCream (200ml / Hộp)', 'loc-6-hop-sua-nguyen-kem-devondale-fullcream-200ml-hop', 66000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>100% sữa tươi nguy&ecirc;n chất của &Uacute;c</p>\r\n\r\n<p>Kh&ocirc;ng chứa chất bảo quản an to&agrave;n cho sức khỏe</p>\r\n\r\n<p>Bổ sung dinh dưỡng, vitamin, canxi, chất b&eacute;o...</p>\r\n\r\n<p>Ph&ugrave; hợp cho mọi lứa tuổi, đặc biệt l&agrave; trẻ em, người gi&agrave;</p>', '<ul>\r\n	<li><strong>Lốc 6 Hộp Sữa Nguy&ecirc;n Kem Devondale FullCream (200ml / Hộp)</strong>&nbsp;l&agrave; thực phẩm&nbsp;rất gi&agrave;u dinh dưỡng, gi&agrave;u vitamin v&agrave; kho&aacute;ng chất từ thi&ecirc;n nhi&ecirc;n, &iacute;t b&eacute;o, rất tốt cho cơ thể.&nbsp;Sữa nguy&ecirc;n kem với tất cả chất dinh dưỡng tự nhi&ecirc;n mang hương vị thơm ngon, b&eacute;o ngậy sẽ khiến cả gia đ&igrave;nh y&ecirc;u th&iacute;ch.</li>\r\n	<li>Sữa tươi nguy&ecirc;n chất 100% được xử l&yacute; bằng c&ocirc;ng nghệ&nbsp;tiệt tr&ugrave;ng&nbsp;v&agrave; đồng ho&aacute;.</li>\r\n	<li>Sản phẩm được nhập khẩu trực tiếp với chất lượng &Uacute;c.</li>\r\n	<li>Nguồn cung cấp Canxi, Protein v&agrave; Vitamin A.</li>\r\n	<li>Kh&ocirc;ng c&oacute; chất bảo quản, kh&ocirc;ng chất phụ gia an to&agrave;n cho sức khỏe.</li>\r\n</ul>', 16, 12, '1', 81, 45, 49, '2019-03-01 08:46:59', '2019-05-12 02:38:32', NULL),
(19, 'Kem Sữa Đặc Có Đường Carnation Tuýp (180g)', 'kem-sua-dac-co-duong-carnation-tuyp-180g', 25000, 0, NULL, NULL, NULL, NULL, 'Nestlé', '<p>Dạng Tu&yacute;p độc đ&aacute;o</p>\r\n\r\n<p>Dễ d&agrave;ng sử dụng, bảo quản</p>\r\n\r\n<p>Ph&ugrave; hợp sử dụng cho c&aacute;c hoạt động d&atilde; ngoại, picnic</p>\r\n\r\n<p>Bổ sung Vitamin A, B1, D3</p>', '<ul>\r\n	<li><strong>Kem Sữa Đặc C&oacute; Đường Carnation Tu&yacute;p (180g)</strong>&nbsp;ph&ugrave; hợp cho người lớn v&agrave; trẻ em từ 1 tuổi trở l&ecirc;n với 1 - 2 khẩu phần (30g) Carnation mỗi ng&agrave;y.</li>\r\n	<li>Th&agrave;nh phần: Đường (47%), nước, sữa bột t&aacute;ch kem, dầu cọ, bột whey, c&aacute;c vitamin (A, B1, D3), chất ổn định (407a, 341(iii)).</li>\r\n	<li>Sản phẩm c&oacute; chứa sữa.</li>\r\n	<li>Khối lượng tịnh: 180 g</li>\r\n	<li>Hướng dẫn sử dụng: Creamer đặc c&oacute; đường Carnation được c&oacute; thể sử dụng trực tiếp hoặc d&ugrave;ng để pha chế c&aacute;c m&oacute;n ăn, đồ uống.</li>\r\n	<li>Hướng dẫn bảo quản: bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Sau khi mở tu&yacute;p n&ecirc;n đậy k&iacute;n nắp, bảo quản trong tủ lạnh.</li>\r\n	<li>NSX: 9 th&aacute;ng trước hạn sử dụng.</li>\r\n	<li>HSD: Xem &ldquo;BB&rdquo; tr&ecirc;n bao b&igrave; sản phẩm.</li>\r\n	<li>Ch&uacute; &yacute;: Kh&ocirc;ng sử dụng sản phẩm cho trẻ sơ sinh v&agrave; kh&ocirc;ng d&ugrave;ng để thay thế sữa mẹ.</li>\r\n	<li>Kh&ocirc;ng sử dụng cho người dị ứng với c&aacute;c th&agrave;nh phần của sản phẩm.</li>\r\n	<li>Sản xuất bởi: F&amp;N Dairies (Thailand) Limited. 668 Moo 4 Rojana Industrial park Zone 2, U-thai, Phra Nakhon Si Ayutthaya 13210, Th&aacute;i Lan.</li>\r\n</ul>', 19, 1, '1', 70, 22, 75, '2019-03-05 09:29:34', '2019-05-11 09:46:11', NULL),
(20, 'Combo 15 hộp Sữa đặc MILKO - Sữa nhập khẩu MALAYSIA', 'combo-15-hop-sua-dac-milko-sua-nhap-khau-malaysia', 160000, 0, NULL, NULL, NULL, NULL, 'Milko', '<p>Milko l&agrave; thương hiệu sữa đặc nổi tiếng ở Malaysia</p>\r\n\r\n<p>Sản phẩm c&oacute; sự kh&aacute;c biệt so với c&aacute;c sản d&ograve;ng sữa đặc kh&aacute;c tr&ecirc;n thị trường bởi vị ngọt thanh, kh&ocirc;ng tạo cảm gi&aacute;c ng&aacute;n, qu&aacute; ngọt cho khi sử dụng; giữ được hương thơm tự nhi&ecirc;n của sữa.</p>\r\n\r\n<p>Sản phẩm th&iacute;ch hợp để ăn k&egrave;m với b&aacute;nh m&igrave;, l&agrave;m sữa chua, l&agrave;m c&aacute;c loại b&aacute;nh, pha lo&atilde;ng để uống...</p>', '<p>Sữa đặc MILKO</p>\r\n\r\n<p>- Sản phẩm được sản xuất bởi c&ocirc;ng ty: Promac Enterpries SND BHD, Kuala Lumper, Malaysia</p>\r\n\r\n<p>- Milko l&agrave; thương hiệu sữa đặc nổi tiếng ở Malaysia, sản phẩm c&oacute; sự kh&aacute;c biệt so với c&aacute;c sản d&ograve;ng sữa đặc kh&aacute;c tr&ecirc;n thị trường bởi vị ngọt thanh, kh&ocirc;ng tạo cảm gi&aacute;c ng&aacute;n, qu&aacute; ngọt cho khi sử dụng; giữ được hương thơm tự nhi&ecirc;n của sữa.</p>\r\n\r\n<p>- Sản phẩm được c&ocirc;ng ty CP Sản xuất, Thương mại &amp; Dịch vụ Ph&uacute;c Thịnh nhập khẩu trực tiếp từ Malaysia v&agrave; ph&acirc;n phối tại thị trường Việt Nam.</p>\r\n\r\n<p>- Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>+ Khối lượng: 390ml/hộp</p>\r\n\r\n<p>+ Hạn sử dụng: 11/2019</p>\r\n\r\n<p>+ Bao b&igrave;: Lon thiếc (sản phẩm đạt quy chuẩn kỹ thuật quốc gia)</p>\r\n\r\n<p>+ Th&agrave;nh phần: Sữa kh&ocirc;ng b&eacute;o nguy&ecirc;n chất (10%), Đường, nước, chất b&eacute;o thực vật, chất chống đ&ocirc;ng v&oacute;n, mononatri orthophosphat, Vitamin A, D3, B1</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/93/84/88/e58a239abc7a3272e6af122efc897c42.jpg\" style=\"height:333px; width:250px\" /></p>', 19, 1, '1', 79, 22, 21, '2019-03-05 09:31:11', '2019-05-10 13:28:28', NULL),
(21, 'Cà Phê Sữa Đặc Archcafé (12 gói x 18g)', 'ca-phe-sua-dac-archcafe-12-goi-x-18g', 48000, 0, NULL, NULL, NULL, NULL, 'Archcafé', '<ul>\r\n	<li>Kh&ocirc;ng chỉ l&agrave; thức uống m&agrave; c&ograve;n l&agrave; nghệ thuật pha chế</li>\r\n	<li>Vị ngọt-đắng dịu d&agrave;ng</li>\r\n	<li>Thưởng thức tinh hoa của nghệ thuật ẩm thực</li>\r\n	<li>Sản phẩm kh&ocirc;ng chứa hương, m&agrave;u nh&acirc;n tạo</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&agrave; Ph&ecirc; Sữa Đặc Archcaf&eacute; (12 g&oacute;i x 18g)</strong>&nbsp;kh&ocirc;ng chỉ l&agrave; thức uống m&agrave; c&ograve;n l&agrave; nghệ thuật pha chế từ sữa đặc sấy dạng bột nhập khẩu từ Đức, h&ograve;a quyện c&ugrave;ng c&agrave; ph&ecirc; Việt Nam cho vị ngọt-đắng dịu d&agrave;ng m&agrave; bạn chỉ c&oacute; thể t&igrave;m thấy ở Archcaf&eacute;.</li>\r\n	<li>Thưởng thức Archcaf&eacute; c&agrave; ph&ecirc; sữa đặc thưởng thức tinh hoa của nghệ thuật ẩm thực đường phố Việt Nam.&nbsp;Archcaf&eacute; - Authentic Vietnamese Coffee.<br />\r\n	Sản phẩm kh&ocirc;ng chứa hương, m&agrave;u nh&acirc;n tạo.&nbsp;</li>\r\n	<li>C&agrave; ph&ecirc; sữa Việt Nam từ l&acirc;u đ&atilde; được người Việt v&agrave; nước ngo&agrave;i ưa chuộng v&igrave; vị ngon tuyệt của sữa đặc b&eacute;o ngọt v&agrave; c&agrave; ph&ecirc; đắng nhẹ.</li>\r\n</ul>', 19, 12, '1', 70, 17, 52, '2019-03-05 09:32:22', '2019-05-11 09:40:45', NULL),
(22, 'Thùng 24 Hộp Sữa Óc Chó Golden Milk (190ml x 24 Hộp)', 'thung-24-hop-sua-oc-cho-golden-milk-190ml-x-24-hop', 340000, 0, NULL, NULL, NULL, NULL, 'Golden Milk', '<p>Ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; hệ thần kinh</p>\r\n\r\n<p>Hỗ trợ ph&aacute;t triển chiều cao tối đa</p>\r\n\r\n<p>Ngăn ngừa l&atilde;o h&oacute;a &ndash; Cho vẻ đẹp rạng ngời</p>\r\n\r\n<p>Cho hệ tim mạch lu&ocirc;n khỏe mạnh</p>', '<ul>\r\n	<li><strong>Th&ugrave;ng 24 Hộp Sữa &Oacute;c Ch&oacute; Golden Milk (190ml x 24 Hộp)</strong>&nbsp;l&agrave; sự kết hợp ho&agrave;n hảo của nhiều loại hạt dinh dưỡng như: hạt &oacute;c ch&oacute;, hạnh nh&acirc;n, đậu đen, đậu n&agrave;nh, đậu phộng v&agrave; hạt th&ocirc;ng theo c&ocirc;ng thức đặc biệt nhất.</li>\r\n	<li>Được sản xuất tại H&agrave;n Quốc, với c&ocirc;ng nghệ sản xuất hiện đại theo ti&ecirc;u chuẩn HACCP, Sữa &Oacute;c ch&oacute; Golden Milk giữ trọn được vị thơm ngon, đậm đ&agrave; của c&aacute;c loại hạt, l&agrave; thức uống dinh dưỡng tốt nhất cho cả gia đ&igrave;nh!</li>\r\n	<li>Với h&agrave;m lượng Omega-3 dồi d&agrave;o &ndash; hạt &oacute;c ch&oacute; được biết đến l&agrave; 1 si&ecirc;u thực phẩm, Sữa &Oacute;c ch&oacute; Golden milk kh&ocirc;ng chỉ gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o ở trẻ nhỏ m&agrave; c&ograve;n giảm căng thẳng, tăng tập trung v&agrave; hỗ trợ tr&iacute; nhớ ở người lớn tuổi.</li>\r\n	<li>Đặc biệt đối với phụ nữ đang mang thai, trong sữa &oacute;c ch&oacute; lượng omega cao gấp 5 lần so với lượng chất n&agrave;y trong cơ thể c&aacute; hồi. V&igrave; vậy Sữa &oacute;c ch&oacute; Golden milk c&oacute; t&aacute;c dụng rất tốt trong việc tăng cường khả năng ph&aacute;t triển tr&iacute; n&atilde;o.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk chứa h&agrave;m lượng canxi cao từ c&aacute;c loại hạt như hạt &oacute;c ch&oacute;, hạnh nh&acirc;n gi&uacute;p cơ thể x&acirc;y dựng v&agrave; duy tr&igrave; hệ xương-răng chắc khỏe. Đồng thời k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u, tạo cơ v&agrave; tế b&agrave;o th&acirc;n kinh hoạt động tốt hơn.</li>\r\n	<li>Chất chống oxy h&oacute;a &ndash; vitamin C, E, Beta caroten v&agrave; Axit alpha linoleic gi&uacute;p c&acirc;n bằng h&agrave;m lượng hormone trong cơ thể, sản sinh collagen tốt cho da v&agrave; t&oacute;c&hellip;Đặc biệt l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a của cơ thể cao gấp 15 lần vitamin E (theo Hiệp hội H&oacute;a học Mỹ).</li>\r\n	<li>Lượng dưỡng chất lớn trong Sữa &oacute;c ch&oacute; Golden milk như axit b&eacute;o, protein&hellip; c&oacute; khả năng tăng sản sinh nội tiết tố nữ estrogen gi&uacute;p v&ograve;ng 1 ph&aacute;t triển hơn.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk chứa Axit b&eacute;o Omega-3, gi&agrave;u chất xơ, Vitamin B, Magi&ecirc;, Vitamin E, đặc biệt chứa h&agrave;m lượng cao c&aacute;c axit b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a c&ugrave;ng với c&aacute;c ph&acirc;n tử hoạt t&iacute;nh sinh học gi&uacute;p hỗ trợ sức khỏe ổn định đường huyết v&agrave; ngăn ngừa c&aacute;c yếu tố của bệnh tim mạch.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk l&agrave; ngưồn cung cấp dồi d&agrave;o về vitamin E, Calcium, phosphor, Sắt v&agrave; Magnesium. N&oacute; c&ograve;n chứa Kẽm, Selenium, Đồng v&agrave; Niacin,&hellip;</li>\r\n	<li>Gi&uacute;p tăng cường hệ miễn dịch, hỗ trợ sức khỏe hệ thần kinh v&agrave; c&ograve;n củng cố hoạt động hệ xương v&agrave; răng.</li>\r\n</ul>\r\n\r\n<p><strong>Sữa hạt &oacute;c ch&oacute;, hạnh nh&acirc;n, đậu đen, đậu n&agrave;nh Golden milk ph&ugrave; hợp với mọi lứa tuổi v&agrave; đặc biệt tốt cho những đối tượng sau đ&acirc;y:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em (trong độ tuổi đi học)</li>\r\n	<li>Phụ nữ mang thai v&agrave; người gi&agrave;</li>\r\n	<li>Vận động vi&ecirc;n đang chơi thể thao, những người phải vận động nhiều</li>\r\n	<li>Người ăn chay, cơ thể thiếu hụt dinh dưỡng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 16, 12, '1', 89, 43, 28, '2019-03-05 09:33:59', '2019-05-12 02:38:47', NULL),
(23, 'Enfagrow Premium Toddler Next Step, 680g', 'enfagrow-premium-toddler-next-step-680g', 600000, 0, NULL, NULL, NULL, NULL, 'Mead Johnson', '<p><strong>CH&Uacute; &Yacute;:&nbsp;</strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ nhỏ. C&aacute;c yếu tố chống nhiễm khuẩn, đặc biệt l&agrave; kh&aacute;ng thể chỉ c&oacute; trong sữa mẹ c&oacute; t&aacute;c dụng gi&uacute;p trẻ ph&ograve;ng, chống bệnh ti&ecirc;u chảy, nhiễm khuẩn đường h&ocirc; hấp v&agrave; một số bệnh nhiễm khuẩn kh&aacute;c.Thực hiện đ&uacute;ng hướng dẫn vệ sinh, tiệt khuẩn. Việc sử dụng b&igrave;nh b&uacute; c&oacute; thể l&agrave;m cho trẻ bỏ b&uacute; mẹ v&agrave; c&oacute; nguy cơ bị ti&ecirc;u chảy</p>', '<h3>Thực phẩm bổ sung: Enfagrow Premium Toddler Next Step cho trẻ từ 1-3 tuổi&nbsp;</h3>\r\n\r\n<p><strong>Thực phẩm bổ sung Enfagrow Premium Todder Next Step cho trẻ từ 1-3 tuổi&nbsp;</strong>được nhập khẩu trực tiếp từ Mỹ. Sản phẩm kh&ocirc;ng chứa th&agrave;nh phần biến đổi Gen. Sản phẩm chứa bộ dưỡng chất Triple Health Guard (DHA cho tr&iacute; n&atilde;o, 22 dưỡng chất cho bữa ăn ho&agrave;n thiện, Prebiotics &amp; Vitamins cho hệ miễn dịch).&nbsp;</p>\r\n\r\n<p><img alt=\"_MG_7776 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/85bcc570cef013b07461e2f49c284e01.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Mead Johnson</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>H&agrave;ng nội địa ch&iacute;nh h&atilde;ng, sản xuất tại Mỹ. Nhập khẩu nguy&ecirc;n hộp 100% bởi MEAD JOHNSON NUTRITION VIỆT NAM</p>\r\n\r\n<p><img alt=\"_MG_7777 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/78459dd11b377c2202b66947ad0f91ad.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Khối lượng:</strong>&nbsp;680g/hộp</p>\r\n\r\n<p><strong>Th&agrave;nh phần :</strong></p>\r\n\r\n<p>- Sản phẩm c&oacute; chứa đạm v&agrave; đậu n&agrave;nh</p>\r\n\r\n<p>- Sữa bột t&aacute;ch b&eacute;o, siro mật bắp, dầu thực vật (dầu cọ Olein, dầu dừa, dầu đậu n&agrave;nh v&agrave; dầu hoa hướng dương gi&agrave;u oleic), galactooligosaccharides, polydextrose, canxi carbonat, magie phosphate, muối, sắt sunfate, kẽm sunfate, mangan sunfate, đồng (II) sunfate, dầu c&aacute; ngừ, niacin, axit ascorbic, canxi pantothenate, vitamin B6, vitamin B1, vitamin D3, vitamin B2, axit folic, biotin, chất chống oxi h&oacute;a (ascorbyl palmitate, vitamin E, vitamin A, hương tự nhi&ecirc;n, chất nhũ h&oacute;a (soy lecithin).</p>\r\n\r\n<p><img alt=\"_MG_7778 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/af49ac82e279795261e602e9b144d6d5.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Hướng dẫn c&aacute;ch pha v&agrave; sử dụng:</strong></p>\r\n\r\n<p>- Khuyến nghị: Uống 1 ly mỗi ng&agrave;y</p>\r\n\r\n<p>- Lưu &yacute;: Sức khỏe của trẻ t&ugrave;y thuộc v&agrave;o sự tu&acirc;n thủ chặt chẽ c&aacute;c hướng dẫn dưới đ&acirc;y</p>\r\n\r\n<p>- Vệ sinh, chuẩn bị dụng cụ pha chế, sử dụng v&agrave; bảo quản một c&aacute;ch th&iacute;ch hợp l&agrave; rất quan trọng trong qu&aacute; tr&igrave;nh pha chế cho trẻ, n&ecirc;n hỏi &yacute; kiến b&aacute;c sĩ để biết loại dụng cụ n&agrave;o ph&ugrave; hợp với con bạn</p>\r\n\r\n<p>- Rửa tay sạch với x&agrave; ph&ograve;ng v&agrave; nước trước khi pha</p>\r\n\r\n<p>- Rửa sạch cốc hay dụng cụ v&agrave; nắp</p>\r\n\r\n<p>- Đun s&ocirc;i c&aacute;c vật dụng trong 1 ph&uacute;t&nbsp;</p>\r\n\r\n<p>- Đun s&ocirc;i nước trong 1 ph&uacute;t</p>\r\n\r\n<p>- Để nước nguội đến 40 độ C (ấm) trước khi pha</p>\r\n\r\n<p>- Cho đ&uacute;ng lượng nước ấm v&agrave;o cốc hay dụng cụ</p>\r\n\r\n<p>- Cho sản phẩm v&agrave;o, đậy kỹ nắp dụng cụ v&agrave; lắc đều</p>\r\n\r\n<p>- Để pha một ly Enfagrow cho trẻ, cho 3 muỗng gạt (36g bột) v&agrave;o 6 ounces(tương đương 180ml) nước ấm (kh&ocirc;ng qu&aacute; 40 độ C)</p>\r\n\r\n<p>- Khuấy hay lắc đều, v&agrave; cho trẻ sử dụng</p>\r\n\r\n<p><img alt=\"_MG_7780 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/019ea7ace67cca38b625dc36fc4c6d92.PNG\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đối tượng sử dụng:</strong>&nbsp;D&agrave;nh cho trẻ từ 1 -3 tuổi trở l&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong></p>\r\n\r\n<p>- Đậy k&iacute;n nắp hộp sau khi mở v&agrave; để ở nơi m&aacute;t, kh&ocirc; r&aacute;o</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n cho sản phẩm v&agrave;o tủ lạnh</p>\r\n\r\n<p>- N&ecirc;n sử dụng trong v&ograve;ng 4 tuần từ khi mở sản phẩm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nh&agrave; sản xuất:</strong></p>\r\n\r\n<p>Mead Johnson Nutrition -&nbsp; 2400 West Lloyd Expressway Evansville, IN 47721 USA</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Hoa Kỳ</p>', 6, 5, '1', 86, 21, 16, '2019-03-05 09:42:22', '2019-05-11 09:43:51', NULL),
(24, 'Thùng 48 hộp sữa tươi tiệt trùng Ba Vì có đường 180ml', 'thung-48-hop-sua-tuoi-tiet-trung-ba-vi-co-duong-180ml', 240000, 0, NULL, NULL, NULL, NULL, 'Ba Vi', '<p><strong>Sữa dinh dưỡng n&ocirc;ng trại Ba V&igrave; c&oacute; đường</strong>&nbsp;với hương vị thơm ngon, dễ uống, trong&nbsp;<strong>sữa</strong>&nbsp;bổ sung dồi d&agrave;o vitamin A gi&uacute;p s&aacute;ng mắt v&agrave; c&ocirc;ng thức gồm Vitamin D3 - Canxi v&agrave; Vitamin K2 c&oacute; t&aacute;c dụng hỗ trợ ph&aacute;t triển chiều cao hiệu quả.</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>', '<p><strong>Sữa dinh dưỡng n&ocirc;ng trại Ba V&igrave; c&oacute; đường</strong>&nbsp;với hương vị thơm ngon, dễ uống, trong&nbsp;<strong>sữa</strong>&nbsp;bổ sung dồi d&agrave;o vitamin A gi&uacute;p s&aacute;ng mắt v&agrave; c&ocirc;ng thức gồm Vitamin D3 - Canxi v&agrave; Vitamin K2 c&oacute; t&aacute;c dụng hỗ trợ ph&aacute;t triển chiều cao hiệu quả.</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>\r\n\r\n<p><img alt=\"Gía trị dinh dưỡng\" src=\"https://cdn.tgdd.vn/Products/Images//2386/195808/bhx/files/3Y8A1073.JPG\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng v&agrave; bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>Lắc đều trước khi uống. Ngon hơn khi uống lạnh.</li>\r\n	<li>Kh&ocirc;ng d&ugrave;ng cho trẻ dưới 2 tuổi.</li>\r\n	<li>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</li>\r\n</ul>', 17, 1, '1', 86, 35, 30, '2019-03-06 08:09:45', '2019-05-12 02:59:40', NULL),
(25, 'Lốc 3 chai sữa tươi tiệt trùng Lothamilk sô cô la 180ml', 'loc-3-chai-sua-tuoi-tiet-trung-lothamilk-so-co-la-180ml', 21000, 0, NULL, NULL, NULL, NULL, 'Lothamilk', '<p><strong>Sữa tươi tiệt tr&ugrave;ng Lothamilk s&ocirc; c&ocirc; la</strong>&nbsp;được chế biến từ sữa b&ograve; tươi nguy&ecirc;n chất 100%, rất gi&agrave;u đạm, bơ sữa, vitamin v&agrave; kho&aacute;ng chất cần thiết gi&uacute;p ph&aacute;t triển chiều cao, duy tr&igrave; cơ thể khoẻ mạnh, minh mẫn v&agrave; dồi d&agrave;o sinh lực.</p>', '<p><strong>Sữa tươi tiệt tr&ugrave;ng Lothamilk s&ocirc; c&ocirc; la</strong>&nbsp;được chế biến từ sữa b&ograve; tươi nguy&ecirc;n chất 100%, rất gi&agrave;u đạm, bơ sữa, vitamin v&agrave; kho&aacute;ng chất cần thiết gi&uacute;p ph&aacute;t triển chiều cao, duy tr&igrave; cơ thể khoẻ mạnh, minh mẫn v&agrave; dồi d&agrave;o sinh lực.</p>\r\n\r\n<p><strong>Sữa tươi</strong>&nbsp;được đ&oacute;ng g&oacute;i bao b&igrave; theo quy tr&igrave;nh tu&acirc;n thủ nghi&ecirc;m ngặt c&aacute;c ti&ecirc;u chuẩn vệ sinh thực phẩm, đảm bảo giữ trọn hương vị thơm ngon v&agrave; c&aacute;c chất dinh dưỡng c&oacute; trong sữa.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin dinh dưỡng</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images//2386/157902/bhx/files/sua-tuoi-tiet-trung-lothamilk-co-duong-180ml.jpg\" /></strong></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Uống trực tiếp, ngon hơn khi uống lạnh.</li>\r\n	<li>Sản phẩm d&ugrave;ng cho 1 lần uống.</li>\r\n</ul>\r\n\r\n<p><strong>Bảo quản:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh nhiệt độ cao v&agrave; &aacute;nh nắng trực tiếp.</li>\r\n	<li>N&ecirc;n d&ugrave;ng hết sau khi mở, nếu c&ograve;n bảo quản ngăn m&aacute;t tủ lạnh, n&ecirc;n d&ugrave;ng hết sau 3 ng&agrave;y.</li>\r\n</ul>', 16, 1, '1', 88, 124, 107, '2019-03-06 08:14:41', '2019-05-12 02:20:34', NULL),
(26, 'Sữa Tươi Tiệt Trùng Ít Béo Harvey Fresh Low Fat Milk Hộp 1 Lít', 'sua-tuoi-tiet-trung-it-beo-harvey-fresh-low-fat-milk-hop-1-lit', 34000, 0, NULL, NULL, NULL, NULL, 'Harvey', '<p>Xuất xứ : &Uacute;c</p>\r\n\r\n<p>Thể t&iacute;ch : 1 l&iacute;t</p>\r\n\r\n<p>Hương vị sữa nguy&ecirc;n chất, thơm ngon</p>\r\n\r\n<p>Sữa tiệt tr&ugrave;ng &iacute;t b&eacute;o</p>\r\n\r\n<p>Cung cấp nhiều Vitamin v&agrave; kho&aacute;ng chất</p>\r\n\r\n<p>H&agrave;m lượng chất b&eacute;o thấp trong sữa, sản phẩm rất th&iacute;ch hợp cho người đang c&oacute; nhu cầu ăn ki&ecirc;ng, người bị tiểu đường sử dụng</p>\r\n\r\n<p>Gi&uacute;p ph&aacute;t triển thể chất v&agrave; tr&iacute; tuệ</p>\r\n\r\n<p>Th&iacute;ch hợp cho người đang ăn ki&ecirc;ng.</p>\r\n\r\n<p>Đ&oacute;ng hộp tiện dụng cho sử dụng gia đ&igrave;nh, chăm s&oacute;c tốt nhất sức khỏe gia đ&igrave;nh m&agrave; vẫn tiết kiệm thời gian v&agrave; chi ph&iacute;</p>', '<p><strong>Xuất xứ:</strong>&nbsp;&Uacute;c,&nbsp;Harvey l&agrave; thương hiệu từ &Uacute;c</p>\r\n\r\n<p><strong>Qui c&aacute;ch:</strong>&nbsp;1L/ 1 Hộp. Th&ugrave;ng 12 hộp</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Đặc điểm nổi bật</strong><strong>:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương vị sữa nguy&ecirc;n chất, thơm ngon</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sữa tiệt tr&ugrave;ng &iacute;t b&eacute;o</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cung cấp nhiều Vitamin v&agrave; kho&aacute;ng chất</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;m lượng chất b&eacute;o thấp trong sữa, sản phẩm rất th&iacute;ch hợp cho người đang c&oacute; nhu cầu ăn ki&ecirc;ng, người bị tiểu đường sử dụng</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gi&uacute;p ph&aacute;t triển thể chất v&agrave; tr&iacute; tuệ</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Th&iacute;ch hợp cho người đang ăn ki&ecirc;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đ&oacute;ng hộp tiện dụng cho sử dụng gia đ&igrave;nh, chăm s&oacute;c tốt nhất sức khỏe gia đ&igrave;nh m&agrave; vẫn tiết kiệm thời gian v&agrave; chi ph&iacute;.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&ugrave;ng cho b&eacute; tr&ecirc;n 1 tuổi</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N&ecirc;n d&ugrave;ng hết sau khi mở, nếu c&ograve;n bảo quản ngăn m&aacute;t tủ lanh, n&ecirc;n d&ugrave;ng hết sau 3 ng&agrave;y.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sử dụng trực tiếp.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ngon hơn khi uống lạnh</p>\r\n\r\n<p><strong>Bảo quản:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sữa tiệt tr&ugrave;ng ở nhiệt độ cao. Bảo quản ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do qu&aacute; tr&igrave;nh xử l&yacute; ở nhiệt độ cao ,đ&oacute;ng g&oacute;i ni&ecirc;m phong k&iacute;n, sữa tiệt tr&ugrave;ng UHT c&oacute; thể bảo quản khi chưa mở nhiều th&aacute;ng m&agrave; kh&ocirc;ng cần để tủ lạnh.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sau khi mở nắp, giữ ở tủ lạnh hoặc dưới 40&nbsp;Cv&agrave; sử dụng trong v&ograve;ng 7 ng&agrave;y.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 16, 12, '1', 65, 103, 92, '2019-03-06 08:16:47', '2019-05-12 02:20:04', NULL),
(27, 'Sữa tươi tiệt trùng Nuti không đường hộp 1 lít', 'sua-tuoi-tiet-trung-nuti-khong-duong-hop-1-lit', 29000, 0, NULL, NULL, NULL, NULL, 'Nuti', '<p><strong>Sữa tươi Nuti 100%</strong>&nbsp;được sản xuất từ nguồn sữa b&ograve; tươi nguy&ecirc;n chất v&agrave; tươi ngon tại c&aacute;c trang trại quy m&ocirc; ở Gia Lai. Sữa tươi Nuti 100% l&agrave; nguồn bổ sung vitamin A, D3, Kẽm c&ugrave;ng nhiều vi dưỡng chất thiết yếu kh&aacute;c gi&uacute;p xương v&agrave; răng chắc khoẻ, s&aacute;ng m&aacute;t, tăng sức đề kh&aacute;ng cho gia đ&igrave;nh lu&ocirc;n khoẻ mạnh.</p>', '<p><strong>Sữa tươi Nuti 100%</strong>&nbsp;được sản xuất từ nguồn sữa b&ograve; tươi nguy&ecirc;n chất v&agrave; tươi ngon tại c&aacute;c trang trại quy m&ocirc; ở Gia Lai. Sữa tươi Nuti 100% l&agrave; nguồn bổ sung vitamin A, D3, Kẽm c&ugrave;ng nhiều vi dưỡng chất thiết yếu kh&aacute;c gi&uacute;p xương v&agrave; răng chắc khoẻ, s&aacute;ng m&aacute;t, tăng sức đề kh&aacute;ng cho gia đ&igrave;nh lu&ocirc;n khoẻ mạnh.</p>\r\n\r\n<p><strong>Sữa tươi</strong>&nbsp;kh&ocirc;ng&nbsp;đường với hương vị thơm ngon, b&eacute;o ngậy, c&oacute; thể uống trực tiếp hoặc d&ugrave;ng l&agrave;m nguy&ecirc;n liệu l&agrave;m b&aacute;nh ngọt, b&aacute;nh flan, nấu s&uacute;p...</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>\r\n\r\n<p><img alt=\"Bảng giá trị dinh dưỡng sữs tươi tiệt trùng NutiFood không đường 1 lít\" src=\"https://cdn.tgdd.vn/Products/Images/2386/135057/bhx/sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-6.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Lắc đều trước khi sử dụng. Ngon hơn khi uống lạnh.</li>\r\n	<li>Kh&ocirc;ng d&ugrave;ng cho trẻ em dưới 1 tuổi.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;Bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</li>\r\n	<li>Tr&aacute;nh &aacute;nh nắng mặt trời trực tiếp.</li>\r\n	<li>Nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t. Sau khi mở hộp, bảo quản lạnh ở 3 - 8 độ C v&agrave; sử dụng hết trong v&ograve;ng 3 ng&agrave;y.</li>\r\n</ul>', 16, 1, '1', 75, 120, 112, '2019-03-06 08:18:32', '2019-05-12 02:57:36', NULL),
(28, 'Sữa ông thọ 2019', 'sua-ong-tho-2019', 40000, 0, NULL, NULL, NULL, NULL, 'Vinamilk', '<p>Sữa &ocirc;ng thọ 2019</p>', '<p>Sữa &ocirc;ng thọ 2019</p>', 19, 1, '1', 84, 53, 53, '2019-03-21 03:58:29', '2019-05-12 02:20:34', NULL),
(29, 'Sữa bột Aptamil 1 (900g)', 'sua-bot-aptamil-1-900g', 585000, 1, NULL, NULL, NULL, NULL, 'Aptamil', '<p><em><strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ sơ sinh v&agrave; trẻ nhỏ. Sản phẩm n&agrave;y l&agrave; thức ăn bổ sung v&agrave; được ăn th&ecirc;m c&ugrave;ng với sữa mẹ d&ugrave;ng cho trẻ nhỏ.</strong></em></p>\r\n\r\n<p><br />\r\n&bull; Độ tuổi ph&ugrave; hợp: từ sơ sinh<br />\r\n&bull; Khối lượng tịnh: 900g<br />\r\n&bull; Xuất xứ: Ch&acirc;u &Acirc;u</p>', '<p>Sữa bột Aptamil 1 chứa th&agrave;nh phần dưỡng chất độc đ&aacute;o, d&agrave;nh cho trẻ từ khi&nbsp;mới sinh.<br />\r\n&bull;&nbsp;<strong>GOS/FOS</strong>&nbsp;<strong>(9:1)&nbsp;</strong>gi&uacute;p ph&aacute;t triển hệ ti&ecirc;u h&oacute;a<br />\r\n&bull;&nbsp;<strong>LCPs (DHA, AA)</strong>&nbsp;l&agrave; hỗn hợp c&aacute;c ax&iacute;t b&eacute;o, gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực&nbsp;của trẻ<br />\r\n&bull;&nbsp;<strong>Nucleotides</strong>&nbsp;tăng cường sức đề kh&aacute;ng, bảo vệ hệ miễn dịch đường&nbsp;ruột<br />\r\n&bull; Ngo&agrave;i ra,&nbsp;Aptamil 1 c&ograve;n cung cấp nhiều dưỡng chất kh&aacute;c như c&aacute;c&nbsp;Vitamin (A, D, E, C, B1, B12...), Protein, đạm Whey, c&aacute;c kho&aacute;ng chất...</p>', 14, 8, '1', 85, 20, 23, '2019-04-08 10:01:29', '2019-05-12 02:35:01', NULL),
(30, 'Sữa bột Aptamil 4 (800g)', 'sua-bot-aptamil-4-800g', 505000, 0, NULL, NULL, NULL, NULL, 'Aptamil', '<p><em><strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ sơ sinh v&agrave; trẻ nhỏ. Sản phẩm n&agrave;y l&agrave; thức ăn bổ sung v&agrave; được ăn th&ecirc;m c&ugrave;ng với sữa mẹ d&ugrave;ng cho trẻ nhỏ.</strong></em><br />\r\n&bull; Độ tuổi ph&ugrave; hợp: 2 - 3 tuổi<br />\r\n&bull; Khối lượng tịnh: 800g<br />\r\n&bull; Xuất xứ: Ch&acirc;u &Acirc;u</p>', '<p>Sữa bột Aptamil 4 c&oacute; chứa Pronutra+ - l&agrave; hỗn hợp độc đ&aacute;o của c&aacute;c th&agrave;nh phần: GOS/FOS, LCPs, Vitamin A, C, D v&agrave; sắt, hỗ trợ sự ph&aacute;t triển to&agrave;n diện của trẻ.<br />\r\n&bull;&nbsp;<strong>GOS/FOS</strong>&nbsp;gi&uacute;p ph&aacute;t triển hệ ti&ecirc;u h&oacute;a<br />\r\n&bull;&nbsp;<strong>Vitamin A, C, D</strong>&nbsp;tăng cường khả năng miễn dịch<br />\r\n&bull;&nbsp;<strong>Vitamin D&nbsp;</strong>th&uacute;c đẩy sự ph&aacute;t triển của xương v&agrave; răng<br />\r\n&bull;&nbsp;<strong>Sắt</strong>&nbsp;gi&uacute;p tạo m&aacute;u<br />\r\n&bull;&nbsp;<strong>LCPs (DHA, ARA)</strong>&nbsp;l&agrave; hỗn hợp c&aacute;c ax&iacute;t b&eacute;o, gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực trong giai đoạn tăng trưởng của trẻ</p>\r\n\r\n<p>Hướng dẫn sử dụng, bảo quản<br />\r\n&bull; Rửa sạch tay trước khi pha sữa&nbsp;cho trẻ<br />\r\n&bull; Rửa cốc v&agrave; nắp đậy cho đến khi kh&ocirc;ng c&ograve;n bợn bẩn<br />\r\n&bull; Đun s&ocirc;i cốc v&agrave; nắp đậy trong 5 ph&uacute;t, đậy nắp k&iacute;n cho đến khi sử dụng<br />\r\n&bull; Đun s&ocirc;i nước uống trong 5 ph&uacute;t, để nguội bớt<br />\r\n&bull; Tham khảo bảng hướng dẫn c&aacute;ch pha in tr&ecirc;n bao b&igrave;, r&oacute;t ch&iacute;nh x&aacute;c lượng nước ấm cần d&ugrave;ng v&agrave;o cốc đ&atilde; luộc<br />\r\n&bull; Th&ecirc;m số lượng muỗng sữa bột&nbsp;tương ứng cho số th&aacute;ng tuổi của trẻ theo bảng hướng dẫn in tr&ecirc;n bao b&igrave;<br />\r\n&bull; Đậy nắp v&agrave; lắc hoặc khuấy đều cho đến khi bột được h&ograve;a tan ho&agrave;n to&agrave;n v&agrave; cho trẻ uống liền<br />\r\n&bull; Đậy k&iacute;n nắp hộp sau mỗi lần sử dụng, bảo quản nơi kh&ocirc; r&aacute;o, n&ecirc;n sử dụng trong v&ograve;ng 4 tuần sau khi mở nắp hộp</p>\r\n\r\n<p>Th&ocirc;ng tin thương hiệu<br />\r\nAptamil l&agrave; thương hiệu sữa của Danone Nutricia, Ph&aacute;p - Tập đo&agrave;n dinh dưỡng b&aacute;n chạy h&agrave;ng đầu ch&acirc;u &Acirc;u. Danone Nutricia tập trung trong 4 lĩnh vực ch&iacute;nh: nước uống, dinh dưỡng y tế, thực phẩm từ sữa tươi v&agrave; dinh dưỡng đầu đời. Với kinh nghiệm hơn 100 năm trong lĩnh vực chăm s&oacute;c trẻ em, 50 năm về nghi&ecirc;n cứu sữa mẹ v&agrave; dinh dưỡng đầu đời, Danone Nutricia hiện c&oacute; mặt tại hơn 140 quốc gia tr&ecirc;n to&agrave;n thế giới.</p>', 14, 8, '1', 86, 19, 21, '2019-04-08 10:04:40', '2019-05-11 09:33:29', NULL),
(31, 'Sữa bột France Lait 3 (900g) - Hàng chính hãng', 'sua-bot-france-lait-3-900g-hang-chinh-hang', 440000, 1, NULL, NULL, NULL, NULL, 'France Lait', '<p><em><strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ sơ sinh v&agrave; trẻ nhỏ. Sản phẩm n&agrave;y l&agrave; thức ăn bổ sung v&agrave; được ăn th&ecirc;m c&ugrave;ng với sữa mẹ d&ugrave;ng cho trẻ nhỏ.</strong></em></p>\r\n\r\n<ul>\r\n	<li>Độ tuổi ph&ugrave; hợp: 1 - 3 tuổi</li>\r\n	<li>Khối lượng tịnh: 900g</li>\r\n	<li>Xuất xứ: Ph&aacute;p</li>\r\n</ul>', '<p>Sữa bột France Lait 3 được&nbsp;nhập khẩu nguy&ecirc;n hộp từ Ph&aacute;p. Sản phẩm c&oacute; thể d&ugrave;ng để thay thế bữa ăn hoặc bổ sung cho chế độ ăn của trẻ mất hoặc thiếu sữa mẹ, hỗ trợ sự ph&aacute;t triển của trẻ theo sinh l&yacute; lứa tuổi.</p>\r\n\r\n<ul>\r\n	<li>H&agrave;m lượng Protein vừa phải: 2g/100ml, ph&ugrave; hợp với ti&ecirc;u h&oacute;a của trẻ</li>\r\n	<li>Hệ số thẩm thấu thấp tăng cường khả năng hấp thu</li>\r\n	<li>Axit b&eacute;o cần thiết g&oacute;p phần cho sự ph&aacute;t triển n&atilde;o bộ v&agrave; mắt</li>\r\n	<li>Tỷ lệ Axit Linoleic/ Linolenic = 10 k&iacute;ch th&iacute;ch sự ph&aacute;t triển n&atilde;o v&agrave; thị gi&aacute;c</li>\r\n	<li>Cung cấp đấy đủ c&aacute;c vitamin v&agrave; kho&aacute;ng chất cần thiết cho sự tăng trưởng v&agrave; ph&aacute;t triển ban đầu của trẻ nhỏ</li>\r\n	<li>Chứa c&aacute;c Fructo-Oligosaccharide, khuyến kh&iacute;ch sự&nbsp;ph&aacute;t triển của&nbsp;hệ vi khuẩn đường ruột, gi&uacute;p điều chỉnh nhu động ruột</li>\r\n	<li>Th&acirc;n thiện với hệ ti&ecirc;u h&oacute;a của trẻ</li>\r\n</ul>', 12, 8, '1', 88, 52, 20, '2019-04-08 11:18:27', '2019-05-11 09:32:46', NULL),
(32, 'Sữa ông thọ hộp giấy', 'sua-ong-tho-hop-giay', 60000, 0, NULL, NULL, NULL, NULL, 'Vinamilk', '<p>Sữa đặc &Ocirc;ng Thọ - Vị ngon c&ugrave;ng năm th&aacute;ng</p>', '<p>Trải qua gần 40 năm, thực phẩm bổ sung sữa đặc <strong>&Ocirc;ng Thọ</strong> đ&atilde; trở th&agrave;nh người bạn đồng h&agrave;nh kh&ocirc;ng thể thiếu trong gian bếp của c&aacute;c gia đ&igrave;nh Việt Nam với gi&aacute; trị dinh dưỡng gi&agrave;u đạm, hương vị ngon đậm đ&agrave; c&ugrave;ng vẻ s&aacute;nh đặc v&agrave;ng &oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sữa đặc &Ocirc;ng Thọ</strong> l&agrave; b&iacute; quyết bỏ t&uacute;i kh&ocirc;ng thể thiếu của c&aacute;c b&agrave; nội trợ, với độ đạm cao sẽ đem đến nhiều m&oacute;n ăn ngon, tinh tế v&agrave; hấp dẫn: từ ly sữa nóng thơm ngon b&ocirc;̉ dưỡng cho &ocirc;ng bà, mẻ sữa chua sánh mịn cho con gái, ly sinh t&ocirc;́ béo ng&acirc;̣y cho con trai, ly cà ph&ecirc; sữa đ&acirc;̣m đà khi&ecirc;́n b&ocirc;́ m&ecirc; m&acirc;̉n hay mẻ bánh flan cho cả gia đình vào ngày cu&ocirc;́i tu&acirc;̀n.</p>', 19, 1, '1', 86, 14, 17, '2019-04-13 04:58:25', '2019-05-11 09:30:11', NULL),
(33, 'Combo 2 Lốc 12 Chai Sữa Nước Ensure Vani 237ml', 'combo-2-loc-12-chai-sua-nuoc-ensure-vani-237ml', 512000, 0, NULL, NULL, NULL, NULL, 'Abbott', '<p>Sữa nước Ensure Vani 237ml với th&agrave;nh phần v&agrave; c&ocirc;ng thức đặc biệt, cung cấp một h&agrave;m lượng dinh dưỡng hợp l&yacute; để cho bạn một cơ thể khỏe mạnh. Sản phẩm thơm ngon, vị vani dễ uống.</p>', '<p>&nbsp;</p>\r\n\r\n<p>- Cung cấp 24 loại vitamin v&agrave; kho&aacute;ng chất thiết yếu, c&aacute;c axit b&eacute;o, h&agrave;m lượng ax&iacute;t b&eacute;o no v&agrave; cholesterol thấp. - Chứa chất chống oxy h&oacute;a v&agrave; gi&uacute;p tăng cường hệ thống miễn dịch tự nhi&ecirc;n của cơ thể. - Sản phẩm c&oacute; thể được sử dụng để bổ sung v&agrave;o khẩu phần ăn khi c&oacute; nhu cầu tăng th&ecirc;m về năng lượng v&agrave; chất đạm hoặc để duy tr&igrave; t&igrave;nh trạng dinh dưỡng tốt. - Cung cấp một nguồn dinh dưỡng đầy đủ v&agrave; c&acirc;n bằng cho người sử dụng. - Xuất xứ thương hiệu: USA. - Hạn sử dụng: 2 năm kể từ ng&agrave;y sản xuất tr&ecirc;n bao b&igrave;. - Bảo quản: Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp. Sử dụng ngay sau mở nắp.</p>', 9, 2, '1', 91, 9, 11, '2019-05-07 02:46:48', '2019-05-11 09:29:43', NULL),
(34, 'Sữa Meiji Thanh Số 0 Nội Địa Nhật Cho Bé Sơ Sinh', 'sua-meiji-thanh-so-0-noi-dia-nhat-cho-be-so-sinh', 56000, 0, NULL, NULL, NULL, NULL, 'Meiji', '<p>Sữa Meiji số 0 dạng thanh d&agrave;nh cho b&eacute; 0-12 th&aacute;ng tuổi, mỗi thanh c&oacute; 5 vi&ecirc;n, mỗi vi&ecirc;n pha được 40 ml sữa.</p>', '<p><strong>Sữa Meiji </strong>số 0 dạng thanh d&agrave;nh cho b&eacute; 0-12 th&aacute;ng tuổi, mỗi thanh c&oacute; 5 vi&ecirc;n, mỗi vi&ecirc;n pha được 40 ml sữa. Mỗi mẹ chỉ cần chuẩn bị 3- 5 thanh cho b&eacute; trong những ng&agrave;y đầu khi sữa mẹ chưa về kịp. <strong>Sữa Meiji </strong>vị thanh, m&aacute;t tương tự như sữa mẹ, n&ecirc;n kh&ocirc;ng lo b&eacute; bỏ ti mẹ chỉ th&iacute;ch ti b&igrave;nh đ&acirc;u ạ. Sữa gi&agrave;u <strong>DHA </strong>gi&uacute;p b&eacute; tăng trưởng tr&iacute; n&atilde;o, c&ugrave;ng với omega 3 v&agrave; omega 6 h&agrave;m lượng c&acirc;n bằng, gi&uacute;p cơ thể b&eacute; khỏe mạnh. Sản phẩm được sản xuất v&agrave; nhập khẩu từ <strong>Nhật Bản.</strong></p>', 1, 3, '1', 86, 29, 30, '2019-05-07 02:48:43', '2019-05-10 13:24:47', NULL),
(35, 'Sữa Óc Chó Hạnh Nhân Đậu Đen Hàn Quốc Sahmyook Foods - 20gói X 195ml', 'sua-oc-cho-hanh-nhan-dau-den-han-quoc-sahmyook-foods-20goi-x-195ml', 265000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>Bạn đ&atilde; ng&aacute;n với những thức uống từ hoa quả, c&aacute;c loại sữa tươi,... th&ocirc;ng thường th&igrave; h&atilde;y thử thưởng Vị ngọt, ngậy b&eacute;o v&agrave; rất lạ miệng từ hạt &Oacute;c Ch&oacute; v&agrave; Hạnh Nh&acirc;n sẽ cuốn h&uacute;t bạn ngay từ miếng nhấp m&ocirc;i đầu ti&ecirc;n đ&acirc;y!</p>', '<p>&nbsp;</p>\r\n\r\n<p>Nhiều mẹ băn khoăn rằng c&oacute; n&ecirc;n sử dụng cho b&eacute; 1 tuổi hay kh&ocirc;ng? Tr&ecirc;n hướng dẫn sử dụng, h&atilde;ng Sahmyook Foods c&oacute; ghi: Cho trẻ em từ 1 &ndash; 10 tuổi. Như vậy, b&eacute; nh&agrave; bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng sữa &oacute;c ch&oacute; h&agrave;ng ng&agrave;y. N&ecirc;n sử dụng 2 hộp 190ml/ ng&agrave;y, hoặc 3 hộp 140ml/ ng&agrave;y. Kh&ocirc;ng n&ecirc;n sử dụng qu&aacute; nhiều, bởi khi cơ thể kh&ocirc;ng hấp thụ hết dưỡng chất, đ&agrave;o thải dinh dưỡng ra ngo&agrave;i sẽ rất l&atilde;ng ph&iacute;. Thời gian uống sữa tốt nhất l&agrave; buổi s&aacute;ng, sử dụng k&egrave;m với b&aacute;nh m&igrave;, x&ocirc;i để đảm bảo dinh dưỡng cho ng&agrave;y mới. Hoặc sử dụng 2 giờ trước khi đi ngủ để b&eacute; c&oacute; giấc ngủ ngon, s&acirc;u giấc.</p>', 16, 12, '1', 87, 14, 19, '2019-05-07 02:54:37', '2019-05-11 07:45:18', NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `price`, `discount`, `images`, `thumbnail`, `hot`, `warranty`, `brand`, `description`, `intro`, `catagory_id`, `distribution_id`, `status`, `qty_remain`, `count_buys`, `count_views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(36, '(10 TÚI *190ML )(Sữa Óc Chó Hạnh Nhân Đậu Đen Hàn Quốc Vegemil', '10-tui-190ml-sua-oc-cho-hanh-nhan-dau-den-han-quoc-vegemil', 125000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>Sữa &oacute;c ch&oacute; hạnh nh&acirc;n đậu đen H&agrave;n Quốc <strong>Vegemil </strong></p>\r\n\r\n<p>Quy c&aacute;ch: th&ugrave;ng 20 bịch (190ml/ bịch)</p>\r\n\r\n<p>Date: 12 th&aacute;ng</p>', '<p>C&ocirc;ng dụng: &ndash; Quả &oacute;c ch&oacute; chứa axit b&eacute;o Omega-3, gi&agrave;u chất xơ, vitamin B, magi&ecirc;, vitamin E gi&uacute;p bảo vệ hệ tim mạch, bảo vệ động mạch do c&oacute; nhiều chất b&eacute;o chưa b&atilde;o ho&agrave;, tăng cường sức khỏe cho n&atilde;o bộ, hệ thần kinh. &ndash; Hạnh nh&acirc;n l&agrave; ngưồn cung cấp dồi d&agrave;o về vitamin E, calcium, phosphor, sắt v&agrave; magnesium. Hạnh nh&acirc;n c&oacute; nhiểu chất bổ dưỡng nhất, trong đ&oacute; c&oacute; kẽm, selenium, đồng v&agrave; niacin. &ndash; Sữa Đỗ Đen Hạnh Nh&acirc;n &Oacute;c Ch&oacute; l&agrave; nguồn cung cấp isulin cao cho bệnh nh&acirc;n bị mắc bệnh tiểu đường, cung cấp lượng lớn c&aacute;c dưỡng chất Ca, K, Mg, gi&uacute;p hệ ti&ecirc;u h&oacute;a nhuận tr&agrave;ng, ngăn ngừa sỏi mật do gi&agrave;u chất xơ.</p>\r\n\r\n<p>Đối tượng sử dụng: C&oacute; thể sử dụng cho mọi lứa tuổi v&agrave; đặc biệt: &ndash; Phụ nữ c&oacute; thai: Lượng Omega-3 trong quả &oacute;c ch&oacute; lớn hơn 5 lần trong c&aacute; hồi, gi&uacute;p th&uacute;c đẩy sự ph&aacute;t triển đại n&atilde;o của thai nhi v&agrave; trẻ nhỏ. Nếu c&aacute;c mẹ ki&ecirc;n tr&igrave; ăn quả &oacute;c ch&oacute; trong suốt thời gian thai kỳ, em b&eacute; sinh ra sẽ rất th&ocirc;ng minh khỏe mạnh. &ndash; Trẻ em, học sinh cần ăn để hỗ trợ cho tr&iacute; nhớ. Người suy giảm tr&iacute; nhớ, tr&iacute; nhớ k&eacute;m. &ndash; Vợ chồng hiếm muộn. Qu&yacute; &ocirc;ng tinh tr&ugrave;ng yếu, Quả &Oacute;c ch&oacute; gi&uacute;p tăng chất lượng tinh tr&ugrave;ng. &ndash; Phụ nữ c&oacute; nhu cầu l&agrave;m đẹp v&agrave; giảm c&acirc;n &ndash; Vận động vi&ecirc;n, d&acirc;n chơi thể thao, rất tốt cho xương do c&oacute; h&agrave;m lượng Ca, K, Mg cao. &ndash; Người ăn chay, thiếu dinh dưỡng. &ndash; Người gi&agrave; kh&oacute; ăn, kh&oacute; ngủ, đau yếu. Bệnh nh&acirc;n tiểu đường, tim mạch, ung thư. &ndash; Gi&uacute;p thần kinh khỏe mạnh, tinh thần thoải m&aacute;i, tr&aacute;nh c&aacute;c triệu trứng trầm cảm do stress qu&aacute; nhiều, điều trị chứng mất ngủ, gi&uacute;p cơ thể ngủ ngon, ngủ s&acirc;u hơn. Sữa &oacute;c ch&oacute; hạnh nh&acirc;n đậu đen H&agrave;n Quốc Vegemil</p>', 16, 12, '1', 87, 17, 15, '2019-05-07 02:56:23', '2019-05-12 02:22:09', NULL),
(37, 'Sữa Milo Úc Hộp 1kg siêu to', 'sua-milo-uc-hop-1kg-sieu-to', 280000, 0, NULL, NULL, NULL, NULL, 'Milo', '<p><strong>Sữa Milo </strong>&Uacute;c 1kg được l&agrave;m từ bột l&uacute;c mạch v&agrave; cacao nguy&ecirc;n chất với vị ngọt thanh, thơm ngon dễ uống cung cấp đầy đủ dưỡng chất hỗ trợ trẻ ph&aacute;t triển chiều cao một c&aacute;ch tối đa.</p>', '<p>Sữa Milo &Uacute;c kh&aacute;c hẳn với Milo được sản xuất tại Việt Nam bởi h&agrave;m lượng dinh dưỡng vượt trội v&agrave; m&ugrave;i vị cũng thơm ngon hơn rất nhiều. Trẻ bắt đầu từ 2 tuổi trở l&ecirc;n l&agrave; uống được sữa Milo &Uacute;c gi&uacute;p đa dạng khẩu phần ăn cho trẻ: - Pha sữa Milo với nước ấm (3 th&igrave;a gạt sữa với 200ml) - Pha Milo th&ecirc;m đ&aacute; để uống lạnh giải nhiệt m&ugrave;a h&egrave;: sau khi pha milo với nước ấm c&oacute; thể th&ecirc;m đ&aacute;. - Pha Milo với c&aacute;c loại sữa tươi tạo bột nguy&ecirc;n kem, sữa bột tạo ra c&ocirc;ng thức gi&uacute;p b&eacute; tăng c&acirc;n, tăng chiều cao vượt trội v&agrave; thay đổi hương vị của sữa tr&aacute;nh nh&agrave;m ch&aacute;n. - Th&ecirc;m sữa Milo v&agrave;o khẩu phần b&aacute;nh của trẻ hoặc sử dụng Milo như nguy&ecirc;n liệu l&agrave;m b&aacute;nh. Sữa Milo &Uacute;c 1kg - c&ocirc;ng dụng tạo n&ecirc;n sự kh&aacute;c biệt: - Cung cấp năng lượng cho trẻ thoải m&aacute;i hoạt động cả ng&agrave;y - Tăng chiều cao, săn cơ v&agrave; gi&uacute;p cơ bắp chắc khỏe - Hỗ trợ sự ph&aacute;t triển tr&iacute; n&atilde;o trong việc học tập, trẻ v&agrave;o giai đoạn thi cử,...c&oacute; &iacute;ch cho việc hoạt động tr&iacute; &oacute;c - Tăng sức đề kh&aacute;ng cho cơ thể khỏe mạnh, cường tr&aacute;ng</p>', 18, 12, '1', 85, 17, 20, '2019-05-07 02:58:40', '2019-05-11 08:38:37', NULL),
(38, 'Sữa Tươi Dạng Bột Nguyên Kem A2 Úc 1kg', 'sua-tuoi-dang-bot-nguyen-kem-a2-uc-1kg', 320000, 0, NULL, NULL, NULL, NULL, 'Mộc Châu', '<p>Sữa c&oacute; h&agrave;m lượng canxi cao, ngo&agrave;i ra sữa c&ograve;n c&oacute; bổ sung th&ecirc;m vitamin A v&agrave; D - điều m&agrave; sữa tươi dạng bột kh&aacute;c kh&ocirc;ng c&oacute;.</p>', '<p>Vitamin D trong sữa A2 l&agrave; chất x&uacute;c t&aacute;c gi&uacute;p hấp thụ tối da Canxi v&agrave;o trong cơ thểVitamin A trong sữa A2 gi&uacute;p tăng cường thị lựcTh&ecirc;m một ưu điểm nữa l&agrave; sữa A2 được đ&oacute;ng g&oacute;i dạng Ziplock n&ecirc;n c&aacute;c mẹ rất dễ bảo quản sau khi sử dụngSữa A2 c&oacute; chứa A2 protein :Sữa nguy&ecirc;n kem A2 l&agrave; sữa được chế biến từ 100% sữa tươi nguy&ecirc;n liệu lấy từ những con b&ograve; A2 (giống b&ograve; thuần chủng trong sữa kh&ocirc;ng chứa protein A1 &ndash; được cho l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra m&ocirc;t số rối loạn) m&agrave; kh&ocirc;ng th&ecirc;m hoặc bớt đi một chất g&igrave; sẵn c&oacute; trong sữa do b&ograve; sữa tạo ra. Sữa nguy&ecirc;n kem A2 được ti&ecirc;u chuẩn h&oacute;a l&agrave; sữa c&oacute; h&agrave;m lượng chất b&eacute;o thấp nhất l&agrave; 3,5%. Sữa nguy&ecirc;n kem A2 ho&agrave;n to&agrave;n tự nhi&ecirc;n, kh&ocirc;ng chứa chất bảo quản.Sữa tươi A2 d&ugrave;ng cho b&eacute; từ 1 tuổi trở l&ecirc;n với 100% protein A2, lượng canxi cao tốt cho ti&ecirc;u h&oacute;a, hấp thu v&agrave; l&agrave; nguồn dinh dưỡng thiết yếu cho cả gia đ&igrave;nhTrong sữa b&ograve; th&ocirc;ng thường c&oacute; 2 hai loại protein l&agrave; protein A1 v&agrave; protein A2. Những nghi&ecirc;n cứu gần đ&acirc;y tại &Uacute;c chỉ ra rằng protein A1 trong sữa b&ograve; g&acirc;y ra những t&aacute;c động xấu tới cơ thể, trong protein A1 chứa chất protein BCM7 ( Beta - CasoMorphin - 7 ) g&acirc;y nguy cơ bệnh tiểu đường, ung thư, ph&aacute;t triển sự tự kỷ mạnh mẽ ở trẻ, t&aacute;c hại trực tiếp l&ecirc;n sức khoẻ con người đặc biệt l&agrave; hệ thần kinh. Tuy nhi&ecirc;n, hiện nay 70% số b&ograve; sữa sản xuất ra sữa chứa th&agrave;nh phần gồm cả protein A1 v&agrave; A2.</p>', 17, 1, '1', 90, 13, 14, '2019-05-07 03:02:19', '2019-05-12 02:59:23', NULL),
(40, 'Sản phẩm sữa mới', 'ten-san-pham', 125000, 0, NULL, NULL, NULL, NULL, 'NAN', '<p>M&ocirc; tả ngắn</p>', '<p>Giới thiệu sản phẩm</p>', 14, 7, '0', 100, 2, 10, '2019-05-08 10:31:09', '2019-05-09 02:53:56', '2019-05-09 02:53:56'),
(41, 'Sản phẩm sữa Meji', 'ten-san-pham-meji', 145000, 0, NULL, NULL, NULL, NULL, 'Meji', '<p>M&ocirc; tả ngắn 2</p>', '<p>Giới thiệu sản phẩm 2</p>', 1, 3, '0', 2, 2, 10, '2019-05-08 10:33:25', '2019-05-09 13:39:35', NULL),
(42, 'Sản phẩm sữa Abbot', 'ten-san-pham-abott', 123000, 0, NULL, NULL, NULL, NULL, 'Abott', '<p>M&ocirc; tả ngắn 2</p>', '<p>Giới thiệu sản phẩm 2</p>', 9, 2, '0', 2, 2, 10, '2019-05-08 10:34:10', '2019-05-09 13:39:47', NULL),
(43, 'Sữa bột Milo loại 2 ', 'sua-bot-milo-loai-2', 130000, 2, NULL, NULL, NULL, NULL, 'Milo', '<p>Milo</p>', '<p>Milo</p>', 18, 12, '0', 2, 2, 10, '2019-05-09 13:29:25', '2019-05-09 13:36:01', NULL),
(44, 'sữa sữa sữa', 'sua-sua-sua', 999999999, 0, NULL, NULL, NULL, NULL, 'sữa sữa sữa', '<p>sữa sữa sữa&nbsp;</p>', '<p>sữa sữa sữa&nbsp;</p>', 4, 2, '1', 160, 0, 0, '2019-05-12 02:56:23', '2019-05-12 02:56:48', '2019-05-12 02:56:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comments`
--

CREATE TABLE `product_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comments`
--

INSERT INTO `product_comments` (`id`, `user_id`, `product_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 38, NULL, 'Là thương hiệu sữa hàng đầu Việt Nam với lịch sử 40 năm phát triển. Chất lượng sản phẩm, dịch vụ luôn được cải tiến để đáp ứng tốt nhất nhu cầu của người tiêu dùng.', '2019-03-23 06:36:10', '2019-03-23 06:36:10', NULL),
(2, 14, 37, NULL, 'sữa tốt, chât lượng sản phẩm tuyệt vời....', '2019-05-09 12:30:32', '2019-05-09 12:30:32', NULL),
(3, 1, 37, NULL, 'Được thành lập từ năm 1888, Abbott – công ty chăm sóc sức khỏe hàng đầu thế giới, chuyên nghiên cứu, phát triển, sản xuất và đưa ra các sản phẩm và dịch vụ chăm sóc sức khỏe có chất lượng cao trong lĩnh vực dinh dưỡng', '2019-05-10 08:42:27', '2019-05-10 08:42:27', NULL),
(4, 1, 37, 3, '... Được thành lập từ năm 1888, Abbott – công ty chăm sóc sức khỏe hàng đầu thế giới, chuyên nghiên cứu, phát triển, sản xuất và đưa ra các sản phẩm và dịch vụ chăm sóc sức khỏe có chất lượng cao trong lĩnh vực dinh dưỡng', '2019-03-09 08:51:15', '2019-03-09 08:51:15', NULL),
(5, 30, 25, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống\r', '2019-03-10 17:03:18', '2019-03-10 17:03:18', NULL),
(6, 57, 26, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống\r', '2019-04-25 23:41:45', '2019-04-25 23:41:45', NULL),
(7, 2, 32, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống\r', '2019-03-08 09:04:27', '2019-03-08 09:04:27', NULL),
(8, 30, 30, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống\r', '2019-04-10 21:14:41', '2019-04-10 21:14:41', NULL),
(9, 42, 25, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống\r', '2019-03-28 17:22:30', '2019-03-28 17:22:30', NULL),
(10, 13, 24, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống\r', '2019-04-04 05:54:04', '2019-04-04 05:54:04', NULL),
(11, 57, 20, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống\r', '2019-03-19 00:39:48', '2019-03-19 00:39:48', NULL),
(12, 6, 37, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-04-20 08:42:09', '2019-04-20 08:42:09', NULL),
(13, 36, 25, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-04-21 06:39:15', '2019-04-21 06:39:15', NULL),
(14, 4, 19, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-04-09 02:13:59', '2019-04-09 02:13:59', NULL),
(15, 40, 36, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-03-15 16:11:37', '2019-03-15 16:11:37', NULL),
(16, 20, 4, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-05-08 06:32:15', '2019-05-08 06:32:15', NULL),
(17, 10, 25, NULL, 'Cám ơn MilkStore đã giao hàng nhanh chóng và chúc các bà mẹ khác cũng tìm được sản phẩm tốt nhất cho con yêu nha!', '2019-04-18 20:05:31', '2019-04-18 20:05:31', NULL),
(18, 36, 29, NULL, 'Cám ơn MilkStore đã giao hàng nhanh chóng và chúc các bà mẹ khác cũng tìm được sản phẩm tốt nhất cho con yêu nha!', '2019-03-02 07:13:29', '2019-03-02 07:13:29', NULL),
(20, 59, 36, NULL, 'Cám ơn MilkStore đã giao hàng nhanh chóng và chúc các bà mẹ khác cũng tìm được sản phẩm tốt nhất cho con yêu nha!', '2019-04-25 17:16:01', '2019-04-25 17:16:01', NULL),
(21, 58, 22, NULL, 'Cám ơn MilkStore đã giao hàng nhanh chóng và chúc các bà mẹ khác cũng tìm được sản phẩm tốt nhất cho con yêu nha!', '2019-04-07 15:37:15', '2019-04-07 15:37:15', NULL),
(22, 57, 28, NULL, 'Cám ơn MilkStore đã giao hàng nhanh chóng và chúc các bà mẹ khác cũng tìm được sản phẩm tốt nhất cho con yêu nha!', '2019-04-07 16:27:40', '2019-04-07 16:27:40', NULL),
(23, 11, 36, NULL, 'hôm nay mình mưới mua thử sản phẩm cho bé nhà mình dùng thấy bé an cũng ngon miệng là không bỏ như mấy bữa trước. sữa cũng dễ uống, vị thơm thơm rất thích hợp với các bé , đắc biệt bé nhà mình lại rất thích sản phẩm này. không các mẹ sao chứ em mừng rơi nước mắt luôn vì bé nhà em bị biếng ăn mà giờ bé lại ăn ngon lành . trước mỗi lần cho bé ăn là lại sót con bì con lười chả chịu ăn gì hết .', '2019-03-14 03:55:40', '2019-03-14 03:55:40', NULL),
(24, 9, 11, NULL, 'hôm nay mình mưới mua thử sản phẩm cho bé nhà mình dùng thấy bé an cũng ngon miệng là không bỏ như mấy bữa trước. sữa cũng dễ uống, vị thơm thơm rất thích hợp với các bé , đắc biệt bé nhà mình lại rất thích sản phẩm này. không các mẹ sao chứ em mừng rơi nước mắt luôn vì bé nhà em bị biếng ăn mà giờ bé lại ăn ngon lành . trước mỗi lần cho bé ăn là lại sót con bì con lười chả chịu ăn gì hết .', '2019-04-10 06:34:21', '2019-04-10 06:34:21', NULL),
(25, 9, 6, NULL, 'hôm nay mình mưới mua thử sản phẩm cho bé nhà mình dùng thấy bé an cũng ngon miệng là không bỏ như mấy bữa trước. sữa cũng dễ uống, vị thơm thơm rất thích hợp với các bé , đắc biệt bé nhà mình lại rất thích sản phẩm này. không các mẹ sao chứ em mừng rơi nước mắt luôn vì bé nhà em bị biếng ăn mà giờ bé lại ăn ngon lành . trước mỗi lần cho bé ăn là lại sót con bì con lười chả chịu ăn gì hết .', '2019-03-15 05:05:13', '2019-03-15 05:05:13', NULL),
(26, 20, 37, NULL, 'hôm nay mình mưới mua thử sản phẩm cho bé nhà mình dùng thấy bé an cũng ngon miệng là không bỏ như mấy bữa trước. sữa cũng dễ uống, vị thơm thơm rất thích hợp với các bé , đắc biệt bé nhà mình lại rất thích sản phẩm này. không các mẹ sao chứ em mừng rơi nước mắt luôn vì bé nhà em bị biếng ăn mà giờ bé lại ăn ngon lành . trước mỗi lần cho bé ăn là lại sót con bì con lười chả chịu ăn gì hết .', '2019-03-13 14:22:20', '2019-03-13 14:22:20', NULL),
(27, 12, 4, NULL, 'hôm nay mình mưới mua thử sản phẩm cho bé nhà mình dùng thấy bé an cũng ngon miệng là không bỏ như mấy bữa trước. sữa cũng dễ uống, vị thơm thơm rất thích hợp với các bé , đắc biệt bé nhà mình lại rất thích sản phẩm này. không các mẹ sao chứ em mừng rơi nước mắt luôn vì bé nhà em bị biếng ăn mà giờ bé lại ăn ngon lành . trước mỗi lần cho bé ăn là lại sót con bì con lười chả chịu ăn gì hết .', '2019-04-18 23:04:35', '2019-04-18 23:04:35', NULL),
(30, 12, 18, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-04-23 21:32:44', '2019-04-23 21:32:44', NULL),
(31, 3, 22, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-04-02 10:31:14', '2019-04-02 10:31:14', NULL),
(32, 57, 28, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-03-30 06:12:58', '2019-03-30 06:12:58', NULL),
(33, 59, 38, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-04-08 05:46:34', '2019-04-08 05:46:34', NULL),
(34, 36, 23, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-05-06 04:59:00', '2019-05-06 04:59:00', NULL),
(35, 16, 31, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-04-23 08:01:21', '2019-04-23 08:01:21', NULL),
(36, 10, 37, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-04-09 08:35:42', '2019-04-09 08:35:42', NULL),
(37, 58, 5, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-05-04 07:11:42', '2019-05-04 07:11:42', NULL),
(38, 16, 33, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-03-09 18:09:43', '2019-03-09 18:09:43', NULL),
(39, 13, 21, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-03-22 11:27:38', '2019-03-22 11:27:38', NULL),
(40, 7, 6, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-05-09 09:55:43', '2019-05-09 09:55:43', NULL),
(41, 10, 13, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-05-02 11:23:05', '2019-05-02 11:23:05', NULL),
(42, 14, 33, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-28 01:46:47', '2019-04-28 01:46:47', NULL),
(43, 22, 21, NULL, 'Bé nhà mình đến tuổi ăn dặm thế là mình tim kiếm những sản phẩm phù hợp cho việc ăn dặm của bé và rất tin tưởng để chọn bột ăn dặm Hipp của Đức, Vị bột thơm ngon và rất tiếc kiệm thời gian cho mình pha chế cho con khi mình đã đến lúc đi làm lại.', '2019-03-18 04:38:56', '2019-03-18 04:38:56', NULL),
(44, 23, 2, NULL, 'Bé nhà mình đến tuổi ăn dặm thế là mình tim kiếm những sản phẩm phù hợp cho việc ăn dặm của bé và rất tin tưởng để chọn bột ăn dặm Hipp của Đức, Vị bột thơm ngon và rất tiếc kiệm thời gian cho mình pha chế cho con khi mình đã đến lúc đi làm lại.', '2019-03-12 14:51:54', '2019-03-12 14:51:54', NULL),
(45, 16, 35, NULL, 'Bé nhà mình đến tuổi ăn dặm thế là mình tim kiếm những sản phẩm phù hợp cho việc ăn dặm của bé và rất tin tưởng để chọn bột ăn dặm Hipp của Đức, Vị bột thơm ngon và rất tiếc kiệm thời gian cho mình pha chế cho con khi mình đã đến lúc đi làm lại.', '2019-03-19 04:54:20', '2019-03-19 04:54:20', NULL),
(46, 20, 29, NULL, 'Bé nhà mình đến tuổi ăn dặm thế là mình tim kiếm những sản phẩm phù hợp cho việc ăn dặm của bé và rất tin tưởng để chọn bột ăn dặm Hipp của Đức, Vị bột thơm ngon và rất tiếc kiệm thời gian cho mình pha chế cho con khi mình đã đến lúc đi làm lại.', '2019-04-18 20:50:14', '2019-04-18 20:50:14', NULL),
(47, 58, 7, NULL, 'Bé nhà mình đến tuổi ăn dặm thế là mình tim kiếm những sản phẩm phù hợp cho việc ăn dặm của bé và rất tin tưởng để chọn bột ăn dặm Hipp của Đức, Vị bột thơm ngon và rất tiếc kiệm thời gian cho mình pha chế cho con khi mình đã đến lúc đi làm lại.', '2019-03-02 02:43:50', '2019-03-02 02:43:50', NULL),
(48, 5, 7, NULL, 'March Hare: she thought it would all come wrong, and she soon found an.', '2019-03-09 03:36:33', '2019-03-09 03:36:33', NULL),
(49, 3, 20, NULL, 'Alice, and, after glaring at her for a minute, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had to stop and untwist it. After a while.', '2019-03-03 05:08:45', '2019-03-03 05:08:45', NULL),
(50, 10, 2, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-20 22:58:44', '2019-03-20 22:58:44', NULL),
(51, 3, 9, NULL, 'I\'ll set Dinah at you!\' There was a table, with a large one, but it just grazed his nose, and broke to pieces against one of the birds and animals that had.', '2019-03-07 20:22:44', '2019-03-07 20:22:44', NULL),
(52, 36, 32, NULL, 'The Footman seemed to Alice an excellent plan, no doubt, and very nearly carried it out to sea!\" But the insolence of his great wig.\'.', '2019-04-18 01:55:17', '2019-04-18 01:55:17', NULL),
(53, 1, 4, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-25 16:08:50', '2019-04-25 16:08:50', NULL),
(54, 57, 13, NULL, 'Mock Turtle in the kitchen. \'When I\'M a Duchess,\' she said to.', '2019-04-15 12:23:47', '2019-04-15 12:23:47', NULL),
(55, 57, 8, NULL, 'Bill! I wouldn\'t be so kind,\' Alice replied, so eagerly that the way of expressing yourself.\' The baby grunted again, so she helped herself to some tea and.', '2019-03-22 03:36:45', '2019-03-22 03:36:45', NULL),
(56, 2, 17, NULL, 'Alice cautiously replied: \'but I know is, it would all wash off in the window, and some \'unimportant.\' Alice could speak again. The rabbit-hole went straight on like a sky-rocket!\' \'So you think.', '2019-03-17 19:39:28', '2019-03-17 19:39:28', NULL),
(57, 40, 22, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-20 08:16:54', '2019-04-20 08:16:54', NULL),
(58, 56, 4, NULL, 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at.', '2019-03-05 22:56:17', '2019-03-05 22:56:17', NULL),
(59, 23, 26, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-03-10 08:08:22', '2019-03-10 08:08:22', NULL),
(60, 58, 13, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-12 08:07:17', '2019-04-12 08:07:17', NULL),
(61, 14, 20, NULL, 'Pigeon, raising its voice to a lobster--\' (Alice began to cry again. \'You ought to be in before the trial\'s over!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the.', '2019-03-31 01:43:00', '2019-03-31 01:43:00', NULL),
(62, 4, 19, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-05-06 05:34:12', '2019-05-06 05:34:12', NULL),
(63, 36, 16, NULL, 'In another moment it was too small, but at the end of his pocket, and was gone across to the dance. Would not, could.', '2019-03-16 03:31:32', '2019-03-16 03:31:32', NULL),
(64, 23, 30, NULL, 'Mock Turtle sighed deeply, and began, in a tone of this elegant thimble\'; and, when it had gone. \'Well! I\'ve often seen them at last, they must be a.', '2019-03-09 12:15:39', '2019-03-09 12:15:39', NULL),
(65, 8, 1, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-05-11 19:41:04', '2019-05-11 19:41:04', NULL),
(66, 5, 9, NULL, 'King hastily said, and went on just as well as the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw.', '2019-04-19 13:07:09', '2019-04-19 13:07:09', NULL),
(67, 42, 8, NULL, 'Dormouse again, so that altogether, for the accident of the court. All this time the.', '2019-03-05 13:17:30', '2019-03-05 13:17:30', NULL),
(68, 2, 8, NULL, 'I shall be late!\' (when she thought to herself. \'Of the.', '2019-03-04 16:27:11', '2019-03-04 16:27:11', NULL),
(69, 12, 18, NULL, 'March.\' As she said to itself in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I might venture to go from here?\' \'That depends a good deal frightened.', '2019-03-18 15:36:30', '2019-03-18 15:36:30', NULL),
(70, 6, 30, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-03-29 13:45:19', '2019-03-29 13:45:19', NULL),
(71, 57, 16, NULL, 'I to get dry again: they had at the Duchess replied, in a hurry. \'No, I\'ll look first,\' she said, \'for her hair goes in such a curious croquet-ground in.', '2019-04-25 14:25:22', '2019-04-25 14:25:22', NULL),
(72, 10, 21, NULL, 'Which shall sing?\' \'Oh, YOU sing,\' said the Cat, and vanished. Alice was a child,\' said the Hatter. \'You might just as she passed; it was certainly English. \'I don\'t see,\' said the King.', '2019-04-11 14:21:29', '2019-04-11 14:21:29', NULL),
(73, 16, 33, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-03-22 15:35:10', '2019-03-22 15:35:10', NULL),
(74, 21, 24, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-24 00:43:30', '2019-04-24 00:43:30', NULL),
(75, 57, 28, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-04-28 10:38:17', '2019-04-28 10:38:17', NULL),
(76, 59, 9, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-10 07:27:25', '2019-03-10 07:27:25', NULL),
(77, 7, 16, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-30 22:50:28', '2019-04-30 22:50:28', NULL),
(78, 38, 5, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-05-11 08:45:15', '2019-05-11 08:45:15', NULL),
(79, 20, 20, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-18 17:30:22', '2019-03-18 17:30:22', NULL),
(80, 21, 18, NULL, 'Queen. \'Never!\' said the Queen, but she felt sure it would be like, but.', '2019-03-28 04:05:20', '2019-03-28 04:05:20', NULL),
(81, 23, 22, NULL, 'In a minute or two the Caterpillar took the place of the sort!\' said.', '2019-04-15 10:29:25', '2019-04-15 10:29:25', NULL),
(82, 22, 25, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-11 21:30:44', '2019-03-11 21:30:44', NULL),
(83, 22, 21, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-05-04 06:33:02', '2019-05-04 06:33:02', NULL),
(84, 40, 32, NULL, 'King, and he went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' he began. \'You\'re a very little! Besides, SHE\'S she, and I\'m sure.', '2019-05-05 20:10:26', '2019-05-05 20:10:26', NULL),
(85, 4, 35, NULL, 'Tôi đã nhận hàng. Sản phẩm tạm được, quên gói theo quà tặng. Thùng hàng cần gói cẩn thận hơn.', '2019-03-31 21:57:56', '2019-03-31 21:57:56', NULL),
(86, 36, 32, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-15 09:50:41', '2019-03-15 09:50:41', NULL),
(87, 9, 32, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-03-18 22:34:36', '2019-03-18 22:34:36', NULL),
(88, 58, 11, NULL, 'CHAPTER VI. Pig and Pepper For a minute or two, looking for them, and the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The.', '2019-04-24 05:48:25', '2019-04-24 05:48:25', NULL),
(89, 21, 11, NULL, 'Alice could not think of nothing else to do, so Alice went on, yawning and rubbing its eyes, \'Of course, of course; just what I say,\' the Mock Turtle repeated thoughtfully.', '2019-04-23 11:11:32', '2019-04-23 11:11:32', NULL),
(90, 57, 17, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-13 20:47:40', '2019-04-13 20:47:40', NULL),
(91, 42, 5, NULL, 'I didn\'t!\' interrupted Alice. \'You did,\' said the Mock Turtle. \'And how did you ever saw. How she longed to get her head pressing against the door, staring stupidly up.', '2019-04-25 00:20:04', '2019-04-25 00:20:04', NULL),
(92, 20, 29, NULL, 'The chief difficulty Alice found at first was moderate. But the insolence of his tail. \'As if it makes me.', '2019-03-22 12:49:41', '2019-03-22 12:49:41', NULL),
(93, 11, 14, NULL, 'Alice replied in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, who had been to the Mock Turtle, who looked.', '2019-04-12 09:18:39', '2019-04-12 09:18:39', NULL),
(94, 7, 8, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-15 04:22:45', '2019-04-15 04:22:45', NULL),
(95, 30, 32, NULL, 'Dormouse; \'VERY ill.\' Alice tried to curtsey as she couldn\'t answer either.', '2019-05-05 14:01:26', '2019-05-05 14:01:26', NULL),
(96, 36, 27, NULL, 'Mình Vừa nhận hàng chiều nay .Anh Giao Hàng Nhiệt tình, đóng gói cẩn thận. Tuy Nhiên Giá sản phẩm ở thị trường thấp hơn ở đây . Mình mới đổi sang loại này hi vọng bé dùng sẽ hợp.Mình nhận được balo màu đỏ nhưng balo mình bị xước nhiều chỗ nên hơi buồn xíu', '2019-03-17 03:31:29', '2019-03-17 03:31:29', NULL),
(97, 56, 36, NULL, 'bột sắn sau khi tinh lọc chỉ còn tinh bột, khi ăn vào cơ thể chuyển hóa thành đường glucoza. Còn mật ong có thành phần hầu hết là đường glucoza, đường fructoza và một số vitamin, vi lượng, hoạt chất sinh học.', '2019-03-30 08:37:26', '2019-03-30 08:37:26', NULL),
(98, 56, 34, NULL, 'King. \'Nearly two miles high,\' added the Dormouse. \'Fourteenth of March, I.', '2019-03-10 19:17:29', '2019-03-10 19:17:29', NULL),
(99, 23, 3, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-05-06 06:11:23', '2019-05-06 06:11:23', NULL),
(100, 13, 35, NULL, 'Mình mới nhận sữa hôm nay. Giao hàng nhanh chóng, đóng gói cẩn thận. Sữa mới và đặc biệt . Bé mình rất thích. Cám ơn MilkStore', '2019-04-15 06:17:10', '2019-04-15 06:17:10', NULL),
(101, 8, 2, NULL, 'Tham nhanh ko nhon rit thom nhe mem da. hieu qua trang sang dan khi xai lau dai ( sang da tu nhien khoe manh chu ko phai trang sat nha moi nguoi)', '2019-05-09 03:37:56', '2019-05-09 03:37:56', NULL),
(102, 40, 24, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-05-02 11:01:27', '2019-05-02 11:01:27', NULL),
(103, 56, 19, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-03-06 23:16:33', '2019-03-06 23:16:33', NULL),
(104, 23, 1, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-03-13 16:46:24', '2019-03-13 16:46:24', NULL),
(105, 5, 26, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-03-29 22:48:18', '2019-03-29 22:48:18', NULL),
(106, 12, 9, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-03-12 22:18:16', '2019-03-12 22:18:16', NULL),
(108, 1, 16, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-03-19 08:03:39', '2019-03-19 08:03:39', NULL),
(109, 42, 24, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-04-20 14:06:07', '2019-04-20 14:06:07', NULL),
(110, 58, 30, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-03-27 15:36:24', '2019-03-27 15:36:24', NULL),
(111, 23, 10, NULL, 'Sản phẩm chất lượng, dùng rất tốt', '2019-03-16 20:05:53', '2019-03-16 20:05:53', NULL),
(112, 42, 37, NULL, 'Mình mới nhận sữa hôm nay. Sữa mới và đặc biệt,. Bé mình rất thích. Cám ơn', '2019-04-27 22:34:23', '2019-04-27 22:34:23', NULL),
(113, 3, 13, NULL, 'Mình mới nhận sữa hôm nay. Sữa mới và đặc biệt,. Bé mình rất thích. Cám ơn', '2019-04-07 05:52:27', '2019-04-07 05:52:27', NULL),
(114, 5, 3, NULL, 'Mình mới nhận sữa hôm nay. Sữa mới và đặc biệt,. Bé mình rất thích. Cám ơn', '2019-03-29 16:37:35', '2019-03-29 16:37:35', NULL),
(115, 40, 31, NULL, 'Mình mới nhận sữa hôm nay. Sữa mới và đặc biệt,. Bé mình rất thích. Cám ơn', '2019-05-04 12:50:52', '2019-05-04 12:50:52', NULL),
(116, 9, 7, NULL, 'Mình mới nhận sữa hôm nay. Sữa mới và đặc biệt,. Bé mình rất thích. Cám ơn', '2019-05-08 17:24:01', '2019-05-08 17:24:01', NULL),
(117, 20, 5, NULL, 'Toi hai long voi san pham nay.', '2019-03-24 17:42:01', '2019-03-24 17:42:01', NULL),
(118, 6, 9, NULL, 'Toi hai long voi san pham nay.', '2019-04-04 14:41:07', '2019-04-04 14:41:07', NULL),
(119, 59, 33, NULL, 'Toi hai long voi san pham nay.', '2019-04-17 23:08:10', '2019-04-17 23:08:10', NULL),
(121, 22, 21, NULL, 'Toi hai long voi san pham nay.', '2019-04-08 15:29:12', '2019-04-08 15:29:12', NULL),
(122, 20, 16, NULL, 'However, I\'ve got to the jury, in a helpless sort of life! I do it again and again.\' \'You are old,\' said the Dormouse; \'--well in.\'.', '2019-04-12 00:14:38', '2019-04-12 00:14:38', NULL),
(123, 58, 34, NULL, 'Mouse was speaking, so that they had settled down again very sadly and quietly, and looked at Alice.', '2019-04-27 06:25:37', '2019-04-27 06:25:37', NULL),
(124, 38, 29, NULL, 'Gryphon answered, very nearly carried it off. * * * * * * * \'Come, my head\'s free at last!\' said Alice a little more conversation with her arms round it as you.', '2019-05-11 00:43:22', '2019-05-11 00:43:22', NULL),
(125, 5, 24, NULL, 'Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Hatter.', '2019-04-21 07:24:04', '2019-04-21 07:24:04', NULL),
(126, 11, 7, NULL, 'And the moral of that is, but I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, this sort of lullaby to it in time,\' said the King. Here one of.', '2019-04-20 08:32:59', '2019-04-20 08:32:59', NULL),
(127, 36, 3, NULL, 'I know?\' said Alice, \'but I must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t believe there\'s an atom of meaning in them, after.', '2019-04-06 22:57:53', '2019-04-06 22:57:53', NULL),
(128, 1, 21, NULL, 'I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for repeating his remark, with variations. \'I shall sit here,\' the Footman went on to himself in an impatient tone.', '2019-05-05 03:35:49', '2019-05-05 03:35:49', NULL),
(129, 20, 7, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-04 17:54:14', '2019-03-04 17:54:14', NULL),
(130, 42, 28, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-03-29 17:49:37', '2019-03-29 17:49:37', NULL),
(131, 30, 4, NULL, 'They\'re dreadfully fond of beheading people here; the great wonder is, that I\'m doubtful about the temper of your.', '2019-04-16 06:59:17', '2019-04-16 06:59:17', NULL),
(132, 23, 29, NULL, 'I\'m never sure what I\'m going to begin with; and being ordered about in the house till she got into it), and sometimes she.', '2019-03-10 09:17:44', '2019-03-10 09:17:44', NULL),
(133, 3, 5, NULL, 'Because he knows it teases.\' CHORUS. (In which the words came very queer to ME.\' \'You!\' said the Gryphon. \'--you advance.', '2019-04-04 06:40:50', '2019-04-04 06:40:50', NULL),
(134, 14, 4, NULL, 'Cat. \'I don\'t quite understand you,\' she said.', '2019-03-11 15:05:29', '2019-03-11 15:05:29', NULL),
(135, 9, 11, NULL, 'THERE again!\' said Alice very politely; but she felt unhappy. \'It was a treacle-well.\' \'There\'s no sort of life! I do it.', '2019-04-24 10:23:10', '2019-04-24 10:23:10', NULL),
(136, 42, 38, NULL, 'After a minute or two she walked sadly down the chimney!\' \'Oh! So Bill\'s got to the rose-tree, she went on.', '2019-03-21 21:55:11', '2019-03-21 21:55:11', NULL),
(137, 15, 27, NULL, 'Mình mới nhận sữa hôm nay. Sữa mới và đặc biệt,. Bé mình rất thích. Cám ơn', '2019-04-15 08:21:54', '2019-04-15 08:21:54', NULL),
(138, 10, 7, NULL, 'For he can EVEN finish, if he were trying to fix on one, the cook and.', '2019-05-05 22:26:02', '2019-05-05 22:26:02', NULL),
(139, 3, 6, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-06 17:21:31', '2019-03-06 17:21:31', NULL),
(140, 36, 28, NULL, 'Cám ơn MilkStore đã giao hàng nhanh chóng và chúc các bà mẹ khác cũng tìm được sản phẩm tốt nhất cho con yêu nha!', '2019-05-02 10:57:02', '2019-05-02 10:57:02', NULL),
(141, 20, 10, NULL, 'I\'M a Duchess,\' she said to the rose-tree, she went on, \'I must be shutting up.', '2019-04-02 10:08:48', '2019-04-02 10:08:48', NULL),
(142, 8, 5, NULL, 'I\'m I, and--oh dear, how puzzling it all is! I\'ll try if I chose,\' the Duchess asked, with another hedgehog, which seemed to have the experiment tried. \'Very true,\' said.', '2019-05-06 22:46:58', '2019-05-06 22:46:58', NULL),
(143, 11, 35, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-10 06:20:30', '2019-03-10 06:20:30', NULL),
(144, 12, 24, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-04-14 11:35:29', '2019-04-14 11:35:29', NULL),
(145, 42, 29, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-05-05 15:32:15', '2019-05-05 15:32:15', NULL),
(146, 22, 14, NULL, 'YOU must cross-examine THIS witness.\' \'Well, if I would talk on such a dreadful time.\' So Alice got up in spite.', '2019-05-03 13:08:46', '2019-05-03 13:08:46', NULL),
(147, 16, 32, NULL, 'Alice hastily replied; \'at least--at least I mean what I was a child,\' said the Duck: \'it\'s generally a frog or a.', '2019-03-16 10:38:48', '2019-03-16 10:38:48', NULL),
(148, 7, 31, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-03-05 03:17:25', '2019-03-05 03:17:25', NULL),
(149, 9, 35, NULL, 'đóng gói cẩn thận, giao hàng nhiệt tình, ', '2019-05-09 21:21:53', '2019-05-09 21:21:53', NULL),
(150, 14, 38, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-03-13 06:55:10', '2019-03-13 06:55:10', NULL),
(151, 14, 5, NULL, 'Alice had been anxiously looking across the garden, called out.', '2019-03-19 18:26:02', '2019-03-19 18:26:02', NULL),
(152, 42, 21, NULL, 'Alice could hear the name of nearly everything there. \'That\'s the reason they\'re called lessons,\' the Gryphon interrupted in a low, timid voice, \'If you can\'t think! And oh, I wish you.', '2019-04-11 13:39:13', '2019-04-11 13:39:13', NULL),
(153, 36, 4, NULL, 'Queen will hear you! You see, she came rather late, and the three were all crowded.', '2019-04-04 18:36:52', '2019-04-04 18:36:52', NULL),
(154, 40, 34, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-17 10:59:32', '2019-04-17 10:59:32', NULL),
(155, 30, 27, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống', '2019-03-19 08:30:05', '2019-03-19 08:30:05', NULL),
(156, 8, 21, NULL, 'I gave her one, they gave him two, You gave us three or more; They all returned from him to you, Though they were trying to explain the paper. \'If there\'s no harm in trying.\'.', '2019-04-03 12:16:28', '2019-04-03 12:16:28', NULL),
(157, 56, 28, NULL, 'Từ ngày dùng bé nhà e không bị táo nữa mà tăng cân đều, vị dễ uống nên bé thích uống lắm lúc nào cũng đòi mẹ pha uống', '2019-03-22 15:40:29', '2019-03-22 15:40:29', NULL),
(158, 21, 16, NULL, 'Duchess. An invitation for the garden!\' and she was quite tired and out of their wits!\' So she began again. \'I should like to.', '2019-03-16 01:57:31', '2019-03-16 01:57:31', NULL),
(159, 15, 3, NULL, 'Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Owl had the dish as its share of the.', '2019-04-07 03:51:48', '2019-04-07 03:51:48', NULL),
(160, 12, 5, NULL, 'Hatter. \'Does YOUR watch tell you just now what the flame of a feather flock.', '2019-04-23 23:04:54', '2019-04-23 23:04:54', NULL),
(161, 36, 4, NULL, 'Mock Turtle, and said \'No, never\') \'--so you can find it.\' And she began looking at the Hatter, \'I cut some more.', '2019-03-22 18:23:28', '2019-03-22 18:23:28', NULL),
(162, 42, 29, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-05 10:46:05', '2019-03-05 10:46:05', NULL),
(163, 42, 14, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-02 17:09:06', '2019-03-02 17:09:06', NULL),
(164, 11, 38, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-05 06:28:02', '2019-04-05 06:28:02', NULL),
(165, 59, 3, NULL, 'DOTH THE LITTLE BUSY BEE,\" but it just now.\' \'It\'s the oldest rule in the shade: however, the moment how.', '2019-03-03 18:28:29', '2019-03-03 18:28:29', NULL),
(166, 2, 6, NULL, 'Still she went round the neck of the Lobster Quadrille?\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Lory, with a growl, And concluded the banquet--] \'What.', '2019-03-15 19:30:11', '2019-03-15 19:30:11', NULL),
(167, 30, 6, NULL, 'CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and she tried the effect of lying down on their.', '2019-04-07 03:39:02', '2019-04-07 03:39:02', NULL),
(168, 40, 28, NULL, 'March Hare went \'Sh! sh!\' and the Dormouse say?\' one of the house, and have next to no toys to play with, and oh! ever so many out-of-the-way things had.', '2019-03-02 01:00:52', '2019-03-02 01:00:52', NULL),
(169, 22, 14, NULL, 'It sounded an excellent plan, no doubt, and very soon found an opportunity of showing off a bit hurt, and she went on growing, and, as the March Hare.', '2019-04-21 13:37:20', '2019-04-21 13:37:20', NULL),
(170, 6, 8, NULL, 'Alice did not sneeze, were the verses on his spectacles. \'Where shall I begin, please your Majesty,\' said the Dormouse, who was a.', '2019-04-20 10:18:33', '2019-04-20 10:18:33', NULL),
(171, 14, 10, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-05 23:15:52', '2019-04-05 23:15:52', NULL),
(172, 21, 6, NULL, 'Adventures of hers that you weren\'t to talk about wasting IT. It\'s HIM.\' \'I don\'t even know what to beautify is, I suppose?\' said Alice. \'You are,\' said the Mock Turtle with a sudden leap.', '2019-03-06 23:03:36', '2019-03-06 23:03:36', NULL),
(173, 5, 4, NULL, 'Only I don\'t know what to uglify is, you know. Come on!\' So they went up to her feet as the game was going to be, from one end to the shore, and then the different.', '2019-03-31 14:10:02', '2019-03-31 14:10:02', NULL),
(174, 9, 18, NULL, 'Alice; \'living at the top of the hall; but, alas! the little magic bottle had now had its full effect, and she grew no larger: still it was too late to wish that!.', '2019-03-16 05:56:02', '2019-03-16 05:56:02', NULL),
(175, 5, 22, NULL, 'VERY deeply with a little nervous about it while the Dodo.', '2019-05-04 21:45:28', '2019-05-04 21:45:28', NULL),
(176, 9, 25, NULL, 'I must go by the officers of the treat. When the sands are all pardoned.\' \'Come, THAT\'S a good deal until she had never done such a curious.', '2019-04-19 10:10:09', '2019-04-19 10:10:09', NULL),
(177, 12, 2, NULL, 'Alice heard the Queen put on one knee as he spoke, and then sat upon it.) \'I\'m glad they don\'t seem to put everything upon Bill! I wouldn\'t say anything about it, you may SIT.', '2019-03-22 22:54:51', '2019-03-22 22:54:51', NULL),
(178, 57, 18, NULL, 'King. \'When did you begin?\' The Hatter was the White Rabbit, trotting slowly back to the seaside once in a very poor speaker,\' said.', '2019-03-25 00:06:05', '2019-03-25 00:06:05', NULL),
(179, 40, 9, NULL, 'The long grass rustled at her with large eyes like a snout than a pig, and she had put the hookah out of the shepherd boy--and the sneeze of the cakes, and was immediately.', '2019-04-16 17:26:08', '2019-04-16 17:26:08', NULL),
(180, 56, 18, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-04-23 08:58:19', '2019-04-23 08:58:19', NULL),
(181, 20, 23, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-03-29 03:04:09', '2019-03-29 03:04:09', NULL),
(182, 2, 23, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-03-25 13:26:26', '2019-03-25 13:26:26', NULL),
(183, 2, 29, NULL, 'Alice quite jumped; but she ran with all her life. Indeed, she had.', '2019-04-10 12:54:41', '2019-04-10 12:54:41', NULL),
(184, 42, 5, NULL, 'Gryphon, and the Gryphon at the Footman\'s head: it just grazed his nose, and.', '2019-03-20 19:53:16', '2019-03-20 19:53:16', NULL),
(185, 20, 38, NULL, 'Bé nhà mình đến tuổi ăn dặm thế là mình tim kiếm những sản phẩm phù hợp cho việc ăn dặm của bé và rất tin tưởng để chọn bột ăn dặm Hipp của Đức, Vị bột thơm ngon và rất tiếc kiệm thời gian cho mình pha chế cho con khi mình đã đến lúc đi làm lại.', '2019-04-15 08:10:38', '2019-04-15 08:10:38', NULL),
(186, 4, 22, NULL, 'Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon.', '2019-03-18 07:43:32', '2019-03-18 07:43:32', NULL),
(187, 11, 7, NULL, 'She got up this morning, but I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, and he poured.', '2019-04-16 05:44:10', '2019-04-16 05:44:10', NULL),
(188, 16, 34, NULL, 'I to get in?\' asked Alice again, for she was a general clapping of hands at this: it was as.', '2019-04-26 01:36:37', '2019-04-26 01:36:37', NULL),
(189, 2, 7, NULL, 'After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit put on his spectacles and looked very.', '2019-03-20 19:43:59', '2019-03-20 19:43:59', NULL),
(190, 7, 27, NULL, 'Sau khi sử dụng 1 thời gian sẽ phản hồi cho các bạn. Thanks all!', '2019-05-11 20:13:01', '2019-05-11 20:13:01', NULL),
(191, 5, 5, NULL, 'Still she went on, taking first one side and up I goes like a stalk out of sight; and an.', '2019-04-20 14:04:53', '2019-04-20 14:04:53', NULL),
(192, 1, 6, NULL, 'Though they were lying round the neck of the court, without even waiting to put the Dormouse began in a.', '2019-04-20 12:11:16', '2019-04-20 12:11:16', NULL),
(193, 21, 20, NULL, 'Caterpillar. \'Is that the way down one side and up the chimney, and said anxiously to herself, \'Why, they\'re only a mouse that had made out the proper way of escape, and wondering whether she.', '2019-03-06 06:33:26', '2019-03-06 06:33:26', NULL),
(194, 4, 14, NULL, 'Duchess; \'and that\'s a fact.\' Alice did not at all comfortable.', '2019-04-29 15:13:53', '2019-04-29 15:13:53', NULL),
(195, 12, 14, NULL, 'An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the Rabbit say.', '2019-04-05 00:05:50', '2019-04-05 00:05:50', NULL),
(196, 1, 4, NULL, 'I can\'t remember,\' said the Mock Turtle replied in an undertone, \'important--unimportant--unimportant--important--\' as if she.', '2019-05-04 01:19:21', '2019-05-04 01:19:21', NULL),
(197, 12, 8, NULL, 'The hedgehog was engaged in a voice of the conversation. Alice replied, rather shyly, \'I--I hardly.', '2019-04-23 18:05:15', '2019-04-23 18:05:15', NULL),
(198, 1, 21, NULL, 'March Hare. \'It was the first question, you know.\' \'I DON\'T know,\' said the King; and.', '2019-03-17 18:19:50', '2019-03-17 18:19:50', NULL),
(199, 1, 31, NULL, 'Sản phẩm tốt, chất lượng đảm bảo.', '2019-03-24 11:30:26', '2019-03-24 11:30:26', NULL),
(200, 7, 1, NULL, 'FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said.', '2019-03-17 03:11:12', '2019-03-17 03:11:12', NULL),
(201, 9, 6, NULL, 'As soon as look at me like a sky-rocket!\' \'So you think you\'re changed, do you?\' \'I\'m afraid I\'ve offended it again!\' For the Mouse with an air of great.', '2019-04-25 03:22:14', '2019-04-25 03:22:14', NULL),
(202, 12, 7, NULL, 'Gryphon, \'you first form into a pig,\' Alice quietly said, just as usual. I wonder what Latitude was, or Longitude I\'ve got to?\' (Alice had no idea.', '2019-04-13 11:34:13', '2019-04-13 11:34:13', NULL),
(203, 20, 25, NULL, 'Chất lượng sản phẩm tuyệt vời =))', '2019-05-02 01:06:11', '2019-05-02 01:06:11', NULL),
(204, 4, 14, NULL, 'I can find them.\' As she said to herself, \'if one only knew how to begin.\' He looked anxiously round, to make SOME change in my time, but never ONE with.', '2019-04-09 21:18:33', '2019-04-09 21:18:33', NULL),
(205, 15, 17, NULL, 'Giao hàng thành công! Chất lượng tốt.', '2019-05-08 01:11:59', '2019-05-08 01:11:59', NULL),
(206, 15, 17, 205, 'Liên hệ với tôi tại dohongvan@example.com', '2019-05-03 20:32:21', '2019-05-03 20:32:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'trantuanngoctn97@gmail.com', '2019-02-26 06:57:34', '2019-02-26 06:57:34'),
(2, 'ngoctt@gmailc.csq', '2019-03-09 09:15:33', '2019-03-09 09:15:33'),
(3, 'milkstore@gmail.uk', '2019-04-08 05:33:57', '2019-04-08 05:33:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tips', 'tips', '2019-02-18 07:31:15', '2019-02-18 07:31:15'),
(2, 'Healthy', 'health', '2019-02-18 07:32:59', '2019-02-18 07:32:59'),
(3, 'Milk store', 'milk-store', '2019-02-18 07:32:59', '2019-02-18 07:32:59'),
(4, 'Product', 'product', '2019-02-18 07:32:59', '2019-02-18 07:32:59'),
(5, 'Hot', 'hot', '2019-02-18 07:32:59', '2019-02-18 07:32:59'),
(6, 'News', 'news', '2019-02-18 07:32:59', '2019-02-18 07:32:59'),
(7, 'Entertainment', 'entertainment', '2019-02-18 07:32:59', '2019-02-18 07:32:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `provider_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `images`, `password`, `email`, `address`, `verified`, `verification_code`, `verified_at`, `status`, `provider_id`, `provider`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Tuấn Ngọc', 'ngoctt', '0975853528', NULL, '$2y$10$lEk0DHEXSGDA9ZVpnwAHsuQU1UvDYZj9nj69DaMuiJA1pD4CzY7Hq', 'trantuanngoc@gmail.com', 'thon Lai Oc, xa Long Hung, huyen Van Giang, tinh Hung Yen', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, '4bZL04421xDNDCWJFps67uL1Ire7u79tPGL3A5HYf8ce8gmkw8a6Bh9YAqur', '2019-03-29 23:20:16', '2019-05-10 02:42:05'),
(2, 'Nguyễn Diệu Anh', 'ndanh00', '0987193298', NULL, '$2y$10$GBvpQeyOsgyJe.5HQ5UNMubuWvvTcf0pvRixHFYygNHVpUL8.Fqay', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Việt Nam', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, 'hg0vYtidIaxbEV43XUtTsyN1LCoAgkyHPAQMukDhbw9jz8bfHLWKt7eVXIB0', '2019-03-29 23:20:16', '2019-03-06 08:24:16'),
(3, 'Keanu Reeves', 'keanureeves', '0389975223', NULL, '$2y$10$2ndpGrkpku9wpqzk6ycUKO1/UqIY1TABc3mGe5TiPD8QB8D1tT8EC', 'aletha74@example.com', 'Beirut, Lebanon, D3028 CMD', 1, NULL, '2019-04-13 10:33:23', '1', NULL, NULL, 'aSmcRpJRRLO5njilgzsNZoGMhiKNSHqG8YlMnP8W4V8JV1JTtxkQZ7rePPft', '2019-02-11 23:20:17', '2019-05-06 06:27:43'),
(4, 'Hà Anh Tuấn', 'haanhtuan', '0975841253', NULL, '$2y$10$.m1.yMDoqdCDQKK5JXLmo.qJTFojWK9Hzxdx4Ppjs5Ua971UFoYGW', 'haanhtuan@mail.net', 'TP Hồ Chí Minh, Việt Nam', 1, NULL, '2019-04-13 10:33:26', '1', NULL, NULL, 'qGXxIHuWdqPdZpPHVkmqeOlO3Fj3ZEFAOEuzfNVLqE9w6lvZS63yIGHNg1V6', '2019-02-11 23:20:17', '2019-05-06 08:38:41'),
(5, 'Dan Reynolds', 'danreynolds', '0498512589', NULL, '$2y$10$FLlqi5MhYwlqoxbrVVMn/exRGbJvNn.S9dVgfWwMUDyM7tOCPdQJW', 'shannon09@example.org', 'Las Vegas, Nevada, United States', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, 'UcoGuOTstlrAZab2TMSRJ4vSWEFimTnIuFu9C6fglYtwWPPMIALPs7Qm7HwS', '2019-02-11 23:20:17', '2019-05-06 08:03:06'),
(6, 'Ngô Công Công', 'ngochicong', '0958963269', NULL, '$2y$10$7RnBtk58.409ig3P0TshNOh0JxF0w/xu2eTNl6rlrHSPy76ye0Ao6', 'ngochicong@mail.com', 'Cẩm Phả. Quảng Ninh, Việt Nam', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, '19MTzhBtFHpR9EtjrGFD7IYtego473QkqjLg7wLx4HHQ8rvfcij7WNXQ0nfY', '2019-02-11 23:20:17', '2019-05-06 08:53:50'),
(7, 'Nguyen Huy Hop', 'huyhop', '0985497915', NULL, '$2y$10$fc/Io2JLw6ZRdhyWVE0sIexnVgF4f4WL7PaWycnnyY7wjwyA.yUzG', 'huyhop@example.org', 'huyện Chương Mỹ, TĐ Hà Nội, Việt Nam', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, 'DdIKutOLpOz29Gpb2EzY8bB16mLkkF8Pbf7mDLOlc7qfu0mCSRPsXxue4Scf', '2019-02-11 23:20:17', '2019-05-06 08:56:11'),
(8, 'Bùi Văn Sỹ', 'vansybui', '0985497990', NULL, '$2y$10$zqcTE6mFSw75/7a3/yxYZe85HRIG20GPjPrasMF2EooPrr7Im3Woe', 'vansybui@example.net', 'huyện Ý Yên, Tỉnh Nam Định, Việt Nam', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, 'c04HCCalnbIg0kco6dQlJOV7kAg3DnRaKIQouK6cQ3f8A4ifCSrxRasMT89m', '2019-02-11 23:20:17', '2019-05-06 08:56:17'),
(9, 'Mai Thanh Toán', 'maithanhtoan', '0985485950', NULL, '$2y$10$4cW0WnQ8a7qX2wGYZIdPCOwBcIdN8t6bcOFdXp/yexdUugg6ndppy', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673\r\nAliachester, NJ 03064-7847', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, 'rUgiZocGcryGu5X3dqa4EpFP1bfNjGXl1XniTzL3eCnwu1orNzCjIH0YBi3J', '2019-02-11 23:20:17', '2019-05-06 08:56:22'),
(10, 'Lâm Xung', 'lamxung', '0971025006', NULL, '$2y$10$tCCtB5KabxpG0QOk.fv1c.k1NZtmO1OExvzrLHUKwdTa6wRQcuWii', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc', 1, NULL, '2019-05-07 09:54:11', '1', NULL, NULL, 'fhanHcazgA4R3dYYrBMJIfn9QcJPKeAqlO51lGwTFRs7Y8iuhsMUVBaRHDX1', '2019-02-11 23:20:17', '2019-05-06 09:54:11'),
(11, 'Duong Tien Dat', 'tiendatd', '0985401595', NULL, '$2y$10$S6CXloKOI6RBSu99oFdiVOuvr6aOaesOQabZGw8QQMNd4.Hrj0a8.', 'tiendatd@mail.net', 'tỉnh Phu Tho, nước Viet Nam DTD', 1, NULL, '2019-05-07 09:54:11', '1', NULL, NULL, 'OESsv82IzCSM0jEAFSBL1hiFOM2FabQ1GJdPwNU72GTFccqwItwyPXrNKiWE', '2019-02-11 23:20:17', '2019-05-06 08:56:32'),
(12, 'Guiseppe Balistreri Sr.', 'zroob', '0985412006', NULL, '$2y$10$ExyYY7z45l3KpD01EnXtH.xx.6v1IPMcUATWL9OoqYy0zYSOs0oXa', 'thammes@example.net', '694 Ines Drive\r\nWest Jalenburgh, FL 45663', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 08:56:39'),
(13, 'Mr. Elmore Walker Sr.', 'framilucile', '0912390345', NULL, '$2y$10$DtN0t5KT6q7vnhTNJkjv9O5afUJC2WbvE3L8G53IRdpX4ofxswnT.', 'jamaal.fay@example.net', '58709 Feest Skyway\r\nHowellstad, NV 27169', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 08:56:44'),
(14, 'Nguyen Ngoc Son', 'nguyenson', '0985412301', NULL, '$2y$10$iuF6Dw4tt80CSYeCTe.mTekQI1IBHJT97xb/Fooi8kiOg8EkdvfRK', 'nguyenson@mail.com', 'Lại Ốc, Long Hưng, Văn Giang, Hưng Yên', 1, NULL, '2019-05-07 09:54:11', '1', NULL, NULL, 'DRSjRVFso4Ni4rmi6NYSC5Oz1DKrYxfhin8Rp5GyVeKYu1nfSFZX4SFFXRxy', '2019-02-11 23:20:17', '2019-05-06 08:56:49'),
(15, 'Do Hong Van', 'dohongvan', '0985496032', NULL, '$2y$10$FVj0dKPHuhBBYGlBzBpKIe2mFWs4kO0CXwBWrJYcyp58jrr1zMua2', 'dohongvan@example.com', '4438 Bayer Streets\r\nEast Aniyahaven, SD 24736', 1, NULL, '2019-05-07 09:54:11', '1', NULL, NULL, 'oASW6MPoRKWfp89Z5VXJRh8i2yaEL4xWXxNpTTek9m2anIxEYvOCzged4YU6', '2019-02-11 23:20:17', '2019-05-06 08:57:35'),
(16, 'Lê Văn Dũng', 'dunglv', '0985412345', NULL, '$2y$10$W2Br8AYUhY4oTHXbYQHYIuve3ZWAxy7HRPMAQyGXeaGc.70bFooSe', 'dunglv@gmail.com', 'tỉnh Thanh Hóa, Việt Nam', 1, '', '2019-05-07 09:54:11', '1', NULL, NULL, 'E5KVEd6MuagtSwZTCoP9BJvv00Krh0fBomzD13BlpTTGCPI05kGzBw0jLYZk', '2019-02-11 23:20:17', '2019-05-06 06:16:26'),
(20, 'Quỳnh Như', 'quynhnhu', '0975859698', NULL, '$2y$10$qdUDayOsrcw5hIaKlktjPOlGPK.b5qU9ZWxzBVqWZI/6yXRBcQRBO', 'quynhuorange@mail.na', 'xã Hưng Nguyên, tỉnh Nghệ An, Việt Nam', 1, NULL, '2019-05-06 09:54:11', '1', NULL, NULL, NULL, '2019-02-12 09:19:48', '2019-04-11 09:15:48'),
(21, 'Tran Thanh Tung', 'trantung', '0975853526', NULL, '$2y$10$QXFyodMJ.JLV85oJPKAX2uiLLx6P5MnWqny95j1YcnSv.jtdgp5Lu', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367', 1, NULL, '2019-05-06 09:54:11', '1', NULL, NULL, '1MpSRe3lZPvKUjRBw2NVdQDPfNpiKe2wl7IS8Uocm9pf1PUQnZ86KXdoCFSv', '2019-02-25 09:00:09', '2019-03-14 17:00:51'),
(22, 'Ngoc Tran Tuan', 'ngoctrantuan', '0975410002', NULL, '$2y$10$.sbI6BFoDbzKq07DChVsqOVxNf/BIiRmBJqRyD6nBXiv.bUnbRhcm', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805', 1, NULL, '2019-05-06 09:54:11', '1', NULL, NULL, 'oSShNCwIVhGuXyI8qhGfl6DA1Sg0k355Wx74gw1gWDCAlkVrYmTGEs6MKAjt', '2019-02-25 10:36:51', '2019-04-13 10:08:28'),
(23, 'Tran Van Hao', 'tvhao57', '0978852320', NULL, '$2y$10$XCktaXvDji.LYdez8QxCW.OjbgG56yXF7QGZS1e/JG0vwv/x8FHRO', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261', 1, NULL, '2019-05-06 09:54:11', '1', NULL, NULL, 'eNWZAnbljj8vqmOEd2bay0MIavQe78dQ43Mzb1gXcS8z4g4KUxpet3dHBmiK', '2019-02-25 10:50:30', '2019-04-13 10:08:12'),
(30, 'Tran Anh Duong', 'anhduong', '0975852639', NULL, '$2y$10$jVClT1LqJezQapBlexb/WeFRSp0l/drBtHD1N.wsKcVcHxdeXDcZO', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, NULL, '2019-02-26 04:18:35', '2019-04-13 10:07:46'),
(36, 'Tran Giao Linh', 'giaolinh', '0975852104', NULL, '$2y$10$kaJnWPhnQO0m/FJIwbFJYOyORUuOeaOGOfIbJ.AYC4tyWPg1Mtxxq', 'giaolinhhy@gmail.cc', '694 Ines Drive West Jalenburgh, FL 45663', 1, NULL, '2019-03-02 02:57:12', '1', NULL, NULL, 'VdW2J7NMfvIWEqARKXAOQUk5rdAPtbhHW9fmtZ0xLSVWnPgqqKZqWzFwVBwZ', '2019-03-02 02:56:59', '2019-03-02 02:57:12'),
(38, 'Tran Duy Hong', 'duyhong', '0974521691', NULL, '$2y$10$GgAAt/CYYNWPUcgkpf3KtO8kWBGTLl.uh5BRYfRy1ghNJNXyMmTaW', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen', 1, NULL, '2019-03-07 08:14:10', '1', NULL, NULL, NULL, '2019-03-07 08:13:07', '2019-03-28 04:49:17'),
(40, 'Do Thi Ha', 'dtha65', '0975852416', NULL, '$2y$10$r88qekLgtO9vQn/fmKwg3.eGbOEl0lyDcimsF8b05WAobSsie.5d6', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen', 1, NULL, '2019-03-25 10:05:49', '1', NULL, NULL, 'Kjh3EcllFSidGEHoTrztfMZGGvLTgAeMaqZmmQHusI47ds8ijyQmfcTksc8o', '2019-03-25 10:04:40', '2019-03-28 04:49:21'),
(42, 'Hong Hue', 'honghue', '0987193299', NULL, '$2y$10$tTpxCBU99jpIOWJYQfLjtO8xJht80Oy5xTWL/R/PDOu7M3sjiSFXu', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169', 1, NULL, '2019-04-09 03:44:44', '1', NULL, NULL, NULL, '2019-03-28 05:58:51', '2019-04-13 10:06:57'),
(56, 'Bui Thi Quyen', 'quyenquyen', '0974859606', NULL, '$2y$10$s/rbRf2fCP9h/5tdPyT2n.FFX.NiLIjYfRnPAEneZPNZ2H9.2Lumi', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam', 1, NULL, '2019-04-11 05:08:39', '1', NULL, NULL, 'F26tl9ti8RuQ6dfMHLm8s8zNrCB5gwom5ILMYg7pTkKrz2ArRYSG6ktSCpP2', '2019-04-11 05:08:23', '2019-05-06 06:32:34'),
(57, 'Nguyen Huu Luan', 'nghuuluan', '0975856260', NULL, '$2y$10$ysk4nMR0RdFRzaDLsLJQmO0WzY7TpxaIHk6FkD2H51oUy8Qette6u', 'nghuuluan@mail.com', '58709 Feest Skyway\r\nHowellstad, NV 27169', 1, NULL, '2019-04-11 05:08:39', '1', NULL, NULL, 'HKS8NsCq4WFYaJHJWRzRfMfGldIAWui45q7YqlfY6je0DOo0au16Nr189glz', '2019-04-23 07:11:47', '2019-05-06 04:42:37'),
(58, 'Tuan Ngoc', 'tuanngoc', '0385236236', NULL, '$2y$10$7JlfVhN5OV1rgHGjs1XYIOfquBtxSVecBy.1LfyAK3PqG4k7bIkmG', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen', 1, NULL, '2019-02-28 17:00:00', '1', '', NULL, 'tSoOzK0gis104Uclt0l8M4KL4WNpE1ytP7rK9ZOg32X6xeKMlssRWPTUq41r', '2019-05-06 04:41:32', '2019-05-11 08:52:25'),
(59, 'Lo Minh Duc', 'lmduc1997', '0975006960', NULL, '$2y$10$FZv/ZU1z2eEUb3Nf7BJ/cuTOoX3tgDPSaOIrMPmy9YOhMfOnKfW1S', 'lmduc@mail.com', 'Như Thanh, Thanh Hóa, VIệt Nam', 1, NULL, '2019-05-06 07:34:20', '1', NULL, NULL, 'xUJ7050jN03zH53u1cGkWJgSWUwRUSgDwphmQlY4zeOZ9VUwL5obTfO6INO3', '2019-05-06 07:33:30', '2019-05-12 02:42:51'),
(61, 'Hoàng Ngọc Thư', 'ngocthu', '0974108200', NULL, '$2y$10$5ASpLVJxsj/kRfeszjWd.efaUyFjybrDAq8HCHepznRV2z0jTAsyy', 'trantuanngoctn@gmail.com', 'số nhà 47, Hẻm 25/38/106, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.', 1, NULL, '2019-05-11 08:43:21', '1', NULL, NULL, NULL, '2019-05-11 08:42:48', '2019-05-11 08:43:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `writers`
--

CREATE TABLE `writers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `writers`
--

INSERT INTO `writers` (`id`, `name`, `username`, `phone`, `images`, `password`, `email`, `address`, `verified`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Ngọc Writer', 'tranngoc', '0389975223', NULL, '$2y$10$q5PIrzcgd88iDh3xVKwBSe5NIiaQPkV5qlrYZ5vC4QD0sHDWdNoUy', 'tranngoc@writer.com', 'Hưng Yên', 1, '1', 'p3cXIzBUyrjUqWPYy22JQfAmMfRZdarXfIlARHIKJ15d7pyrjFb2WvmhWXET', '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(2, 'Nguyen Dieu Anh', 'ndanh00', '01689975223', NULL, '$2y$10$ZQHYcvSH0daxJHXS/r1FZ.Dzot4x.pXjROJO0BvqdJqQ3EXDGoas6', 'ndanh00@writer.com', 'Quảng Ninh', 1, '1', 'jadZj5YNtg0Wq3A5fGeCwbCnjhLmNJaOTag7l3Zsg9CRVdahjpWPhvMuE7ax', '2019-02-11 23:20:17', '2019-02-26 10:27:34'),
(3, 'Quỳnh Như', 'quynhnhu', '0975896326', NULL, '$2y$10$ZQHYcvSH0daxJHXS/r1FZ.Dzot4x.pXjROJO0BvqdJqQ3EXDGoas6', 'quynhnhu@writer.com', 'Nghệ An', 1, '1', 'aWLd6GQhLtsS1JRgcSGuBzQV3eK1XWB9l9TMTOMUWfuLicpMUgBXNz6zprXD', '2019-02-11 23:20:17', '2019-02-11 23:20:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catagories_catagory_type_id_foreign` (`catagory_type_id`);

--
-- Chỉ mục cho bảng `catagories_types`
--
ALTER TABLE `catagories_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `distributions`
--
ALTER TABLE `distributions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `distributions_email_unique` (`email`),
  ADD UNIQUE KEY `distributions_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_author_id_foreign` (`author_id`) USING BTREE;

--
-- Chỉ mục cho bảng `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_comments_user_id_foreign` (`user_id`),
  ADD KEY `news_comments_news_id_foreign` (`news_id`);

--
-- Chỉ mục cho bảng `new_tags`
--
ALTER TABLE `new_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new_tags_new_id_foreign` (`new_id`),
  ADD KEY `new_tags_tag_id_foreign` (`tag_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dathang_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_catagory_id_foreign` (`catagory_id`),
  ADD KEY `products_distribution_id_foreign` (`distribution_id`);

--
-- Chỉ mục cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_comments_user_id_foreign` (`user_id`),
  ADD KEY `product_comments_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Chỉ mục cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribes_email_unique` (`email`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `writers_username_unique` (`username`),
  ADD UNIQUE KEY `writers_phone_unique` (`phone`),
  ADD UNIQUE KEY `writers_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `catagories_types`
--
ALTER TABLE `catagories_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `distributions`
--
ALTER TABLE `distributions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT cho bảng `new_tags`
--
ALTER TABLE `new_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `catagories`
--
ALTER TABLE `catagories`
  ADD CONSTRAINT `catagories_catagory_type_id_foreign` FOREIGN KEY (`catagory_type_id`) REFERENCES `catagories_types` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news_comments`
--
ALTER TABLE `news_comments`
  ADD CONSTRAINT `news_comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `news_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `new_tags`
--
ALTER TABLE `new_tags`
  ADD CONSTRAINT `new_tags_new_id_foreign` FOREIGN KEY (`new_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `new_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `dathang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_catagory_id_foreign` FOREIGN KEY (`catagory_id`) REFERENCES `catagories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_distribution_id_foreign` FOREIGN KEY (`distribution_id`) REFERENCES `distributions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD CONSTRAINT `product_comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
