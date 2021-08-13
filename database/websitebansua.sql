-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 07, 2019 lúc 03:49 AM
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
(1, 'Admin', 'admin', '123456', NULL, '$2y$10$3MY8RQZx2t4G9sTXsJJhiuAZiozh7lPpOEoCbjJIByb.164HM3Wuy', 'admin@admin.com', 'Hưng Yên', '1', 'CLUmjDwPPeaR9Mww05Wiico3lss2mkXLIT950ueTxRNyTUuOGIhr5tTdlt7d', '2019-02-11 23:20:16', '2019-03-03 03:03:27'),
(2, 'Anh ND', 'ndanh', '123456789', NULL, '$2y$10$svc6NE.Det85ruzGKikQguoG.ZRQ0jtbLAXOab/m7TzPS4boyQBJ.', 'ndanh@admin.com', 'Quảng Ninh', '1', 'wyKXYvUJCfcko2WRRilI1G7dtlVwSUFn6Tov8aYLeQgIqDTc7I2TuESQb0xT', '2019-02-18 07:07:38', '2019-02-18 07:07:38');

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
(1, 'Sữa Meiji', 'sua-meiji', 'Sữa Meiji bán chạy số 1 Nhật Bản là sữa mát Tốt Cho Hệ Tiêu Hóa chống táo bón hiệu quả, đồng thời bổ sung đầy đủ DHA giúp bé Phát Triển Toàn Diện.', 1, '0', '2019-02-11 23:20:17', '2019-02-28 09:48:21'),
(2, 'Glico ICreo', 'glico-icreo', 'Sữa Icreo Glico với công thức đặc biệt gần giống sữa mẹ nhất giúp bé phát triển toàn diện tốt cho hệ tiêu hóa của trẻ. Sữa bột Glico bổ sung đầy đủ DHA và các dưỡng chất cần thiết cho bé.', 1, '1', '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(3, 'Sữa Nan', 'sua-nan', 'Sữa Nan là một dòng sữa mát nổi tiếng được các bà mẹ tin dùng. Sữa chứa các thành phần dinh dưỡng quan trọng giúp bé phát triển về não bộ, khả năng tiếp thu nhanh, phát triển về thị giác, hệ tiêu hóa tốt, hệ miễn dịch cao và cân bằng thể chất, cân nặng.', 1, '1', '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(4, 'Sữa Pediasure', 'sua-pediasure', 'Sữa Pediasure là một trong những sản phẩm sữa bột nổi tiếng của Abbott Hoa Kỳ được nhập khẩu chính hãng từ Úc, Singapore và Mỹ đặc trị chứng biếng ăn, thoát khỏi tình trạng còi xương và suy dinh dưỡng ở trẻ nhỏ.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(5, 'Sữa Similac', 'sua-similac', 'Sữa Similac được sản xuất theo công thức dinh dưỡng sữa mẹ chứa đầy đủ các dưỡng chất thiết yếu giúp bé tăng trưởng và phát triển khỏe mạnh.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(6, 'Sữa Enfa', 'sua-enfa', 'Sữa Enfa là một trong những loại sữa bột nổi tiếng được rất nhiều người biết đến, là sự kết hợp độc đáo của nhiều dưỡng chất quan trọng cho sự phát triển toàn diện và chức năng não bộ của bé. ', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(7, 'Sữa Friso', 'sua-friso', 'Sữa Friso là sản phẩm sữa bột cho bé được rất nhiều các bà mẹ lựa chọn sử dụng cho con yêu bởi sản phẩm luôn chú trọng đến sự phát triển hệ miễn dịch và trí não tốt nhất của trẻ.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(8, 'Sữa XO', 'sua-xo', 'Sữa XO là một trong những loại sữa bột cho bé được các hàng triệu bà mẹ trên thế giới tin dùng, với những thành phần dưỡng chất có trong sữa giúp trẻ phát triển toàn diện.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(9, 'Sữa Abbott Grow', 'sua-abbott-grow', 'Abbott Grow thương hiệu sữa số 1 HOA KỲ được cả thế giới tin dùng. Với công thức đặc biệt chứa AHA, DHA, Cholin, Taurin, Canxi cùng các vitamin và khoáng chất thiết yếu giúp bé phát triển toàn diện bé cao hơn, thông minh hơn, mắt sáng hơn.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(10, 'Sữa Physiolac', 'sua-physiolac', 'PHYSIOLAC là dòng sản phẩm được các bà mẹ tại Pháp cũng như toàn thế giới tin tưởng lựa chọn là người bạn đồng hành giúp bé yêu phát triển tốt nhất. ', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(11, 'Sữa Hipp', 'sua-hipp', 'Sữa bột HiPP cung cấp protein ở dạng dễ tiêu hóa nhất, các loại vitamin, khoáng chất và các dưỡng chất cần thiết để con yêu phát triển toàn diện với cơ thể khỏe mạnh, trí não thông minh và mau lớn. Với công thức mới giúp bé ăn ngon miệng và phù hợp với tiêu hóa của trẻ.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(12, 'Sữa Gallia', 'sua-gallia', 'Gallia sữa số 1 tại Pháp được các bà mẹ Châu Âu tin tưởng sử dụng. Với công thức riêng biệt giúp bổ sung đầy đủ chất dinh dưỡng cho trẻ nhỏ.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
(13, 'Sữa Morinaga', 'sua-morinaga', 'Sữa Morinaga Nhật Bản hỗ trợ tăng cân và phát triển chiều cao toàn hiện, là dòng \"sữa rau\" sữa mát hỗ trợ tình trạng táo bón ở trẻ. Morinaga là loại sữa được các bác sĩ ở Viện \"Nhi\" của Nhật thường sử dụng cho trẻ.', 1, '1', '2019-02-11 23:20:18', '2019-02-11 23:20:18'),
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
(10, 'Sữa các loại', 'sua-cac-loai', '0', '2019-03-06 07:02:03', '2019-03-06 07:03:23');

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
(1, 'Tran Van Ngoc', 'ngocngocngoc@sd.ff', '0987651000', 'Tran Van Ngoc LIÊN HỆ VỚI CHÚNG TÔI GỬI LỜI NHẮN We\'d love to hear from you - please use the form to send us your message or ideas. Or simply pop in for a cup of fresh tea and a cookie', '2019-02-18 03:35:01', '2019-02-18 03:35:01'),
(2, 'Anh ND', 'ndanh@gmail.com', '0168997859', 'Hello world!', '2019-02-18 04:00:01', '2019-02-18 04:00:01'),
(5, 'ádasdasdasd', 'asasdasd@asdasd.asd', '0975856968', 'ádasdasdasd  asasdasd@asdasd.asd asasdasd@asdasd.asd', '2019-02-26 09:44:28', '2019-02-26 09:44:28'),
(6, 'Anh ND', 'annd@gmail.com', '0975845696', 'Good luck and have a nice day :D', '2019-03-06 03:45:24', '2019-03-06 03:45:24');

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
(12, 'TH', 'th', 'th@th.vn', '0975853596', 'USA', '<p><strong>Được </strong><em><strong>th&agrave;nh lập từ năm 1888, Abbott &ndash; c&ocirc;ng ty chăm s&oacute;c sức khỏe h&agrave;ng đầu thế giới, chuy&ecirc;n nghi&ecirc;n cứu, ph&aacute;t triển, sản xuất v&agrave; đưa ra c&aacute;c sản phẩm v&agrave; dịch vụ chăm s&oacute;c sức khỏe c&oacute; chất lượng cao trong lĩnh vực dinh dưỡng, dược phẩm, thiết bị chẩn đo&aacute;n v&agrave; điều trị. Abbott đến Việt Nam v&agrave;o năm 1995 v&agrave; cam kết hết l&ograve;ng chia sẻ tr&aacute;ch nhiệm c&ocirc;ng d&acirc;n với x&atilde; hội Việt Nam. Với hiểu biết s&acirc;u sắc về khoa học dinh dưỡng v&agrave; c&aacute;c nhu cầu trong cuộc sống, Abbott lu&ocirc;n ti&ecirc;n phong trong lĩnh vực dinh dưỡng v&agrave; chăm s&oacute;c sức khỏe nhằm n&acirc;ng cao chất lượng cuộc sống. C&aacute;c sản phẩm dinh dưỡng của Abbott d&agrave;nh cho trẻ em, người lớn tuổi cũng như chăm s&oacute;c sức khỏe nằm trong số c&aacute;c nh&atilde;n hiệu được tin cậy nhất tr&ecirc;n thế giới</strong></em></p>', '1', '2019-02-12 07:19:20', '2019-02-12 07:20:35');

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
(81, 'App\\News', 79, 'news_image', 'cong-phuong-xuan-truong-xuat-ngoai-hagl-con-mo-vo-dich-v-league', 'cong-phuong-xuan-truong-xuat-ngoai-hagl-con-mo-vo-dich-v-league.jpg', 'image/jpeg', 'media', 259191, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 75, '2019-02-20 07:15:10', '2019-02-20 07:15:11'),
(82, 'App\\News', 76, 'news_image', 'chu-dinh-nghiem', 'chu-dinh-nghiem.JPG', 'image/jpeg', 'media', 131347, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 76, '2019-02-20 09:56:07', '2019-02-20 09:56:09'),
(84, 'App\\News', 46, 'news_image', 'mo-hinh-hoat-dong-laravel', 'mo-hinh-hoat-dong-laravel.jpg', 'image/jpeg', 'media', 128728, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 78, '2019-02-20 10:16:18', '2019-02-20 10:16:18'),
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
(97, 'App\\News', 86, 'news_image', 'egg4', 'egg4.png', 'image/png', 'media', 1084531, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 91, '2019-02-27 02:57:07', '2019-03-01 09:18:52'),
(98, 'App\\News', 87, 'news_image', 'cop4-768x538', 'cop4-768x538.png', 'image/png', 'media', 600063, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 92, '2019-02-27 02:59:28', '2019-03-01 09:18:52'),
(99, 'App\\News', 85, 'news_image', 'High-Society', 'High-Society.png', 'image/png', 'media', 806912, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 93, '2019-02-27 03:00:24', '2019-03-01 09:18:53'),
(100, 'App\\News', 84, 'news_image', 'cop-3', 'cop-3.png', 'image/png', 'media', 773074, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 94, '2019-02-27 03:00:48', '2019-03-01 09:18:53'),
(103, 'App\\News', 80, 'news_image', '9-1550629341111', '9-1550629341111.jpg', 'image/jpeg', 'media', 62837, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 96, '2019-02-27 03:05:56', '2019-03-01 09:18:54'),
(110, 'App\\News', 88, 'news_image', 'voices', 'voices.jpg', 'image/jpeg', 'media', 345573, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 102, '2019-03-01 08:49:14', '2019-03-01 09:18:54'),
(117, 'App\\Product', 18, 'product_avatar', '1551431562-3c773ab92d20a081802bbd22d563a6b6', '1551431562-3c773ab92d20a081802bbd22d563a6b6.jpg', 'image/jpeg', 'media', 305727, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 109, '2019-03-01 09:12:48', '2019-03-01 09:12:50'),
(118, 'App\\Product', 18, 'product_details', '1551431564-51b9a1e647100cd6df003cbc00ff2618', '1551431564-51b9a1e647100cd6df003cbc00ff2618.jpg', 'image/jpeg', 'media', 316032, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 110, '2019-03-01 09:12:50', '2019-03-01 09:12:51'),
(119, 'App\\Product', 18, 'product_details', '1551431565-3c773ab92d20a081802bbd22d563a6b6', '1551431565-3c773ab92d20a081802bbd22d563a6b6.jpg', 'image/jpeg', 'media', 305727, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 111, '2019-03-01 09:12:51', '2019-03-01 09:12:51'),
(122, 'App\\Product', 7, 'product_avatar', '1551431820-p25_large2839', '1551431820-p25_large2839.jpg', 'image/jpeg', 'media', 26329, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 113, '2019-03-01 09:17:07', '2019-03-01 09:17:08'),
(123, 'App\\Product', 3, 'product_avatar', '1551431823-p5_largedf3d', '1551431823-p5_largedf3d.jpg', 'image/jpeg', 'media', 23405, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 114, '2019-03-01 09:17:09', '2019-03-01 09:17:09'),
(124, 'App\\News', 82, 'news_image', 'santin_zing_2', 'santin_zing_2.jpg', 'image/jpeg', 'media', 136841, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 115, '2019-03-01 10:14:31', '2019-03-01 10:14:31'),
(127, 'App\\User', 2, 'user_avatar', 'cat4', 'cat4.jpg', 'image/jpeg', 'media', 75446, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 116, '2019-03-04 10:37:42', '2019-03-04 10:37:42'),
(128, 'App\\User', 1, 'user_avatar', '1KeanuReeves', '1KeanuReeves.jpg', 'image/jpeg', 'media', 77974, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 117, '2019-03-05 08:47:38', '2019-03-05 08:47:40'),
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
(156, 'App\\Product', 27, 'product_details', '1551860278-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-5-org', '1551860278-sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-5-org.jpg', 'image/jpeg', 'media', 199518, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 145, '2019-03-06 08:18:33', '2019-03-06 08:18:34');

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
(168, '2014_10_12_100000_create_password_resets_table', 1),
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
(192, '2019_02_11_083135_create_order_details_table', 10);

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
(46, 'Uống sữa có lợi cho sức khỏe', 'uong-sua-co-loi-cho-suc-khoe', '<p>Uống sữa c&oacute; lợi cho sức khỏe Corrupti odit ipsam veniam dolor. Possimus autem excepturi et voluptatibus atque ex assumenda. Ab ullam quidem quidem deserunt. Provident occaecati soluta velit modi quis. Ut sunt est aut tenetur beatae. Velit dolorem autem et iusto quis quo est. Et et est rerum. Ea excepturi distinctio itaque unde omnis. Eaque necessitatibus dolorem eaque nulla.</p>', 2, '1', 29, '2019-02-18 08:15:46', '2019-02-26 10:38:34', NULL),
(47, 'Uống sữa tốt lắm', 'hic-corrupti-placeat-odit-repellat', 'Voluptatem aut consequuntur velit molestias voluptatem in vel. Aut natus sed quaerat laboriosam aspernatur doloribus voluptatem. Et eius non harum aut. Suscipit et vel voluptatibus ratione quidem. Dolor est officia laudantium. Sed voluptas voluptate numquam ex id eos. Molestias aliquam delectus officiis ut nihil. Quas aut culpa sed. Eos dicta repellat molestiae asperiores earum ratione. Dolorem consequatur distinctio possimus odit officia. Tempore ipsum perferendis dicta consequatur quis ducimus. Voluptatem consequuntur doloremque eos accusamus aliquam. Saepe voluptatem accusamus sit sed dolores labore accusantium. Eaque similique porro delectus.', NULL, '1', 4, '2019-02-18 08:15:46', '2019-02-20 03:57:31', NULL),
(48, 'Uống sữa tăng canxi', 'quidem-sed-error', 'Iste aperiam minus voluptatem quaerat excepturi nisi. Iste consequatur id vel nihil iusto minima ut sit. Eum asperiores placeat perferendis ratione. Nemo est iste est quas sunt rerum. Rerum quidem hic nihil nihil. Qui illum culpa porro laborum quaerat aut id. Qui velit voluptate cupiditate qui asperiores soluta. Maiores sint numquam voluptatem ut repellat expedita quis doloremque. Doloribus porro at corrupti sunt sequi quia repudiandae ipsa.', 3, '1', 5, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(49, 'Uống sữa tươi mỗi ngày nhé', 'nam-ut-dolor-nihil', 'Ab maxime consequatur cumque omnis qui. Veniam vero blanditiis sint ut enim commodi. Sequi repudiandae qui ut quidem vel. Id non qui illo ipsa ut. Dolor nihil iusto et. Eos corrupti maiores ipsum et quos ea inventore laboriosam. Totam ratione aut explicabo autem omnis praesentium sint. Veritatis qui itaque doloribus aut alias id ut. Maxime quisquam neque expedita recusandae. Et eveniet deserunt possimus ad id repudiandae. Quisquam magni dicta tempora laborum vero voluptatem laudantium quae.', 2, '1', 10, '2019-02-18 08:15:46', '2019-02-19 13:58:56', NULL),
(50, 'Uống sữa đi nào!', 'iste-eveniet-accusantium-eveniet-vero', 'Odit similique commodi ratione accusamus et nisi. Eos ratione qui placeat labore. Explicabo ullam aut quam nihil quisquam quibusdam qui. Quasi molestiae accusamus quae asperiores eum ut. Vel quo eius aut reprehenderit et et in. Voluptatem commodi omnis eum asperiores. Eos consequatur est culpa temporibus voluptate sit sint. Accusamus dolore adipisci eligendi aut non ratione cupiditate sed. Fugiat fuga eligendi et sed aspernatur odit et. Non reprehenderit voluptatibus sed inventore sapiente et officiis. Recusandae molestiae velit autem ut magni et sint.', 1, '1', 10, '2019-02-18 08:15:46', '2019-02-19 14:17:20', NULL),
(51, 'Nihil quod doloribus voluptatem fugit.', 'et-est-blanditiis-praesentium-fuga', 'Nulla sit maxime quo quia autem. Consequatur dolores iste et inventore. Voluptates repellendus corporis modi. Fugiat excepturi officia laborum et ad magni dignissimos. Aut dicta laboriosam consequatur nam architecto eos ipsum. Recusandae odio possimus dolorum sed. At sed voluptatem et occaecati unde voluptatem fugiat nobis. Voluptatibus ab perspiciatis quam voluptatem. Nesciunt consequuntur aut ea libero adipisci. Ducimus dolorem expedita laboriosam odit quidem fugit non. Earum quia quia velit possimus quia. Numquam incidunt et dolor aut. Non non quia unde illo ducimus natus.', NULL, '1', 11, '2019-02-18 08:15:46', '2019-02-19 13:58:34', NULL),
(52, 'Atque perspiciatis ea amet voluptatem.', 'nam-possimus-excepturi-quasi', 'Libero voluptate illo quod quis. Quibusdam dolores voluptatum est dolorem ipsa atque incidunt nihil. Autem dolores cupiditate at ad autem corrupti accusantium. Ipsum dolores corrupti ab ut. Perferendis et et molestiae et. At unde saepe recusandae labore ea eaque aut tempora. Quos eum quis alias. Iure quia excepturi illo cupiditate veritatis magnam deleniti. Modi delectus totam aut reiciendis. Sed voluptatem dolorem inventore quidem reiciendis accusamus eum. Vel facilis non porro voluptas. Et aperiam nesciunt et quibusdam repudiandae id aut. Ea ducimus et porro quod fuga. Nulla in ullam ratione aut quae consequatur.', 1, '1', 2, '2019-02-18 08:15:46', '2019-02-20 04:05:40', '2019-02-20 04:05:40'),
(53, 'Aperiam ut qui similique.', 'voluptatibus-commodi-aut-corrupti', 'Aut repellendus tenetur perferendis quia doloribus. Sunt ex iste aut quos esse. Recusandae aut maxime nesciunt et sed repellat nisi. Fugit reprehenderit consequatur fuga laborum at. Et quo ut provident sed molestias quas illo. Exercitationem commodi dolorem similique. Delectus ut et autem quia quam reprehenderit. Soluta non beatae omnis vero harum. Temporibus inventore omnis magni suscipit. Eum quisquam ipsum error ratione iste.', 3, '1', 7, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(54, 'Et est officia non aut.', 'adipisci-adipisci-rerum', 'Expedita vel eos rerum voluptas ut rerum aut. Id eos accusamus occaecati amet voluptatum excepturi dolorem. Consequatur aut ut id veniam quo non dicta. Sunt aspernatur voluptas cupiditate nisi atque. Eaque consequuntur sit maiores eligendi et laboriosam. Illo voluptatem est quibusdam at quis incidunt quas. Asperiores earum quasi ut repellendus soluta minus enim harum. Deleniti natus est facere rerum aut in. Tempora nesciunt dolore aut omnis quisquam voluptatem dolorem repudiandae. Et sint maxime cumque ducimus numquam excepturi corrupti.', NULL, '1', 8, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(55, 'Aperiam et atque molestiae.', 'cum-esse-et', 'Sit fuga et et corrupti quis vitae consequatur. Doloremque tenetur incidunt consectetur vitae nam. Modi incidunt eos iusto sit nihil dolorem. Magnam doloremque corporis nisi quia repellendus laudantium. Est ut labore nam enim vel enim dolorem. Culpa eum ex ea et itaque voluptatem cupiditate. Dolores assumenda sunt quam possimus non maiores qui. Qui ut voluptatem corporis et. Quod facilis repellendus iusto molestiae. Totam eaque perferendis quis magni officia. Non ipsa ipsum sit minima ducimus sed.', 3, '1', 5, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(56, 'Ad consequatur asperiores itaque.', 'voluptatem-placeat-tempore-impedit-dolorem', 'Sit et doloribus cumque alias. Nobis et iusto mollitia doloribus illum aperiam. Quis illo excepturi aut placeat. Delectus delectus est rerum dolore. Recusandae molestiae distinctio facere sunt explicabo. Libero cupiditate maiores pariatur voluptatem necessitatibus. Repellendus qui atque ratione vitae qui corporis hic.', 3, '1', 1, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(57, 'Recusandae omnis et repudiandae praesentium.', 'sequi-adipisci-eius-corporis-provident', 'Ex dolor minus qui magnam harum aut. Iste quo quia omnis illo nesciunt eum ea perspiciatis. Animi eaque totam dolore et alias. Et consequatur voluptates enim omnis. Deserunt amet adipisci temporibus consectetur aut eveniet. Non recusandae vero eveniet nostrum tenetur iusto. Autem eum dolore iure. Sit voluptates sint occaecati corrupti. Eos quaerat ea quis et. Nisi omnis minima fugiat nam non asperiores tenetur. Placeat qui est qui.', 2, '1', 2, '2019-02-18 08:15:46', '2019-03-03 03:09:00', NULL),
(58, 'Laboriosam doloribus alias ducimus ut.', 'molestias-unde-consequuntur-vel-reprehenderit-qui', 'Est tempora est in et dolore. Et mollitia modi sed. Non et aut ratione. Eum molestiae voluptas aperiam cum error molestiae. Consequatur ea omnis vitae. Aut quisquam iusto qui magni aut sint natus deleniti. Et mollitia facilis molestiae explicabo nihil. Non quos iste qui voluptatem excepturi. Est rem totam corporis nihil architecto. Expedita esse nesciunt necessitatibus accusantium culpa. Consequatur veniam in quam et id. Assumenda id ullam eum aliquid aspernatur quas.', 1, '1', 5, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(60, 'Ducimus vitae ad blanditiis voluptatem.', 'voluptatibus-voluptatem-sed-cumque', 'Laborum veritatis blanditiis quae sit et. Id ratione dolorum praesentium consequuntur. Atque optio non corporis dolore. Veritatis veritatis velit sapiente ipsa aut deleniti in officiis. Porro quia sapiente maiores autem. Totam ex eius aut omnis itaque velit impedit. Et repellat sed ut veritatis. Consequatur vel quis sunt saepe quaerat. Et nihil maxime ea aliquid reiciendis est quo. Quia provident praesentium quia nesciunt. Qui vitae vitae est sit blanditiis voluptatem. Distinctio repudiandae nam tenetur aspernatur omnis tempora consequatur. Unde qui sunt delectus est. Architecto sequi aliquid voluptas eos.', NULL, '1', 2, '2019-02-18 08:15:46', '2019-02-20 04:05:22', '2019-02-20 04:05:22'),
(63, 'Xóa Non qui dolore tempore.', 'fugit-ex-ab-numquam-animi', 'Exercitationem sint hic qui exercitationem praesentium. Dolorem quia sunt quo. Repellendus nostrum quod accusantium qui illo velit. Dicta et magnam illum sint tenetur consequatur. Optio consectetur corporis sit dignissimos. Porro inventore officia possimus et cupiditate quibusdam. Ad tempora et et animi ut omnis quos. Et sed omnis incidunt aliquam suscipit qui sunt consequatur. Voluptatem et aspernatur alias repellat eos recusandae. Unde dolorem explicabo expedita quis. Illum ea magni vel non porro dolorem odit. Doloremque provident porro amet voluptas sapiente. Nobis deserunt quo quia.', 2, '1', 3, '2019-02-18 08:15:46', '2019-02-20 04:04:45', NULL),
(65, 'Consequuntur nam accusamus qui.', 'velit-fugiat-quo-vitae-et', 'Quo distinctio incidunt vel sequi. Et ea esse sunt tenetur at ipsam. Aspernatur voluptatem assumenda dolorum ipsa saepe aliquam. Ut repudiandae et officia corrupti non nihil molestias. Quidem error voluptatum error omnis non cupiditate pariatur veniam. Minus est sed eligendi aperiam ut iusto. Et rerum natus dolor illum voluptatem sit. Saepe deleniti in explicabo sequi aliquid ad. Pariatur exercitationem aut doloribus officiis vitae alias ut. Qui delectus illum ipsum ab et.', NULL, '1', 2, '2019-02-18 08:15:46', '2019-02-20 04:04:55', NULL),
(66, 'Sunt est in velit qui laboriosam.', 'voluptates-eligendi-doloribus-voluptas-et', 'Pariatur sunt vel eligendi iure ab odit. Et doloribus quam ad et et. Reprehenderit voluptate eaque illo aliquam. Consequatur et perferendis fuga velit mollitia voluptatum aliquam. Ut qui qui sit corporis. Et et velit quae qui. Ab mollitia voluptatibus voluptatem soluta architecto enim tempore.', 1, '0', 5, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(67, 'Molestias tempora totam.', 'explicabo-et-perferendis-veniam-delectus-cumque', 'Doloribus quo hic optio accusantium cum modi. Voluptatem minus porro modi sed optio aut possimus autem. Excepturi facere eius eius omnis. Officiis natus fugit debitis cumque. Eum beatae et perspiciatis est dicta optio et dolorum. Et hic vel reprehenderit necessitatibus qui quia. Et temporibus aliquid repudiandae voluptas. Iusto libero dignissimos molestiae ea. Voluptate quidem optio consectetur minus quod a. Nisi sed rem aut reprehenderit.', 2, '0', 5, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(68, 'Recusandae a eligendi.', 'et-autem-et-voluptate', 'Totam voluptates placeat sapiente sunt quaerat. Possimus soluta vel iste pariatur. Qui et saepe explicabo ut doloremque velit minima. Porro numquam quia dolores molestias non. Sit nostrum natus id natus sunt incidunt. Est voluptatem dicta iusto et enim. Quasi molestiae omnis in occaecati et similique praesentium ipsam. Harum perspiciatis quo ut ducimus repudiandae omnis. Autem autem maxime temporibus repudiandae. Tempore cum quia est autem necessitatibus occaecati ipsam. Id et dolores quo quos modi. Et perferendis molestiae cupiditate accusamus reprehenderit ipsum ad. Qui fugit laudantium non. Ipsum velit deserunt a.', 2, '0', 10, '2019-02-18 08:15:46', '2019-02-19 13:59:07', NULL),
(69, 'Architecto eos et nobis.', 'eos-natus-cumque-ex-molestiae', 'Omnis aut nihil rerum expedita sapiente et ducimus. Aliquam odit consequatur quisquam accusantium. Ipsum dolore sunt quibusdam sed. A veniam impedit soluta eos itaque qui. Voluptatem enim perferendis veniam non officia neque temporibus. Voluptatibus repellat nesciunt eum ea voluptatibus quas dolor quae. Qui optio et ratione est. Omnis voluptatum maxime voluptas enim. Ullam nostrum totam amet autem nobis odio ex amet. Facere deleniti eveniet maiores nam cupiditate aut ullam voluptates. Alias dolor qui itaque fugit nesciunt. Fuga nesciunt doloremque voluptatem ut fugiat.', 1, '0', 6, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(70, 'Unde aut consequuntur.', 'ab-quia-non-cum-voluptatem-rerum', 'Fugiat assumenda eum asperiores harum aperiam aperiam in. Vel pariatur illo eos officiis. Occaecati rerum non sint perferendis. Ullam nihil veritatis culpa. Sit laborum expedita corporis qui dolorum eius eius nisi. Repellendus aliquam omnis veniam repellendus. Et velit aut libero. Dolorem atque id labore ut. Sit voluptates eos molestias sed sit quas. Sunt enim maiores ut et sapiente maxime. In molestiae quis consequatur voluptatem illo. Esse inventore cum qui non nostrum rerum. Beatae doloribus aspernatur iure qui qui aliquid. Nisi alias velit saepe reprehenderit earum ut.', 3, '1', 3, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(71, 'Dolore maiores ut a.', 'et-eos-ut-minima-rem', 'Sint in voluptatibus ad consectetur in assumenda. Corrupti in vel ut facilis fugit est. Voluptatem velit ut nam quod tenetur dolor. Quaerat quod fugiat corporis velit voluptatem repellat itaque. Harum dignissimos aut occaecati rerum. Placeat nihil repudiandae harum voluptatibus. Nisi molestiae sunt quia. Quia quos doloribus voluptate et nulla amet. Eius ipsa tempore eius voluptatum hic velit. Sunt et esse ea eum fugit rerum eius veritatis. Aut consequuntur accusantium excepturi totam. Porro nemo voluptates quae voluptatem quod molestiae. Rem voluptatum mollitia ullam aliquam rerum voluptate. Qui voluptas atque voluptas.', 2, '1', 9, '2019-02-18 08:15:46', '2019-03-03 03:08:52', '2019-03-03 03:08:52'),
(72, 'Voluptates consequatur rerum labore.', 'possimus-ut-cum-tempora-itaque', 'Sint minus deserunt et. Quia iure aspernatur earum. Voluptas dolor harum cum sit. Dignissimos sed eaque debitis laborum. Omnis et quis perspiciatis exercitationem quia. Voluptatem nihil suscipit sequi. Atque voluptas magnam saepe reiciendis recusandae perferendis minima doloribus.', 1, '1', 2, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(73, 'Et fuga aut eius.', 'corporis-aut-explicabo', 'Iusto hic mollitia natus et qui odio qui. Fuga consectetur est ipsum voluptates. Aperiam saepe cupiditate eos architecto. Ullam quia nostrum aspernatur ipsa dolores. Quia sed earum accusamus maxime. Vitae fugiat pariatur omnis. Optio laudantium ipsam corporis sapiente at reiciendis vitae culpa. Ut reprehenderit ex molestiae sunt in molestiae assumenda. Maxime voluptas voluptatum eum sapiente accusamus.', 1, '1', 2, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(74, 'Doloribus dolorum ipsam qui.', 'laboriosam-quo-debitis-dolorum-est', 'Repellat consequatur aperiam provident quaerat. Adipisci dolor vero quas tempora fuga placeat. Totam dolorem in esse aut velit quod dignissimos. Sapiente sed et quis cupiditate. Quibusdam voluptatibus cum quam natus est. Excepturi dolorem doloribus quod eum provident. Molestias vel dignissimos ducimus. Ipsa ut occaecati voluptate ullam reiciendis et. Accusamus facilis maiores consequatur quod.', 2, '1', 8, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(75, 'Magnam totam et sit.', 'facere-in-deleniti-omnis', 'Quo dolores possimus accusantium. Et quaerat nam reprehenderit nisi quia sunt officia. Laborum magni rerum consequatur eius id. Quidem saepe nam consequuntur incidunt. Architecto quam sit voluptatem aut consequatur. Soluta officiis consequatur laudantium doloremque error voluptatem sequi et. Tempora adipisci dolor nostrum repellat voluptatum. Recusandae assumenda vel ea ut at. Eos voluptate est perspiciatis culpa. Dolor quod deserunt sed. Nemo fugit similique omnis quo rerum culpa modi. Et qui voluptas debitis et vel optio dolorum. Qui fugit temporibus et recusandae non ut ratione sequi. Voluptatem deserunt omnis officia sed voluptate.', 1, '1', 6, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(76, 'Tiêu đề bài viết Tiêu đề bài viết', 'tieu-de-bai-viet-tieu-de-bai-viet', '<p>Mỹ v&agrave; Triều Ti&ecirc;n đ&atilde; c&ugrave;ng ngồi v&agrave;o b&agrave;n thảo luận về chương tr&igrave;nh nghị sự cho hội nghị thượng đỉnh giữa TT Trump v&agrave; l&atilde;nh đạo Kim Jong Un nhưng vẫn chưa thỏa thuận được g&igrave;.</p>\r\n\r\n<p>&quot;Hiện tại, hai b&ecirc;n vẫn chưa thỏa thuận được g&igrave;.&nbsp;Th&agrave;nh c&ocirc;ng hay thất bại của hội nghị thượng đỉnh phụ thuộc v&agrave;o kết quả của c&aacute;c cuộc đ&agrave;m ph&aacute;n b&ecirc;n lề một tuần trước hội nghị thượng đỉnh&quot;, một nguồn tin ngoại giao n&oacute;i với&nbsp;<em>Chosun Ilbo</em>.</p>\r\n\r\n<p>Stephen Biegun, đặc ph&aacute;i vi&ecirc;n của&nbsp;Mỹ&nbsp;về&nbsp;Triều Ti&ecirc;n, vừa đến H&agrave; Nội. &Ocirc;ng đang chuẩn bị cho c&aacute;c cuộc đ&agrave;m ph&aacute;n trong tuần qua.</p>\r\n\r\n<p>Biegun đ&atilde; cử Alex Wong, trợ l&yacute; thứ trưởng ngoại giao, tới H&agrave; Nội v&agrave;o ng&agrave;y 18/2 để gặp Pak Chol, ph&oacute; chủ tịch Ủy ban h&ograve;a b&igrave;nh ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương của Triều Ti&ecirc;n.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"My - Trieu tiep tuc tranh cai ve chuong trinh cho hoi nghi thuong dinh hinh anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/lce_vjrcc/2019_02_20/biegun.jpg\" style=\"height:1380px; width:2460px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đặc ph&aacute;i vi&ecirc;n Mỹ về Triều Ti&ecirc;n Stephen Biegun được c&aacute;c ph&oacute;ng vi&ecirc;n v&acirc;y quanh sau khi đến Seoul v&agrave;o ng&agrave;y 3/2 để thảo luận với c&aacute;c quan chức&nbsp;H&agrave;n Quốc&nbsp;v&agrave; Triều Ti&ecirc;n. Ảnh:&nbsp;<em>Reuters</em>.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Mỹ đang đề xuất mở văn ph&ograve;ng li&ecirc;n lạc, tuy&ecirc;n bố chấm dứt Chiến tranh Triều Ti&ecirc;n v&agrave; nối lại c&aacute;c tour du lịch trọn g&oacute;i đến Khu nghỉ dưỡng N&uacute;i Kumgang để đổi lấy việc th&aacute;o dỡ cơ sở hạt nh&acirc;n Yongbyon v&agrave; căn cứ t&ecirc;n lửa Tongchang-ri. Tuy nhi&ecirc;n, B&igrave;nh Nhưỡng chủ yếu quan t&acirc;m đến việc dỡ bỏ c&aacute;c lệnh trừng phạt quốc tế bằng c&aacute;ch phi hạt nh&acirc;n h&oacute;a c&agrave;ng &iacute;t c&agrave;ng tốt.</p>', NULL, '1', 1, '2019-02-20 04:58:12', '2019-02-20 09:55:03', NULL),
(77, 'êu đề bài viết', 'tieu-de-bai-viet', '<p>&agrave;i viết&nbsp;&agrave;i viết&nbsp;</p>', NULL, '1', 10, '2019-02-20 04:58:27', '2019-02-20 07:06:53', '2019-02-20 07:06:53'),
(78, 'êu đề bài viết', 'tieu-de', '<p>&agrave;i viết&nbsp;&agrave;i viết&nbsp;</p>', NULL, '1', 19, '2019-02-20 04:58:43', '2019-02-20 07:06:49', '2019-02-20 07:06:49'),
(79, 'Cung bậc cảm xúc ngày tân binh thủ đô lên đường nhập ngũ', 'cung-bac-cam-xuc-ngay-tan-binh-thu-do-len-duong-nhap-ngu', '<p>C&oacute; cả nụ cười, nước mắt, những &aacute;nh nh&igrave;n t&acirc;m trạng v&agrave; nhiều c&aacute;i &ocirc;m thật chặt trong buổi s&aacute;ng h&agrave;ng ngh&igrave;n thanh ni&ecirc;n H&agrave; Nội nhập ngũ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;2 năm tới.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Nhung cung bac cam xuc ngay tan binh thu do len duong nhap ngu hinh anh 10\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/ayhunwx/2019_02_20/nhap_ngu_zing_9.jpg\" style=\"height:1280px; width:1920px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&quot;Bạn b&egrave; chơi với nhau từ b&eacute; đến giờ, cũng chỉ ch&uacute;c n&oacute; ở trong đơn vị r&egrave;n luyện tốt, hẹn 2 năm nữa gặp lại&quot;, Thanh H&ugrave;ng, người đến tiễn bạn l&ecirc;n đường, chia sẻ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, '1', 36, '2019-02-20 07:15:10', '2019-02-27 03:21:01', NULL),
(80, 'Thanh niên cả nước hăng hái lên đường nhập ngũ', 'thanh-nien-ca-nuoc-hang-hai-len-duong-nhap-ngu', '<h2>S&aacute;ng nay 20/2, lễ giao nhận qu&acirc;n năm 2019 ch&iacute;nh thức được tổ chức tại 43 tỉnh, th&agrave;nh. Tr&ecirc;n khắp cả nước, h&agrave;ng vạn thanh ni&ecirc;n hăng h&aacute;i l&ecirc;n đường nhập ngũ, thực hiện nghĩa vụ với Tổ quốc.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Theo thường trực Hội đồng Nghĩa vụ qu&acirc;n sự tỉnh Ph&uacute; Y&ecirc;n</strong>, năm 2019 c&oacute; 1.800 thanh ni&ecirc;n được tuyển chọn nhập ngũ v&agrave;o c&aacute;c đơn vị trong qu&acirc;n đội. Số thanh ni&ecirc;n n&agrave;y sẽ được giao về c&aacute;c đơn vị: Sư đo&agrave;n 2 (Qu&acirc;n khu 5), Binh đo&agrave;n T&acirc;y Nguy&ecirc;n v&agrave; c&aacute;c qu&acirc;n, binh chủng: Ph&ograve;ng kh&ocirc;ng - Kh&ocirc;ng qu&acirc;n, Hải qu&acirc;n, C&ocirc;ng binh, H&oacute;a học, Bộ Chỉ huy Qu&acirc;n sự tỉnh Ph&uacute; Y&ecirc;n, Bộ Chỉ huy Bộ đội Bi&ecirc;n ph&ograve;ng tỉnh Ph&uacute; Y&ecirc;n, C&ocirc;ng an tỉnh Ph&uacute; Y&ecirc;n.</p>\r\n\r\n<p><img alt=\"Thanh niên cả nước hăng hái lên đường nhập ngũ - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/02/20/bi-thu-img-5181-1550635327011.jpg\" /></p>\r\n\r\n<p>B&iacute; thư tỉnh ủy Ph&uacute; Y&ecirc;n tặng hoa, động vi&ecirc;n c&aacute;c thanh ni&ecirc;n l&ecirc;n đường nhập ngũ (Ảnh: Trung Thi)</p>\r\n\r\n<p>Chiến sĩ Nguyễn Minh Hơn, th&agrave;nh phố Tuy H&ograve;a, tỉnh Ph&uacute; Y&ecirc;n, chia sẻ: &quot;Khi được chọn l&agrave; thanh ni&ecirc;n nhập ngũ em rất vui. Em hứa l&agrave; sẽ chấp h&agrave;nh tốt c&aacute;c quy định của đơn vị v&agrave; xứng danh l&agrave; anh bộ đội cụ Hồ&quot;.</p>\r\n\r\n<p><img alt=\"Thanh niên cả nước hăng hái lên đường nhập ngũ - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/02/20/thanh-nien-img-5233-copy-1550635311835.jpg\" /></p>\r\n\r\n<p>Ph&uacute; Y&ecirc;n tổ chức giao nhận qu&acirc;n an to&agrave;n (Ảnh: Trung Thi)</p>\r\n\r\n<p>T&iacute;nh đến 8 giờ s&aacute;ng nay c&ocirc;ng t&aacute;c giao qu&acirc;n tr&ecirc;n địa b&agrave;n tỉnh Ph&uacute; Y&ecirc;n đ&atilde; ho&agrave;n th&agrave;nh an to&agrave;n tuyệt đối. Việc giao nhận qu&acirc;n đảm bảo số lượng, chất lượng v&agrave; thời gian.</p>\r\n\r\n<p>Trong đợt giao qu&acirc;n năm 2019 n&agrave;y,&nbsp;<strong>to&agrave;n tỉnh Quảng Nam</strong>&nbsp;c&oacute; 2.400 thanh ni&ecirc;n l&ecirc;n đường nhập ngũ. Trong đ&oacute;, đang ch&uacute; &yacute; c&oacute; h&agrave;ng chục Đảng vi&ecirc;n, thanh ni&ecirc;n v&agrave; c&ocirc;ng chức tr&ecirc;n địa b&agrave;n tự nguyện viết đơn t&igrave;nh nguyện nhập ngũ.</p>', NULL, '1', 31, '2019-02-20 10:00:41', '2019-02-27 03:21:01', NULL),
(81, 'Thượng đỉnh Mỹ - Triều: Cái bắt tay có tạo đột phá hòa bình?', 'thuong-dinh-my-trieu-cai-bat-tay-co-tao-dot-pha-hoa-binh', '<p>- Cuộc gặp n&agrave;y c&oacute; vai tr&ograve; quan trọng như thế n&agrave;o?</p>\r\n\r\n<p>-&nbsp;<strong>Tiến sĩ Lim Tai Wei,&nbsp;Viện nghi&ecirc;n cứu Đ&ocirc;ng &Aacute; thuộc Đại học Quốc gia Singapore (NUS)</strong>:&nbsp;Tổng thống Donald Trump đứng trước th&aacute;ch thức phải chứng minh những người chỉ tr&iacute;ch rằng &ocirc;ng c&oacute; thể đạt được kết quả l&acirc;u d&agrave;i từ cuộc gặp n&agrave;y. Ở trong nước, &ocirc;ng đối mặt với một quốc hội do đảng D&acirc;n chủ kiểm so&aacute;t v&agrave; cần ghi điểm trước cử tri cho chiến dịch tranh cử sắp tới.</p>\r\n\r\n<p>Về ph&iacute;a &ocirc;ng Kim, đ&acirc;y l&agrave; cơ hội cđể vận động Mỹ dỡ bỏ bớt c&aacute;c trừng phạt kinh tế, v&agrave; &ocirc;ng phải c&oacute; một v&agrave;i động th&aacute;i phi hạt nh&acirc;n h&oacute;a.</p>\r\n\r\n<p>-&nbsp;<strong>Gi&aacute;o sư&nbsp;Zhu Feng, Đại học Nam Kinh </strong>: T&ocirc;i nghĩ vấn đề l&agrave; liệu c&aacute;c th&agrave;nh tựu của hội nghị c&oacute; l&agrave;m h&agrave;i l&ograve;ng cộng đồng quốc tế hay kh&ocirc;ng. C&aacute;ch tiếp cận của TT Trump đối với vấn đề Triều Ti&ecirc;n đ&atilde; thay đổi một c&aacute;ch đ&aacute;ng kể từ cuộc gặp lần trước, chẳng hạn Nh&agrave; Trắng kh&ocirc;ng c&ograve;n đ&ograve;i hỏi thời hạn cho phi hạt nh&acirc;n h&oacute;a b&aacute;n đảo Triều Ti&ecirc;n.&nbsp;</p>', 2, '1', 51, '2019-02-26 10:37:23', '2019-02-27 03:21:03', NULL),
(82, 'Thượng đỉnh Mỹ - Triều ngày 1: Gặp gỡ 20 phút và ăn tối tại Metropole', 'thuong-dinh-my-trieu-ngay-1-gap-go-20-phut-va-an-toi-tai-metropole', '<p>Theo dự kiến, hai nh&agrave; l&atilde;nh đạo sẽ ch&iacute;nh thức bắt đầu cuộc gặp thượng đỉnh v&agrave;o 18h30 tối ng&agrave;y 27/2, với địa điểm l&agrave; kh&aacute;ch sạn Sofitel Metropole Legend tr&ecirc;n phố Ng&ocirc; Quyền.</p>\r\n\r\n<p>Nh&agrave; Trắng th&ocirc;ng b&aacute;o&nbsp; Tổng thống&nbsp;Mỹ&nbsp;Donald Trump&nbsp;sẽ gặp nh&agrave; l&atilde;nh đạo&nbsp;Triều Ti&ecirc;n&nbsp;Kim Jong Un&nbsp;tại kh&aacute;ch sạn Metropole v&agrave;o l&uacute;c 18h30 (giờ H&agrave; Nội)</p>\r\n\r\n<p>Dự kiến hai nh&agrave; l&atilde;nh đạo sẽ c&oacute; buổi n&oacute;i chuyện ri&ecirc;ng k&eacute;o d&agrave;i 20 ph&uacute;t, v&agrave; sau đ&oacute; &ocirc;ng Trump v&agrave; &ocirc;ng Kim sẽ tham dự bữa ăn tối c&ugrave;ng c&aacute;c phụ t&aacute; trong v&ograve;ng hơn một tiếng rưỡi đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/sgtnrb/2019_02_26/Lichtrinh_1.jpg\" style=\"height:1590px; width:660px\" /></p>\r\n\r\n<p>Tổng thống Mỹ đặt ch&acirc;n xuống H&agrave; Nội v&agrave;o tối ng&agrave;y 26/2, &ocirc;ng Trump đăng d&ograve;ng<em>&nbsp;tweet</em>: &quot;Vừa mới tới Việt Nam. Cảm ơn tất cả mọi người về m&agrave;n ch&agrave;o đ&oacute;n tuyệt vời ở H&agrave; Nội. Đ&aacute;m đ&ocirc;ng rất nồng nhiệt v&agrave; đầy t&igrave;nh y&ecirc;u&quot;.</p>\r\n\r\n<p>Trong khi đ&oacute; &ocirc;ng Kim Jong Un đ&atilde; được đ&oacute;n tiếp từ buổi s&aacute;ng ở nh&agrave; ga Đồng Đăng, th&agrave;nh phố Lạng Sơn sau h&agrave;nh tr&igrave;nh 3.000 km từ B&igrave;nh Nhưỡng k&eacute;o d&agrave;i 3 ng&agrave;y. Nh&agrave; l&atilde;nh đạo Triều Ti&ecirc;n tiếp tục di chuyển bằng chiếc S600 Pullman để tới thủ đ&ocirc; H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 29, '2019-02-27 01:52:41', '2019-02-27 03:03:52', NULL),
(83, 'Thượng đỉnh Mỹ - ', 'thuong-dinh-my-trieu-ngay-1-gap-go-20-phut-va-an-toi-tai-metropole', '<p>Theo dự kiến, hai nh&agrave; l&atilde;nh đạo sẽ ch&iacute;nh thức bắt đầu cuộc gặp thượng đỉnh v&agrave;o 18h30 tối ng&agrave;y 27/2, với địa điểm l&agrave; kh&aacute;ch sạn Sofitel Metropole Legend tr&ecirc;n phố Ng&ocirc; Quyền.</p>\r\n\r\n<p>Nh&agrave; Trắng th&ocirc;ng b&aacute;o&nbsp; Tổng thống&nbsp;Mỹ&nbsp;Donald Trump&nbsp;sẽ gặp nh&agrave; l&atilde;nh đạo&nbsp;Triều Ti&ecirc;n&nbsp;Kim Jong Un&nbsp;tại kh&aacute;ch sạn Metropole v&agrave;o l&uacute;c 18h30 (giờ H&agrave; Nội)</p>\r\n\r\n<p>Dự kiến hai nh&agrave; l&atilde;nh đạo sẽ c&oacute; buổi n&oacute;i chuyện ri&ecirc;ng k&eacute;o d&agrave;i 20 ph&uacute;t, v&agrave; sau đ&oacute; &ocirc;ng Trump v&agrave; &ocirc;ng Kim sẽ tham dự bữa ăn tối c&ugrave;ng c&aacute;c phụ t&aacute; trong v&ograve;ng hơn một tiếng rưỡi đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/sgtnrb/2019_02_26/Lichtrinh_1.jpg\" style=\"height:1590px; width:660px\" /></p>\r\n\r\n<p>Tổng thống Mỹ đặt ch&acirc;n xuống H&agrave; Nội v&agrave;o tối ng&agrave;y 26/2, &ocirc;ng Trump đăng d&ograve;ng<em>&nbsp;tweet</em>: &quot;Vừa mới tới Việt Nam. Cảm ơn tất cả mọi người về m&agrave;n ch&agrave;o đ&oacute;n tuyệt vời ở H&agrave; Nội. Đ&aacute;m đ&ocirc;ng rất nồng nhiệt v&agrave; đầy t&igrave;nh y&ecirc;u&quot;.</p>\r\n\r\n<p>Trong khi đ&oacute; &ocirc;ng Kim Jong Un đ&atilde; được đ&oacute;n tiếp từ buổi s&aacute;ng ở nh&agrave; ga Đồng Đăng, th&agrave;nh phố Lạng Sơn sau h&agrave;nh tr&igrave;nh 3.000 km từ B&igrave;nh Nhưỡng k&eacute;o d&agrave;i 3 ng&agrave;y. Nh&agrave; l&atilde;nh đạo Triều Ti&ecirc;n tiếp tục di chuyển bằng chiếc S600 Pullman để tới thủ đ&ocirc; H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 25, '2019-02-27 01:52:54', '2019-02-27 03:02:46', NULL),
(84, 'Adding Custom Validation Rules', 'adding-custom-validation-rules', '<p>In that same file, you&rsquo;ll see the next method is rules and this where you need to define you custom validation rules. You can find a complete list of rules via the&nbsp;<a href=\"http://laravel.com/docs/5.0/validation#available-validation-rules\" target=\"_blank\">official documentation</a>. In our case, we want to keep it simple and force the name field to be required, and then each book title the user would like to purchase must be less than 10 characters in length.</p>\r\n\r\n<blockquote>You can use any logic you&rsquo;d like in the rules() method as long as you return an array.</blockquote>\r\n\r\n<p>In order to handle the dynamic fields, you will need to loop through all the posted &ldquo;items&rdquo; and add a rule for each. Here is an updated method demonstrating this:</p>', 2, '1', 15, '2019-02-27 01:53:48', '2019-02-27 03:00:48', NULL),
(85, 'Creating a new form request', 'creating-a-new-form-request', '<p>To create the Form Request class, we can utilize Artisan to have the system automatically generate the file. Open terminal and cd into your directory and then run:</p>\r\n\r\n<pre>\r\n$ php artisan make:request OrderRequest Request created successfully.</pre>\r\n\r\n<p>Next open this new file which is at the following location app/Http/Requests/OrderRequest.php. You should see this content:</p>\r\n\r\n<pre>\r\n&lt;?php namespace App\\Http\\Requests; </pre>\r\n\r\n<pre>\r\nuse App\\Http\\Requests\\Request; </pre>\r\n\r\n<pre>\r\nclass OrderRequest extends Request \r\n{ \r\n  public function authorize() \r\n  { \r\n    return false; \r\n  } </pre>\r\n\r\n<pre>\r\n  public function rules() \r\n  { \r\n    return [\r\n      //..\r\n    ]; \r\n  } \r\n}</pre>\r\n\r\n<h3>Adjust the Authorize</h3>\r\n\r\n<p>The first step is to modify the authorize() method. This method allows you to restrict access by returning true or false. For example, you could check a user group, or some other form of access and deny it if they failed to be a part of the group. Change this to return true to bypass any checks:</p>', 2, '1', 10, '2019-02-27 01:53:59', '2019-02-27 03:00:24', NULL),
(86, 'Validating a form array with Laravel', 'validating-a-form-array-with-laravel', '<p>If you&rsquo;ve used Laravel&rsquo;s form validation for any length of time, then you know it&rsquo;s a powerful system. It makes the tedious task of validation very simple while still keeping the door open for complex rules.</p>\r\n\r\n<p>In this tutorial, I want to show you a simple and easy way of validating forms that contain dynamic fields. A common use case for these types of forms is when you would like to allow a user to add more fields to a form.</p>\r\n\r\n<p>Here is a visual representation of the form:</p>', 2, '1', 16, '2019-02-27 02:26:15', '2019-02-27 02:57:07', NULL),
(87, 'Custom Validation Rules', 'custom-validation-rules', '<h3>Using Rule Objects</h3>\r\n\r\n<p>Laravel provides a variety of helpful validation rules; however, you may wish to specify some of your own. One method of registering custom validation rules is using rule objects. To generate a new rule object, you may use the&nbsp;<code>make:rule</code>&nbsp;Artisan command. Let&#39;s use this command to generate a rule that verifies a string is uppercase. Laravel will place the new rule in the&nbsp;<code>app/Rules</code>&nbsp;directory:</p>\r\n\r\n<pre>\r\n<code>php artisan make:rule Uppercase</code></pre>\r\n\r\n<p>Once the rule has been created, we are ready to define its behavior. A rule object contains two methods:&nbsp;<code>passes</code>&nbsp;and&nbsp;<code>message</code>. The&nbsp;<code>passes</code>&nbsp;method receives the attribute value and name, and should return&nbsp;<code>true</code>&nbsp;or&nbsp;<code>false</code>&nbsp;depending on whether the attribute value is valid or not. The&nbsp;<code>message</code>&nbsp;method should return the validation error message that should be used when validation fails:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 10, '2019-02-27 02:59:28', '2019-03-02 07:33:08', NULL),
(88, 'MẶT TÍCH CỰC VÀ CƠ HỘI PHÁ VỠ BẾ TẮC ĐÀM PHÁN MỸ TRIỀU', 'mat-tich-cuc-va-co-hoi-pha-vo-be-tac-dam-phan-my-trieu', '<p><strong>Dường như điểm bất đồng trong cuộc đ&agrave;m ph&aacute;n l&agrave; tiến tr&igrave;nh phi hạt nh&acirc;n h&oacute;a v&agrave; c&aacute;c biện ph&aacute;p trừng phạt. L&agrave;m thế n&agrave;o để ph&aacute; vỡ sự bế tắc đ&oacute;?</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trước Hội nghị Thượng đỉnh Mỹ - Triều, phần lớn những dự đo&aacute;n đều hướng đến 4 điều: tuy&ecirc;n bố kết th&uacute;c chiến tranh, th&agrave;nh lập văn ph&ograve;ng đại diện ở B&igrave;nh Nhưỡng (cũng c&oacute; thể l&agrave; Washington D.C);&nbsp;Triều Ti&ecirc;n&nbsp;&ldquo;hy sinh&rdquo; tổ hợp hạt nh&acirc;n Yongbyon để đổi lấy sự dỡ bỏ cấm vận; hai b&ecirc;n tiếp tục hợp t&aacute;c đưa binh sĩ trong chiến tranh Triều Ti&ecirc;n hồi hương.</p>\r\n\r\n<p>Tuy vậy những g&igrave; m&agrave; ch&uacute;ng ta thấy sau ng&agrave;y họp cuối c&ugrave;ng chỉ l&agrave; b&agrave;n tiệc trưa trống vắng, lễ k&yacute; kết bị hủy bỏ v&agrave; buổi họp b&aacute;o chỉ c&oacute; một nguy&ecirc;n thủ tham dự thay v&igrave; hai.</p>\r\n\r\n<p>Hẳn l&agrave; l&uacute;c n&agrave;y nhiều người bắt đầu suy đo&aacute;n về mối nguy từ việc kh&ocirc;ng c&oacute; thỏa thuận được đưa ra. Một số lo lắng quan hệ ngoại giao của hai nước sẽ rơi v&agrave;o bế tắc, kh&oacute; c&oacute; thể h&oacute;a giải được. Nhiều người lại đặt ra c&acirc;u hỏi nỗ lực ngoại giao n&agrave;y liệu c&oacute; đ&aacute;ng?</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&ocirc;ng c&oacute; thỏa thuận lại c&oacute; mặt t&iacute;ch cực của n&oacute;.</p>\r\n\r\n<p>Trong hai ng&agrave;y tại H&agrave; Nội, Mỹ v&agrave; Triều Ti&ecirc;n đ&atilde; c&oacute; cơ hội để b&agrave;y tỏ quan điểm của m&igrave;nh một c&aacute;ch r&otilde; r&agrave;ng. Thay v&igrave; đẩy nhanh tiến tr&igrave;nh đ&agrave;m ph&aacute;n để tạo ra những th&agrave;nh phẩm chắp v&aacute;, hai b&ecirc;n c&ugrave;ng ngồi xuống n&oacute;i chuyện với nhau ở cấp sự vụ để t&igrave;m ra những điểm đồng thuận chung. C&oacute; thể đối với một số người, đ&acirc;y l&agrave; sự thất bại về mặt ngoại giao nhưng thực sự n&oacute; l&agrave; thắng lợi trong tiến tr&igrave;nh.</p>\r\n\r\n<blockquote>\r\n<p>Chừng n&agrave;o Triều Ti&ecirc;n vẫn cần đến b&agrave;n đ&agrave;m ph&aacute;n để giảm nhẹ cấm vận, ch&iacute;nh quyền chủ tịch Kim sẽ kh&ocirc;ng l&agrave;m những việc nguy hại đến vị thế của m&igrave;nh.</p>\r\n</blockquote>\r\n\r\n<p>Kết quả của hội nghị hiển nhi&ecirc;n thu được những phản ứng tr&aacute;i chiều từ c&aacute;c nước trong khu vực.</p>\r\n\r\n<p>H&agrave;n Quốc&nbsp;hẳn sẽ v&ocirc; c&ugrave;ng thất vọng. Ch&iacute;nh quyền tổng thống Moon Jae-in lu&ocirc;n muốn đẩy nhanh c&aacute;c dự &aacute;n li&ecirc;n Triều nhưng một mặt vẫn tu&acirc;n thủ c&aacute;c biện ph&aacute;p trừng phạt quốc tế nhằm v&agrave;o Triều Ti&ecirc;n. Tổng thống Moon giờ đ&acirc;y c&oacute; rất &iacute;t sự lựa chọn, ngo&agrave;i việc tiếp tục đ&oacute;ng vai tr&ograve; điều phối vi&ecirc;n giữa Triều Ti&ecirc;n v&agrave; Hoa Kỳ. Ch&uacute;ng ta c&oacute; quyền hy vọng rằng nếu khả năng về một sự đột ph&aacute; quan hệ giữa hai b&ecirc;n Mỹ - Triều c&agrave;ng &iacute;t, H&agrave;n Quốc sẽ c&agrave;ng ki&ecirc;n quyết hơn trong việc th&uacute;c đẩy c&aacute;c quyết s&aacute;ch ngoại giao, thậm ch&iacute; c&oacute; thể đưa ra những nhượng bộ đơn phương lớn hơn cho Triều Ti&ecirc;n.</p>\r\n\r\n<p>Mặt kh&aacute;c, với Nhật Bản, khi ch&iacute;nh s&aacute;ch gia tăng sức &eacute;p tối đa với Triều Ti&ecirc;n chưa được x&oacute;a bỏ ho&agrave;n to&agrave;n, kết quả tại H&agrave; Nội lại c&oacute; thể khiến thủ tướng Shinzo Abe nở nụ cười. Ch&iacute;nh quyền Abe vẫn đang tiếp tục đẩy mạnh sự cần thiết của việc duy tr&igrave; &aacute;p lực với Triều Ti&ecirc;n. Quyết định của Mỹ kh&ocirc;ng dỡ bỏ c&aacute;c biện ph&aacute;p trừng phạt khi kh&ocirc;ng c&oacute; sự nhượng bộ thỏa đ&aacute;ng từ ph&iacute;a Triều Ti&ecirc;n l&agrave; sự đảm bảo cho việc duy tr&igrave; &aacute;p lực với B&igrave;nh Nhưỡng m&agrave; ch&iacute;nh quyền Abe hướng tới. V&agrave; n&oacute; c&oacute; lẽ sẽ tiếp tục tồn tại đến khi Chủ tịch Kim Jong-un tiến h&agrave;nh cải c&aacute;ch. Tuy nhi&ecirc;n, đặt trong ho&agrave;n cảnh H&agrave;n Quốc v&agrave; Mỹ tiếp tục l&ocirc;i k&eacute;o Triều Ti&ecirc;n về mặt ngoại giao, Nhật Bản cũng sẽ mở đường d&acirc;y đối thoại với Triều Ti&ecirc;n để giải quyết h&agrave;ng loạt vấn đề li&ecirc;n quan đến t&ecirc;n lửa đạn đạo tầm ngắn v&agrave; trung cũng như việc nước n&agrave;y bắt giữ c&ocirc;ng d&acirc;n Nhật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong khi đ&oacute;,&nbsp;<a href=\"https://news.zing.vn/tieu-diem/trung-quoc.html\">Trung Quốc</a>&nbsp;v&agrave;&nbsp;<a href=\"https://news.zing.vn/tieu-diem/nga.html\">Nga</a>&nbsp;đều mong chờ cấm vận được dỡ bỏ v&agrave; tuy&ecirc;n bố chấm dứt chiến tranh được đưa ra. Hai nước đ&atilde; nhiều lần k&ecirc;u gọi nới lỏng c&aacute;c lệnh trừng phạt v&agrave; th&uacute;c đẩy&nbsp;<a href=\"https://news.zing.vn/tieu-diem/hoi-dong-bao-an.html\">Hội đồng Bảo an</a>&nbsp;<a href=\"https://news.zing.vn/tieu-diem/lien-hop-quoc.html\">Li&ecirc;n Hợp Quốc</a>&nbsp;xem x&eacute;t sửa đổi c&aacute;c biện ph&aacute;p li&ecirc;n quan đến vấn đề Triều Ti&ecirc;n. Khi Hội nghị thượng đỉnh Mỹ - Triều tr&igrave; ho&atilde;n h&agrave;nh động nhằm giải quyết kh&oacute; khăn tr&ecirc;n b&aacute;n đảo Triều Ti&ecirc;n, điều quan trọng l&agrave; phải quan s&aacute;t Nga v&agrave; Trung Quốc phản ứng thế n&agrave;o với quyết định giữ vững lệnh trừng phạt của Mỹ</p>\r\n\r\n<p>&Iacute;t nhất, c&aacute;c b&ecirc;n trong khu vực vẫn c&oacute; thể mong đợi về việc giữ nguy&ecirc;n hiện trạng an ninh trong v&agrave; xung quanh b&aacute;n đảo Triều Ti&ecirc;n. Chừng n&agrave;o Triều Ti&ecirc;n vẫn cần đến b&agrave;n đ&agrave;m ph&aacute;n để giảm nhẹ cấm vận, ch&iacute;nh quyền chủ tịch Kim sẽ kh&ocirc;ng l&agrave;m những việc nguy hại đến vị thế của m&igrave;nh.</p>\r\n\r\n<p>Điều đ&oacute; c&oacute; nghĩa l&agrave; những h&agrave;nh động như thử hạt nh&acirc;n hay ph&oacute;ng t&ecirc;n lửa &iacute;t nhất sẽ kh&ocirc;ng t&aacute;i diễn. C&ugrave;ng l&uacute;c, ch&iacute;nh phủ Mỹ sẽ vẫn mở con đường ngoại giao với Triều Ti&ecirc;n bởi chi ph&iacute; chiến tranh sẽ rất đắt đỏ. Giải quyết bằng qu&acirc;n đội cũng kh&ocirc;ng phải con đường Mỹ v&agrave; Triều Ti&ecirc;n chọn lựa.</p>\r\n\r\n<p>V&agrave; giờ c&acirc;u hỏi đặt ra l&agrave; những g&igrave; sẽ chờ đợi ở ph&iacute;a trước?</p>\r\n\r\n<blockquote>\r\n<p>Hai b&ecirc;n cần tập trung v&agrave;o lợi &iacute;ch cốt l&otilde;i c&oacute; thể đạt được hơn l&agrave; vị thế cứng nhắc v&agrave; chấp nhận x&acirc;y dựng, củng cố trong thời gian d&agrave;i thay v&igrave; chiến thắng vang dội th&ocirc;ng qua cuộc gặp ngoại giao.</p>\r\n</blockquote>\r\n\r\n<p>Sau mỗi cuộc gặp bế tắc sẽ lu&ocirc;n c&oacute; một b&ecirc;n chủ động đứng ra, tiếp tục mời đ&agrave;m ph&aacute;n. Nhưng điều n&agrave;y cần thời gian. Ch&uacute;ng ta phải chờ. Thực tế, cho đến nay, cả Mỹ v&agrave; Triều Ti&ecirc;n chưa b&ecirc;n n&agrave;o khẳng định thỏa thuận đ&atilde; ho&agrave;n tất hay thỏa thuận kh&ocirc;ng thể đạt được, chỉ l&agrave; chưa thể k&yacute; kết ngay b&acirc;y giờ m&agrave; th&ocirc;i. T&oacute;m lại, kh&ocirc;ng b&ecirc;n n&agrave;o muốn chiến tranh vũ trang nhưng cả hai cần thời gian, gắn kết th&ecirc;m về mặt ngoại giao để t&igrave;m được sự đồng thuận chung.</p>\r\n\r\n<p>Dường như điểm bất đồng trong cuộc đ&agrave;m ph&aacute;n l&agrave; tiến tr&igrave;nh phi hạt nh&acirc;n h&oacute;a v&agrave; c&aacute;c biện ph&aacute;p trừng phạt. C&acirc;u hỏi được đặt ra l&agrave;: l&agrave;m thế n&agrave;o để ph&aacute; vỡ sự bế tắc đ&oacute;?</p>\r\n\r\n<p>Hai b&ecirc;n cần s&aacute;ng tạo trong việc tạo dựng vị thế của m&igrave;nh ph&ugrave; hợp với lợi &iacute;ch tr&ecirc;n b&agrave;n đ&agrave;m ph&aacute;n. V&iacute; dụ về ph&iacute;a Mỹ, buộc Triều Ti&ecirc;n trở th&agrave;nh quốc gia c&oacute; tr&aacute;ch nhiệm l&agrave; mục ti&ecirc;u cơ bản, đương nhi&ecirc;n vẫn cần th&ecirc;m những nhượng bộ để th&aacute;o gỡ hai điểm bất đồng tr&ecirc;n. C&ograve;n đối với Triều Ti&ecirc;n, ch&iacute;nh quyền được c&ocirc;ng nhận v&agrave; ph&aacute;t triển kinh tế l&agrave; những ưu ti&ecirc;n h&agrave;ng đầu - nhưng gỡ bỏ cấm vận kh&ocirc;ng phải l&agrave; con đường duy nhất để đạt được những mục ti&ecirc;u đ&oacute;.</p>\r\n\r\n<p>Thượng đỉnh Mỹ - Triều tại H&agrave; Nội kh&eacute;p lại nhưng cả hai nước vẫn c&ograve;n cơ hội t&aacute;i lập c&aacute;c cuộc đ&agrave;m ph&aacute;n ở cấp sự vụ để tạo ra c&aacute;c giải ph&aacute;p bền vững, l&acirc;u d&agrave;i m&agrave; c&aacute;c hội nghị ngoại giao kh&oacute; c&oacute; thể đạt được.</p>\r\n\r\n<p>Nếu cả Mỹ v&agrave; Triều Ti&ecirc;n đều giữ những k&ecirc;nh ngoại giao mở, hy vọng chắc chắn vẫn c&ograve;n.</p>', NULL, '1', 52, '2019-03-01 08:49:14', '2019-03-06 04:14:11', NULL),
(89, 'Từ khi nào con người lại uống sữa của các loài khác?', 'tu-khi-nao-con-nguoi-lai-uong-sua-cua-cac-loai-khac', '<h2>Phải chăng con người l&agrave; lo&agrave;i duy nhất tr&ecirc;n đời c&oacute; h&agrave;nh vi uống sữa từ c&aacute;c lo&agrave;i vật kh&aacute;c?</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kể từ khi chăn nu&ocirc;i trở th&agrave;nh ch&igrave;a kh&oacute;a then chốt cho duy tr&igrave; sự sống, th&igrave; việc uống sữa của c&aacute;c lo&agrave;i như b&ograve;... cũng trở th&agrave;nh một th&oacute;i quen ăn uống của con người.</p>\r\n\r\n<p><strong>Lịch sử &quot;Lấy sữa lo&agrave;i kh&aacute;c để uống&quot; của con người</strong></p>\r\n\r\n<p>Quay ngược thời gian trở lại 12000 &ndash; 15000 năm về trước, con người khi đ&oacute; chỉ vừa biết c&aacute;ch chăn nu&ocirc;i v&agrave; g&acirc;y giống c&aacute;c lo&agrave;i nhai lại nhỏ, điển h&igrave;nh l&agrave; d&ecirc; v&agrave; cừu.</p>\r\n\r\n<p>Đối với c&aacute;c bộ tộc du mục, việc nu&ocirc;i c&aacute;c lo&agrave;i vật n&agrave;y mang đến cho họ một nguồn gi&aacute; trị rất to lớn. L&ocirc;ng v&agrave; da được đan th&agrave;nh quần &aacute;o, xương được d&ugrave;ng l&agrave;m vũ kh&iacute; hoặc trang sức. Nhưng đặc biệt, việc nu&ocirc;i d&ecirc; v&agrave; cừu thực sự l&agrave; rất ph&ugrave; hợp với điều kiện của c&aacute;c tộc du mục thời kỳ ấy, bởi ch&uacute;ng kh&ocirc;ng đ&ograve;i hỏi qu&aacute; nhiều c&ocirc;ng sức chăm s&oacute;c.&nbsp;Ch&uacute;ng c&oacute; thể ăn bất k&igrave; thứ g&igrave; m&agrave; vẫn tồn tại được.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/cows-154544595774132705650.jpg\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 1.\" src=\"https://kenh14cdn.com/2018/12/22/cows-154544595774132705650.jpg\" /></a></p>\r\n\r\n<p>Chăn nu&ocirc;i gia s&uacute;c l&uacute;c đ&oacute; được v&iacute; như c&oacute; một chiếc kho lạnh của người xưa, v&igrave; n&oacute; cung cấp một kh&ocirc;ng gian dự trữ dinh dưỡng cho tương lai. V&agrave; trong qu&aacute; tr&igrave;nh chăn nu&ocirc;i, họ nhận ra c&aacute;c lo&agrave;i vật n&agrave;y đều nu&ocirc;i con bằng sữa, c&oacute; nghĩa l&agrave; sữa của ch&uacute;ng về mặt logic l&agrave; bổ dưỡng.</p>\r\n\r\n<p>Kể từ đ&oacute;, họ cũng&nbsp;đ&atilde; học được c&aacute;ch vắt sữa từ c&aacute;c lo&agrave;i động vật n&agrave;y để đ&aacute;p ứng nhu cầu dinh dưỡng ri&ecirc;ng. Điều n&agrave;y cũng c&oacute; &yacute; nghĩa hạn chế tập t&iacute;nh giết th&uacute; lấy thịt, bởi v&igrave; việc vắt sữa cung cấp nguồn dinh dưỡng l&acirc;u d&agrave;i hơn hẳn.</p>\r\n\r\n<p>Th&uacute; vị l&agrave; l&uacute;c ấy b&ograve; nh&agrave; chưa tồn tại, chỉ c&oacute; tổ ti&ecirc;n của ch&uacute;ng &ndash; b&ograve; Aurochs. So với b&ograve; nh&agrave; b&acirc;y giờ th&igrave; Aurochs c&oacute; k&iacute;ch thước to hơn, v&agrave; cũng l&agrave; lo&agrave;i rất hung hăng, khiến cho con người thực sự kh&oacute; khăn để thuần h&oacute;a n&oacute;. D&ugrave; sao cuối c&ugrave;ng ch&uacute;ng cũng trở n&ecirc;n bớt hoang d&atilde; hơn, ph&ugrave; hợp với sự chăn nu&ocirc;i của con người hơn, v&agrave; cuối c&ugrave;ng l&agrave; tiến h&oacute;a th&agrave;nh b&ograve; nh&agrave; b&acirc;y giờ.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/20181217212730-15454459577341009578511.png\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 2.\" src=\"https://kenh14cdn.com/2018/12/22/20181217212730-15454459577341009578511.png\" /></a></p>\r\n\r\n<p><strong>Con người &ndash; lo&agrave;i chuy&ecirc;n uống sữa lo&agrave;i kh&aacute;c ngay cả khi đ&atilde; trưởng th&agrave;nh</strong></p>\r\n\r\n<p>Thực sự th&igrave; trong thế giới động vật, ch&uacute;ng ta l&agrave; lo&agrave;i duy nhất trực tiếp uống sữa từ lo&agrave;i kh&aacute;c. Hoặc &iacute;t nhất l&agrave; lo&agrave;i duy nhất vẫn l&agrave;m vậy khi đ&atilde; trưởng th&agrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để giải th&iacute;ch được điều n&agrave;y, bạn cần hiểu hai kh&aacute;i niệm: lactase v&agrave; lactose. Lactose l&agrave; một loại đường ch&iacute;nh trong sữa. Lactase l&agrave; enzyme c&oacute; khả năng ph&aacute; vỡ c&aacute;c ph&acirc;n tử đường lactose th&agrave;nh c&aacute;c phần m&agrave; m&aacute;u c&oacute; thể hấp thụ được l&agrave; glucose v&agrave; galactose. Tất cả c&aacute;c động vật sơ sinh đều c&oacute; thể hấp thụ được sữa mẹ l&agrave; nhờ c&oacute; gen quy định enzyme lactase. V&agrave; gene n&agrave;y sẽ dần biến mất v&agrave;o khoảng thời gian cai sữa.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/milk-cinammon-15454460707642090721344.jpg\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 4.\" src=\"https://kenh14cdn.com/2018/12/22/milk-cinammon-15454460707642090721344.jpg\" /></a></p>\r\n\r\n<p>Con người nhờ c&oacute; tiến h&oacute;a v&agrave; tập t&iacute;nh chăn nu&ocirc;i động vật lấy sữa đ&atilde; dẫn đến th&oacute;i quen uống sữa ngay cả khi đ&atilde; trưởng th&agrave;nh. Lactase persistence l&agrave; thuật ngữ để chỉ khả năng tiếp tục hoạt động của enzyme lactase ở tuổi trưởng th&agrave;nh của mỗi người, được coi l&agrave; một sự tiến h&oacute;a khi cho ph&eacute;p con người c&oacute; thể kết hợp nhiều sữa v&agrave; sản phẩm từ sữa hơn v&agrave;o chế độ ăn của m&igrave;nh.</p>\r\n\r\n<p>Chốt lại, nhu cầu dinh dưỡng, khả năng thuần h&oacute;a c&aacute;c lo&agrave;i kh&aacute;c, sự tiến h&oacute;a v&agrave; một v&agrave;i điều kiện sống (như bối cảnh du mục) l&agrave; những l&yacute; do đ&atilde; th&uacute;c đẩy con người t&igrave;m đến nguồn sữa của c&aacute;c lo&agrave;i động vật kh&aacute;c.</p>\r\n\r\n<p>Tham khảo: Science News</p>', NULL, '1', 1, '2019-03-06 07:00:03', '2019-03-06 07:00:13', NULL);

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
(71, 79, 3, '2019-02-20 09:55:35', '2019-02-20 09:55:35'),
(72, 79, 5, '2019-02-20 09:55:35', '2019-02-20 09:55:35'),
(73, 79, 6, '2019-02-20 09:55:35', '2019-02-20 09:55:35'),
(74, 79, 7, '2019-02-20 09:55:35', '2019-02-20 09:55:35'),
(78, 76, 1, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(79, 76, 5, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(80, 76, 6, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(81, 76, 7, '2019-02-20 09:56:07', '2019-02-20 09:56:07'),
(85, 46, 1, '2019-02-20 10:16:17', '2019-02-20 10:16:17'),
(86, 46, 2, '2019-02-20 10:16:17', '2019-02-20 10:16:17'),
(87, 46, 3, '2019-02-20 10:16:17', '2019-02-20 10:16:17'),
(94, 81, 5, '2019-02-26 10:39:21', '2019-02-26 10:39:21'),
(95, 81, 6, '2019-02-26 10:39:21', '2019-02-26 10:39:21'),
(96, 81, 7, '2019-02-26 10:39:21', '2019-02-26 10:39:21'),
(97, 83, 5, '2019-02-27 01:52:54', '2019-02-27 01:52:54'),
(98, 83, 6, '2019-02-27 01:52:54', '2019-02-27 01:52:54'),
(99, 83, 7, '2019-02-27 01:52:54', '2019-02-27 01:52:54'),
(100, 86, 1, '2019-02-27 02:57:07', '2019-02-27 02:57:07'),
(101, 86, 4, '2019-02-27 02:57:07', '2019-02-27 02:57:07'),
(102, 86, 5, '2019-02-27 02:57:07', '2019-02-27 02:57:07'),
(103, 86, 6, '2019-02-27 02:57:07', '2019-02-27 02:57:07'),
(107, 87, 1, '2019-02-27 02:59:49', '2019-02-27 02:59:49'),
(108, 87, 6, '2019-02-27 02:59:49', '2019-02-27 02:59:49'),
(109, 87, 7, '2019-02-27 02:59:49', '2019-02-27 02:59:49'),
(110, 85, 1, '2019-02-27 03:00:24', '2019-02-27 03:00:24'),
(111, 85, 6, '2019-02-27 03:00:24', '2019-02-27 03:00:24'),
(112, 85, 7, '2019-02-27 03:00:24', '2019-02-27 03:00:24'),
(113, 84, 1, '2019-02-27 03:00:48', '2019-02-27 03:00:48'),
(114, 84, 5, '2019-02-27 03:00:48', '2019-02-27 03:00:48'),
(115, 84, 6, '2019-02-27 03:00:48', '2019-02-27 03:00:48'),
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
(137, 89, 7, '2019-03-06 07:00:03', '2019-03-06 07:00:03');

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
  `input_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
(1, 'TT NgDT', '0987651000', 'tranngoc@gmail.com', 'HN HA NOI', '2019-03-05 08:21:19', NULL, 1890120, 1, '0', 'Hàng dễ vỡ', '2019-03-02 05:24:49', '2019-03-01 02:42:09'),
(2, 'Anh ND', '0975852369', 'ndanh@gmail.com', 'Ha Logn Quang Ninh', '2019-03-05 08:21:19', NULL, 2022000, 2, '4', 'Giao hàng cẩn thận', '2019-03-05 08:10:43', '2019-03-05 08:10:43'),
(3, 'Tran Ngoc', '0168958596', 'ngongoc@hg.hh', 'HBT HN', '2019-03-05 09:17:31', NULL, 1362000, 1, '4', 'Giao hàng nhanh ', '2019-03-02 05:24:48', '2019-03-05 09:17:31'),
(4, 'NgaaTTT', '03216275586', 'ngocttt@gmail.com', '8690 Hand Plaza Apt. 521 West Wilfrid,, AZ 20783-8805', '2019-03-05 08:21:19', NULL, 820800, 22, '0', 'Giao hang Giao hàng nhanh Giao hàng cẩn thận', '2019-03-02 03:25:11', '2019-03-02 03:25:11'),
(5, 'Dieu Anh', '0974859636', 'ndanh@fas.dd', 'HN, HA NOI', '2019-03-05 08:21:19', NULL, 583000, 2, '0', 'sadasdasdasd', '2019-03-04 03:23:36', '2019-03-04 03:19:04'),
(6, 'Anh ND', '01689978596', 'ndanh@gmail.com', 'Ha Long, Quang Ninh', '2019-03-04 03:24:09', NULL, 578000, 2, '0', 'nte', '2019-03-04 03:24:09', '2019-03-04 03:24:09'),
(9, 'Anh ND', '0689748589', 'ndanh@gmail.com', 'Ha LOng, Quang Ninh', '2019-03-05 08:21:19', NULL, 2928000, 2, '4', 'note', '2019-03-05 08:06:32', '2019-03-05 08:06:32'),
(10, 'Tran Ngoc', '01689974856', 'ndanh@gail.com', 'HBT, HN', '2019-03-05 08:21:19', NULL, 1706200, 2, '3', 'note', '2019-03-05 08:05:34', '2019-03-05 08:05:34'),
(11, 'Anh ND 2', '12345678', 'ndanh@ndanh.com', 'Hạ Long, TP Quảng Ninh, Viet Nam', '2019-03-05 08:21:19', NULL, 1065960, 2, '1', 'giao hang can than nhe :D', '2019-03-05 06:24:56', '2019-03-05 06:24:56'),
(12, 'Anh ND 2', '12345678', 'ndanh@ndanh.com', 'Hạ Long, TP Quảng Ninh, Việt Nam này', '2019-03-05 08:22:24', NULL, 1054900, 2, '2', 'Giao từ từ thôi', '2019-03-05 08:17:56', '2019-03-05 08:22:24'),
(13, 'NgcTN', '0987651000', 'tng24@gmail.com', 'HBT, HN, Hưng Yên, Việt Nam này', '2019-03-06 08:03:39', NULL, 991400, 1, '2', 'Giao hàng nhanh', '2019-03-05 09:25:08', '2019-03-06 08:03:39'),
(14, 'NgcTN', '0987651000', 'tng24@gmail.com', 'HBT, HN, Hưng Yên, Việt Nam', '2019-03-06 08:03:37', NULL, 1189200, 1, '1', 'giao hàng sau 3h', '2019-03-06 06:55:18', '2019-03-06 08:03:37'),
(15, 'NgcTN', '0987651000', 'tng24@gmail.com', 'HBT, HN, Hưng Yên, VN', '2019-03-06 08:22:30', NULL, 695400, 1, '2', NULL, '2019-03-06 08:19:21', '2019-03-06 08:22:30'),
(16, 'NgcTN', '0987651000', 'tng24@gmail.com', 'HBT, HN, Hưng Yên, VN', '2019-03-06 08:22:28', NULL, 408000, 1, '2', 'Nhiều sữa tươi', '2019-03-06 08:20:09', '2019-03-06 08:22:28'),
(17, 'Anh ND 2', '0980987671', 'ndanh@ndanh.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-03-06 08:25:09', NULL, 134000, 2, '0', 'Sữa tươi', '2019-03-06 08:25:09', '2019-03-06 08:25:09'),
(18, 'Anh ND 2', '0980987671', 'ndanh@ndanh.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-03-06 08:26:28', NULL, 401200, 2, '0', 'VN', '2019-03-06 08:26:28', '2019-03-06 08:26:28');

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
(47, 1, 340000, 2, 22, 18, '2019-03-06 08:26:28', '2019-03-06 08:26:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `count_buys` int(10) UNSIGNED DEFAULT 0,
  `count_views` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `discount`, `images`, `thumbnail`, `hot`, `warranty`, `brand`, `description`, `intro`, `catagory_id`, `distribution_id`, `status`, `count_buys`, `count_views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sữa Nan Nga số 1 (800g)', 'sua-nan-nga-so-1-800g', 210000, 3, NULL, NULL, NULL, NULL, 'Nan', '<p>Vi khuẩn biphidum BL tăng cường khả năng miễn dịch cho trẻ nhỏ DHA ch&iacute;nh l&agrave; (omega 3) v&agrave; ARA (omega 6) ph&aacute;t triển n&atilde;o bộ, thị gi&aacute;c Chất đạm OPTIPRO ph&aacute;t triển chiều cao tối đa</p>', '<p>Sữa bột Nan Nga số 1 800g để b&eacute; ph&aacute;t triển to&agrave;n diện Sữa bột Nan Nga số 1 800g hộp lớn l&agrave; sữa bột cho b&eacute; y&ecirc;u được chế biến theo c&ocirc;ng thức d&agrave;nh cho trẻ sơ sinh để đảm bảo tăng trưởng l&agrave;nh mạnh cho b&eacute; từ khi mới sinh. Trong th&agrave;nh phần c&oacute; chứa Bifidus BL l&agrave; 1 loại probiotic tự nhi&ecirc;n được t&igrave;m thấy trong sữa mẹ gi&uacute;p hỗ trợ một hệ thực vật đường ruột khỏe mạnh v&agrave; c&acirc;n bằng hệ miễn dịch. C&aacute;ch pha: 30ml nước/ 1 th&igrave;a bột (th&igrave;a c&oacute; sẵn trong hộp). Sản phẩm đ&oacute;ng hộp 800gr D&agrave;nh cho b&eacute; 0-6 th&aacute;ng tuổi</p>', 3, 7, '1', 5, 10, '2019-02-11 23:29:18', '2019-03-05 09:25:08', NULL),
(2, 'Sữa Nan Supreme số 2 800g Thụy Sĩ', 'sua-nan-supreme-so-2-800g-thuy-si', 292000, 0, NULL, NULL, NULL, NULL, 'Nan', '<p>Bổ sung 31 dưỡng chất gi&uacute;p trẻ ph&aacute;t triển to&agrave;n diện Chứa HMO tăng cường sức đề kh&aacute;ng của trẻ Chứa DHA v&agrave; ARA ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực 800g d&agrave;nh cho b&eacute; từ 6-24 th&aacute;ng tuổi</p>', '<p>Sữa Nan Supreme số 2 800g Thụy Sĩ ph&ograve;ng ngừa dị ứng cho trẻ Sữa Nan Supreme số 2 800g Thụy Sĩ bổ sung 2FL HM-O gi&uacute;p tăng cường hệ miễn dịch gi&uacute;p b&eacute; ph&aacute;t triển khỏe mạnh Đ&acirc;y l&agrave; d&ograve;ng sữa c&ocirc;ng thức được chứng nhận an to&agrave;n cho trẻ bởi EFSA (Ủy ban An To&agrave;n Thực Phẩm Ch&acirc;u &Acirc;u) v&agrave; FDA (Cục Quản l&yacute; Thực phẩm v&agrave; Dược Phẩm Hoa Kỳ) Đặc biệt trong sữa c&oacute; bổ sung th&agrave;nh phần HMO (Oligosaccharides chỉ t&igrave;m thấy trong sữa mẹ) gi&uacute;p tăng cường sức đề kh&aacute;ng cho b&eacute; y&ecirc;u Sữa Nan Supreme số 2 800g Thụy Sĩ c&oacute; 100% đạm whey thủy ph&acirc;n một phần ph&ograve;ng ngừa nguy cơ dị ứng cho trẻ Sản phẩm được nhập khẩu ch&iacute;nh h&atilde;ng từ Đức</p>', 3, 7, '1', 8, 10, '2019-02-11 23:20:19', '2019-03-05 09:25:08', NULL),
(3, 'Sữa Nan Supreme số 1 400g Thụy Sĩ', 'sua-nan-supreme-so-1-400g-thuy-si', 332000, 5, NULL, NULL, NULL, NULL, 'Nan', '<p>Bổ sung 31 dưỡng chất gi&uacute;p trẻ ph&aacute;t triển to&agrave;n diện Chứa HMO tăng cường sức đề kh&aacute;ng của trẻ Chứa DHA v&agrave; ARA ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực 800g d&agrave;nh cho b&eacute; từ 6-24 th&aacute;ng tuổi</p>', '<p>Sữa Nan Supreme số 1 400g Thụy Sĩ ph&ograve;ng ngừa dị ứng cho trẻ Sữa Nan Supreme số 1 400g Thụy Sĩ bổ sung 2FL HM-O gi&uacute;p tăng cường hệ miễn dịch gi&uacute;p b&eacute; ph&aacute;t triển khỏe mạnh Sản phẩm l&agrave; d&ograve;ng sữa c&ocirc;ng thức được chứng nhận an to&agrave;n cho trẻ bởi FDA (Cục Quản l&yacute; Thực phẩm v&agrave; Dược Phẩm Hoa Kỳ) v&agrave; EFSA (Ủy ban An To&agrave;n Thực Phẩm Ch&acirc;u &Acirc;u) Sữa bổ sung HMO (Oligosaccharides trong sữa mẹ) l&agrave; th&agrave;nh phần đặc biệt chỉ được t&igrave;m thấy trong sữa mẹ gi&uacute;p tăng cường sức đề kh&aacute;ng cho b&eacute; y&ecirc;u Sữa Nan Supreme số 1 400g Thụy Sĩ c&oacute; 100% đạm whey thủy ph&acirc;n một phần ph&ograve;ng ngừa nguy cơ dị ứng cho trẻ Sản phẩm được nhập khẩu ho&agrave;n to&agrave;n từ Đức</p>', 3, 7, '1', 27, 12, '2019-02-11 23:20:20', '2019-03-06 08:19:21', NULL),
(4, 'Sữa Abbott Grow Gold 6+ hương vani 900g', 'sua-abbott-grow-gold-6-huong-vani-900g', 380000, 0, NULL, NULL, NULL, NULL, 'Abbott', '<p>Hệ dưỡng chất ti&ecirc;n tiến Growth Power hỗ trợ ti&ecirc;u h&oacute;a, ph&aacute;t triển vượt trội Ph&aacute;t triển n&atilde;o bộ, tăng cường tr&iacute; nhớ Gi&uacute;p b&eacute; lu&ocirc;n khỏe mạnh, ph&aacute;t triển chiều cao 900g d&agrave;nh cho b&eacute; từ 5 tuổi trở l&ecirc;n Thương hiệu Abbott Hoa Kỳ</p>', '<p>Sữa Abbott Grow Gold 6+ hương vani 900g Từ 6 tuổi trở l&ecirc;n, b&eacute; cần một hệ dưỡng chất mới để vừa đ&aacute;p ứng đủ nhu cầu dinh dưỡng h&agrave;ng ng&agrave;y cho hoạt động thể chất m&agrave; c&ograve;n cần phải k&iacute;ch th&iacute;ch sự ph&aacute;t triển của n&atilde;o bộ, khả năng s&aacute;ng tạo của trẻ nữa. Sữa bột c&ocirc;ng thức Abbott Grow Gold 6+ với hệ dưỡng chất ti&ecirc;n tiến Growth Power chứa h&oacute;a 30 dưỡng chất gồm cả DHA, Cholin, v&agrave; h&agrave;m lượng Canxi tối ưu, đ&aacute;p ứng đầy đủ nhu cầu dinh dưỡng, hỗ trợ sự tăng trưởng v&agrave; ph&aacute;t triển vượt trội của trẻ trong suốt giai đoạn đến trường.</p>', 9, 2, '1', 7, 10, '2019-02-11 23:20:21', '2019-02-16 07:56:25', NULL),
(5, 'Sữa Abbott Grow 4 hương Vani 900g', 'sua-abbott-grow-4-huong-vani-900g', 320000, 0, NULL, NULL, NULL, NULL, 'Abbott', '<p>H&agrave;m lượng canxi v&agrave; vitamin D cao hỗ trợ ph&aacute;t triển chiều cao tối ưu H&agrave;m lượng DHA, Taurin, Omega 9 gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c. Tăng cường sức đề kh&aacute;ng trẻ nhỏ D&agrave;nh cho b&eacute; tr&ecirc;n 2 tuổi Hương vani 900g - Hoa Kỳ</p>', '<p>Sữa bột cho b&eacute; Abbott Grow 4 hương Vani 900g d&agrave;nh cho c&aacute;c b&eacute; từ 2 tuổi trở l&ecirc;n Nguy&ecirc;n liệu Sữa Abbott grow 4 to&agrave;n phần bổ sung lecithin v&agrave; sữa t&aacute;ch kem (58,3%), mật bắp, sucrose, lactose, KHO&Aacute;NG CHẤT (canxi carbonat, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat), VITAMIN (acid ascorbic, cholin bitartrat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat, pyridoxin hydroclorid, canxi pantothenat, thiamin hydroclorid, vitamin K1, riboflavin, acid folic, d-biotin), hương vani, dầu c&aacute; (nguồn cung cấp DHA), taurin.</p>', 9, 2, '1', 4, 10, '2019-02-11 23:20:22', '2019-02-16 07:56:07', NULL),
(6, 'Sữa Abbott Grow Gold 3+ hương Vani 900g', 'sua-abbott-grow-gold-3-huong-vani-900g', 378000, 6, NULL, NULL, NULL, NULL, 'Abbott', '<p>Hệ dưỡng chất ti&ecirc;n tiến G Power+ gi&agrave;u dưỡng chất v&agrave; protein Gi&agrave;u vitamin D, Canxi, phốt pho tốt cho xương, ph&aacute;t triển chiều cao DHA, Taurin, Cholin, kẽm, sắt, đồng, I ốt,...tố cho n&atilde;o bộ v&agrave; thị gi&aacute;c Trọng lượng 900g - Hoa Kỳ D&agrave;nh cho b&eacute; từ 3-6 tuổi</p>', '<p>Sữa bột cho b&eacute; Abbott Grow Gold 3+ hương Vani 900g Nguy&ecirc;n liệu Sữa t&aacute;ch kem v&agrave; sữa nguy&ecirc;n kem bổ sung lecithin (60,3%), lactose, sucrose, mật bắp, KHO&Aacute;NG CHẤT (tricanxi phosphat, sắt sulfat, kẽm sulfat, đồng sulfat, mangan sulfat, natri selenat), hỗn hợp inulin v&agrave; fructo-oligosaccharid, hương vani, VITAMIN (cholin bitartrat, natri ascorbat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat, canxi pantothenat, pyridoxin hydroclorid, thiamin hydroclorid, acid folic, vitamin K1, d-biotin, cyanocobalamin), dầu c&aacute; tinh chế (nguồn cung cấp DHA), taurin.</p>', 9, 2, '1', 8, 11, '2019-02-11 23:20:23', '2019-03-05 04:57:28', NULL),
(7, 'Sữa Enfamil Premium Infant Formula (0-12 tháng)', 'sua-enfamil-premium-infant-formula-0-12-thang', 630000, 1, NULL, NULL, NULL, NULL, 'Enfa', '<p>Bổ sung DHA, sắt, choline tốt cho tr&iacute; n&atilde;o v&agrave; thị lực của trẻ Vitamin v&agrave; kho&aacute;ng chất gi&uacute;p b&eacute; ph&aacute;t triển to&agrave;n diện về thể chất v&agrave; tinh thần S&aacute;nh vừa đủ, thơm ngon, kh&ocirc;ng ngấy D&agrave;nh cho b&eacute; từ 0-12 th&aacute;ng tuổi Trọng lượng: 629g</p>', '<p>Sữa cho b&eacute; Enfamil Premium Infant Formula (0-12 th&aacute;ng) Sản phẩm kết hợp c&ocirc;ng thức độc quyền Neuro Complete c&ugrave;ng với c&aacute;c loại vitamin v&agrave; kho&aacute;ng chất của b&eacute; l&agrave; DHA, sắt, choline đem tốt cho n&atilde;o bộ v&agrave; thị lực của trẻ nhỏ Sữa bột cho b&eacute; Enfamil Premium Infant Formula (0-12 th&aacute;ng) l&agrave; nguy&ecirc;n liệu hết sức thần khiết mẹ kh&ocirc;ng lo b&eacute; bị dị ứng khi uống..</p>', 6, 5, '1', 5, 12, '2019-02-11 23:20:24', '2019-03-06 03:20:32', NULL),
(8, 'Sữa Enfagrow Premium Toddler Next Step (1-3 tuổi)', 'sua-enfagrow-premium-toddler-next-step-1-3-tuoi', 550000, 1, NULL, NULL, NULL, NULL, 'Enfa', '<p>Bổ sung 22 kho&aacute;ng chất hỗ trợ tăng trưởng l&agrave;nh mạnh Sữa bổ sung Omega 3 DHA v&agrave; cắt tốt cho n&atilde;o bộ Tăng sức đề kh&aacute;ng, chống t&aacute;c nh&acirc;n oxy h&oacute;a nhờ vitamin C v&agrave; E Trọng lượng: 680g</p>', '<p>Sữa bột cho b&eacute; Enfagrow Premium Toddler Next Step (1-3 tuổi) Nh&igrave;n b&eacute; chập chững những bước đi đầu ti&ecirc;n cũng như bắt đầu bập bẹ gọi tiếng ba, m&aacute; l&agrave; niềm vui v&ocirc; bờ bến của những người l&agrave;m cha l&agrave;m mẹ. Giai đoạn n&agrave;y rơi v&agrave;o độ tuổi từ 1-3 v&agrave; cũng l&agrave; l&uacute;c b&eacute; cần bổ sung dinh dưỡng v&agrave; năng lượng cần thiết để ph&aacute;t triển chiều cao, c&acirc;n nặng tối đa bắt kịp đ&agrave; ph&aacute;t triển của c&aacute;c b&eacute; c&ugrave;ng trang lưa. Ch&iacute;nh v&igrave; thế, thương hiệu Mead Johnson đ&atilde; nghi&ecirc;n cứu th&agrave;nh c&ocirc;ng sản phẩm sữa đ&aacute;p ứng đủ năng lượng cho hoạt động v&agrave; ph&aacute;t triển h&agrave;ng ng&agrave;y đ&oacute; l&agrave; sữa bột cho b&eacute; Enfagrow Premium Toddler Next Step (1-3 year) 680g.</p>', 6, 5, '1', 28, 12, '2019-02-11 23:20:25', '2019-03-05 08:17:56', NULL),
(9, 'Sữa Enfagrow A+ 360° Brain DHA số 4 (1.8kg)', 'sua-enfagrow-a-3600-brain-dha-so-4-18kg', 465000, 4, NULL, NULL, NULL, NULL, 'Enfa', '<p>D&agrave;nh cho b&eacute; từ 2 - 6 tuổi Tăng th&ecirc;m 40% h&agrave;m lượng DHA Bổ sung MFGM Pro gi&uacute;p b&eacute; ph&aacute;t triển tr&iacute; n&atilde;o tốt hơn cả về TƯ DUY v&agrave; CẢM X&Uacute;C Hỗ trợ hệ miễn dịch 3 chiều Dễ hấp thụ v&agrave; ti&ecirc;u h&oacute;a tốt.</p>', '<p>Sữa bột dinh dưỡng Enfagrow A+ 360&deg; Brain DHA số 4 (1.8kg) Độ tuổi sử dụng: C&aacute;c b&eacute; từ 2-6 tuổi.</p>', 6, 5, '1', 12, 11, '2019-02-11 23:20:26', '2019-03-04 03:33:00', NULL),
(10, 'Sữa Enfagrow A+ 360° Brain DHA số 3 (900g)', 'sua-enfagrow-a-3600-brain-dha-so-3-900g', 512000, 0, NULL, NULL, NULL, NULL, 'Enfa', '<p>D&agrave;nh cho b&eacute; từ 1-3 tuổi Bổ sung MFGM Pro gi&uacute;p b&eacute; ph&aacute;t triển tr&iacute; n&atilde;o tốt hơn cả về TƯ DUY v&agrave; CẢM X&Uacute;C Hỗ trợ hệ miễn dịch 3 chiều Dễ hấp thụ v&agrave; ti&ecirc;u h&oacute;a tốt.</p>', '<p>Sữa Enfagrow A+ 360&deg; Brain DHA số 3 (900g) Th&agrave;nh phần: Bột bơ sữa (nguồn của MGFM), bột kem (dầu hạt cải, chất rắn glucose, dầu hướng dương, lactose, dầu dừa, dầu đậu n&agrave;nh, đạm bơ c&ocirc; đặc, mono v&agrave; diglycerides, kali citrat, đạm sữa c&ocirc; lập, natri ascorbat, kali phosphat, ascorbyl palmitat, vitamin E v&agrave; lecithin đậu n&agrave;nh), Siro mật bắp (thực vật), sữa bột kh&ocirc;ng b&eacute;o, sữa bột nguy&ecirc;n kem, đường sucrose (thực vật), galactooligosaccharide, polydextrose, c&aacute;c kho&aacute;ng chất (canxi carbonat, đồng sulphat, magie phốtphat, kẽm sulphat, sắt sulphat, mangan sulphat, kali i-ot v&agrave; kali citrat), hương vani tổng hợp, c&aacute;c vitamin cần thiết (vitamin A palmitat, vitamin B1, B6, vitamin B12, vitamin C, vitamin D, vitamin K, vitamin E, biotin, canxi phanthothenat, choline bitartrate, acid folic, vitamin PP, vitamin K), dầu c&aacute; l&aacute; nguồn của Axit Docosahexaenoic (DHA), beta-glucan từ men, taurine v&agrave; c&aacute;c chất chống oxy h&oacute;a (Axit ascobic).</p>', 6, 5, '1', 6, 10, '2019-02-11 23:20:27', '2019-02-16 07:54:36', NULL),
(11, 'Sữa Enfamil A+ Lactofree Care hộp 400g', 'sua-enfamil-a-lactofree-care-hop-400g', 235000, 0, '', '', '', '', 'Enfa', '<p>Kh&ocirc;ng chứa đường lactose Chứa đạm nguồn gốc sữa b&ograve; H&agrave;m lượng DHA khuyến nghị của c&aacute;c chuy&ecirc;n gia D&agrave;nh cho b&eacute; từ 0 - 12 th&aacute;ng tuổi.</p>', '<p>Sữa Enfamil A+ Lactofree Care hộp 400g gi&uacute;p b&eacute; ph&aacute;t triển thể chất v&agrave; sức khỏe to&agrave;n diện Được đặc chế cho trẻ bị ti&ecirc;u chảy do bất (kh&ocirc;ng) dung nạp lactose. Đ&acirc;y l&agrave; sản phẩm dinh dưỡng đặc biệt với đạm sữa b&ograve; v&agrave; kh&ocirc;ng chứa lactose. Được đặc chế hỗ trợ ph&aacute;t triển tr&iacute; tuệ v&agrave; thị lực ở trẻ nhỏ do chứa DHA &amp; ARA. H&agrave;m lượng của DHA trong sản phẩm gi&uacute;p đạt khuyến nghị của FAO/WHO cho trẻ 0-12 th&aacute;ng sinh đủ th&aacute;ng.</p>', 6, 5, '1', 4, 10, '2019-02-11 23:20:28', '2019-02-16 07:53:55', NULL),
(13, 'Sữa tươi uống', 'sua-tuoi-uong', 123000, 1, NULL, NULL, NULL, NULL, 'Meiji', '<p>&ocirc; tả ngắn</p>', '<p>ới thiệu sản phẩm</p>', 1, 3, '1', 2, 10, '2019-02-13 00:04:29', '2019-02-14 10:34:37', NULL),
(14, 'Sữa hạt óc chó', 'sua-hat-oc-cho', 262000, 2, NULL, NULL, NULL, NULL, 'Meiji', '<p>M&ocirc; tả ngắn&nbsp;Sữa hạt &oacute;c ch&oacute; 2</p>', '<p>Giới thiệu sản phẩm&nbsp;Sữa hạt &oacute;c ch&oacute; 2</p>', 1, 6, '1', 3, 10, '2019-02-13 07:57:30', '2019-02-16 08:06:44', NULL),
(16, 'Sữa tươi TH 2019', 'sua-tuoi-th-2019', 150000, 2, NULL, NULL, NULL, NULL, 'TH', '<p>Sữa tươi TH 2019</p>', '<p>Sữa tươi TH 2019</p>', 16, 1, '0', 13, 11, '2019-02-22 08:57:44', '2019-03-06 03:46:26', NULL),
(17, 'Sữa Tươi True Global', 'sua-tuoi-true-global', 190000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>Sữa Tươi True Global</p>', '<p>Sữa Tươi True Global</p>', 16, 1, '1', 24, 13, '2019-02-22 08:58:41', '2019-03-06 08:19:21', NULL),
(18, 'Lốc 6 Hộp Sữa Nguyên Kem Devondale FullCream (200ml / Hộp)', 'loc-6-hop-sua-nguyen-kem-devondale-fullcream-200ml-hop', 66000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>100% sữa tươi nguy&ecirc;n chất của &Uacute;c</p>\r\n\r\n<p>Kh&ocirc;ng chứa chất bảo quản an to&agrave;n cho sức khỏe</p>\r\n\r\n<p>Bổ sung dinh dưỡng, vitamin, canxi, chất b&eacute;o...</p>\r\n\r\n<p>Ph&ugrave; hợp cho mọi lứa tuổi, đặc biệt l&agrave; trẻ em, người gi&agrave;</p>', '<ul>\r\n	<li><strong>Lốc 6 Hộp Sữa Nguy&ecirc;n Kem Devondale FullCream (200ml / Hộp)</strong>&nbsp;l&agrave; thực phẩm&nbsp;rất gi&agrave;u dinh dưỡng, gi&agrave;u vitamin v&agrave; kho&aacute;ng chất từ thi&ecirc;n nhi&ecirc;n, &iacute;t b&eacute;o, rất tốt cho cơ thể.&nbsp;Sữa nguy&ecirc;n kem với tất cả chất dinh dưỡng tự nhi&ecirc;n mang hương vị thơm ngon, b&eacute;o ngậy sẽ khiến cả gia đ&igrave;nh y&ecirc;u th&iacute;ch.</li>\r\n	<li>Sữa tươi nguy&ecirc;n chất 100% được xử l&yacute; bằng c&ocirc;ng nghệ&nbsp;tiệt tr&ugrave;ng&nbsp;v&agrave; đồng ho&aacute;.</li>\r\n	<li>Sản phẩm được nhập khẩu trực tiếp với chất lượng &Uacute;c.</li>\r\n	<li>Nguồn cung cấp Canxi, Protein v&agrave; Vitamin A.</li>\r\n	<li>Kh&ocirc;ng c&oacute; chất bảo quản, kh&ocirc;ng chất phụ gia an to&agrave;n cho sức khỏe.</li>\r\n</ul>', 16, 12, '1', 16, 11, '2019-03-01 08:46:59', '2019-03-04 03:24:09', NULL),
(19, 'Kem Sữa Đặc Có Đường Carnation Tuýp (180g)', 'kem-sua-dac-co-duong-carnation-tuyp-180g', 25000, 0, NULL, NULL, NULL, NULL, 'Nestlé', '<p>Dạng Tu&yacute;p độc đ&aacute;o</p>\r\n\r\n<p>Dễ d&agrave;ng sử dụng, bảo quản</p>\r\n\r\n<p>Ph&ugrave; hợp sử dụng cho c&aacute;c hoạt động d&atilde; ngoại, picnic</p>\r\n\r\n<p>Bổ sung Vitamin A, B1, D3</p>', '<ul>\r\n	<li><strong>Kem Sữa Đặc C&oacute; Đường Carnation Tu&yacute;p (180g)</strong>&nbsp;ph&ugrave; hợp cho người lớn v&agrave; trẻ em từ 1 tuổi trở l&ecirc;n với 1 - 2 khẩu phần (30g) Carnation mỗi ng&agrave;y.</li>\r\n	<li>Th&agrave;nh phần: Đường (47%), nước, sữa bột t&aacute;ch kem, dầu cọ, bột whey, c&aacute;c vitamin (A, B1, D3), chất ổn định (407a, 341(iii)).</li>\r\n	<li>Sản phẩm c&oacute; chứa sữa.</li>\r\n	<li>Khối lượng tịnh: 180 g</li>\r\n	<li>Hướng dẫn sử dụng: Creamer đặc c&oacute; đường Carnation được c&oacute; thể sử dụng trực tiếp hoặc d&ugrave;ng để pha chế c&aacute;c m&oacute;n ăn, đồ uống.</li>\r\n	<li>Hướng dẫn bảo quản: bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Sau khi mở tu&yacute;p n&ecirc;n đậy k&iacute;n nắp, bảo quản trong tủ lạnh.</li>\r\n	<li>NSX: 9 th&aacute;ng trước hạn sử dụng.</li>\r\n	<li>HSD: Xem &ldquo;BB&rdquo; tr&ecirc;n bao b&igrave; sản phẩm.</li>\r\n	<li>Ch&uacute; &yacute;: Kh&ocirc;ng sử dụng sản phẩm cho trẻ sơ sinh v&agrave; kh&ocirc;ng d&ugrave;ng để thay thế sữa mẹ.</li>\r\n	<li>Kh&ocirc;ng sử dụng cho người dị ứng với c&aacute;c th&agrave;nh phần của sản phẩm.</li>\r\n	<li>Sản xuất bởi: F&amp;N Dairies (Thailand) Limited. 668 Moo 4 Rojana Industrial park Zone 2, U-thai, Phra Nakhon Si Ayutthaya 13210, Th&aacute;i Lan.</li>\r\n</ul>', 19, 1, '1', 0, 1, '2019-03-05 09:29:34', '2019-03-06 03:34:39', NULL),
(20, 'Combo 15 hộp Sữa đặc MILKO - Sữa nhập khẩu MALAYSIA', 'combo-15-hop-sua-dac-milko-sua-nhap-khau-malaysia', 160000, 0, NULL, NULL, NULL, NULL, 'Milko', '<p>Milko l&agrave; thương hiệu sữa đặc nổi tiếng ở Malaysia</p>\r\n\r\n<p>Sản phẩm c&oacute; sự kh&aacute;c biệt so với c&aacute;c sản d&ograve;ng sữa đặc kh&aacute;c tr&ecirc;n thị trường bởi vị ngọt thanh, kh&ocirc;ng tạo cảm gi&aacute;c ng&aacute;n, qu&aacute; ngọt cho khi sử dụng; giữ được hương thơm tự nhi&ecirc;n của sữa.</p>\r\n\r\n<p>Sản phẩm th&iacute;ch hợp để ăn k&egrave;m với b&aacute;nh m&igrave;, l&agrave;m sữa chua, l&agrave;m c&aacute;c loại b&aacute;nh, pha lo&atilde;ng để uống...</p>', '<p>Sữa đặc MILKO</p>\r\n\r\n<p>- Sản phẩm được sản xuất bởi c&ocirc;ng ty: Promac Enterpries SND BHD, Kuala Lumper, Malaysia</p>\r\n\r\n<p>- Milko l&agrave; thương hiệu sữa đặc nổi tiếng ở Malaysia, sản phẩm c&oacute; sự kh&aacute;c biệt so với c&aacute;c sản d&ograve;ng sữa đặc kh&aacute;c tr&ecirc;n thị trường bởi vị ngọt thanh, kh&ocirc;ng tạo cảm gi&aacute;c ng&aacute;n, qu&aacute; ngọt cho khi sử dụng; giữ được hương thơm tự nhi&ecirc;n của sữa.</p>\r\n\r\n<p>- Sản phẩm được c&ocirc;ng ty CP Sản xuất, Thương mại &amp; Dịch vụ Ph&uacute;c Thịnh nhập khẩu trực tiếp từ Malaysia v&agrave; ph&acirc;n phối tại thị trường Việt Nam.</p>\r\n\r\n<p>- Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>+ Khối lượng: 390ml/hộp</p>\r\n\r\n<p>+ Hạn sử dụng: 11/2019</p>\r\n\r\n<p>+ Bao b&igrave;: Lon thiếc (sản phẩm đạt quy chuẩn kỹ thuật quốc gia)</p>\r\n\r\n<p>+ Th&agrave;nh phần: Sữa kh&ocirc;ng b&eacute;o nguy&ecirc;n chất (10%), Đường, nước, chất b&eacute;o thực vật, chất chống đ&ocirc;ng v&oacute;n, mononatri orthophosphat, Vitamin A, D3, B1</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/93/84/88/e58a239abc7a3272e6af122efc897c42.jpg\" style=\"height:333px; width:250px\" /></p>', 19, 1, '1', 1, 0, '2019-03-05 09:31:11', '2019-03-06 06:55:18', NULL),
(21, 'Cà Phê Sữa Đặc Archcafé (12 gói x 18g)', 'ca-phe-sua-dac-archcafe-12-goi-x-18g', 48000, 0, NULL, NULL, NULL, NULL, 'Archcafé', '<ul>\r\n	<li>Kh&ocirc;ng chỉ l&agrave; thức uống m&agrave; c&ograve;n l&agrave; nghệ thuật pha chế</li>\r\n	<li>Vị ngọt-đắng dịu d&agrave;ng</li>\r\n	<li>Thưởng thức tinh hoa của nghệ thuật ẩm thực</li>\r\n	<li>Sản phẩm kh&ocirc;ng chứa hương, m&agrave;u nh&acirc;n tạo</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&agrave; Ph&ecirc; Sữa Đặc Archcaf&eacute; (12 g&oacute;i x 18g)</strong>&nbsp;kh&ocirc;ng chỉ l&agrave; thức uống m&agrave; c&ograve;n l&agrave; nghệ thuật pha chế từ sữa đặc sấy dạng bột nhập khẩu từ Đức, h&ograve;a quyện c&ugrave;ng c&agrave; ph&ecirc; Việt Nam cho vị ngọt-đắng dịu d&agrave;ng m&agrave; bạn chỉ c&oacute; thể t&igrave;m thấy ở Archcaf&eacute;.</li>\r\n	<li>Thưởng thức Archcaf&eacute; c&agrave; ph&ecirc; sữa đặc thưởng thức tinh hoa của nghệ thuật ẩm thực đường phố Việt Nam.&nbsp;Archcaf&eacute; - Authentic Vietnamese Coffee.<br />\r\n	Sản phẩm kh&ocirc;ng chứa hương, m&agrave;u nh&acirc;n tạo.&nbsp;</li>\r\n	<li>C&agrave; ph&ecirc; sữa Việt Nam từ l&acirc;u đ&atilde; được người Việt v&agrave; nước ngo&agrave;i ưa chuộng v&igrave; vị ngon tuyệt của sữa đặc b&eacute;o ngọt v&agrave; c&agrave; ph&ecirc; đắng nhẹ.</li>\r\n</ul>', 19, 12, '1', 2, 1, '2019-03-05 09:32:22', '2019-03-06 06:55:18', NULL),
(22, 'Thùng 24 Hộp Sữa Óc Chó Golden Milk (190ml x 24 Hộp)', 'thung-24-hop-sua-oc-cho-golden-milk-190ml-x-24-hop', 340000, 2, NULL, NULL, NULL, NULL, 'Golden Milk', '<p>Ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; hệ thần kinh</p>\r\n\r\n<p>Hỗ trợ ph&aacute;t triển chiều cao tối đa</p>\r\n\r\n<p>Ngăn ngừa l&atilde;o h&oacute;a &ndash; Cho vẻ đẹp rạng ngời</p>\r\n\r\n<p>Cho hệ tim mạch lu&ocirc;n khỏe mạnh</p>', '<ul>\r\n	<li><strong>Th&ugrave;ng 24 Hộp Sữa &Oacute;c Ch&oacute; Golden Milk (190ml x 24 Hộp)</strong>&nbsp;l&agrave; sự kết hợp ho&agrave;n hảo của nhiều loại hạt dinh dưỡng như: hạt &oacute;c ch&oacute;, hạnh nh&acirc;n, đậu đen, đậu n&agrave;nh, đậu phộng v&agrave; hạt th&ocirc;ng theo c&ocirc;ng thức đặc biệt nhất.</li>\r\n	<li>Được sản xuất tại H&agrave;n Quốc, với c&ocirc;ng nghệ sản xuất hiện đại theo ti&ecirc;u chuẩn HACCP, Sữa &Oacute;c ch&oacute; Golden Milk giữ trọn được vị thơm ngon, đậm đ&agrave; của c&aacute;c loại hạt, l&agrave; thức uống dinh dưỡng tốt nhất cho cả gia đ&igrave;nh!</li>\r\n	<li>Với h&agrave;m lượng Omega-3 dồi d&agrave;o &ndash; hạt &oacute;c ch&oacute; được biết đến l&agrave; 1 si&ecirc;u thực phẩm, Sữa &Oacute;c ch&oacute; Golden milk kh&ocirc;ng chỉ gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o ở trẻ nhỏ m&agrave; c&ograve;n giảm căng thẳng, tăng tập trung v&agrave; hỗ trợ tr&iacute; nhớ ở người lớn tuổi.</li>\r\n	<li>Đặc biệt đối với phụ nữ đang mang thai, trong sữa &oacute;c ch&oacute; lượng omega cao gấp 5 lần so với lượng chất n&agrave;y trong cơ thể c&aacute; hồi. V&igrave; vậy Sữa &oacute;c ch&oacute; Golden milk c&oacute; t&aacute;c dụng rất tốt trong việc tăng cường khả năng ph&aacute;t triển tr&iacute; n&atilde;o.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk chứa h&agrave;m lượng canxi cao từ c&aacute;c loại hạt như hạt &oacute;c ch&oacute;, hạnh nh&acirc;n gi&uacute;p cơ thể x&acirc;y dựng v&agrave; duy tr&igrave; hệ xương-răng chắc khỏe. Đồng thời k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u, tạo cơ v&agrave; tế b&agrave;o th&acirc;n kinh hoạt động tốt hơn.</li>\r\n	<li>Chất chống oxy h&oacute;a &ndash; vitamin C, E, Beta caroten v&agrave; Axit alpha linoleic gi&uacute;p c&acirc;n bằng h&agrave;m lượng hormone trong cơ thể, sản sinh collagen tốt cho da v&agrave; t&oacute;c&hellip;Đặc biệt l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a của cơ thể cao gấp 15 lần vitamin E (theo Hiệp hội H&oacute;a học Mỹ).</li>\r\n	<li>Lượng dưỡng chất lớn trong Sữa &oacute;c ch&oacute; Golden milk như axit b&eacute;o, protein&hellip; c&oacute; khả năng tăng sản sinh nội tiết tố nữ estrogen gi&uacute;p v&ograve;ng 1 ph&aacute;t triển hơn.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk chứa Axit b&eacute;o Omega-3, gi&agrave;u chất xơ, Vitamin B, Magi&ecirc;, Vitamin E, đặc biệt chứa h&agrave;m lượng cao c&aacute;c axit b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a c&ugrave;ng với c&aacute;c ph&acirc;n tử hoạt t&iacute;nh sinh học gi&uacute;p hỗ trợ sức khỏe ổn định đường huyết v&agrave; ngăn ngừa c&aacute;c yếu tố của bệnh tim mạch.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk l&agrave; ngưồn cung cấp dồi d&agrave;o về vitamin E, Calcium, phosphor, Sắt v&agrave; Magnesium. N&oacute; c&ograve;n chứa Kẽm, Selenium, Đồng v&agrave; Niacin,&hellip;</li>\r\n	<li>Gi&uacute;p tăng cường hệ miễn dịch, hỗ trợ sức khỏe hệ thần kinh v&agrave; c&ograve;n củng cố hoạt động hệ xương v&agrave; răng.</li>\r\n</ul>\r\n\r\n<p><strong>Sữa hạt &oacute;c ch&oacute;, hạnh nh&acirc;n, đậu đen, đậu n&agrave;nh Golden milk ph&ugrave; hợp với mọi lứa tuổi v&agrave; đặc biệt tốt cho những đối tượng sau đ&acirc;y:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em (trong độ tuổi đi học)</li>\r\n	<li>Phụ nữ mang thai v&agrave; người gi&agrave;</li>\r\n	<li>Vận động vi&ecirc;n đang chơi thể thao, những người phải vận động nhiều</li>\r\n	<li>Người ăn chay, cơ thể thiếu hụt dinh dưỡng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 16, 12, '1', 2, 0, '2019-03-05 09:33:59', '2019-03-06 08:26:28', NULL),
(23, 'Enfagrow Premium Toddler Next Step, 680g', 'enfagrow-premium-toddler-next-step-680g', 600000, 0, NULL, NULL, NULL, NULL, 'Mead Johnson', '<p><strong>CH&Uacute; &Yacute;:&nbsp;</strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ nhỏ. C&aacute;c yếu tố chống nhiễm khuẩn, đặc biệt l&agrave; kh&aacute;ng thể chỉ c&oacute; trong sữa mẹ c&oacute; t&aacute;c dụng gi&uacute;p trẻ ph&ograve;ng, chống bệnh ti&ecirc;u chảy, nhiễm khuẩn đường h&ocirc; hấp v&agrave; một số bệnh nhiễm khuẩn kh&aacute;c.Thực hiện đ&uacute;ng hướng dẫn vệ sinh, tiệt khuẩn. Việc sử dụng b&igrave;nh b&uacute; c&oacute; thể l&agrave;m cho trẻ bỏ b&uacute; mẹ v&agrave; c&oacute; nguy cơ bị ti&ecirc;u chảy</p>', '<h3>Thực phẩm bổ sung: Enfagrow Premium Toddler Next Step cho trẻ từ 1-3 tuổi&nbsp;</h3>\r\n\r\n<p><strong>Thực phẩm bổ sung Enfagrow Premium Todder Next Step cho trẻ từ 1-3 tuổi&nbsp;</strong>được nhập khẩu trực tiếp từ Mỹ. Sản phẩm kh&ocirc;ng chứa th&agrave;nh phần biến đổi Gen. Sản phẩm chứa bộ dưỡng chất Triple Health Guard (DHA cho tr&iacute; n&atilde;o, 22 dưỡng chất cho bữa ăn ho&agrave;n thiện, Prebiotics &amp; Vitamins cho hệ miễn dịch).&nbsp;</p>\r\n\r\n<p><img alt=\"_MG_7776 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/85bcc570cef013b07461e2f49c284e01.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Mead Johnson</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>H&agrave;ng nội địa ch&iacute;nh h&atilde;ng, sản xuất tại Mỹ. Nhập khẩu nguy&ecirc;n hộp 100% bởi MEAD JOHNSON NUTRITION VIỆT NAM</p>\r\n\r\n<p><img alt=\"_MG_7777 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/78459dd11b377c2202b66947ad0f91ad.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Khối lượng:</strong>&nbsp;680g/hộp</p>\r\n\r\n<p><strong>Th&agrave;nh phần :</strong></p>\r\n\r\n<p>- Sản phẩm c&oacute; chứa đạm v&agrave; đậu n&agrave;nh</p>\r\n\r\n<p>- Sữa bột t&aacute;ch b&eacute;o, siro mật bắp, dầu thực vật (dầu cọ Olein, dầu dừa, dầu đậu n&agrave;nh v&agrave; dầu hoa hướng dương gi&agrave;u oleic), galactooligosaccharides, polydextrose, canxi carbonat, magie phosphate, muối, sắt sunfate, kẽm sunfate, mangan sunfate, đồng (II) sunfate, dầu c&aacute; ngừ, niacin, axit ascorbic, canxi pantothenate, vitamin B6, vitamin B1, vitamin D3, vitamin B2, axit folic, biotin, chất chống oxi h&oacute;a (ascorbyl palmitate, vitamin E, vitamin A, hương tự nhi&ecirc;n, chất nhũ h&oacute;a (soy lecithin).</p>\r\n\r\n<p><img alt=\"_MG_7778 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/af49ac82e279795261e602e9b144d6d5.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Hướng dẫn c&aacute;ch pha v&agrave; sử dụng:</strong></p>\r\n\r\n<p>- Khuyến nghị: Uống 1 ly mỗi ng&agrave;y</p>\r\n\r\n<p>- Lưu &yacute;: Sức khỏe của trẻ t&ugrave;y thuộc v&agrave;o sự tu&acirc;n thủ chặt chẽ c&aacute;c hướng dẫn dưới đ&acirc;y</p>\r\n\r\n<p>- Vệ sinh, chuẩn bị dụng cụ pha chế, sử dụng v&agrave; bảo quản một c&aacute;ch th&iacute;ch hợp l&agrave; rất quan trọng trong qu&aacute; tr&igrave;nh pha chế cho trẻ, n&ecirc;n hỏi &yacute; kiến b&aacute;c sĩ để biết loại dụng cụ n&agrave;o ph&ugrave; hợp với con bạn</p>\r\n\r\n<p>- Rửa tay sạch với x&agrave; ph&ograve;ng v&agrave; nước trước khi pha</p>\r\n\r\n<p>- Rửa sạch cốc hay dụng cụ v&agrave; nắp</p>\r\n\r\n<p>- Đun s&ocirc;i c&aacute;c vật dụng trong 1 ph&uacute;t&nbsp;</p>\r\n\r\n<p>- Đun s&ocirc;i nước trong 1 ph&uacute;t</p>\r\n\r\n<p>- Để nước nguội đến 40 độ C (ấm) trước khi pha</p>\r\n\r\n<p>- Cho đ&uacute;ng lượng nước ấm v&agrave;o cốc hay dụng cụ</p>\r\n\r\n<p>- Cho sản phẩm v&agrave;o, đậy kỹ nắp dụng cụ v&agrave; lắc đều</p>\r\n\r\n<p>- Để pha một ly Enfagrow cho trẻ, cho 3 muỗng gạt (36g bột) v&agrave;o 6 ounces(tương đương 180ml) nước ấm (kh&ocirc;ng qu&aacute; 40 độ C)</p>\r\n\r\n<p>- Khuấy hay lắc đều, v&agrave; cho trẻ sử dụng</p>\r\n\r\n<p><img alt=\"_MG_7780 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/019ea7ace67cca38b625dc36fc4c6d92.PNG\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đối tượng sử dụng:</strong>&nbsp;D&agrave;nh cho trẻ từ 1 -3 tuổi trở l&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong></p>\r\n\r\n<p>- Đậy k&iacute;n nắp hộp sau khi mở v&agrave; để ở nơi m&aacute;t, kh&ocirc; r&aacute;o</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n cho sản phẩm v&agrave;o tủ lạnh</p>\r\n\r\n<p>- N&ecirc;n sử dụng trong v&ograve;ng 4 tuần từ khi mở sản phẩm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nh&agrave; sản xuất:</strong></p>\r\n\r\n<p>Mead Johnson Nutrition -&nbsp; 2400 West Lloyd Expressway Evansville, IN 47721 USA</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Hoa Kỳ</p>', 6, 5, '1', 1, 1, '2019-03-05 09:42:22', '2019-03-06 06:55:18', NULL),
(24, 'Thùng 48 hộp sữa tươi tiệt trùng Ba Vì có đường 180ml', 'thung-48-hop-sua-tuoi-tiet-trung-ba-vi-co-duong-180ml', 240000, 0, NULL, NULL, NULL, NULL, 'Ba Vi', '<p><strong>Sữa dinh dưỡng n&ocirc;ng trại Ba V&igrave; c&oacute; đường</strong>&nbsp;với hương vị thơm ngon, dễ uống, trong&nbsp;<strong>sữa</strong>&nbsp;bổ sung dồi d&agrave;o vitamin A gi&uacute;p s&aacute;ng mắt v&agrave; c&ocirc;ng thức gồm Vitamin D3 - Canxi v&agrave; Vitamin K2 c&oacute; t&aacute;c dụng hỗ trợ ph&aacute;t triển chiều cao hiệu quả.</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>', '<p><strong>Sữa dinh dưỡng n&ocirc;ng trại Ba V&igrave; c&oacute; đường</strong>&nbsp;với hương vị thơm ngon, dễ uống, trong&nbsp;<strong>sữa</strong>&nbsp;bổ sung dồi d&agrave;o vitamin A gi&uacute;p s&aacute;ng mắt v&agrave; c&ocirc;ng thức gồm Vitamin D3 - Canxi v&agrave; Vitamin K2 c&oacute; t&aacute;c dụng hỗ trợ ph&aacute;t triển chiều cao hiệu quả.</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>\r\n\r\n<p><img alt=\"Gía trị dinh dưỡng\" src=\"https://cdn.tgdd.vn/Products/Images//2386/195808/bhx/files/3Y8A1073.JPG\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng v&agrave; bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>Lắc đều trước khi uống. Ngon hơn khi uống lạnh.</li>\r\n	<li>Kh&ocirc;ng d&ugrave;ng cho trẻ dưới 2 tuổi.</li>\r\n	<li>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</li>\r\n</ul>', 17, 1, '1', 1, 1, '2019-03-06 08:09:45', '2019-03-06 08:20:09', NULL),
(25, 'Lốc 3 chai sữa tươi tiệt trùng Lothamilk sô cô la 180ml', 'loc-3-chai-sua-tuoi-tiet-trung-lothamilk-so-co-la-180ml', 21000, 0, NULL, NULL, NULL, NULL, 'Lothamilk', '<p><strong>Sữa tươi tiệt tr&ugrave;ng Lothamilk s&ocirc; c&ocirc; la</strong>&nbsp;được chế biến từ sữa b&ograve; tươi nguy&ecirc;n chất 100%, rất gi&agrave;u đạm, bơ sữa, vitamin v&agrave; kho&aacute;ng chất cần thiết gi&uacute;p ph&aacute;t triển chiều cao, duy tr&igrave; cơ thể khoẻ mạnh, minh mẫn v&agrave; dồi d&agrave;o sinh lực.</p>', '<p><strong>Sữa tươi tiệt tr&ugrave;ng Lothamilk s&ocirc; c&ocirc; la</strong>&nbsp;được chế biến từ sữa b&ograve; tươi nguy&ecirc;n chất 100%, rất gi&agrave;u đạm, bơ sữa, vitamin v&agrave; kho&aacute;ng chất cần thiết gi&uacute;p ph&aacute;t triển chiều cao, duy tr&igrave; cơ thể khoẻ mạnh, minh mẫn v&agrave; dồi d&agrave;o sinh lực.</p>\r\n\r\n<p><strong>Sữa tươi</strong>&nbsp;được đ&oacute;ng g&oacute;i bao b&igrave; theo quy tr&igrave;nh tu&acirc;n thủ nghi&ecirc;m ngặt c&aacute;c ti&ecirc;u chuẩn vệ sinh thực phẩm, đảm bảo giữ trọn hương vị thơm ngon v&agrave; c&aacute;c chất dinh dưỡng c&oacute; trong sữa.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin dinh dưỡng</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images//2386/157902/bhx/files/sua-tuoi-tiet-trung-lothamilk-co-duong-180ml.jpg\" /></strong></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Uống trực tiếp, ngon hơn khi uống lạnh.</li>\r\n	<li>Sản phẩm d&ugrave;ng cho 1 lần uống.</li>\r\n</ul>\r\n\r\n<p><strong>Bảo quản:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh nhiệt độ cao v&agrave; &aacute;nh nắng trực tiếp.</li>\r\n	<li>N&ecirc;n d&ugrave;ng hết sau khi mở, nếu c&ograve;n bảo quản ngăn m&aacute;t tủ lạnh, n&ecirc;n d&ugrave;ng hết sau 3 ng&agrave;y.</li>\r\n</ul>', 16, 1, '1', 4, 0, '2019-03-06 08:14:41', '2019-03-06 08:25:09', NULL),
(26, 'Sữa Tươi Tiệt Trùng Ít Béo Harvey Fresh Low Fat Milk Hộp 1 Lít', 'sua-tuoi-tiet-trung-it-beo-harvey-fresh-low-fat-milk-hop-1-lit', 34000, 0, NULL, NULL, NULL, NULL, 'Harvey', '<p>Xuất xứ : &Uacute;c</p>\r\n\r\n<p>Thể t&iacute;ch : 1 l&iacute;t</p>\r\n\r\n<p>Hương vị sữa nguy&ecirc;n chất, thơm ngon</p>\r\n\r\n<p>Sữa tiệt tr&ugrave;ng &iacute;t b&eacute;o</p>\r\n\r\n<p>Cung cấp nhiều Vitamin v&agrave; kho&aacute;ng chất</p>\r\n\r\n<p>H&agrave;m lượng chất b&eacute;o thấp trong sữa, sản phẩm rất th&iacute;ch hợp cho người đang c&oacute; nhu cầu ăn ki&ecirc;ng, người bị tiểu đường sử dụng</p>\r\n\r\n<p>Gi&uacute;p ph&aacute;t triển thể chất v&agrave; tr&iacute; tuệ</p>\r\n\r\n<p>Th&iacute;ch hợp cho người đang ăn ki&ecirc;ng.</p>\r\n\r\n<p>Đ&oacute;ng hộp tiện dụng cho sử dụng gia đ&igrave;nh, chăm s&oacute;c tốt nhất sức khỏe gia đ&igrave;nh m&agrave; vẫn tiết kiệm thời gian v&agrave; chi ph&iacute;</p>', '<p><strong>Xuất xứ:</strong>&nbsp;&Uacute;c,&nbsp;Harvey l&agrave; thương hiệu từ &Uacute;c</p>\r\n\r\n<p><strong>Qui c&aacute;ch:</strong>&nbsp;1L/ 1 Hộp. Th&ugrave;ng 12 hộp</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Đặc điểm nổi bật</strong><strong>:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương vị sữa nguy&ecirc;n chất, thơm ngon</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sữa tiệt tr&ugrave;ng &iacute;t b&eacute;o</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cung cấp nhiều Vitamin v&agrave; kho&aacute;ng chất</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;m lượng chất b&eacute;o thấp trong sữa, sản phẩm rất th&iacute;ch hợp cho người đang c&oacute; nhu cầu ăn ki&ecirc;ng, người bị tiểu đường sử dụng</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gi&uacute;p ph&aacute;t triển thể chất v&agrave; tr&iacute; tuệ</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Th&iacute;ch hợp cho người đang ăn ki&ecirc;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đ&oacute;ng hộp tiện dụng cho sử dụng gia đ&igrave;nh, chăm s&oacute;c tốt nhất sức khỏe gia đ&igrave;nh m&agrave; vẫn tiết kiệm thời gian v&agrave; chi ph&iacute;.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&ugrave;ng cho b&eacute; tr&ecirc;n 1 tuổi</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N&ecirc;n d&ugrave;ng hết sau khi mở, nếu c&ograve;n bảo quản ngăn m&aacute;t tủ lanh, n&ecirc;n d&ugrave;ng hết sau 3 ng&agrave;y.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sử dụng trực tiếp.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ngon hơn khi uống lạnh</p>\r\n\r\n<p><strong>Bảo quản:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sữa tiệt tr&ugrave;ng ở nhiệt độ cao. Bảo quản ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do qu&aacute; tr&igrave;nh xử l&yacute; ở nhiệt độ cao ,đ&oacute;ng g&oacute;i ni&ecirc;m phong k&iacute;n, sữa tiệt tr&ugrave;ng UHT c&oacute; thể bảo quản khi chưa mở nhiều th&aacute;ng m&agrave; kh&ocirc;ng cần để tủ lạnh.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sau khi mở nắp, giữ ở tủ lạnh hoặc dưới 40&nbsp;Cv&agrave; sử dụng trong v&ograve;ng 7 ng&agrave;y.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 16, 12, '1', 5, 0, '2019-03-06 08:16:47', '2019-03-06 08:26:28', NULL),
(27, 'Sữa tươi tiệt trùng Nuti không đường hộp 1 lít', 'sua-tuoi-tiet-trung-nuti-khong-duong-hop-1-lit', 29000, 0, NULL, NULL, NULL, NULL, 'Nuti', '<p><strong>Sữa tươi Nuti 100%</strong>&nbsp;được sản xuất từ nguồn sữa b&ograve; tươi nguy&ecirc;n chất v&agrave; tươi ngon tại c&aacute;c trang trại quy m&ocirc; ở Gia Lai. Sữa tươi Nuti 100% l&agrave; nguồn bổ sung vitamin A, D3, Kẽm c&ugrave;ng nhiều vi dưỡng chất thiết yếu kh&aacute;c gi&uacute;p xương v&agrave; răng chắc khoẻ, s&aacute;ng m&aacute;t, tăng sức đề kh&aacute;ng cho gia đ&igrave;nh lu&ocirc;n khoẻ mạnh.</p>', '<p><strong>Sữa tươi Nuti 100%</strong>&nbsp;được sản xuất từ nguồn sữa b&ograve; tươi nguy&ecirc;n chất v&agrave; tươi ngon tại c&aacute;c trang trại quy m&ocirc; ở Gia Lai. Sữa tươi Nuti 100% l&agrave; nguồn bổ sung vitamin A, D3, Kẽm c&ugrave;ng nhiều vi dưỡng chất thiết yếu kh&aacute;c gi&uacute;p xương v&agrave; răng chắc khoẻ, s&aacute;ng m&aacute;t, tăng sức đề kh&aacute;ng cho gia đ&igrave;nh lu&ocirc;n khoẻ mạnh.</p>\r\n\r\n<p><strong>Sữa tươi</strong>&nbsp;kh&ocirc;ng&nbsp;đường với hương vị thơm ngon, b&eacute;o ngậy, c&oacute; thể uống trực tiếp hoặc d&ugrave;ng l&agrave;m nguy&ecirc;n liệu l&agrave;m b&aacute;nh ngọt, b&aacute;nh flan, nấu s&uacute;p...</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>\r\n\r\n<p><img alt=\"Bảng giá trị dinh dưỡng sữs tươi tiệt trùng NutiFood không đường 1 lít\" src=\"https://cdn.tgdd.vn/Products/Images/2386/135057/bhx/sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-6.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Lắc đều trước khi sử dụng. Ngon hơn khi uống lạnh.</li>\r\n	<li>Kh&ocirc;ng d&ugrave;ng cho trẻ em dưới 1 tuổi.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;Bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</li>\r\n	<li>Tr&aacute;nh &aacute;nh nắng mặt trời trực tiếp.</li>\r\n	<li>Nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t. Sau khi mở hộp, bảo quản lạnh ở 3 - 8 độ C v&agrave; sử dụng hết trong v&ograve;ng 3 ng&agrave;y.</li>\r\n</ul>', 16, 1, '1', 4, 0, '2019-03-06 08:18:32', '2019-03-06 08:25:09', NULL);

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
(1, 'tng24tn97@gmail.com', '2019-02-26 06:57:34', '2019-02-26 06:57:34');

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
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `images`, `password`, `email`, `address`, `verified`, `verification_code`, `verified_at`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NgcTN', 'ngoctt', '0987651000', NULL, '$2y$10$vSaV7glgbCudECZ6rePSZORDf3PqLG1bTE.uFEKvcwy6eimSNk/X.', 'tng24@gmail.com', 'HBT, HN, Hưng Yên', 1, NULL, '2019-02-28 17:00:00', '1', 'YwhKapRSvhZz2tpkDSnWDE95JrAffWiVOnxRSEwbL8dlM05a0m99diJX08Z8', '2019-02-11 23:20:16', '2019-03-06 02:37:30'),
(2, 'Anh ND 2', 'ndanh', '0980987671', NULL, '$2y$10$GBvpQeyOsgyJe.5HQ5UNMubuWvvTcf0pvRixHFYygNHVpUL8.Fqay', 'ndanh@ndanh.com', 'Hạ Long, TP Quảng Ninh', 1, NULL, '2019-02-28 17:00:00', '1', 'tJwWNBgytHUHq12Pu4aMaDbTiXlpjs2h44WjcHyyucMbvMei0Bd3wu7l6E1X', '2019-02-11 23:20:16', '2019-03-06 08:24:16'),
(3, 'Rico Rodriguez', 'virgiegutmann', '+5108611953992', NULL, '$2y$10$CJVlJiCOwiE/gV11sSfrfOhJGRUXSmG9JyJ4TvuGcUGJqTx1SkZpi', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-03-06 07:12:24'),
(4, 'Mr. Monserrat Nicolas', 'austin17', '03216275585', NULL, '$2y$10$RsqJG.DfMUsBTXWe3F3Q.Ob8w4QnSi.SF1DTNowHZXC63V0Z6RV5u', 'mfritsch@example.net', '8206 Bartoletti Trail\r\nPort Peterberg, KY 88261', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-03-06 07:08:46'),
(5, 'Toney McDermott', 'luettgenalva', '0498512589', NULL, '$2y$10$IO6LMZgFe4oznYpKRtQI5OHmnZNON1ts0rUv.rvmYeGq8ZQnG6C8W', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-03-06 07:59:12'),
(6, 'Josefina Bartoletti', 'rsipes', '0958963269', NULL, '$2y$10$qnd/9wVQJSGVm0JVxS9bT.6Spxpzbiw2nAmSk0uF1RhH857iV2e5q', 'murphy.erika@example.com', '7397 Will Way Apt. 914\r\nSouth Stephanhaven, NM 42273-7751', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-13 10:33:13'),
(7, 'Prof. Kaia Reilly', 'robel.crystel', '+9768242933342', NULL, '$2y$10$8LaSZp.ptBVXz.ocmxU3lOLAM4L.craNr5wABUOjArnRH4jEk9tLy', 'labbott@example.org', '57323 Zboncak Fort\nNorth Josie, AZ 31371', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(8, 'Valentina Cremin', 'christelle80', '+70099898371033s', NULL, '$2y$10$J0ZTcgahKU/VF36qcBOj6.WZSOKkzguiCGV4lThmuV.DZ5O755qDi', 'kstiedemann@example.net', '276 Kristin Brooks Apt. 504\r\nSouth Mazieton, MA 95813', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-03-06 07:09:14'),
(9, 'Dr. Litzy Harvey I', 'stracke.sallie', '+1541147641178', NULL, '$2y$10$rMGGQwAieHhHYWGx9S74N.H.x/GDAshZqACE3AmkQ8xelr0u7gUxy', 'mertz.nayeli@example.com', '1087 Alivia Estates Suite 673\nAliachester, NJ 03064-7847', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(10, 'Nichole Weissnat', 'owillms', '0168997859', NULL, '$2y$10$nCAEILsipc1GHjA9CfDWyuFEU9GCxZRU0WduJ2YgaEgT1qlV3VZaW', 'shields.dock@example.net', '9665 Friesen Flat Tatumside, TX 02525', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-03-06 07:55:46'),
(11, 'Carmelo Jakubowski', 'deanna63', '+6121118802660', NULL, '$2y$10$dmbBVAXBfomUPI7/cyD26.HmOy7aqsV/0ONYneZwjdcgNvKTKgkmi', 'madonna99@example.net', '8690 Hand Plaza Apt. 521\nWest Wilfrid, AZ 20783-8805', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(12, 'Guiseppe Balistreri Sr.', 'zroob', '+2943427770066', NULL, '$2y$10$P8xcJxaq85Wgl2vtCJvnuOAfmwYDztMzkQKczkLmEYB9.BvwaI34y', 'thammes@example.net', '694 Ines Drive\nWest Jalenburgh, FL 45663', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(13, 'Mr. Elmore Walker Sr.', 'frami.lucile', '+1479653988699', NULL, '$2y$10$aiPEts/tKmWBHmfX0mtavOuwNpCO7wdkUo7wVTrSwoMMzUXJuOuvS', 'jamaal.fay@example.net', '58709 Feest Skyway\nHowellstad, NV 27169', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(14, 'Josie Wyman', 'heaney.amir', '+2981024140451', NULL, '$2y$10$awa0ZxgAWyqOnXQS6q0Z0uqVbWLuI6Qhlqykd9yzb3GWQHcF2G0k.', 'don.shanahan@example.net', '1117 Jennie Common\nEast Tod, OH 88638', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(15, 'Deven Crist', 'shyanne.gibson', '+2428205081675', NULL, '$2y$10$L8Ft1F95Sf7j0N7pxf1Xs.KopPNdCRUpmT4PzwT2GdKt290K0Vpw6', 'ohartmann@example.com', '4438 Bayer Streets\nEast Aniyahaven, SD 24736', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(16, 'Garth Trantow', 'weissnat', '01689936259', NULL, '$2y$10$3eZ2RO2bFSuzkKVflSS/YeoFErlDPLQP4ePhO4xjBIuAiLz8kXkl6', 'fatima.considine@example.org', '765 Leon Ville Apt. 519\r\nNew Talonburgh, KS 76367', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, '2019-02-11 23:20:17', '2019-02-20 03:07:40'),
(20, 'Tên khách hàng', 'Username', '0975859698', NULL, '$2y$10$hHmc8nINchCQEoVPxRh8qOAC9N.SxIelz0VgId3FcVGIfggwtVyoe', 'email@email.com', 'Địa chỉ', 1, NULL, '2019-02-28 17:00:00', '1', NULL, '2019-02-12 09:19:48', '2019-03-01 10:08:35'),
(21, 'Tran Ngoc User', 'ngocuser', '0975853526', NULL, '$2y$10$usNU3V7A2JXoTyyUtknfqeyUiXNlm8Y4.PUqgjikrfKbyZGOBcYua', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519\r\nNew Talonburgh, KS 76367', 1, NULL, '2019-02-28 17:00:00', '1', '', '2019-02-25 09:00:09', '2019-03-01 10:08:21'),
(22, 'NgaaTTTtt', 'ngocttttt', '03216275586', NULL, '$2y$10$dmbBVAXBfomUPI7/cyD26.HmOy7aqsV/0ONYneZwjdcgNvKTKgkmi', 'ngocttt@asdasd.as', '8690 Hand Plaza Apt. 521\r\nWest Wilfrid, AZ 20783-8805', 1, NULL, '2019-02-28 17:00:00', '1', 'QFCyngPbZmQ8PjyMATvt8LMufbtp45MHTwu5t43UZ7V9gLHgAvU8jdchUxo4', '2019-02-25 10:36:51', '2019-03-01 10:06:35'),
(23, 'ngoc tran van', 'ngocvan', '0978852320', NULL, '$2y$10$kVyS7GkpZgAeVv8BBV7cW.GMbipI.TFqQZbLNIEJXYxXxfRvKRMqW', 'ngcvanavan@gmail.com', '8206 Bartoletti Trail\nPort Peterberg, KY 88261', 1, NULL, '2019-02-28 17:00:00', '1', NULL, '2019-02-25 10:50:30', '2019-02-25 10:54:38'),
(30, 'Tran Ngoc Unknow', 'tng24tn97', '0975852639', NULL, '$2y$10$jVClT1LqJezQapBlexb/WeFRSp0l/drBtHD1N.wsKcVcHxdeXDcZO', 'tng24tn97@gmail.def', '57323 Zboncak Fort\nNorth Josie, AZ 31371', 1, NULL, '2019-02-28 17:00:00', '1', NULL, '2019-02-26 04:18:35', '2019-02-26 04:19:30'),
(36, 'TGTD', 'giaolinh', '0975852104', NULL, '$2y$10$kaJnWPhnQO0m/FJIwbFJYOyORUuOeaOGOfIbJ.AYC4tyWPg1Mtxxq', 'tng24tn97@gdt.vy', '694 Ines Drive West Jalenburgh, FL 45663', 1, NULL, '2019-03-02 02:57:12', '1', NULL, '2019-03-02 02:56:59', '2019-03-02 02:57:12');

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
(1, 'Trần Ngọc Writer', 'tranngoc', '0989900012', NULL, '$2y$10$q5PIrzcgd88iDh3xVKwBSe5NIiaQPkV5qlrYZ5vC4QD0sHDWdNoUy', 'tranngoc@writer.com', 'Hưng Yên', 1, '1', 'JPONg32OMAd1FHXh2vpT40v1PIw3YoBnkQMDaelmUbQfPVrLrPiXdJjsVKBw', '2019-02-11 23:20:17', '2019-02-11 23:20:17'),
(2, 'Anh ND', 'ndanh', '01689975223', NULL, '$2y$10$ZQHYcvSH0daxJHXS/r1FZ.Dzot4x.pXjROJO0BvqdJqQ3EXDGoas6', 'ndanh@writer.com', 'Quảng Ninh', 1, '1', 'jadZj5YNtg0Wq3A5fGeCwbCnjhLmNJaOTag7l3Zsg9CRVdahjpWPhvMuE7ax', '2019-02-11 23:20:17', '2019-02-26 10:27:34'),
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
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `catagories_types`
--
ALTER TABLE `catagories_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `distributions`
--
ALTER TABLE `distributions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `new_tags`
--
ALTER TABLE `new_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
