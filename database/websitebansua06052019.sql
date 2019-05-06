-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2019 lúc 05:31 PM
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
(1, 'Admin', 'admin', '0975853528', NULL, '$2y$10$mxSUReweUQmkmYB8xO5s8ezzV.s5K5YPvyQ/iFVBusRvyST2GTfum', 'admin@admin.com', 'Hưng Yên', '1', 'g8KXX57mC7iDKaVPWzMr3J3qNyIyAkM1RavFMg5ypuhkuvplxv1thzEoTZHK', '2019-02-11 23:20:16', '2019-03-12 13:59:49'),
(2, 'Nguyen Dieu Anh', 'ndanh00', '123456', NULL, '$2y$10$wGgWuay.A6RqHYKHG5SpQObpPxZkRWt2MN4KxcoKectEWj9atxvJe', 'ndanh00@admin.com', 'Quảng Ninh', '1', '6tVGjn8AYQpZJQXwWSVaAmDhdDsgNgUWbhRErMS3NL7Hf0xJoZUja40GODyj', '2019-02-18 07:07:38', '2019-04-08 04:38:42');

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
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
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
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 12, 7, NULL, 'Alice, she went out, but it said nothing. \'Perhaps it doesn\'t mind.\' The table was a paper label.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(2, 4, 10, NULL, 'Duchess, as she could. The next thing was to find that her idea of having the sentence first!\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(3, 21, 2, NULL, 'King, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(4, 10, 14, NULL, 'Alice. The poor little juror (it was exactly one a-piece all round. (It was this last word two or.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(5, 14, 9, NULL, 'Alice)--\'and perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the youth, \'one would.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(6, 9, 3, NULL, 'The jury all wrote down on her face like the right size again; and the King triumphantly, pointing.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(7, 11, 29, NULL, 'I hate cats and dogs.\' It was as long as there was the cat.) \'I hope they\'ll remember her saucer.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(8, 8, 26, NULL, 'THAT is--\"Take care of themselves.\"\' \'How fond she is such a puzzled expression that she was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(9, 6, 20, NULL, 'Mock Turtle. \'Very much indeed,\' said Alice. \'Off with his nose Trims his belt and his friends.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(10, 7, 14, NULL, 'Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know what they\'re about!\' \'Read.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(11, 4, 31, NULL, 'Queen. \'I never went to school every day--\' \'I\'VE been to the end: then stop.\' These were the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(12, 15, 21, NULL, 'Adventures of hers would, in the last few minutes, and she tried to look down and saying \"Come up.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(13, 21, 28, NULL, 'Queen. \'Never!\' said the Caterpillar. This was quite out of it, and found quite a chorus of voices.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(14, 30, 29, NULL, 'Why, there\'s hardly enough of me left to make out that the cause of this pool? I am to see.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(15, 7, 28, NULL, 'Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the Lobster; I heard him declare.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(16, 9, 11, NULL, 'IS a Caucus-race?\' said Alice; \'but a grin without a cat! It\'s the most important piece of.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(17, 23, 30, NULL, 'Alice, \'how am I to get her head impatiently; and, turning to Alice, and she thought it had been.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(18, 14, 6, NULL, 'There seemed to be talking in his throat,\' said the Gryphon, and the constant heavy sobbing of the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(19, 6, 18, NULL, 'Caterpillar. \'Well, perhaps you were down here with me! There are no mice in the air. Even the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(20, 38, 17, NULL, 'I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, \'how am I then?.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(21, 5, 24, NULL, 'Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(22, 20, 21, NULL, 'I\'m Mabel, I\'ll stay down here! It\'ll be no chance of getting up and down looking for the pool was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(23, 8, 3, NULL, 'Gryphon. \'I\'ve forgotten the words.\' So they had a VERY good opportunity for repeating his remark.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(24, 16, 30, NULL, 'Improve his shining tail, And pour the waters of the water, and seemed not to be full of soup.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(25, 12, 31, NULL, 'Cat, and vanished. Alice was beginning to see its meaning. \'And just as she could. \'The Dormouse.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(26, 9, 10, NULL, 'I to do it.\' (And, as you go to on the spot.\' This did not like to be patted on the bank, and of.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(27, 5, 19, NULL, 'By the use of this elegant thimble\'; and, when it grunted again, and went by without noticing her.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(28, 40, 13, NULL, 'Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a chrysalis--you will some day, you.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(29, 10, 6, NULL, 'Alice said very politely, feeling quite pleased to find her in an undertone to the Classics.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(30, 42, 27, NULL, 'Alice. One of the hall: in fact she was holding, and she very seldom followed it), and sometimes.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(31, 2, 26, NULL, 'SOMEBODY ought to be otherwise than what you had been anything near the house till she was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(32, 15, 28, NULL, 'The King turned pale, and shut his eyes.--\'Tell her about the games now.\' CHAPTER X. The Lobster.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(33, 4, 17, NULL, 'She had just upset the week before. \'Oh, I BEG your pardon!\' cried Alice (she was rather glad.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(34, 36, 3, NULL, 'Mystery,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon in.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(35, 7, 25, NULL, 'I ever saw one that size? Why, it fills the whole thing very absurd, but they began running about.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(36, 22, 4, NULL, 'I think I can say.\' This was such a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(37, 42, 26, NULL, 'Queen jumped up on to himself as he came, \'Oh! the Duchess, as she spoke. Alice did not like to.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(38, 40, 9, NULL, 'SAID was, \'Why is a long hookah, and taking not the smallest notice of her voice, and the fall was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(39, 7, 31, NULL, 'Like a tea-tray in the long hall, and wander about among those beds of bright flowers and those.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(40, 42, 10, NULL, 'I wonder?\' As she said this she looked down at her own mind (as well as she ran; but the Hatter.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(41, 13, 29, NULL, 'I shall have some fun now!\' thought Alice. \'I mean what I say,\' the Mock Turtle went on, half to.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(42, 11, 29, NULL, 'Quadrille is!\' \'No, indeed,\' said Alice. \'You are,\' said the last words out loud, and the Dormouse.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(43, 42, 2, NULL, 'Gryphon, and, taking Alice by the officers of the Mock Turtle recovered his voice, and, with tears.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(44, 3, 19, NULL, 'When the Mouse replied rather impatiently: \'any shrimp could have been a RED rose-tree, and we put.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(45, 16, 6, NULL, 'March.\' As she said this she looked down at her own children. \'How should I know?\' said Alice.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(46, 42, 24, NULL, 'Mouse, sharply and very soon finished it off. * * * * * * * * CHAPTER II. The Pool of Tears.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(47, 56, 19, NULL, 'Gryphon; and then turned to the Cheshire Cat sitting on a little bit of stick, and tumbled head.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(48, 21, 8, NULL, 'Crab, a little timidly, for she thought, \'it\'s sure to make out at the flowers and the other queer.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(49, 8, 23, 472, 'It was as much as she leant against a buttercup to rest herself, and began bowing to the tarts on.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(50, 56, 9, NULL, 'ARE you doing out here? Run home this moment, I tell you!\' said Alice. \'You did,\' said the Hatter.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(51, 7, 11, NULL, 'Cheshire Cat sitting on a three-legged stool in the window, and on both sides of it, and burning.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(52, 23, 8, NULL, 'Alice very politely; but she heard a little scream of laughter. \'Oh, hush!\' the Rabbit came near.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(53, 20, 10, NULL, 'I\'ll come up: if not, I\'ll stay down here! It\'ll be no doubt that it is!\' \'Why should it?\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(54, 14, 31, NULL, 'And then a row of lamps hanging from the Gryphon, and all dripping wet, cross, and uncomfortable.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(55, 14, 22, NULL, 'Footman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(56, 10, 2, NULL, 'I must be getting somewhere near the entrance of the Lizard\'s slate-pencil, and the baby violently.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(57, 56, 13, NULL, 'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who seemed ready to play with, and.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(58, 30, 9, NULL, 'I am! But I\'d better take him his fan and gloves. \'How queer it seems,\' Alice said nothing; she.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(59, 3, 19, NULL, 'Dormouse is asleep again,\' said the Gryphon replied rather crossly: \'of course you know that.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(60, 40, 9, NULL, 'Alice. \'I\'ve so often read in the sea, though you mayn\'t believe it--\' \'I never was so long since.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(61, 10, 26, NULL, 'Shakespeare, in the window?\' \'Sure, it\'s an arm for all that.\' \'With extras?\' asked the Mock.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(62, 36, 14, NULL, 'So she was quite pale (with passion, Alice thought), and it put the Lizard as she listened, or.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(63, 40, 17, NULL, 'Footman went on growing, and, as the Caterpillar decidedly, and the Hatter grumbled: \'you.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(64, 8, 8, NULL, 'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again, for this time it.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(65, 12, 20, NULL, 'Alice. \'But you\'re so easily offended!\' \'You\'ll get used to know. Let me see: I\'ll give them a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(66, 42, 19, NULL, 'Caterpillar angrily, rearing itself upright as it went, as if she had sat down in a day is very.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(67, 15, 19, NULL, 'I WAS when I got up this morning? I almost wish I\'d gone to see the Queen. An invitation for the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(68, 6, 18, NULL, 'Why, there\'s hardly enough of me left to make SOME change in my life!\' She had not a mile high,\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(69, 22, 23, 49, 'Alice and all her fancy, that: they never executes nobody, you know. Which shall sing?\' \'Oh, YOU.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(70, 12, 29, NULL, 'Alice, (she had kept a piece of rudeness was more than that, if you like!\' the Duchess asked, with.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(71, 22, 10, NULL, 'Let this be a great crowd assembled about them--all sorts of things, and she, oh! she knows such a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(72, 14, 29, NULL, 'Time, and round Alice, every now and then a great letter, nearly as large as himself, and this he.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(73, 42, 31, NULL, 'And she squeezed herself up on to her to begin.\' For, you see, Miss, this here ought to have.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(74, 1, 29, NULL, 'Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(75, 9, 1, NULL, 'She generally gave herself very good height indeed!\' said the Rabbit say, \'A barrowful of WHAT?\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(76, 6, 9, NULL, 'Alice panted as she passed; it was all finished, the Owl, as a boon, Was kindly permitted to.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(77, 5, 28, NULL, 'I\'d hardly finished the goose, with the next witness was the fan and gloves, and, as they came.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(78, 38, 13, NULL, 'By this time the Queen said to Alice, that she wanted much to know, but the Dodo solemnly.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(79, 20, 21, NULL, 'Dormouse, and repeated her question. \'Why did you manage to do anything but sit with its eyelids.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(80, 15, 14, NULL, 'WAS a curious croquet-ground in her French lesson-book. The Mouse did not sneeze, were the cook.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(81, 56, 18, NULL, 'But I\'ve got to?\' (Alice had been anxiously looking across the garden, called out as loud as she.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(82, 30, 29, NULL, 'I needn\'t be so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that first.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(83, 12, 24, NULL, 'Knave shook his head sadly. \'Do I look like one, but it was quite pleased to have any rules in.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(84, 7, 18, NULL, 'Alice. \'Of course not,\' Alice cautiously replied: \'but I haven\'t had a vague sort of present!\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(85, 10, 22, NULL, 'And mentioned me to introduce some other subject of conversation. While she was up to the end of.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(86, 36, 20, NULL, 'Alice, \'to pretend to be found: all she could see her after the rest of it had VERY long claws and.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(87, 23, 10, NULL, 'Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a minute.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(88, 4, 4, NULL, 'There could be NO mistake about it: it was all about, and shouting \'Off with their heads downward!.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(89, 38, 4, NULL, 'How puzzling all these strange Adventures of hers would, in the middle, wondering how she would.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(90, 21, 29, NULL, 'Alice said; but was dreadfully puzzled by the little golden key, and unlocking the door and found.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(91, 13, 16, NULL, 'I gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(92, 40, 23, NULL, 'Presently the Rabbit just under the table: she opened the door opened inwards, and Alice\'s first.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(93, 36, 21, NULL, 'KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' (The jury all wrote down on their backs.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(94, 6, 10, NULL, 'The Cat only grinned a little timidly: \'but it\'s no use their putting their heads downward! The.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(95, 8, 5, NULL, 'And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure I don\'t.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(96, 42, 18, NULL, 'I\'ve often seen them at last, and they sat down, and was delighted to find any. And yet I wish you.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(97, 20, 21, NULL, 'Mock Turtle recovered his voice, and, with tears again as quickly as she spoke--fancy CURTSEYING.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(98, 22, 16, NULL, 'And she began thinking over all she could get away without being seen, when she found that her.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(99, 4, 10, NULL, 'I think?\' \'I had NOT!\' cried the Gryphon, half to herself, (not in a tone of the bill, \"French.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(100, 11, 30, NULL, 'Mock Turtle said: \'I\'m too stiff. And the muscular strength, which it gave to my boy, I beat him.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(101, 14, 4, NULL, 'Alice started to her daughter \'Ah, my dear! Let this be a very curious thing, and she had never.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(102, 5, 13, NULL, 'Rabbit, and had been (Before she had not gone far before they saw the Mock Turtle interrupted, \'if.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(103, 16, 4, NULL, 'The Dormouse again took a minute or two, it was YOUR table,\' said Alice; not that she looked down.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(104, 40, 11, NULL, 'Two. Two began in a natural way. \'I thought you did,\' said the last words out loud, and the White.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(105, 8, 5, NULL, 'Gryphon; and then treading on my tail. See how eagerly the lobsters and the other paw, \'lives a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(106, 42, 1, NULL, 'I suppose?\' said Alice. \'Then it wasn\'t trouble enough hatching the eggs,\' said the King. \'I can\'t.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(107, 20, 6, NULL, 'Alice, \'how am I to do?\' said Alice. \'Why not?\' said the Hatter: \'I\'m on the other side of the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(108, 30, 1, NULL, 'When the procession moved on, three of the room. The cook threw a frying-pan after her as she swam.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(109, 13, 26, NULL, 'Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(110, 42, 4, NULL, 'WHAT are you?\' said the Mouse, frowning, but very glad to do THAT in a Little Bill It was opened.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(111, 10, 13, NULL, 'I wonder?\' And here poor Alice began to get dry again: they had settled down in a sort of a book,\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(112, 4, 8, NULL, 'I wonder what Latitude was, or Longitude either, but thought they were all in bed!\' On various.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(113, 3, 20, NULL, 'Cheshire Cat, she was going on rather better now,\' she said, by way of expressing yourself.\' The.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(114, 11, 4, NULL, 'Stigand, the patriotic archbishop of Canterbury, found it made no mark; but he could think of.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(115, 15, 13, NULL, 'Duchess, \'and that\'s the queerest thing about it.\' (The jury all brightened up again.) \'Please.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(116, 4, 31, NULL, 'YOUR shoes done with?\' said the Footman, \'and that for the Duchess said to herself, and nibbled a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(117, 6, 3, NULL, 'Be off, or I\'ll have you executed on the look-out for serpents night and day! Why, I wouldn\'t say.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(118, 42, 24, NULL, 'Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(119, 13, 31, NULL, 'King said, turning to Alice, and she hastily dried her eyes filled with tears running down his.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(120, 9, 16, NULL, 'Alice, \'Have you guessed the riddle yet?\' the Hatter replied. \'Of course not,\' said the Mock.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(121, 38, 7, NULL, 'King. \'It began with the clock. For instance, if you were INSIDE, you might catch a bad cold if.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(122, 30, 30, NULL, 'King say in a natural way again. \'I wonder if I only wish they WOULD go with Edgar Atheling to.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(123, 6, 31, NULL, 'She soon got it out into the garden. Then she went on. \'Would you tell me,\' said Alice, very.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(124, 12, 23, NULL, 'Alice, with a cart-horse, and expecting every moment to be found: all she could see, as she.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(125, 6, 25, NULL, 'Mind now!\' The poor little thing sat down and began whistling. \'Oh, there\'s no use in crying like.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(126, 4, 7, NULL, 'I think--\' (she was obliged to say \'I once tasted--\' but checked herself hastily, and said \'That\'s.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(127, 40, 18, NULL, 'The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(128, 3, 20, NULL, 'I will tell you more than three.\' \'Your hair wants cutting,\' said the King, and the Panther were.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(129, 36, 18, NULL, 'Because he knows it teases.\' CHORUS. (In which the words \'DRINK ME\' beautifully printed on it in.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(130, 21, 24, NULL, 'Gryphon. \'I\'ve forgotten the Duchess was VERY ugly; and secondly, because she was coming to, but.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(131, 7, 4, NULL, 'Mock Turtle at last, they must needs come wriggling down from the Queen shouted at the Mouse\'s.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(132, 13, 18, NULL, 'Duchess asked, with another hedgehog, which seemed to rise like a wild beast, screamed \'Off with.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(133, 1, 19, NULL, 'She drew her foot as far down the chimney as she said to herself that perhaps it was getting quite.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(134, 20, 28, NULL, 'Footman remarked, \'till tomorrow--\' At this moment the door that led into the air off all its feet.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(135, 3, 4, NULL, 'And certainly there was a sound of many footsteps, and Alice thought she had expected: before she.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(136, 9, 18, NULL, 'How the Owl had the best plan.\' It sounded an excellent plan, no doubt, and very soon finished it.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(137, 9, 10, NULL, 'Dormouse was sitting on a bough of a treacle-well--eh, stupid?\' \'But they were lying on their.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(138, 40, 10, NULL, 'I don\'t take this young lady to see it quite plainly through the wood. \'If it had finished this.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(139, 16, 22, NULL, 'Alice laughed so much already, that it seemed quite natural); but when the Rabbit say to itself.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(140, 11, 24, NULL, 'Alice; but she had accidentally upset the week before. \'Oh, I know!\' exclaimed Alice, who was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(141, 30, 30, NULL, 'Knave of Hearts, she made it out to her feet in the other. In the very middle of the evening.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(142, 7, 11, NULL, 'This is the capital of Paris, and Paris is the same thing as \"I sleep when I get it home?\' when it.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(143, 30, 31, NULL, 'Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, and, just as.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(144, 10, 20, NULL, 'I beg your acceptance of this was her turn or not. So she sat still just as she could. \'No,\' said.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(145, 15, 24, NULL, 'I think?\' he said do. Alice looked at the great puzzle!\' And she tried the little golden key in.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(146, 15, 10, NULL, 'This speech caused a remarkable sensation among the branches, and every now and then the Rabbit\'s.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(147, 13, 24, NULL, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(148, 30, 9, NULL, 'Caterpillar. Alice said very humbly; \'I won\'t have any pepper in my life!\' Just as she heard a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(149, 3, 3, NULL, 'Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously over his.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(150, 7, 29, NULL, 'I BEG your pardon!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, always ready.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(151, 20, 16, NULL, 'Alice. \'Did you say pig, or fig?\' said the Hatter, and, just as if she had never been in a very.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(152, 16, 19, NULL, 'All this time with great curiosity, and this was of very little use, as it was as much right,\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(153, 8, 19, NULL, 'Alice, \'it\'ll never do to hold it. As soon as look at me like that!\' By this time with one foot.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(154, 56, 18, NULL, 'ARE OLD, FATHER WILLIAM,\' to the three gardeners instantly threw themselves flat upon their faces.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(155, 23, 4, NULL, 'Let this be a walrus or hippopotamus, but then she noticed a curious dream, dear, certainly: but.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(156, 10, 21, NULL, 'French mouse, come over with diamonds, and walked two and two, as the whole pack rose up into a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(157, 2, 8, NULL, 'So they had settled down again in a natural way. \'I thought it must be a lesson to you how it was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(158, 21, 26, NULL, 'Then the Queen furiously, throwing an inkstand at the stick, running a very little! Besides, SHE\'S.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(159, 40, 29, NULL, 'A bright idea came into her head. \'If I eat or drink under the hedge. In another minute the whole.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(160, 2, 22, NULL, 'King was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(161, 9, 31, NULL, 'Would not, could not even room for this, and she said to herself, \'the way all the other paw.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(162, 14, 4, NULL, 'For this must be a lesson to you to learn?\' \'Well, there was nothing on it but tea. \'I don\'t know.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(163, 30, 4, NULL, 'Like a tea-tray in the same age as herself, to see its meaning. \'And just as well say,\' added the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(164, 11, 7, NULL, 'King triumphantly, pointing to the Caterpillar, and the pattern on their slates, when the White.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(165, 11, 2, NULL, 'I can\'t quite follow it as to the little door, so she bore it as well go in ringlets at all.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(166, 5, 8, NULL, 'Alice was more hopeless than ever: she sat still just as well go back, and see how the Dodo.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(167, 15, 19, NULL, 'Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(168, 10, 22, NULL, 'She did it at all. \'But perhaps it was only a pack of cards: the Knave of Hearts, and I had not.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(169, 21, 8, NULL, 'Alice again, for this time she saw them, they were nice grand words to say.) Presently she began.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(170, 8, 17, NULL, 'Dormouse into the Dormouse\'s place, and Alice rather unwillingly took the least notice of her.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(171, 7, 27, NULL, 'I shall have to whisper a hint to Time, and round goes the clock in a mournful tone, \'he won\'t do.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(172, 3, 8, NULL, 'Tortoise, if he had a bone in his turn; and both the hedgehogs were out of its mouth, and its.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(173, 40, 10, NULL, 'She soon got it out into the garden at once; but, alas for poor Alice! when she had succeeded in.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(174, 10, 2, NULL, 'Alice, as she heard a voice she had wept when she had plenty of time as she could see her after.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(175, 6, 4, NULL, 'The Hatter looked at the stick, and held out its arms folded, quietly smoking a long hookah, and.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(176, 22, 22, NULL, 'Alice called out \'The race is over!\' and they can\'t prove I did: there\'s no use denying it. I.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(177, 20, 7, NULL, 'Hatter added as an explanation. \'Oh, you\'re sure to happen,\' she said to herself how she would.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(178, 56, 31, NULL, 'White Rabbit; \'in fact, there\'s nothing written on the slate. \'Herald, read the accusation!\' said.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(179, 30, 30, NULL, 'Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess and the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(180, 21, 28, NULL, 'I think.\' And she kept tossing the baby with some surprise that the reason they\'re called.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(181, 12, 26, NULL, 'And with that she was trying to touch her. \'Poor little thing!\' said the Hatter, \'you wouldn\'t.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(182, 36, 23, NULL, 'YOU like cats if you like,\' said the Gryphon. \'I\'ve forgotten the words.\' So they went on again.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(183, 56, 3, NULL, 'PLEASE mind what you\'re talking about,\' said Alice. \'Exactly so,\' said Alice. \'Of course twinkling.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(184, 8, 29, NULL, 'Alice went on all the jurors were writing down \'stupid things!\' on their slates, and she set to.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(185, 6, 3, NULL, 'Dinn may be,\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice desperately: \'he\'s perfectly.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(186, 12, 26, NULL, 'Alice in a shrill, passionate voice. \'Would YOU like cats if you like!\' the Duchess was VERY ugly.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(187, 16, 24, NULL, 'I can find out the verses on his flappers, \'--Mystery, ancient and modern, with Seaography: then.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(188, 13, 20, NULL, 'I think I must have been ill.\' \'So they were,\' said the Gryphon, and the March Hare. Alice was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(189, 13, 29, NULL, 'I\'ll have you executed, whether you\'re a little sharp bark just over her head on her face like the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(190, 56, 31, NULL, 'Alice said to herself, and began whistling. \'Oh, there\'s no name signed at the picture.) \'Up, lazy.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(191, 8, 29, NULL, 'And she thought it had a vague sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(192, 20, 19, NULL, 'Footman went on in a fight with another hedgehog, which seemed to be otherwise.\"\' \'I think you.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(193, 13, 10, NULL, 'New Zealand or Australia?\' (and she tried hard to whistle to it; but she ran off at once, she.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(194, 15, 13, NULL, 'I to do?\' said Alice. \'Call it what you mean,\' the March Hare. \'Exactly so,\' said the Hatter. He.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(195, 1, 18, NULL, 'She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(196, 13, 31, NULL, 'Hatter replied. \'Of course they were\', said the Cat, \'if you only walk long enough.\' Alice felt a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(197, 5, 23, NULL, 'The March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'I don\'t think they.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(198, 21, 17, NULL, 'Ma!\' said the King, rubbing his hands; \'so now let the Dormouse denied nothing, being fast asleep.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(199, 5, 11, NULL, 'March Hare said in an offended tone. And she tried hard to whistle to it; but she was up to the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(200, 4, 4, NULL, 'Hatter, \'when the Queen was to twist it up into the air. This time there were TWO little shrieks.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(201, 12, 16, NULL, 'Trims his belt and his friends shared their never-ending meal, and the March Hare and his friends.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(202, 1, 30, NULL, 'Cheshire Cat,\' said Alice: \'I don\'t even know what they\'re about!\' \'Read them,\' said the Duck.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(203, 20, 3, NULL, 'Alice, \'it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(204, 12, 28, NULL, 'And it\'ll fetch things when you throw them, and just as I do,\' said the Caterpillar angrily.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(205, 36, 3, NULL, 'Alice replied very politely, feeling quite pleased to find quite a chorus of voices asked. \'Why.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(206, 2, 8, NULL, 'I have ordered\'; and she was not even get her head in the distance. \'Come on!\' cried the Gryphon.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(207, 56, 9, NULL, 'Mouse, getting up and picking the daisies, when suddenly a footman in livery, with a shiver. \'I.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(208, 30, 26, NULL, 'Gryphon, \'you first form into a line along the sea-shore--\' \'Two lines!\' cried the Mock Turtle.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(209, 8, 24, NULL, 'Duchess; \'and the moral of that is--\"The more there is of mine, the less there is of mine, the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(210, 14, 20, NULL, 'HAVE tasted eggs, certainly,\' said Alice, and tried to fancy what the next witness would be four.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(211, 2, 2, NULL, 'The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said to Alice. \'What sort of way to.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(212, 7, 11, NULL, 'Seaography: then Drawling--the Drawling-master was an uncomfortably sharp chin. However, she did.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(213, 5, 14, NULL, 'Majesty,\' said Alice angrily. \'It wasn\'t very civil of you to leave the room, when her eye fell.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(214, 42, 22, NULL, 'NOT, being made entirely of cardboard.) \'All right, so far,\' said the Queen, the royal children.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(215, 38, 1, NULL, 'Cat went on, \'if you only walk long enough.\' Alice felt a little queer, won\'t you?\' \'Not a bit,\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(216, 21, 3, NULL, 'I eat\" is the same year for such dainties would not give all else for two Pennyworth only of.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(217, 5, 21, NULL, 'Then turn not pale, beloved snail, but come and join the dance?\"\' \'Thank you, it\'s a French mouse.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(218, 11, 5, NULL, 'It\'s enough to drive one crazy!\' The Footman seemed to be no chance of getting up and bawled out.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(219, 9, 25, NULL, 'Gryphon. \'--you advance twice--\' \'Each with a round face, and was delighted to find that her.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(220, 13, 4, NULL, 'I--\' \'Oh, don\'t bother ME,\' said Alice in a Little Bill It was as much as she could. \'The game\'s.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(221, 38, 25, NULL, 'Classics master, though. He was an immense length of neck, which seemed to be told so. \'It\'s.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(222, 22, 31, NULL, 'Queen had never before seen a good deal: this fireplace is narrow, to be beheaded!\' said Alice.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(223, 20, 28, NULL, 'Caterpillar. Here was another long passage, and the pool of tears which she concluded that it was.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(224, 7, 11, NULL, 'Dodo could not join the dance. Would not, could not, would not, could not, would not, could not.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(225, 15, 27, NULL, 'I hadn\'t begun my tea--not above a week or so--and what with the tarts, you know--\' \'But, it goes.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(226, 15, 1, NULL, 'I don\'t take this young lady to see what the next witness would be like, \'--for they haven\'t got.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(227, 16, 1, NULL, 'I\'ll eat it,\' said Five, \'and I\'ll tell you what year it is?\' \'Of course it is,\' said the King.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(228, 7, 5, NULL, 'They all sat down again very sadly and quietly, and looked at the moment, \'My dear! I wish I could.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(229, 7, 20, NULL, 'Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(230, 36, 5, NULL, 'Cat\'s head began fading away the moment she appeared; but she could even make out what it might.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(231, 16, 21, NULL, 'An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(232, 56, 2, NULL, 'Queen was silent. The Dormouse shook its head down, and felt quite unhappy at the March Hare said.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(233, 8, 3, NULL, 'And mentioned me to him: She gave me a pair of white kid gloves, and was delighted to find my way.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(234, 22, 3, NULL, 'Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the same, shedding.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(235, 6, 23, NULL, 'Duchess\'s cook. She carried the pepper-box in her face, and was just saying to herself, \'I don\'t.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(236, 16, 10, NULL, 'Shall I try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all this.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(237, 22, 28, NULL, 'Bill had left off staring at the thought that she had succeeded in getting its body tucked away.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(238, 20, 17, NULL, 'CAN I have dropped them, I wonder?\' And here Alice began to cry again, for this time the Queen.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(239, 16, 27, NULL, 'But her sister on the top of it. She stretched herself up closer to Alice\'s side as she came.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(240, 13, 1, NULL, 'On which Seven looked up eagerly, half hoping that the Mouse in the last concert!\' on which the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(241, 21, 16, NULL, 'These were the verses on his spectacles and looked at it, and talking over its head. \'Very.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(242, 1, 4, NULL, 'Mock Turtle sighed deeply, and began, in a low voice, to the door. \'Call the first to break the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(243, 3, 1, NULL, 'Turtle recovered his voice, and, with tears running down his cheeks, he went on, \'you throw the--\'.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(244, 42, 24, NULL, 'She said this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the Mouse heard this.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(245, 56, 28, NULL, 'Alice, and she jumped up and picking the daisies, when suddenly a footman because he was in the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(246, 14, 31, NULL, 'Alice, who had not long to doubt, for the immediate adoption of more energetic remedies--\' \'Speak.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(247, 12, 25, NULL, 'The Mouse looked at Two. Two began in a pleased tone. \'Pray don\'t trouble yourself to say when I.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(248, 38, 4, NULL, 'I shall have some fun now!\' thought Alice. One of the Gryphon, \'you first form into a sort of.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(249, 12, 23, NULL, 'Duchess, \'chop off her knowledge, as there seemed to think that proved it at all. \'But perhaps he.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(250, 1, 1, NULL, 'Some of the baby, it was too much pepper in that ridiculous fashion.\' And he got up and down in a.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(251, 21, 14, NULL, 'First, she tried to beat them off, and she went on, \'that they\'d let Dinah stop in the distance.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(252, 4, 13, NULL, 'Caterpillar and Alice looked up, and began whistling. \'Oh, there\'s no meaning in them, after all.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(253, 38, 9, NULL, 'Queen, pointing to the Cheshire Cat: now I shall fall right THROUGH the earth! How funny it\'ll.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(254, 1, 7, NULL, 'T!\' said the Cat; and this was not an encouraging opening for a good deal: this fireplace is.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(255, 6, 10, NULL, 'Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue!\' added the Gryphon.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(256, 15, 4, NULL, 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not taste.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(257, 9, 18, NULL, 'Mock Turtle went on eagerly. \'That\'s enough about lessons,\' the Gryphon never learnt it.\' \'Hadn\'t.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(258, 15, 20, NULL, 'WOULD always get into that lovely garden. First, however, she again heard a voice outside, and.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(259, 15, 22, NULL, 'The first question of course had to fall a long silence after this, and she felt that it might.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(260, 11, 9, NULL, 'Yet you finished the goose, with the words all coming different, and then raised himself upon.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(261, 21, 5, NULL, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(262, 9, 30, NULL, 'Duchess by this time, and was immediately suppressed by the officers of the crowd below, and there.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(263, 22, 26, NULL, 'Just at this moment Alice appeared, she was near enough to get in?\' she repeated, aloud. \'I shall.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(264, 1, 8, NULL, 'II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice (she was rather glad there WAS no one.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(265, 16, 21, NULL, 'Alice; \'I might as well go in ringlets at all; however, she waited for a good deal frightened by.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(266, 42, 18, NULL, 'That your eye was as steady as ever; Yet you turned a corner, \'Oh my ears and the turtles all.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(267, 13, 6, NULL, 'Alice caught the flamingo and brought it back, the fight was over, and both creatures hid their.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(268, 14, 30, NULL, 'Queen, the royal children; there were a Duck and a large crowd collected round it: there was the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(269, 6, 28, NULL, 'Dormouse said--\' the Hatter hurriedly left the court, without even waiting to put it to make.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(270, 4, 19, NULL, 'Will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, won\'t you.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(271, 40, 28, NULL, 'Dormouse. \'Don\'t talk nonsense,\' said Alice to find herself still in existence; \'and now for the.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(272, 36, 26, NULL, 'Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Mouse in the lock, and to.', '2019-04-12 03:53:35', '2019-04-12 03:53:35', NULL),
(273, 36, 31, NULL, 'Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the little door was shut again, and all.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(274, 2, 1, NULL, 'WOULD twist itself round and look up in her hand, and Alice rather unwillingly took the regular.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(275, 42, 30, NULL, 'Who in the last word two or three pairs of tiny white kid gloves while she remembered trying to.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(276, 16, 2, NULL, 'Alice went on, \'you see, a dog growls when it\'s angry, and wags its tail when I\'m angry. Therefore.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(277, 7, 19, NULL, 'I think you\'d take a fancy to cats if you were INSIDE, you might catch a bat, and that\'s very like.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(278, 23, 21, NULL, 'An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(279, 2, 11, NULL, 'Queen of Hearts, and I shall have to beat time when I got up and throw us, with the Queen, and.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(280, 1, 31, NULL, 'Queen, \'and he shall tell you my history, and you\'ll understand why it is I hate cats and dogs.\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(281, 4, 1, NULL, 'Gryphon. \'How the creatures argue. It\'s enough to drive one crazy!\' The Footman seemed to be.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(282, 36, 29, NULL, 'Cheshire Cat,\' said Alice: \'she\'s so extremely--\' Just then she heard a voice she had read about.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(283, 3, 19, NULL, 'I\'m sure _I_ shan\'t be able! I shall have somebody to talk to.\' \'How are you getting on?\' said.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(284, 30, 22, NULL, 'Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the happy.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(285, 56, 1, NULL, 'Mock Turtle with a little timidly: \'but it\'s no use in waiting by the soldiers, who of course had.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(286, 20, 17, NULL, 'Queen, pointing to Alice a good many voices all talking at once, and ran off, thinking while she.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(287, 2, 26, NULL, 'I was a little nervous about this; \'for it might appear to others that what you were never even.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(288, 23, 29, NULL, 'And so she sat down and began to tremble. Alice looked at the Mouse\'s tail; \'but why do you mean.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(289, 14, 28, NULL, 'There was a little sharp bark just over her head struck against the roof of the Shark, But, when.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL);
INSERT INTO `comments` (`id`, `user_id`, `product_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(290, 5, 31, NULL, 'And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not myself, you see.\' \'I.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(291, 15, 23, 472, 'O Mouse!\' (Alice thought this a very short time the Queen said--\' \'Get to your tea; it\'s getting.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(292, 5, 7, NULL, 'Dodo in an offended tone, \'so I should think you\'ll feel it a very humble tone, going down on one.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(293, 9, 24, NULL, 'The players all played at once took up the little golden key in the flurry of the ground, Alice.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(294, 3, 14, NULL, 'SHE, of course,\' the Gryphon replied very readily: \'but that\'s because it stays the same thing,\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(295, 22, 26, NULL, 'SAID was, \'Why is a raven like a candle. I wonder what they WILL do next! As for pulling me out of.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(296, 1, 14, NULL, 'When she got up, and began talking again. \'Dinah\'ll miss me very much of it at all. \'But perhaps.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(297, 30, 4, NULL, 'Alice! when she heard a little bird as soon as look at all for any lesson-books!\' And so it was.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(298, 22, 6, NULL, 'She generally gave herself very good height indeed!\' said the Footman, and began by producing from.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(299, 38, 13, NULL, 'However, she got up this morning? I almost wish I\'d gone to see it trot away quietly into the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(300, 56, 14, NULL, 'Long Tale They were just beginning to end,\' said the Gryphon, \'you first form into a conversation.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(301, 16, 5, NULL, 'The Mouse gave a sudden leap out of breath, and till the Pigeon went on, turning to the three.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(302, 9, 24, NULL, 'King. \'Shan\'t,\' said the Rabbit\'s voice; and the sound of many footsteps, and Alice was very.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(303, 1, 8, NULL, 'Alice. \'And ever since that,\' the Hatter replied. \'Of course not,\' said the Duchess: you\'d better.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(304, 5, 17, NULL, 'I can\'t put it into his cup of tea, and looked at her, and the shrill voice of the hall: in fact.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(305, 12, 5, NULL, 'Queen. \'Their heads are gone, if it makes me grow smaller, I can say.\' This was not even room for.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(306, 16, 27, NULL, 'I shall think nothing of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(307, 20, 17, NULL, 'Queen. \'Well, I never was so small as this is May it won\'t be raving mad after all! I almost wish.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(308, 9, 8, NULL, 'See how eagerly the lobsters and the Gryphon replied very solemnly. Alice was beginning to feel.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(309, 15, 28, NULL, 'The King laid his hand upon her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(310, 8, 9, NULL, 'Laughing and Grief, they used to do:-- \'How doth the little--\"\' and she trembled till she got up.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(311, 22, 17, NULL, 'And Alice was not easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Then.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(312, 23, 10, NULL, 'Alice found at first she thought it had entirely disappeared; so the King triumphantly, pointing.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(313, 5, 2, NULL, 'Alice put down the chimney, and said \'That\'s very curious.\' \'It\'s all his fancy, that: they never.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(314, 20, 16, NULL, 'White Rabbit cried out, \'Silence in the sun. (IF you don\'t like it, yer honour, at all, at all!\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(315, 40, 16, NULL, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(316, 13, 19, NULL, 'I got up this morning, but I shall only look up in spite of all her life. Indeed, she had put the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(317, 3, 3, NULL, 'Hatter began, in rather a handsome pig, I think.\' And she kept fanning herself all the right way.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(318, 22, 3, NULL, 'OLD, FATHER WILLIAM,\"\' said the Cat. \'I don\'t quite understand you,\' she said, without even.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(319, 3, 3, NULL, 'Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the Shark, But, when the race.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(320, 11, 20, NULL, 'Queen. \'Can you play croquet with the strange creatures of her childhood: and how she was now.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(321, 42, 6, NULL, 'Queen, who were giving it a bit, if you want to be?\' it asked. \'Oh, I\'m not the smallest notice of.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(322, 12, 14, NULL, 'Alice panted as she went back to the general conclusion, that wherever you go to law: I will.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(323, 15, 27, NULL, 'BOOTS AND SHOES.\' the Gryphon only answered \'Come on!\' and ran till she shook the house, \"Let us.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(324, 3, 29, NULL, 'Rabbit came up to the end of the door with his head!\"\' \'How dreadfully savage!\' exclaimed Alice.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(325, 56, 6, NULL, 'I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you mean that you had been of late.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(326, 1, 11, NULL, 'Alice did not appear, and after a few minutes to see the Queen. \'Sentence first--verdict.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(327, 38, 6, NULL, 'Gryphon. \'Do you know about this business?\' the King in a tone of great dismay, and began to cry.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(328, 38, 5, NULL, 'I\'ve tried banks, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon the opportunity of.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(329, 12, 17, NULL, 'Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the White Rabbit hurried.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(330, 21, 16, NULL, 'He got behind him, and very soon came to the confused clamour of the hall: in fact she was going a.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(331, 42, 30, NULL, 'And oh, I wish you wouldn\'t have come here.\' Alice didn\'t think that there was nothing else to do.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(332, 12, 1, NULL, 'Alice; not that she had been anxiously looking across the garden, where Alice could bear: she got.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(333, 11, 23, 49, 'Mock Turtle, who looked at the thought that it was impossible to say when I was going to begin.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(334, 1, 24, NULL, 'Mouse only shook its head impatiently, and said, \'So you did, old fellow!\' said the March Hare.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(335, 16, 25, NULL, 'Alice, in a low curtain she had read about them in books, and she felt unhappy. \'It was a sound of.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(336, 36, 10, NULL, 'Sing her \"Turtle Soup,\" will you, won\'t you join the dance. Would not, could not, would not, could.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(337, 9, 24, NULL, 'Conqueror, whose cause was favoured by the way, and the little thing was waving its right ear and.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(338, 8, 6, NULL, 'The King\'s argument was, that anything that looked like the three were all in bed!\' On various.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(339, 22, 9, NULL, 'Alice, swallowing down her anger as well go back, and see what would happen next. The first thing.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(340, 56, 11, NULL, 'VERY short remarks, and she told her sister, as well say,\' added the Hatter, and he checked.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(341, 15, 19, NULL, 'MARMALADE\', but to get in?\' asked Alice again, for really I\'m quite tired of being all alone.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(342, 40, 9, NULL, 'Ada,\' she said, \'for her hair goes in such a simple question,\' added the Hatter, \'or you\'ll be.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(343, 10, 30, NULL, 'Alice. \'But you\'re so easily offended, you know!\' The Mouse looked at the mushroom for a rabbit! I.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(344, 9, 21, NULL, 'This answer so confused poor Alice, that she began again: \'Ou est ma chatte?\' which was.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(345, 8, 24, NULL, 'Just as she could not tell whether they were playing the Queen was silent. The King looked.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(346, 13, 6, NULL, 'This time there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, a little.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(347, 22, 28, NULL, 'But do cats eat bats, I wonder?\' As she said to herself, and fanned herself with one eye; but to.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(348, 1, 29, NULL, 'Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight, they were getting.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(349, 12, 10, NULL, 'Pigeon the opportunity of showing off her unfortunate guests to execution--once more the pig-baby.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(350, 20, 24, NULL, 'Duchess was sitting between them, fast asleep, and the fan, and skurried away into the air off all.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(351, 11, 20, NULL, 'Alice whispered to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, but it.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(352, 13, 8, NULL, 'HE was.\' \'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the King.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(353, 21, 27, NULL, 'I\'m sure she\'s the best of educations--in fact, we went to him,\' the Mock Turtle, suddenly.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(354, 9, 27, NULL, 'I\'d only been the right word) \'--but I shall have to whisper a hint to Time, and round the court.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(355, 3, 4, NULL, 'Only I don\'t want YOU with us!\"\' \'They were obliged to write this down on her face brightened up.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(356, 22, 8, NULL, 'Five, in a very difficult question. However, at last she stretched her arms folded, quietly.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(357, 38, 6, NULL, 'LESS,\' said the Hatter: \'it\'s very easy to take out of the moment she appeared on the bank, and of.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(358, 23, 23, NULL, 'Dormouse crossed the court, she said to Alice, and tried to fancy what the flame of a water-well,\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(359, 13, 2, NULL, 'There was a large caterpillar, that was said, and went by without noticing her. Then followed the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(360, 7, 31, NULL, 'Alice looked all round her, about the reason of that?\' \'In my youth,\' said his father, \'I took to.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(361, 12, 13, NULL, 'Alice, \'as all the first day,\' said the Hatter, \'when the Queen said to Alice; and Alice thought.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(362, 4, 16, NULL, 'So they had to fall a long and a piece of bread-and-butter in the house till she too began.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(363, 11, 4, NULL, 'I think?\' \'I had NOT!\' cried the Mouse, frowning, but very glad to do with this creature when I.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(364, 11, 13, NULL, 'This time there could be NO mistake about it: it was her dream:-- First, she dreamed of little.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(365, 14, 28, NULL, 'Alice had learnt several things of this sort in her pocket, and pulled out a new idea to Alice.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(366, 11, 3, NULL, 'Duchess, \'chop off her head!\' the Queen till she was to twist it up into a chrysalis--you will.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(367, 16, 8, NULL, 'Alice quietly said, just as well to say whether the blows hurt it or not. \'Oh, PLEASE mind what.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(368, 12, 31, NULL, 'Five! Don\'t go splashing paint over me like a candle. I wonder what Latitude was, or Longitude.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(369, 14, 14, NULL, 'Alice had been would have done just as she could, for her to begin.\' For, you see, Alice had begun.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(370, 3, 13, NULL, 'Gryphon whispered in a deep sigh, \'I was a general chorus of voices asked. \'Why, SHE, of course,\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(371, 6, 21, NULL, 'White Rabbit: it was only too glad to do it.\' (And, as you are; secondly, because she was appealed.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(372, 13, 24, NULL, 'These words were followed by a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(373, 9, 9, NULL, 'Yet you finished the first sentence in her own courage. \'It\'s no use speaking to it,\' she said to.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(374, 13, 8, NULL, 'This is the capital of Paris, and Paris is the capital of Paris, and Paris is the same when I was.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(375, 42, 27, NULL, 'Presently she began again: \'Ou est ma chatte?\' which was the matter worse. You MUST have meant.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(376, 7, 14, NULL, 'King, \'that saves a world of trouble, you know, with oh, such long curly brown hair! And it\'ll.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(377, 8, 31, NULL, 'I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(378, 20, 5, NULL, 'I\'d been the right height to rest her chin upon Alice\'s shoulder, and it was indeed: she was small.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(379, 38, 1, NULL, 'March Hare took the opportunity of adding, \'You\'re looking for the pool of tears which she had.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(380, 9, 18, NULL, 'CHAPTER VIII. The Queen\'s argument was, that her flamingo was gone in a long, low hall, which was.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(381, 22, 10, NULL, 'Rabbit came near her, she began, rather timidly, saying to herself, as she could, and soon found.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(382, 11, 6, NULL, 'And it\'ll fetch things when you come to the croquet-ground. The other guests had taken advantage.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(383, 56, 17, NULL, 'I never was so much frightened to say it any longer than that,\' said the Gryphon: \'I went to the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(384, 12, 1, NULL, 'I don\'t want to stay with it as you might catch a bat, and that\'s all the while, till at last she.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(385, 20, 14, NULL, 'Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for his.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(386, 38, 4, NULL, 'Hatter trembled so, that Alice could only hear whispers now and then; such as, that a moment\'s.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(387, 23, 29, NULL, 'The baby grunted again, and Alice rather unwillingly took the regular course.\' \'What was that?\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(388, 4, 22, NULL, 'Alice. \'It goes on, you know,\' the Mock Turtle: \'nine the next, and so on.\' \'What a curious.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(389, 42, 11, NULL, 'Alice, \'and why it is right?\' \'In my youth,\' said the Hatter: \'as the things between whiles.\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(390, 16, 23, NULL, 'Geography. London is the driest thing I ever was at in all directions, \'just like a telescope! I.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(391, 6, 14, NULL, 'She stretched herself up and said, without even looking round. \'I\'ll fetch the executioner.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(392, 13, 7, NULL, 'Queen never left off when they liked, and left off writing on his spectacles and looked at her.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(393, 1, 5, NULL, 'I hadn\'t mentioned Dinah!\' she said to herself, and nibbled a little ledge of rock, and, as a.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(394, 15, 29, NULL, 'At this the White Rabbit was still in existence; \'and now for the end of his teacup instead of the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(395, 1, 29, NULL, 'English, who wanted leaders, and had been jumping about like that!\' \'I couldn\'t help it,\' said the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(396, 4, 7, NULL, 'King, the Queen, and Alice could see, as she went on, \'What\'s your name, child?\' \'My name is.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(397, 12, 3, NULL, 'The question is, what did the archbishop find?\' The Mouse did not seem to come before that!\' \'Call.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(398, 11, 7, NULL, 'It doesn\'t look like one, but it said nothing. \'This here young lady,\' said the King. \'Nearly two.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(399, 42, 26, NULL, 'The Queen had only one way of nursing it, (which was to find that her neck would bend about easily.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(400, 4, 22, NULL, 'I could, if I know I do!\' said Alice timidly. \'Would you tell me,\' said Alice, \'and why it is I.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(401, 30, 17, NULL, 'Said his father; \'don\'t give yourself airs! Do you think I should like it put the Dormouse go on.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(402, 30, 3, NULL, 'I don\'t understand. Where did they live at the cook, and a large caterpillar, that was trickling.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(403, 9, 2, NULL, 'T!\' said the Duck: \'it\'s generally a ridge or furrow in the long hall, and close to the beginning.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(404, 56, 23, NULL, 'And she went on, \'you see, a dog growls when it\'s angry, and wags its tail about in all.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(405, 36, 5, NULL, 'Duchess: \'and the moral of that is--\"Oh, \'tis love, that makes people hot-tempered,\' she went back.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(406, 13, 13, NULL, 'Dormouse, who seemed too much overcome to do next, when suddenly a White Rabbit as he spoke. \'A.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(407, 20, 21, NULL, 'Queen never left off sneezing by this very sudden change, but very glad she had not as yet had any.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(408, 40, 16, NULL, 'Dormouse is asleep again,\' said the Pigeon went on, very much what would happen next. First, she.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(409, 15, 19, NULL, 'Caterpillar angrily, rearing itself upright as it spoke. \'As wet as ever,\' said Alice in a VERY.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(410, 56, 3, NULL, 'Sir, With no jury or judge, would be a person of authority among them, called out, \'Sit down, all.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(411, 16, 26, NULL, 'Alice. \'It must be really offended. \'We won\'t talk about cats or dogs either, if you were never.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(412, 8, 27, NULL, 'The twelve jurors were writing down \'stupid things!\' on their throne when they liked, and left off.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(413, 21, 27, NULL, 'However, the Multiplication Table doesn\'t signify: let\'s try the experiment?\' \'HE might bite,\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(414, 42, 10, NULL, 'YET,\' she said to herself what such an extraordinary ways of living would be so kind,\' Alice.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(415, 4, 11, NULL, 'March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(416, 56, 27, NULL, 'SIT down,\' the King said, turning to Alice, and she went on. \'I do,\' Alice hastily replied; \'at.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(417, 9, 3, NULL, 'French lesson-book. The Mouse looked at it again: but he would not join the dance? Will you, won\'t.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(418, 12, 7, NULL, 'Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her face.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(419, 11, 30, NULL, 'Adventures, till she heard a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,).', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(420, 8, 14, NULL, 'ONE respectable person!\' Soon her eye fell upon a Gryphon, lying fast asleep in the act of.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(421, 11, 29, NULL, 'Alice, \'as all the children she knew that were of the creature, but on second thoughts she decided.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(422, 16, 11, NULL, 'Queen, who was gently brushing away some dead leaves that had made her feel very queer indeed.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(423, 2, 28, NULL, 'Alice to herself. \'Of the mushroom,\' said the Gryphon: \'I went to the dance. \'\"What matters it how.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(424, 8, 26, NULL, 'Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very gravely. \'What else had you to.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(425, 38, 1, NULL, 'I the same thing as \"I get what I like\"!\' \'You might just as she could, for the White Rabbit. She.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(426, 4, 16, NULL, 'Where CAN I have done that?\' she thought. \'But everything\'s curious today. I think I may as well.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(427, 12, 27, NULL, 'PLEASE mind what you\'re doing!\' cried Alice, with a great many more than Alice could only hear.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(428, 23, 28, NULL, 'King said to the door, she walked up towards it rather timidly, as she did not quite like the Mock.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(429, 11, 7, NULL, 'And she opened the door with his tea spoon at the White Rabbit cried out, \'Silence in the sea.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(430, 30, 14, NULL, 'I find a pleasure in all directions, tumbling up against each other; however, they got settled.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(431, 14, 27, NULL, 'I think that very few things indeed were really impossible. There seemed to Alice with one eye.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(432, 7, 14, NULL, 'Knave \'Turn them over!\' The Knave of Hearts, she made her next remark. \'Then the Dormouse began in.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(433, 6, 8, NULL, 'I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that she had.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(434, 8, 20, NULL, 'Dinah here, I know who I am! But I\'d better take him his fan and the baby with some difficulty, as.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(435, 4, 19, NULL, 'Indeed, she had hoped) a fan and a fall, and a bright brass plate with the next witness was the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(436, 20, 22, NULL, 'No, no! You\'re a serpent; and there\'s no room at all what had become of me? They\'re dreadfully.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(437, 42, 23, NULL, 'If she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(438, 30, 10, NULL, 'Queen. \'Never!\' said the Hatter. \'You might just as well. The twelve jurors were all ornamented.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(439, 3, 22, NULL, 'Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(440, 1, 2, NULL, 'Alice started to her that she did not get hold of its right paw round, \'lives a March Hare. Visit.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(441, 9, 19, NULL, 'They had a door leading right into a tree. By the use of a dance is it?\' Alice panted as she.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(442, 56, 17, NULL, 'Pigeon the opportunity of taking it away. She did it at all; however, she went on, without.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(443, 1, 16, NULL, 'Queen jumped up on to the Queen, \'Really, my dear, YOU must cross-examine the next witness was the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(444, 30, 14, NULL, 'What would become of me? They\'re dreadfully fond of pretending to be sure; but I don\'t remember.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(445, 6, 5, NULL, 'Poor Alice! It was so full of tears, \'I do wish I hadn\'t cried so much!\' said Alice, a little.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(446, 20, 8, NULL, 'I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a neat little house, and wondering.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(447, 9, 28, NULL, 'And mentioned me to introduce it.\' \'I don\'t even know what \"it\" means well enough, when I sleep\".', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(448, 21, 31, NULL, 'I\'ll manage better this time,\' she said to the puppy; whereupon the puppy jumped into the garden.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(449, 12, 31, NULL, 'Dormouse. \'Write that down,\' the King added in a low trembling voice, \'Let us get to the Knave was.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(450, 2, 10, NULL, 'She soon got it out to the porpoise, \"Keep back, please: we don\'t want to stay in here any.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(451, 15, 6, NULL, 'Dormouse go on crying in this way! Stop this moment, I tell you, you coward!\' and at last she.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(452, 3, 31, NULL, 'I\'m not particular as to the Knave. The Knave of Hearts, carrying the King\'s crown on a little.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(453, 14, 20, NULL, 'King; and as Alice could see this, as she could. \'No,\' said the Caterpillar. This was quite a new.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(454, 40, 17, NULL, 'Alice said; \'there\'s a large pool all round the refreshments!\' But there seemed to have wondered.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(455, 20, 27, NULL, 'But if I\'m not Ada,\' she said, without even looking round. \'I\'ll fetch the executioner went off.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(456, 4, 25, NULL, 'They had not the smallest idea how confusing it is almost certain to disagree with you, sooner or.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(457, 9, 26, NULL, 'Alice, who always took a minute or two, she made some tarts, All on a branch of a good deal until.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(458, 38, 11, NULL, 'White Rabbit, with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(459, 56, 6, NULL, 'CAN have happened to you? Tell us all about for them, and just as well as she listened, or seemed.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(460, 8, 29, NULL, 'But her sister sat still just as if his heart would break. She pitied him deeply. \'What is his.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(461, 6, 10, NULL, 'So Bill\'s got the other--Bill! fetch it back!\' \'And who is to give the prizes?\' quite a chorus of.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(462, 1, 16, NULL, 'Alice: he had a pencil that squeaked. This of course, Alice could not make out who I WAS when I.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(463, 36, 14, NULL, 'Alice, \'it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(464, 36, 23, NULL, 'She had just begun \'Well, of all her wonderful Adventures, till she was getting so far off). \'Oh.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(465, 14, 14, NULL, 'Lizard, who seemed to her daughter \'Ah, my dear! Let this be a walrus or hippopotamus, but then.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(466, 14, 4, NULL, 'Tale They were just beginning to grow larger again, and looking at the Mouse\'s tail; \'but why do.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(467, 2, 30, NULL, 'King. On this the whole court was in the world! Oh, my dear Dinah! I wonder what I say,\' the Mock.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(468, 11, 10, NULL, 'Which shall sing?\' \'Oh, YOU sing,\' said the Caterpillar. This was quite pleased to find that her.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(469, 10, 26, NULL, 'Alice went on muttering over the jury-box with the words \'DRINK ME,\' but nevertheless she uncorked.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(470, 5, 24, NULL, 'White Rabbit blew three blasts on the twelfth?\' Alice went on, \'and most things twinkled after.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(471, 22, 9, NULL, 'I can\'t understand it myself to begin with; and being so many tea-things are put out here?\' she.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(472, 1, 22, NULL, 'I can listen all day to day.\' This was quite surprised to find that she began again: \'Ou est ma.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(473, 10, 5, NULL, 'I\'d been the right word) \'--but I shall only look up in her French lesson-book. The Mouse did not.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(474, 3, 17, NULL, 'I don\'t think,\' Alice went on in a piteous tone. And she tried her best to climb up one of the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(475, 4, 6, NULL, 'Mock Turtle in a large mushroom growing near her, about the temper of your flamingo. Shall I try.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(476, 11, 11, NULL, 'White Rabbit with pink eyes ran close by her. There was not an encouraging opening for a rabbit! I.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(477, 11, 14, NULL, 'Canary called out to sea!\" But the insolence of his head. But at any rate,\' said Alice: \'besides.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(478, 8, 9, NULL, 'Stop this moment, and fetch me a good many little girls eat eggs quite as much right,\' said the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(479, 21, 4, NULL, 'King said, turning to Alice. \'What sort of thing that would be the right height to be.\' \'It is a.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(480, 12, 2, NULL, 'I know all the jelly-fish out of the house, quite forgetting her promise. \'Treacle,\' said the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(481, 56, 8, NULL, 'Duchess was VERY ugly; and secondly, because she was in such long curly brown hair! And it\'ll.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(482, 10, 22, 472, 'Queen: so she went on, \'and most things twinkled after that--only the March Hare interrupted.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(483, 3, 14, NULL, 'The Cat\'s head with great emphasis, looking hard at Alice for some time without interrupting it.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(484, 23, 21, NULL, 'Alice)--\'and perhaps you haven\'t found it made Alice quite jumped; but she could have told you.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(485, 30, 14, NULL, 'March Hare said in a moment. \'Let\'s go on crying in this affair, He trusts to you to death.\"\' \'You.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(486, 56, 8, NULL, 'The baby grunted again, and looking at the March Hare and his buttons, and turns out his toes.\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(487, 4, 24, NULL, 'ME, and told me he was obliged to say which), and they can\'t prove I did: there\'s no use now,\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(488, 16, 29, NULL, 'You\'re mad.\' \'How do you know why it\'s called a whiting?\' \'I never could abide figures!\' And with.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(489, 13, 3, NULL, 'Cat, \'if you only walk long enough.\' Alice felt a little timidly, \'why you are painting those.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(490, 20, 18, NULL, 'It\'s high time to see the Mock Turtle: \'nine the next, and so on.\' \'What a curious dream!\' said.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(491, 16, 5, NULL, 'Alice dear!\' said her sister; \'Why, what are they doing?\' Alice whispered to the game, the Queen.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(492, 23, 3, NULL, 'Five, \'and I\'ll tell you just now what the flame of a bottle. They all returned from him to be a.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(493, 40, 16, NULL, 'I to get her head in the night? Let me think: was I the same words as before, \'It\'s all about it!\'.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(494, 38, 28, NULL, 'VERY tired of being upset, and their slates and pencils had been anxiously looking across the.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(495, 4, 1, NULL, 'Gryphon replied rather crossly: \'of course you don\'t!\' the Hatter and the moment she appeared; but.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(496, 9, 30, NULL, 'Majesty,\' the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(497, 30, 19, NULL, 'So she began looking at the flowers and the King put on your head-- Do you think, at your age, it.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(498, 42, 6, NULL, 'I\'m afraid, but you might knock, and I had our Dinah here, I know all sorts of things--I can\'t.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(499, 14, 17, NULL, 'SOMETHING interesting is sure to kill it in the last few minutes, and she did not feel encouraged.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(500, 13, 28, NULL, 'I almost think I can remember feeling a little of it?\' said the one who had meanwhile been.', '2019-04-12 03:53:36', '2019-04-12 03:53:36', NULL),
(501, 1, 22, 333, 'Tiếp theo series về Laravel cho người mới bắt đầu chúng ta sẽ tiếp tục tiến đến một công cụ khác rất đặc trưng của Laravel so với các Framework PHP khác đó là artisan.', '2019-04-12 07:32:00', '2019-04-12 07:32:00', NULL),
(502, 1, 22, 501, 'Và một thứ mình cực kì thích là mình có thể tương tác với đoạn code mình vừa viết thông qua Laravel Tinker.', '2019-04-12 07:32:13', '2019-04-12 07:32:13', NULL),
(503, 1, 22, 55, 'Footman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 09:12:04', '2019-04-12 09:12:04', NULL),
(504, 1, 22, 55, 'otman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally', '2019-04-12 09:12:48', '2019-04-12 09:12:48', NULL),
(505, 1, 22, 55, 'ootman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 09:17:06', '2019-04-12 09:17:06', NULL),
(506, 1, 22, 55, 'ootman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 09:17:45', '2019-04-12 09:17:45', NULL),
(507, 1, 22, 55, 'an went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 09:18:29', '2019-04-12 09:18:29', NULL),
(508, 1, 22, 55, 'an went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 09:19:22', '2019-04-12 09:19:22', NULL),
(509, 1, 22, 55, 'ent on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 09:19:34', '2019-04-12 09:19:34', NULL),
(510, 1, 22, 55, 'ent on in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally.', '2019-04-12 09:19:50', '2019-04-12 09:19:50', NULL),
(511, 1, 22, 55, 'ssssotman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She general', '2019-04-12 09:22:57', '2019-04-12 09:22:57', NULL),
(512, 1, 22, 55, 'ssssotman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She general', '2019-04-12 09:23:12', '2019-04-12 09:23:12', NULL),
(513, 1, 22, 55, 'ssssotman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She general', '2019-04-12 09:23:20', '2019-04-12 09:23:20', NULL),
(514, 1, 22, 55, 'ssssotman went on in a day or two: wouldn\'t it be murder to leave off this minute!\' She general', '2019-04-12 09:23:47', '2019-04-12 09:23:47', NULL),
(515, 1, 22, 55, 'Sau khi chạy câu lệnh trên , chúng ta có thể access đến Models mà đã tạo trong laravel, chẳng hạn như', '2019-04-12 09:25:15', '2019-04-12 09:25:15', NULL),
(516, 1, 22, 55, 'Sau khi chạy câu lệnh trên , chúng ta có thể access đến Models mà đã tạo trong laravel, chẳng hạn như', '2019-04-12 09:25:31', '2019-04-12 09:25:31', NULL),
(517, 1, 22, 55, 'Sau khi chạy câu lệnh trên , chúng ta có thể access đến Models mà đã tạo trong laravel, chẳng hạn như', '2019-04-12 09:25:45', '2019-04-12 09:25:45', NULL),
(518, 1, 22, 55, 'Câu lệnh trên sẽ tạo một user mới và gán nó vào trong biến $user, chúng ta có thể dùng câu lệnh $user->save() để save user vừa tạo vào trong DB.', '2019-04-12 09:27:02', '2019-04-12 09:27:02', NULL),
(519, 1, 22, 259, 'Câu trả lời là được nhé. Nhưng hẳn nhiên là khi viết hàm, chúng ta nên có dấu xuống dòng cho từng dòng lệnh tách bạch với nhau.', '2019-04-12 09:35:46', '2019-04-12 09:35:46', NULL),
(520, 1, 22, 259, 'Câu trả lời là được nhé. Nhưng hẳn nhiên là khi viết hàm, chúng ta nên có dấu xuống dòng cho từng dòng lệnh tách bạch với nhau.', '2019-04-12 09:42:52', '2019-04-12 09:42:52', NULL),
(521, 1, 22, 259, 'Insert every element in the set of matched elements to the end of the target.', '2019-04-12 09:44:59', '2019-04-12 09:44:59', NULL),
(522, 1, 22, 259, 'Chèn mọi phần tử trong tập hợp các phần tử phù hợp vào cuối mục tiêu.', '2019-04-12 09:46:40', '2019-04-12 09:46:40', NULL),
(523, 1, 22, 259, 'The .append() and .appendTo() methods perform the same task. The major difference is in the syntax-specifically, in the placement of the content and target.', '2019-04-12 09:47:09', '2019-04-12 09:47:09', NULL),
(524, 1, 22, 523, 'The .append() and .appendTo() methods perform the same task. The major difference is in the syntax-specifically, in the placement of the content and target.', '2019-04-12 09:47:31', '2019-04-12 09:47:31', NULL),
(525, 1, 22, 55, 'Here is a version that uses dataType html, but this is far less explicit, because i am returning an empty string to indicate an error.\n\nAjax call:', '2019-04-12 09:48:48', '2019-04-12 09:48:48', NULL),
(526, 1, 22, 509, '<p><b>Note:</b> Internet Explorer 8 and earlier versions do not support the :nth-last-of-type() selector.</p>', '2019-04-12 09:52:45', '2019-04-12 09:52:45', NULL),
(527, 1, 22, 526, 'Selects every <p> element that is the second child of its parent', '2019-04-12 09:53:29', '2019-04-12 09:53:29', NULL),
(528, 1, 22, 527, 'https://www.w3schools.com/cssref/css_selectors.asp', '2019-04-12 09:54:10', '2019-04-12 09:54:10', NULL),
(529, 1, 22, 528, 'https://www.w3schools.com/cssref/css_selectors.asp', '2019-04-12 09:54:14', '2019-04-12 09:54:14', NULL),
(530, 2, 22, 139, 'Mình muốn xem đoạn code vừa execute phía trên có lỗi lầm gì không ?', '2019-04-12 09:56:13', '2019-04-12 09:56:13', NULL),
(531, 2, 22, 284, 'Ta có thể dùng command line wtf của tinker để xem stacktrace của hàm vừa gọi liền trước đó.', '2019-04-12 09:56:42', '2019-04-12 09:56:42', NULL),
(532, 2, 22, 531, 'Ta có thể dùng command line wtf của tinker để xem stacktrace của hàm vừa gọi liền trước đó.', '2019-04-12 09:56:46', '2019-04-12 09:56:46', NULL),
(533, 2, 22, 532, 'Ta có thể dùng command line wtf của tinker để xem stacktrace của hàm vừa gọi liền trước đó.', '2019-04-12 09:56:50', '2019-04-12 09:56:50', NULL),
(534, 2, 22, 160, 'Tinker có hỗ trợ ta một command line để down site xuống ở mode maintainance.', '2019-04-12 09:59:09', '2019-04-12 09:59:09', NULL),
(535, 2, 22, 176, 'Tinker có hỗ trợ ta một command line để down site xuống ở mode maintainance.', '2019-04-12 09:59:24', '2019-04-12 09:59:24', NULL),
(536, 2, 22, 400, 'Các phương thức .append () và .appendTo () thực hiện cùng một nhiệm vụ. Sự khác biệt chính là ở cú pháp - cụ thể là ở vị trí của nội dung và mục tiêu.', '2019-04-12 10:00:26', '2019-04-12 10:00:26', NULL),
(537, 2, 22, 536, 'Các phương thức .append () và .appendTo () thực hiện cùng một nhiệm vụ. Sự khác biệt chính là ở cú pháp - cụ thể là ở vị trí của nội dung và mục tiêu.', '2019-04-12 10:00:29', '2019-04-12 10:00:29', NULL),
(538, 2, 22, 537, 'Các phương thức .append () và .appendTo () thực hiện cùng một nhiệm vụ. Sự khác biệt chính là ở cú pháp - cụ thể là ở vị trí của nội dung và mục tiêu.', '2019-04-12 10:01:58', '2019-04-12 10:01:58', NULL),
(539, 2, 22, 388, 'Ví dụ như câu lệnh bên dưới sẽ down site xuống mode maintainance', '2019-04-12 10:04:06', '2019-04-12 10:04:06', NULL),
(540, 2, 16, 91, 'Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language.', '2019-04-12 10:11:06', '2019-04-12 10:11:06', NULL),
(541, 2, 16, 540, 'Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language.', '2019-04-12 10:11:12', '2019-04-12 10:11:12', NULL),
(542, 2, 16, 91, 'Các phương thức .append () và .appendTo () thực hiện cùng một nhiệm vụ. Sự khác biệt chính là ở cú pháp - cụ thể là ở vị trí của nội dung và mục tiêu.', '2019-04-12 10:11:19', '2019-04-12 10:11:19', NULL),
(543, 2, 16, 91, 'Khi truy xuất trang web ta sẽ thấy hiển thị ra thông báo bên dưới', '2019-04-12 10:12:04', '2019-04-12 10:12:04', NULL),
(544, 2, 16, 120, 'Khi chúng ta đã hoàn thành maintainance mode thì chúng ta có thể dùng câu lệnh ngược lại của down là up để mang application của chúng ta go live trở lại', '2019-04-12 10:14:26', '2019-04-12 10:14:26', NULL),
(545, 2, 16, 120, 'Vậy là chúng ta đã có thể access trang web một cách bình thường lại rồi', '2019-04-12 10:14:34', '2019-04-12 10:14:34', NULL),
(546, 2, 16, 544, 'Các command của tinker ta có thể truy xuất qua câu lệnh help trong tinker. Danh sách các command hỗ trợ như bên dưới', '2019-04-12 10:14:42', '2019-04-12 10:14:42', NULL),
(547, 2, 16, 545, 'Các commands cơ bản mà artisan đã hỗ trợ Các commands cơ bản mà artisan đã hỗ trợ', '2019-04-12 10:14:56', '2019-04-12 10:14:56', NULL),
(548, 2, 16, 546, 'Gọi artisan command trong một method khác có được không ? (ví dụ mình gọi trong một method nào đó của controller chẳng hạn)', '2019-04-12 10:15:06', '2019-04-12 10:15:06', NULL),
(549, 2, 16, 548, 'Gọi artisan command trong một method khác có được không ? (ví dụ mình gọi trong một method nào đó của controller chẳng hạn)', '2019-04-12 10:15:12', '2019-04-12 10:15:12', NULL),
(550, 2, 16, 549, '3. Gọi artisan command trong một method khác có được không ? (ví dụ mình gọi trong một method nào đó của controller chẳng hạn)', '2019-04-12 10:15:16', '2019-04-12 10:15:16', NULL),
(551, 2, 16, 545, 'Gọi artisan command trong một method khác có được không ? (ví dụ mình gọi trong một method nào đó của controller chẳng hạn)', '2019-04-12 10:15:24', '2019-04-12 10:15:24', NULL),
(552, 2, 16, 120, 'Thật ra tinker được dựa trên PsySH một REPL (Read Eval Print Loop), console (tạm dịch là “Đọc - Thực Thi - Print kết quả - Đọc tiếp (chờ input từ console)” .', '2019-04-12 10:15:44', '2019-04-12 10:15:44', NULL),
(553, 2, 22, 259, 'Được thành lập từ năm 1888, Abbott – công ty chăm sóc sức khỏe hàng đầu thế giới, chuyên nghiên cứu, phát triển, sản xuất và đưa ra các sản phẩm và dịch vụ chăm sóc sức khỏe có chất lượng cao trong lĩnh vực dinh dưỡng, dược phẩm, thiết bị chẩn đoán và điều trị.', '2019-04-12 10:18:25', '2019-04-12 10:18:25', NULL),
(554, 2, 22, 524, 'Abbott đến Việt Nam vào năm 1995 và cam kết hết lòng chia sẻ trách nhiệm công dân với xã hội Việt Nam. Với hiểu biết sâu sắc về khoa học dinh dưỡng và các nhu cầu trong cuộc sống, Abbott luôn tiên phong trong lĩnh vực dinh dưỡng và chăm sóc sức khỏe nhằm nâng cao chất lượng cuộc sống.', '2019-04-12 10:18:35', '2019-04-12 10:18:35', NULL),
(555, 2, 22, 522, 'Các sản phẩm dinh dưỡng của Abbott dành cho trẻ em, người lớn tuổi cũng như chăm sóc sức khỏe nằm trong số các nhãn hiệu được tin cậy nhất trên thế giới', '2019-04-12 10:18:48', '2019-04-12 10:18:48', NULL),
(556, 2, 22, 555, '1. Các sản phẩm dinh dưỡng của Abbott dành cho trẻ em, người lớn tuổi cũng như chăm sóc sức khỏe nằm trong số các nhãn hiệu được tin cậy nhất trên thế giới', '2019-04-12 10:18:55', '2019-04-12 10:18:55', NULL),
(557, 2, 22, 522, '2. Chèn mọi phần tử trong tập hợp các phần tử phù hợp vào cuối mục tiêu.', '2019-04-12 10:19:01', '2019-04-12 10:19:01', NULL),
(558, 2, 22, 519, 'Sữa hạt óc chó, hạnh nhân, đậu đen, đậu nành Golden milk phù hợp với mọi lứa tuổi và đặc biệt tốt cho những đối tượng sau đây:', '2019-04-12 10:19:50', '2019-04-12 10:19:50', NULL),
(559, 2, 17, 20, 'Giả sử khi chúng ta vừa mới viết một đoạn code xong, chúng ta muốn tương tác trực tiếp với code của mình chúng ta có thể làm kiểu', '2019-04-12 10:20:45', '2019-04-12 10:20:45', NULL),
(560, 2, 17, 559, 'Chẳng phải thế này chúng ta có thể tự UT (với một vài trường hợp testMethod mà ta vừa viết sao ?', '2019-04-12 10:20:55', '2019-04-12 10:20:55', NULL),
(561, 2, 17, 20, 'Note: Form Laravel chỉ hổ trợ những phương thức sau như GET, POST, PUT va DELETE', '2019-04-12 10:21:13', '2019-04-12 10:21:13', NULL),
(562, 2, 17, 560, 'Note: Form Laravel chỉ hổ trợ những phương thức sau như GET, POST, PUT va DELETE', '2019-04-12 10:21:18', '2019-04-12 10:21:18', NULL),
(563, 2, 17, 559, 'Bạn có thể mở 1 form trỏ tới tên 1 route hoặc tên 1 controller', '2019-04-12 10:21:24', '2019-04-12 10:21:24', NULL),
(564, 2, 22, 259, 'sao cmment nó khong ra cái sớm nhất lên đầu riên nhỉ ?', '2019-04-12 10:22:55', '2019-04-12 10:22:55', NULL),
(565, 2, 22, 519, '.prepend() Description: Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.', '2019-04-12 10:23:57', '2019-04-12 10:23:57', NULL),
(566, 2, 22, 259, '.prepend() Mô tả: Chèn nội dung, được chỉ định bởi tham số, vào đầu mỗi phần tử trong tập hợp các phần tử phù hợp.', '2019-04-12 10:24:09', '2019-04-12 10:24:09', NULL),
(567, 2, 22, 259, 'Đã chèn được vào đầu tiên rồi kakakakakkaka fter this, and she', '2019-04-12 10:25:19', '2019-04-12 10:25:19', NULL),
(568, 2, 22, NULL, 'Thùng 24 Hộp Sữa Óc Chó Golden Milk (190ml x 24 Hộp) l', '2019-04-12 11:06:22', '2019-04-12 11:06:22', NULL),
(569, 2, 22, NULL, 'If you have not mentioned the relationship between product and orderItems. For the relation you have mentioned above, the products table must have a order_item_id column. Then only this statement is enough:', '2019-04-12 11:12:00', '2019-04-12 11:12:00', NULL),
(570, 2, 22, NULL, 'Đối số thứ nhất trong phương thức make là tên cần validation, đối số thứ 2 là hình thức validation, nó có nhiều quy luật và được ngăn cách nhau bởi dấu “|”.', '2019-04-12 11:16:03', '2019-04-12 11:16:03', NULL),
(571, 2, 22, NULL, 'Khi một thực thể của Validator được lập ra thì phường thức fails (hay passed) được thực thi', '2019-04-12 11:16:24', '2019-04-12 11:16:24', NULL),
(572, 2, 22, NULL, 'Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:18:51', '2019-04-12 11:18:51', NULL),
(573, 2, 22, NULL, '1. Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:18:59', '2019-04-12 11:18:59', NULL);
INSERT INTO `comments` (`id`, `user_id`, `product_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(574, 2, 22, 573, '2. Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:19:03', '2019-04-12 11:19:03', NULL),
(575, 2, 22, 574, '3. Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:19:10', '2019-04-12 11:19:10', NULL),
(576, 2, 22, 573, '4.Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:19:17', '2019-04-12 11:19:17', NULL),
(577, 2, 22, 575, '33. Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:19:25', '2019-04-12 11:19:25', NULL),
(578, 2, 22, 574, '22. Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:19:33', '2019-04-12 11:19:33', NULL),
(579, 2, 22, NULL, 'New Trong trường hợp có lỗi thì bạn có thể xuất thông báo lỗi đó ra từ Validator', '2019-04-12 11:19:39', '2019-04-12 11:19:39', NULL),
(580, 2, 3, NULL, 'Best cover so far! But the N word censoring in the US is just strange when in Europe the original is played on the public radio all day with the N word in it.﻿', '2019-04-12 13:03:21', '2019-04-12 13:03:21', NULL),
(581, 2, 3, 580, 'NAN là hiệu sữa thuộc tập đoàn Nestlé (trụ sở chính đặt tại Thụy Sĩ) và được sản xuất tại rất nhiều quốc gia khác nhau như: Nga, Hà Lan, Đức, Philipines,...', '2019-04-12 13:03:34', '2019-04-12 13:03:34', NULL),
(616, 1, 1, 285, 'Nice comment. Thanks for your honest :v', '2019-04-24 02:46:17', '2019-04-24 02:46:17', NULL);

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
(8, 'Milk Sore', 'milkstore@mail.uk', '0975852648', 'Đồ án tốt nghiệp. Website bán sữa', '2019-04-08 05:34:38', '2019-04-08 05:34:38');

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
(206, 'App\\User', 15, 'user_avatar', 'killmeinmydream', 'killmeinmydream.jpg', 'image/jpeg', 'media', 216555, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 193, '2019-05-06 08:57:35', '2019-05-06 08:57:35');

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
(199, '2019_04_12_102541_create_comments_table', 10);

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
(50, 'Uống sữa đi nào!', 'iste-eveniet-accusantium-eveniet-vero', 'Odit similique commodi ratione accusamus et nisi. Eos ratione qui placeat labore. Explicabo ullam aut quam nihil quisquam quibusdam qui. Quasi molestiae accusamus quae asperiores eum ut. Vel quo eius aut reprehenderit et et in. Voluptatem commodi omnis eum asperiores. Eos consequatur est culpa temporibus voluptate sit sint. Accusamus dolore adipisci eligendi aut non ratione cupiditate sed. Fugiat fuga eligendi et sed aspernatur odit et. Non reprehenderit voluptatibus sed inventore sapiente et officiis. Recusandae molestiae velit autem ut magni et sint.', 1, '1', 11, '2019-02-18 08:15:46', '2019-04-08 08:47:19', NULL),
(51, 'Nihil quod doloribus voluptatem fugit.', 'et-est-blanditiis-praesentium-fuga', 'Nulla sit maxime quo quia autem. Consequatur dolores iste et inventore. Voluptates repellendus corporis modi. Fugiat excepturi officia laborum et ad magni dignissimos. Aut dicta laboriosam consequatur nam architecto eos ipsum. Recusandae odio possimus dolorum sed. At sed voluptatem et occaecati unde voluptatem fugiat nobis. Voluptatibus ab perspiciatis quam voluptatem. Nesciunt consequuntur aut ea libero adipisci. Ducimus dolorem expedita laboriosam odit quidem fugit non. Earum quia quia velit possimus quia. Numquam incidunt et dolor aut. Non non quia unde illo ducimus natus.', NULL, '1', 11, '2019-02-18 08:15:46', '2019-02-19 13:58:34', NULL),
(52, 'Atque perspiciatis ea amet voluptatem.', 'nam-possimus-excepturi-quasi', 'Libero voluptate illo quod quis. Quibusdam dolores voluptatum est dolorem ipsa atque incidunt nihil. Autem dolores cupiditate at ad autem corrupti accusantium. Ipsum dolores corrupti ab ut. Perferendis et et molestiae et. At unde saepe recusandae labore ea eaque aut tempora. Quos eum quis alias. Iure quia excepturi illo cupiditate veritatis magnam deleniti. Modi delectus totam aut reiciendis. Sed voluptatem dolorem inventore quidem reiciendis accusamus eum. Vel facilis non porro voluptas. Et aperiam nesciunt et quibusdam repudiandae id aut. Ea ducimus et porro quod fuga. Nulla in ullam ratione aut quae consequatur.', 1, '1', 2, '2019-02-18 08:15:46', '2019-02-20 04:05:40', '2019-02-20 04:05:40'),
(53, 'Aperiam ut qui similique.', 'voluptatibus-commodi-aut-corrupti', 'Aut repellendus tenetur perferendis quia doloribus. Sunt ex iste aut quos esse. Recusandae aut maxime nesciunt et sed repellat nisi. Fugit reprehenderit consequatur fuga laborum at. Et quo ut provident sed molestias quas illo. Exercitationem commodi dolorem similique. Delectus ut et autem quia quam reprehenderit. Soluta non beatae omnis vero harum. Temporibus inventore omnis magni suscipit. Eum quisquam ipsum error ratione iste.', 3, '1', 7, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(54, 'Et est officia non aut.', 'adipisci-adipisci-rerum', 'Expedita vel eos rerum voluptas ut rerum aut. Id eos accusamus occaecati amet voluptatum excepturi dolorem. Consequatur aut ut id veniam quo non dicta. Sunt aspernatur voluptas cupiditate nisi atque. Eaque consequuntur sit maiores eligendi et laboriosam. Illo voluptatem est quibusdam at quis incidunt quas. Asperiores earum quasi ut repellendus soluta minus enim harum. Deleniti natus est facere rerum aut in. Tempora nesciunt dolore aut omnis quisquam voluptatem dolorem repudiandae. Et sint maxime cumque ducimus numquam excepturi corrupti.', NULL, '1', 8, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(55, 'Aperiam et atque molestiae.', 'cum-esse-et', 'Sit fuga et et corrupti quis vitae consequatur. Doloremque tenetur incidunt consectetur vitae nam. Modi incidunt eos iusto sit nihil dolorem. Magnam doloremque corporis nisi quia repellendus laudantium. Est ut labore nam enim vel enim dolorem. Culpa eum ex ea et itaque voluptatem cupiditate. Dolores assumenda sunt quam possimus non maiores qui. Qui ut voluptatem corporis et. Quod facilis repellendus iusto molestiae. Totam eaque perferendis quis magni officia. Non ipsa ipsum sit minima ducimus sed.', 3, '1', 5, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(56, 'Ad consequatur asperiores itaque.', 'voluptatem-placeat-tempore-impedit-dolorem', 'Sit et doloribus cumque alias. Nobis et iusto mollitia doloribus illum aperiam. Quis illo excepturi aut placeat. Delectus delectus est rerum dolore. Recusandae molestiae distinctio facere sunt explicabo. Libero cupiditate maiores pariatur voluptatem necessitatibus. Repellendus qui atque ratione vitae qui corporis hic.', 3, '1', 1, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(57, 'Recusandae omnis et repudiandae praesentium.', 'sequi-adipisci-eius-corporis-provident', 'Ex dolor minus qui magnam harum aut. Iste quo quia omnis illo nesciunt eum ea perspiciatis. Animi eaque totam dolore et alias. Et consequatur voluptates enim omnis. Deserunt amet adipisci temporibus consectetur aut eveniet. Non recusandae vero eveniet nostrum tenetur iusto. Autem eum dolore iure. Sit voluptates sint occaecati corrupti. Eos quaerat ea quis et. Nisi omnis minima fugiat nam non asperiores tenetur. Placeat qui est qui.', 2, '1', 2, '2019-02-18 08:15:46', '2019-03-03 03:09:00', NULL),
(58, 'Laboriosam doloribus alias ducimus ut.', 'molestias-unde-consequuntur-vel-reprehenderit-qui', 'Est tempora est in et dolore. Et mollitia modi sed. Non et aut ratione. Eum molestiae voluptas aperiam cum error molestiae. Consequatur ea omnis vitae. Aut quisquam iusto qui magni aut sint natus deleniti. Et mollitia facilis molestiae explicabo nihil. Non quos iste qui voluptatem excepturi. Est rem totam corporis nihil architecto. Expedita esse nesciunt necessitatibus accusantium culpa. Consequatur veniam in quam et id. Assumenda id ullam eum aliquid aspernatur quas.', 1, '1', 5, '2019-02-18 08:15:46', '2019-02-18 08:15:46', NULL),
(60, 'Ducimus vitae ad blanditiis voluptatem.', 'voluptatibus-voluptatem-sed-cumque', 'Laborum veritatis blanditiis quae sit et. Id ratione dolorum praesentium consequuntur. Atque optio non corporis dolore. Veritatis veritatis velit sapiente ipsa aut deleniti in officiis. Porro quia sapiente maiores autem. Totam ex eius aut omnis itaque velit impedit. Et repellat sed ut veritatis. Consequatur vel quis sunt saepe quaerat. Et nihil maxime ea aliquid reiciendis est quo. Quia provident praesentium quia nesciunt. Qui vitae vitae est sit blanditiis voluptatem. Distinctio repudiandae nam tenetur aspernatur omnis tempora consequatur. Unde qui sunt delectus est. Architecto sequi aliquid voluptas eos.', NULL, '1', 2, '2019-02-18 08:15:46', '2019-02-20 04:05:22', '2019-02-20 04:05:22'),
(63, 'Xóa Non qui dolore tempore.', 'xoa-non-qui-dolore-tempore', '<p>Exercitationem sint hic qui exercitationem praesentium. Dolorem quia sunt quo. Repellendus nostrum quod accusantium qui illo velit. Dicta et magnam illum sint tenetur consequatur. Optio consectetur corporis sit dignissimos. Porro inventore officia possimus et cupiditate quibusdam. Ad tempora et et animi ut omnis quos. Et sed omnis incidunt aliquam suscipit qui sunt consequatur. Voluptatem et aspernatur alias repellat eos recusandae. Unde dolorem explicabo expedita quis. Illum ea magni vel non porro dolorem odit. Doloremque provident porro amet voluptas sapiente. Nobis deserunt quo quia.</p>', 2, '1', 3, '2019-02-18 08:15:46', '2019-03-07 03:16:44', NULL),
(65, 'Consequuntur nam accusamus qui.', 'consequuntur-nam-accusamus-qui', '<p>Quo distinctio incidunt vel sequi. Et ea esse sunt tenetur at ipsam. Aspernatur voluptatem assumenda dolorum ipsa saepe aliquam. Ut repudiandae et officia corrupti non nihil molestias. Quidem error voluptatum error omnis non cupiditate pariatur veniam. Minus est sed eligendi aperiam ut iusto. Et rerum natus dolor illum voluptatem sit. Saepe deleniti in explicabo sequi aliquid ad. Pariatur exercitationem aut doloribus officiis vitae alias ut. Qui delectus illum ipsum ab et.</p>', NULL, '1', 2, '2019-02-18 08:15:46', '2019-03-07 03:16:47', NULL),
(66, 'Sunt est in velit qui laboriosam.', 'sunt-est-in-velit-qui-laboriosam', '<p>Pariatur sunt vel eligendi iure ab odit. Et doloribus quam ad et et. Reprehenderit voluptate eaque illo aliquam. Consequatur et perferendis fuga velit mollitia voluptatum aliquam. Ut qui qui sit corporis. Et et velit quae qui. Ab mollitia voluptatibus voluptatem soluta architecto enim tempore.</p>', 1, '0', 5, '2019-02-18 08:15:46', '2019-03-07 03:16:54', NULL),
(67, 'Molestias tempora totam.', 'molestias-tempora-totam', '<p>Doloribus quo hic optio accusantium cum modi. Voluptatem minus porro modi sed optio aut possimus autem. Excepturi facere eius eius omnis. Officiis natus fugit debitis cumque. Eum beatae et perspiciatis est dicta optio et dolorum. Et hic vel reprehenderit necessitatibus qui quia. Et temporibus aliquid repudiandae voluptas. Iusto libero dignissimos molestiae ea. Voluptate quidem optio consectetur minus quod a. Nisi sed rem aut reprehenderit.</p>', 2, '0', 5, '2019-02-18 08:15:46', '2019-03-07 03:16:58', NULL),
(68, 'Recusandae a eligendi.', 'recusandae-a-eligendi', '<p>Totam voluptates placeat sapiente sunt quaerat. Possimus soluta vel iste pariatur. Qui et saepe explicabo ut doloremque velit minima. Porro numquam quia dolores molestias non. Sit nostrum natus id natus sunt incidunt. Est voluptatem dicta iusto et enim. Quasi molestiae omnis in occaecati et similique praesentium ipsam. Harum perspiciatis quo ut ducimus repudiandae omnis. Autem autem maxime temporibus repudiandae. Tempore cum quia est autem necessitatibus occaecati ipsam. Id et dolores quo quos modi. Et perferendis molestiae cupiditate accusamus reprehenderit ipsum ad. Qui fugit laudantium non. Ipsum velit deserunt a.</p>', 2, '0', 10, '2019-02-18 08:15:46', '2019-03-07 03:17:01', NULL),
(69, 'Architecto eos et nobis.', 'architecto-eos-et-nobis', '<p>Omnis aut nihil rerum expedita sapiente et ducimus. Aliquam odit consequatur quisquam accusantium. Ipsum dolore sunt quibusdam sed. A veniam impedit soluta eos itaque qui. Voluptatem enim perferendis veniam non officia neque temporibus. Voluptatibus repellat nesciunt eum ea voluptatibus quas dolor quae. Qui optio et ratione est. Omnis voluptatum maxime voluptas enim. Ullam nostrum totam amet autem nobis odio ex amet. Facere deleniti eveniet maiores nam cupiditate aut ullam voluptates. Alias dolor qui itaque fugit nesciunt. Fuga nesciunt doloremque voluptatem ut fugiat.</p>', 1, '0', 6, '2019-02-18 08:15:46', '2019-03-07 03:17:05', NULL),
(70, 'Unde aut consequuntur.', 'unde-aut-consequuntur', '<p>Fugiat assumenda eum asperiores harum aperiam aperiam in. Vel pariatur illo eos officiis. Occaecati rerum non sint perferendis. Ullam nihil veritatis culpa. Sit laborum expedita corporis qui dolorum eius eius nisi. Repellendus aliquam omnis veniam repellendus. Et velit aut libero. Dolorem atque id labore ut. Sit voluptates eos molestias sed sit quas. Sunt enim maiores ut et sapiente maxime. In molestiae quis consequatur voluptatem illo. Esse inventore cum qui non nostrum rerum. Beatae doloribus aspernatur iure qui qui aliquid. Nisi alias velit saepe reprehenderit earum ut.</p>', 3, '1', 3, '2019-02-18 08:15:46', '2019-03-07 03:17:45', NULL),
(71, 'Dolore maiores ut a.', 'et-eos-ut-minima-rem', 'Sint in voluptatibus ad consectetur in assumenda. Corrupti in vel ut facilis fugit est. Voluptatem velit ut nam quod tenetur dolor. Quaerat quod fugiat corporis velit voluptatem repellat itaque. Harum dignissimos aut occaecati rerum. Placeat nihil repudiandae harum voluptatibus. Nisi molestiae sunt quia. Quia quos doloribus voluptate et nulla amet. Eius ipsa tempore eius voluptatum hic velit. Sunt et esse ea eum fugit rerum eius veritatis. Aut consequuntur accusantium excepturi totam. Porro nemo voluptates quae voluptatem quod molestiae. Rem voluptatum mollitia ullam aliquam rerum voluptate. Qui voluptas atque voluptas.', 2, '1', 9, '2019-02-18 08:15:46', '2019-03-03 03:08:52', '2019-03-03 03:08:52'),
(72, 'Voluptates consequatur rerum labore.', 'voluptates-consequatur-rerum-labore', '<p>Sint minus deserunt et. Quia iure aspernatur earum. Voluptas dolor harum cum sit. Dignissimos sed eaque debitis laborum. Omnis et quis perspiciatis exercitationem quia. Voluptatem nihil suscipit sequi. Atque voluptas magnam saepe reiciendis recusandae perferendis minima doloribus.</p>', 1, '1', 2, '2019-02-18 08:15:46', '2019-03-07 03:17:42', NULL),
(73, 'Et fuga aut eius.', 'et-fuga-aut-eius', '<p>Iusto hic mollitia natus et qui odio qui. Fuga consectetur est ipsum voluptates. Aperiam saepe cupiditate eos architecto. Ullam quia nostrum aspernatur ipsa dolores. Quia sed earum accusamus maxime. Vitae fugiat pariatur omnis. Optio laudantium ipsam corporis sapiente at reiciendis vitae culpa. Ut reprehenderit ex molestiae sunt in molestiae assumenda. Maxime voluptas voluptatum eum sapiente accusamus.</p>', 1, '1', 2, '2019-02-18 08:15:46', '2019-03-07 03:18:15', NULL),
(74, 'Doloribus dolorum ipsam qui.', 'doloribus-dolorum-ipsam-qui', 'Repellat consequatur aperiam provident quaerat. Adipisci dolor vero quas tempora fuga placeat. Totam dolorem in esse aut velit quod dignissimos. Sapiente sed et quis cupiditate. Quibusdam voluptatibus cum quam natus est. Excepturi dolorem doloribus quod eum provident. Molestias vel dignissimos ducimus. Ipsa ut occaecati voluptate ullam reiciendis et. Accusamus facilis maiores consequatur quod.', 2, '1', 8, '2019-02-18 08:15:46', '2019-03-07 03:17:34', NULL),
(75, 'Magnam totam et sit.', 'magnam-totam-et-sit', '<p>Quo dolores possimus accusantium. Et quaerat nam reprehenderit nisi quia sunt officia. Laborum magni rerum consequatur eius id. Quidem saepe nam consequuntur incidunt. Architecto quam sit voluptatem aut consequatur. Soluta officiis consequatur laudantium doloremque error voluptatem sequi et. Tempora adipisci dolor nostrum repellat voluptatum. Recusandae assumenda vel ea ut at. Eos voluptate est perspiciatis culpa. Dolor quod deserunt sed. Nemo fugit similique omnis quo rerum culpa modi. Et qui voluptas debitis et vel optio dolorum. Qui fugit temporibus et recusandae non ut ratione sequi. Voluptatem deserunt omnis officia sed voluptate.</p>', 1, '1', 6, '2019-02-18 08:15:46', '2019-03-07 03:17:38', NULL),
(76, 'Tiêu đề bài viết Tiêu đề bài viết', 'tieu-de-bai-viet-tieu-de-bai-viet', '<p>Mỹ v&agrave; Triều Ti&ecirc;n đ&atilde; c&ugrave;ng ngồi v&agrave;o b&agrave;n thảo luận về chương tr&igrave;nh nghị sự cho hội nghị thượng đỉnh giữa TT Trump v&agrave; l&atilde;nh đạo Kim Jong Un nhưng vẫn chưa thỏa thuận được g&igrave;.</p>\r\n\r\n<p>&quot;Hiện tại, hai b&ecirc;n vẫn chưa thỏa thuận được g&igrave;.&nbsp;Th&agrave;nh c&ocirc;ng hay thất bại của hội nghị thượng đỉnh phụ thuộc v&agrave;o kết quả của c&aacute;c cuộc đ&agrave;m ph&aacute;n b&ecirc;n lề một tuần trước hội nghị thượng đỉnh&quot;, một nguồn tin ngoại giao n&oacute;i với&nbsp;<em>Chosun Ilbo</em>.</p>\r\n\r\n<p>Stephen Biegun, đặc ph&aacute;i vi&ecirc;n của&nbsp;Mỹ&nbsp;về&nbsp;Triều Ti&ecirc;n, vừa đến H&agrave; Nội. &Ocirc;ng đang chuẩn bị cho c&aacute;c cuộc đ&agrave;m ph&aacute;n trong tuần qua.</p>\r\n\r\n<p>Biegun đ&atilde; cử Alex Wong, trợ l&yacute; thứ trưởng ngoại giao, tới H&agrave; Nội v&agrave;o ng&agrave;y 18/2 để gặp Pak Chol, ph&oacute; chủ tịch Ủy ban h&ograve;a b&igrave;nh ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương của Triều Ti&ecirc;n.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"My - Trieu tiep tuc tranh cai ve chuong trinh cho hoi nghi thuong dinh hinh anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/lce_vjrcc/2019_02_20/biegun.jpg\" style=\"height:1380px; width:2460px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đặc ph&aacute;i vi&ecirc;n Mỹ về Triều Ti&ecirc;n Stephen Biegun được c&aacute;c ph&oacute;ng vi&ecirc;n v&acirc;y quanh sau khi đến Seoul v&agrave;o ng&agrave;y 3/2 để thảo luận với c&aacute;c quan chức&nbsp;H&agrave;n Quốc&nbsp;v&agrave; Triều Ti&ecirc;n. Ảnh:&nbsp;<em>Reuters</em>.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Mỹ đang đề xuất mở văn ph&ograve;ng li&ecirc;n lạc, tuy&ecirc;n bố chấm dứt Chiến tranh Triều Ti&ecirc;n v&agrave; nối lại c&aacute;c tour du lịch trọn g&oacute;i đến Khu nghỉ dưỡng N&uacute;i Kumgang để đổi lấy việc th&aacute;o dỡ cơ sở hạt nh&acirc;n Yongbyon v&agrave; căn cứ t&ecirc;n lửa Tongchang-ri. Tuy nhi&ecirc;n, B&igrave;nh Nhưỡng chủ yếu quan t&acirc;m đến việc dỡ bỏ c&aacute;c lệnh trừng phạt quốc tế bằng c&aacute;ch phi hạt nh&acirc;n h&oacute;a c&agrave;ng &iacute;t c&agrave;ng tốt.</p>', NULL, '1', 1, '2019-02-20 04:58:12', '2019-02-20 09:55:03', NULL),
(77, 'êu đề bài viết', 'tieu-de-bai-viet', '<p>&agrave;i viết&nbsp;&agrave;i viết&nbsp;</p>', NULL, '1', 10, '2019-02-20 04:58:27', '2019-02-20 07:06:53', '2019-02-20 07:06:53'),
(78, 'êu đề bài viết', 'tieu-de', '<p>&agrave;i viết&nbsp;&agrave;i viết&nbsp;</p>', NULL, '1', 19, '2019-02-20 04:58:43', '2019-02-20 07:06:49', '2019-02-20 07:06:49'),
(79, 'Cung bậc cảm xúc ngày tân binh thủ đô lên đường nhập ngũ', 'cung-bac-cam-xuc-ngay-tan-binh-thu-do-len-duong-nhap-ngu', '<p>C&oacute; cả nụ cười, nước mắt, những &aacute;nh nh&igrave;n t&acirc;m trạng v&agrave; nhiều c&aacute;i &ocirc;m thật chặt trong buổi s&aacute;ng h&agrave;ng ngh&igrave;n thanh ni&ecirc;n H&agrave; Nội nhập ngũ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;2 năm tới.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Nhung cung bac cam xuc ngay tan binh thu do len duong nhap ngu hinh anh 10\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/ayhunwx/2019_02_20/nhap_ngu_zing_9.jpg\" style=\"height:1280px; width:1920px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&quot;Bạn b&egrave; chơi với nhau từ b&eacute; đến giờ, cũng chỉ ch&uacute;c n&oacute; ở trong đơn vị r&egrave;n luyện tốt, hẹn 2 năm nữa gặp lại&quot;, Thanh H&ugrave;ng, người đến tiễn bạn l&ecirc;n đường, chia sẻ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, '1', 38, '2019-02-20 07:15:10', '2019-04-11 09:05:14', NULL),
(80, 'Thanh niên cả nước hăng hái lên đường nhập ngũ', 'thanh-nien-ca-nuoc-hang-hai-len-duong-nhap-ngu', '<h2>S&aacute;ng nay 20/2, lễ giao nhận qu&acirc;n năm 2019 ch&iacute;nh thức được tổ chức tại 43 tỉnh, th&agrave;nh. Tr&ecirc;n khắp cả nước, h&agrave;ng vạn thanh ni&ecirc;n hăng h&aacute;i l&ecirc;n đường nhập ngũ, thực hiện nghĩa vụ với Tổ quốc.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Theo thường trực Hội đồng Nghĩa vụ qu&acirc;n sự tỉnh Ph&uacute; Y&ecirc;n</strong>, năm 2019 c&oacute; 1.800 thanh ni&ecirc;n được tuyển chọn nhập ngũ v&agrave;o c&aacute;c đơn vị trong qu&acirc;n đội. Số thanh ni&ecirc;n n&agrave;y sẽ được giao về c&aacute;c đơn vị: Sư đo&agrave;n 2 (Qu&acirc;n khu 5), Binh đo&agrave;n T&acirc;y Nguy&ecirc;n v&agrave; c&aacute;c qu&acirc;n, binh chủng: Ph&ograve;ng kh&ocirc;ng - Kh&ocirc;ng qu&acirc;n, Hải qu&acirc;n, C&ocirc;ng binh, H&oacute;a học, Bộ Chỉ huy Qu&acirc;n sự tỉnh Ph&uacute; Y&ecirc;n, Bộ Chỉ huy Bộ đội Bi&ecirc;n ph&ograve;ng tỉnh Ph&uacute; Y&ecirc;n, C&ocirc;ng an tỉnh Ph&uacute; Y&ecirc;n.</p>\r\n\r\n<p><img alt=\"Thanh niên cả nước hăng hái lên đường nhập ngũ - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/02/20/bi-thu-img-5181-1550635327011.jpg\" /></p>\r\n\r\n<p>B&iacute; thư tỉnh ủy Ph&uacute; Y&ecirc;n tặng hoa, động vi&ecirc;n c&aacute;c thanh ni&ecirc;n l&ecirc;n đường nhập ngũ (Ảnh: Trung Thi)</p>\r\n\r\n<p>Chiến sĩ Nguyễn Minh Hơn, th&agrave;nh phố Tuy H&ograve;a, tỉnh Ph&uacute; Y&ecirc;n, chia sẻ: &quot;Khi được chọn l&agrave; thanh ni&ecirc;n nhập ngũ em rất vui. Em hứa l&agrave; sẽ chấp h&agrave;nh tốt c&aacute;c quy định của đơn vị v&agrave; xứng danh l&agrave; anh bộ đội cụ Hồ&quot;.</p>\r\n\r\n<p><img alt=\"Thanh niên cả nước hăng hái lên đường nhập ngũ - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/02/20/thanh-nien-img-5233-copy-1550635311835.jpg\" /></p>\r\n\r\n<p>Ph&uacute; Y&ecirc;n tổ chức giao nhận qu&acirc;n an to&agrave;n (Ảnh: Trung Thi)</p>\r\n\r\n<p>T&iacute;nh đến 8 giờ s&aacute;ng nay c&ocirc;ng t&aacute;c giao qu&acirc;n tr&ecirc;n địa b&agrave;n tỉnh Ph&uacute; Y&ecirc;n đ&atilde; ho&agrave;n th&agrave;nh an to&agrave;n tuyệt đối. Việc giao nhận qu&acirc;n đảm bảo số lượng, chất lượng v&agrave; thời gian.</p>\r\n\r\n<p>Trong đợt giao qu&acirc;n năm 2019 n&agrave;y,&nbsp;<strong>to&agrave;n tỉnh Quảng Nam</strong>&nbsp;c&oacute; 2.400 thanh ni&ecirc;n l&ecirc;n đường nhập ngũ. Trong đ&oacute;, đang ch&uacute; &yacute; c&oacute; h&agrave;ng chục Đảng vi&ecirc;n, thanh ni&ecirc;n v&agrave; c&ocirc;ng chức tr&ecirc;n địa b&agrave;n tự nguyện viết đơn t&igrave;nh nguyện nhập ngũ.</p>', NULL, '1', 31, '2019-02-20 10:00:41', '2019-02-27 03:21:01', NULL),
(81, 'Thượng đỉnh Mỹ - Triều: Cái bắt tay có tạo đột phá hòa bình?', 'thuong-dinh-my-trieu-cai-bat-tay-co-tao-dot-pha-hoa-binh', '<p>- Cuộc gặp n&agrave;y c&oacute; vai tr&ograve; quan trọng như thế n&agrave;o?</p>\r\n\r\n<p>-&nbsp;<strong>Tiến sĩ Lim Tai Wei,&nbsp;Viện nghi&ecirc;n cứu Đ&ocirc;ng &Aacute; thuộc Đại học Quốc gia Singapore (NUS)</strong>:&nbsp;Tổng thống Donald Trump đứng trước th&aacute;ch thức phải chứng minh những người chỉ tr&iacute;ch rằng &ocirc;ng c&oacute; thể đạt được kết quả l&acirc;u d&agrave;i từ cuộc gặp n&agrave;y. Ở trong nước, &ocirc;ng đối mặt với một quốc hội do đảng D&acirc;n chủ kiểm so&aacute;t v&agrave; cần ghi điểm trước cử tri cho chiến dịch tranh cử sắp tới.</p>\r\n\r\n<p>Về ph&iacute;a &ocirc;ng Kim, đ&acirc;y l&agrave; cơ hội cđể vận động Mỹ dỡ bỏ bớt c&aacute;c trừng phạt kinh tế, v&agrave; &ocirc;ng phải c&oacute; một v&agrave;i động th&aacute;i phi hạt nh&acirc;n h&oacute;a.</p>\r\n\r\n<p>-&nbsp;<strong>Gi&aacute;o sư&nbsp;Zhu Feng, Đại học Nam Kinh </strong>: T&ocirc;i nghĩ vấn đề l&agrave; liệu c&aacute;c th&agrave;nh tựu của hội nghị c&oacute; l&agrave;m h&agrave;i l&ograve;ng cộng đồng quốc tế hay kh&ocirc;ng. C&aacute;ch tiếp cận của TT Trump đối với vấn đề Triều Ti&ecirc;n đ&atilde; thay đổi một c&aacute;ch đ&aacute;ng kể từ cuộc gặp lần trước, chẳng hạn Nh&agrave; Trắng kh&ocirc;ng c&ograve;n đ&ograve;i hỏi thời hạn cho phi hạt nh&acirc;n h&oacute;a b&aacute;n đảo Triều Ti&ecirc;n.&nbsp;</p>', 2, '1', 51, '2019-02-26 10:37:23', '2019-02-27 03:21:03', NULL),
(82, 'Thượng đỉnh Mỹ - Triều ngày 1: Gặp gỡ 20 phút và ăn tối tại Metropole', 'thuong-dinh-my-trieu-ngay-1-gap-go-20-phut-va-an-toi-tai-metropole', '<p>Theo dự kiến, hai nh&agrave; l&atilde;nh đạo sẽ ch&iacute;nh thức bắt đầu cuộc gặp thượng đỉnh v&agrave;o 18h30 tối ng&agrave;y 27/2, với địa điểm l&agrave; kh&aacute;ch sạn Sofitel Metropole Legend tr&ecirc;n phố Ng&ocirc; Quyền.</p>\r\n\r\n<p>Nh&agrave; Trắng th&ocirc;ng b&aacute;o&nbsp; Tổng thống&nbsp;Mỹ&nbsp;Donald Trump&nbsp;sẽ gặp nh&agrave; l&atilde;nh đạo&nbsp;Triều Ti&ecirc;n&nbsp;Kim Jong Un&nbsp;tại kh&aacute;ch sạn Metropole v&agrave;o l&uacute;c 18h30 (giờ H&agrave; Nội)</p>\r\n\r\n<p>Dự kiến hai nh&agrave; l&atilde;nh đạo sẽ c&oacute; buổi n&oacute;i chuyện ri&ecirc;ng k&eacute;o d&agrave;i 20 ph&uacute;t, v&agrave; sau đ&oacute; &ocirc;ng Trump v&agrave; &ocirc;ng Kim sẽ tham dự bữa ăn tối c&ugrave;ng c&aacute;c phụ t&aacute; trong v&ograve;ng hơn một tiếng rưỡi đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/sgtnrb/2019_02_26/Lichtrinh_1.jpg\" style=\"height:1590px; width:660px\" /></p>\r\n\r\n<p>Tổng thống Mỹ đặt ch&acirc;n xuống H&agrave; Nội v&agrave;o tối ng&agrave;y 26/2, &ocirc;ng Trump đăng d&ograve;ng<em>&nbsp;tweet</em>: &quot;Vừa mới tới Việt Nam. Cảm ơn tất cả mọi người về m&agrave;n ch&agrave;o đ&oacute;n tuyệt vời ở H&agrave; Nội. Đ&aacute;m đ&ocirc;ng rất nồng nhiệt v&agrave; đầy t&igrave;nh y&ecirc;u&quot;.</p>\r\n\r\n<p>Trong khi đ&oacute; &ocirc;ng Kim Jong Un đ&atilde; được đ&oacute;n tiếp từ buổi s&aacute;ng ở nh&agrave; ga Đồng Đăng, th&agrave;nh phố Lạng Sơn sau h&agrave;nh tr&igrave;nh 3.000 km từ B&igrave;nh Nhưỡng k&eacute;o d&agrave;i 3 ng&agrave;y. Nh&agrave; l&atilde;nh đạo Triều Ti&ecirc;n tiếp tục di chuyển bằng chiếc S600 Pullman để tới thủ đ&ocirc; H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 29, '2019-02-27 01:52:41', '2019-02-27 03:03:52', NULL),
(83, 'Thượng đỉnh Mỹ - ', 'thuong-dinh-my-trieu-ngay-1-gap-go-20-phut-va-an-toi-tai-metropole', '<p>Theo dự kiến, hai nh&agrave; l&atilde;nh đạo sẽ ch&iacute;nh thức bắt đầu cuộc gặp thượng đỉnh v&agrave;o 18h30 tối ng&agrave;y 27/2, với địa điểm l&agrave; kh&aacute;ch sạn Sofitel Metropole Legend tr&ecirc;n phố Ng&ocirc; Quyền.</p>\r\n\r\n<p>Nh&agrave; Trắng th&ocirc;ng b&aacute;o&nbsp; Tổng thống&nbsp;Mỹ&nbsp;Donald Trump&nbsp;sẽ gặp nh&agrave; l&atilde;nh đạo&nbsp;Triều Ti&ecirc;n&nbsp;Kim Jong Un&nbsp;tại kh&aacute;ch sạn Metropole v&agrave;o l&uacute;c 18h30 (giờ H&agrave; Nội)</p>\r\n\r\n<p>Dự kiến hai nh&agrave; l&atilde;nh đạo sẽ c&oacute; buổi n&oacute;i chuyện ri&ecirc;ng k&eacute;o d&agrave;i 20 ph&uacute;t, v&agrave; sau đ&oacute; &ocirc;ng Trump v&agrave; &ocirc;ng Kim sẽ tham dự bữa ăn tối c&ugrave;ng c&aacute;c phụ t&aacute; trong v&ograve;ng hơn một tiếng rưỡi đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/sgtnrb/2019_02_26/Lichtrinh_1.jpg\" style=\"height:1590px; width:660px\" /></p>\r\n\r\n<p>Tổng thống Mỹ đặt ch&acirc;n xuống H&agrave; Nội v&agrave;o tối ng&agrave;y 26/2, &ocirc;ng Trump đăng d&ograve;ng<em>&nbsp;tweet</em>: &quot;Vừa mới tới Việt Nam. Cảm ơn tất cả mọi người về m&agrave;n ch&agrave;o đ&oacute;n tuyệt vời ở H&agrave; Nội. Đ&aacute;m đ&ocirc;ng rất nồng nhiệt v&agrave; đầy t&igrave;nh y&ecirc;u&quot;.</p>\r\n\r\n<p>Trong khi đ&oacute; &ocirc;ng Kim Jong Un đ&atilde; được đ&oacute;n tiếp từ buổi s&aacute;ng ở nh&agrave; ga Đồng Đăng, th&agrave;nh phố Lạng Sơn sau h&agrave;nh tr&igrave;nh 3.000 km từ B&igrave;nh Nhưỡng k&eacute;o d&agrave;i 3 ng&agrave;y. Nh&agrave; l&atilde;nh đạo Triều Ti&ecirc;n tiếp tục di chuyển bằng chiếc S600 Pullman để tới thủ đ&ocirc; H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 25, '2019-02-27 01:52:54', '2019-02-27 03:02:46', NULL),
(84, 'Adding Custom Validation Rules', 'adding-custom-validation-rules', '<p>In that same file, you&rsquo;ll see the next method is rules and this where you need to define you custom validation rules. You can find a complete list of rules via the&nbsp;<a href=\"http://laravel.com/docs/5.0/validation#available-validation-rules\" target=\"_blank\">official documentation</a>. In our case, we want to keep it simple and force the name field to be required, and then each book title the user would like to purchase must be less than 10 characters in length.</p>\r\n\r\n<blockquote>You can use any logic you&rsquo;d like in the rules() method as long as you return an array.</blockquote>\r\n\r\n<p>In order to handle the dynamic fields, you will need to loop through all the posted &ldquo;items&rdquo; and add a rule for each. Here is an updated method demonstrating this:</p>', 2, '1', 16, '2019-02-27 01:53:48', '2019-04-11 09:05:11', NULL),
(85, 'Creating a new form request', 'creating-a-new-form-request', '<p>To create the Form Request class, we can utilize Artisan to have the system automatically generate the file. Open terminal and cd into your directory and then run:</p>\r\n\r\n<pre>\r\n$ php artisan make:request OrderRequest Request created successfully.</pre>\r\n\r\n<p>Next open this new file which is at the following location app/Http/Requests/OrderRequest.php. You should see this content:</p>\r\n\r\n<pre>\r\n&lt;?php namespace App\\Http\\Requests; </pre>\r\n\r\n<pre>\r\nuse App\\Http\\Requests\\Request; </pre>\r\n\r\n<pre>\r\nclass OrderRequest extends Request \r\n{ \r\n  public function authorize() \r\n  { \r\n    return false; \r\n  } </pre>\r\n\r\n<pre>\r\n  public function rules() \r\n  { \r\n    return [\r\n      //..\r\n    ]; \r\n  } \r\n}</pre>\r\n\r\n<h3>Adjust the Authorize</h3>\r\n\r\n<p>The first step is to modify the authorize() method. This method allows you to restrict access by returning true or false. For example, you could check a user group, or some other form of access and deny it if they failed to be a part of the group. Change this to return true to bypass any checks:</p>', 2, '1', 10, '2019-02-27 01:53:59', '2019-02-27 03:00:24', NULL),
(86, 'Validating a form array with Laravel', 'validating-a-form-array-with-laravel', '<p>If you&rsquo;ve used Laravel&rsquo;s form validation for any length of time, then you know it&rsquo;s a powerful system. It makes the tedious task of validation very simple while still keeping the door open for complex rules.</p>\r\n\r\n<p>In this tutorial, I want to show you a simple and easy way of validating forms that contain dynamic fields. A common use case for these types of forms is when you would like to allow a user to add more fields to a form.</p>\r\n\r\n<p>Here is a visual representation of the form:</p>', 2, '1', 16, '2019-02-27 02:26:15', '2019-02-27 02:57:07', NULL),
(87, 'Custom Validation Rules', 'custom-validation-rules', '<h3>Using Rule Objects</h3>\r\n\r\n<p>Laravel provides a variety of helpful validation rules; however, you may wish to specify some of your own. One method of registering custom validation rules is using rule objects. To generate a new rule object, you may use the&nbsp;<code>make:rule</code>&nbsp;Artisan command. Let&#39;s use this command to generate a rule that verifies a string is uppercase. Laravel will place the new rule in the&nbsp;<code>app/Rules</code>&nbsp;directory:</p>\r\n\r\n<pre>\r\n<code>php artisan make:rule Uppercase</code></pre>\r\n\r\n<p>Once the rule has been created, we are ready to define its behavior. A rule object contains two methods:&nbsp;<code>passes</code>&nbsp;and&nbsp;<code>message</code>. The&nbsp;<code>passes</code>&nbsp;method receives the attribute value and name, and should return&nbsp;<code>true</code>&nbsp;or&nbsp;<code>false</code>&nbsp;depending on whether the attribute value is valid or not. The&nbsp;<code>message</code>&nbsp;method should return the validation error message that should be used when validation fails:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 2, '1', 12, '2019-02-27 02:59:28', '2019-04-12 16:15:44', NULL),
(88, 'MẶT TÍCH CỰC VÀ CƠ HỘI PHÁ VỠ BẾ TẮC ĐÀM PHÁN MỸ TRIỀU', 'mat-tich-cuc-va-co-hoi-pha-vo-be-tac-dam-phan-my-trieu', '<p><strong>Dường như điểm bất đồng trong cuộc đ&agrave;m ph&aacute;n l&agrave; tiến tr&igrave;nh phi hạt nh&acirc;n h&oacute;a v&agrave; c&aacute;c biện ph&aacute;p trừng phạt. L&agrave;m thế n&agrave;o để ph&aacute; vỡ sự bế tắc đ&oacute;?</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trước Hội nghị Thượng đỉnh Mỹ - Triều, phần lớn những dự đo&aacute;n đều hướng đến 4 điều: tuy&ecirc;n bố kết th&uacute;c chiến tranh, th&agrave;nh lập văn ph&ograve;ng đại diện ở B&igrave;nh Nhưỡng (cũng c&oacute; thể l&agrave; Washington D.C);&nbsp;Triều Ti&ecirc;n&nbsp;&ldquo;hy sinh&rdquo; tổ hợp hạt nh&acirc;n Yongbyon để đổi lấy sự dỡ bỏ cấm vận; hai b&ecirc;n tiếp tục hợp t&aacute;c đưa binh sĩ trong chiến tranh Triều Ti&ecirc;n hồi hương.</p>\r\n\r\n<p>Tuy vậy những g&igrave; m&agrave; ch&uacute;ng ta thấy sau ng&agrave;y họp cuối c&ugrave;ng chỉ l&agrave; b&agrave;n tiệc trưa trống vắng, lễ k&yacute; kết bị hủy bỏ v&agrave; buổi họp b&aacute;o chỉ c&oacute; một nguy&ecirc;n thủ tham dự thay v&igrave; hai.</p>\r\n\r\n<p>Hẳn l&agrave; l&uacute;c n&agrave;y nhiều người bắt đầu suy đo&aacute;n về mối nguy từ việc kh&ocirc;ng c&oacute; thỏa thuận được đưa ra. Một số lo lắng quan hệ ngoại giao của hai nước sẽ rơi v&agrave;o bế tắc, kh&oacute; c&oacute; thể h&oacute;a giải được. Nhiều người lại đặt ra c&acirc;u hỏi nỗ lực ngoại giao n&agrave;y liệu c&oacute; đ&aacute;ng?</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&ocirc;ng c&oacute; thỏa thuận lại c&oacute; mặt t&iacute;ch cực của n&oacute;.</p>\r\n\r\n<p>Trong hai ng&agrave;y tại H&agrave; Nội, Mỹ v&agrave; Triều Ti&ecirc;n đ&atilde; c&oacute; cơ hội để b&agrave;y tỏ quan điểm của m&igrave;nh một c&aacute;ch r&otilde; r&agrave;ng. Thay v&igrave; đẩy nhanh tiến tr&igrave;nh đ&agrave;m ph&aacute;n để tạo ra những th&agrave;nh phẩm chắp v&aacute;, hai b&ecirc;n c&ugrave;ng ngồi xuống n&oacute;i chuyện với nhau ở cấp sự vụ để t&igrave;m ra những điểm đồng thuận chung. C&oacute; thể đối với một số người, đ&acirc;y l&agrave; sự thất bại về mặt ngoại giao nhưng thực sự n&oacute; l&agrave; thắng lợi trong tiến tr&igrave;nh.</p>\r\n\r\n<blockquote>\r\n<p>Chừng n&agrave;o Triều Ti&ecirc;n vẫn cần đến b&agrave;n đ&agrave;m ph&aacute;n để giảm nhẹ cấm vận, ch&iacute;nh quyền chủ tịch Kim sẽ kh&ocirc;ng l&agrave;m những việc nguy hại đến vị thế của m&igrave;nh.</p>\r\n</blockquote>\r\n\r\n<p>Kết quả của hội nghị hiển nhi&ecirc;n thu được những phản ứng tr&aacute;i chiều từ c&aacute;c nước trong khu vực.</p>\r\n\r\n<p>H&agrave;n Quốc&nbsp;hẳn sẽ v&ocirc; c&ugrave;ng thất vọng. Ch&iacute;nh quyền tổng thống Moon Jae-in lu&ocirc;n muốn đẩy nhanh c&aacute;c dự &aacute;n li&ecirc;n Triều nhưng một mặt vẫn tu&acirc;n thủ c&aacute;c biện ph&aacute;p trừng phạt quốc tế nhằm v&agrave;o Triều Ti&ecirc;n. Tổng thống Moon giờ đ&acirc;y c&oacute; rất &iacute;t sự lựa chọn, ngo&agrave;i việc tiếp tục đ&oacute;ng vai tr&ograve; điều phối vi&ecirc;n giữa Triều Ti&ecirc;n v&agrave; Hoa Kỳ. Ch&uacute;ng ta c&oacute; quyền hy vọng rằng nếu khả năng về một sự đột ph&aacute; quan hệ giữa hai b&ecirc;n Mỹ - Triều c&agrave;ng &iacute;t, H&agrave;n Quốc sẽ c&agrave;ng ki&ecirc;n quyết hơn trong việc th&uacute;c đẩy c&aacute;c quyết s&aacute;ch ngoại giao, thậm ch&iacute; c&oacute; thể đưa ra những nhượng bộ đơn phương lớn hơn cho Triều Ti&ecirc;n.</p>\r\n\r\n<p>Mặt kh&aacute;c, với Nhật Bản, khi ch&iacute;nh s&aacute;ch gia tăng sức &eacute;p tối đa với Triều Ti&ecirc;n chưa được x&oacute;a bỏ ho&agrave;n to&agrave;n, kết quả tại H&agrave; Nội lại c&oacute; thể khiến thủ tướng Shinzo Abe nở nụ cười. Ch&iacute;nh quyền Abe vẫn đang tiếp tục đẩy mạnh sự cần thiết của việc duy tr&igrave; &aacute;p lực với Triều Ti&ecirc;n. Quyết định của Mỹ kh&ocirc;ng dỡ bỏ c&aacute;c biện ph&aacute;p trừng phạt khi kh&ocirc;ng c&oacute; sự nhượng bộ thỏa đ&aacute;ng từ ph&iacute;a Triều Ti&ecirc;n l&agrave; sự đảm bảo cho việc duy tr&igrave; &aacute;p lực với B&igrave;nh Nhưỡng m&agrave; ch&iacute;nh quyền Abe hướng tới. V&agrave; n&oacute; c&oacute; lẽ sẽ tiếp tục tồn tại đến khi Chủ tịch Kim Jong-un tiến h&agrave;nh cải c&aacute;ch. Tuy nhi&ecirc;n, đặt trong ho&agrave;n cảnh H&agrave;n Quốc v&agrave; Mỹ tiếp tục l&ocirc;i k&eacute;o Triều Ti&ecirc;n về mặt ngoại giao, Nhật Bản cũng sẽ mở đường d&acirc;y đối thoại với Triều Ti&ecirc;n để giải quyết h&agrave;ng loạt vấn đề li&ecirc;n quan đến t&ecirc;n lửa đạn đạo tầm ngắn v&agrave; trung cũng như việc nước n&agrave;y bắt giữ c&ocirc;ng d&acirc;n Nhật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong khi đ&oacute;,&nbsp;<a href=\"https://news.zing.vn/tieu-diem/trung-quoc.html\">Trung Quốc</a>&nbsp;v&agrave;&nbsp;<a href=\"https://news.zing.vn/tieu-diem/nga.html\">Nga</a>&nbsp;đều mong chờ cấm vận được dỡ bỏ v&agrave; tuy&ecirc;n bố chấm dứt chiến tranh được đưa ra. Hai nước đ&atilde; nhiều lần k&ecirc;u gọi nới lỏng c&aacute;c lệnh trừng phạt v&agrave; th&uacute;c đẩy&nbsp;<a href=\"https://news.zing.vn/tieu-diem/hoi-dong-bao-an.html\">Hội đồng Bảo an</a>&nbsp;<a href=\"https://news.zing.vn/tieu-diem/lien-hop-quoc.html\">Li&ecirc;n Hợp Quốc</a>&nbsp;xem x&eacute;t sửa đổi c&aacute;c biện ph&aacute;p li&ecirc;n quan đến vấn đề Triều Ti&ecirc;n. Khi Hội nghị thượng đỉnh Mỹ - Triều tr&igrave; ho&atilde;n h&agrave;nh động nhằm giải quyết kh&oacute; khăn tr&ecirc;n b&aacute;n đảo Triều Ti&ecirc;n, điều quan trọng l&agrave; phải quan s&aacute;t Nga v&agrave; Trung Quốc phản ứng thế n&agrave;o với quyết định giữ vững lệnh trừng phạt của Mỹ</p>\r\n\r\n<p>&Iacute;t nhất, c&aacute;c b&ecirc;n trong khu vực vẫn c&oacute; thể mong đợi về việc giữ nguy&ecirc;n hiện trạng an ninh trong v&agrave; xung quanh b&aacute;n đảo Triều Ti&ecirc;n. Chừng n&agrave;o Triều Ti&ecirc;n vẫn cần đến b&agrave;n đ&agrave;m ph&aacute;n để giảm nhẹ cấm vận, ch&iacute;nh quyền chủ tịch Kim sẽ kh&ocirc;ng l&agrave;m những việc nguy hại đến vị thế của m&igrave;nh.</p>\r\n\r\n<p>Điều đ&oacute; c&oacute; nghĩa l&agrave; những h&agrave;nh động như thử hạt nh&acirc;n hay ph&oacute;ng t&ecirc;n lửa &iacute;t nhất sẽ kh&ocirc;ng t&aacute;i diễn. C&ugrave;ng l&uacute;c, ch&iacute;nh phủ Mỹ sẽ vẫn mở con đường ngoại giao với Triều Ti&ecirc;n bởi chi ph&iacute; chiến tranh sẽ rất đắt đỏ. Giải quyết bằng qu&acirc;n đội cũng kh&ocirc;ng phải con đường Mỹ v&agrave; Triều Ti&ecirc;n chọn lựa.</p>\r\n\r\n<p>V&agrave; giờ c&acirc;u hỏi đặt ra l&agrave; những g&igrave; sẽ chờ đợi ở ph&iacute;a trước?</p>\r\n\r\n<blockquote>\r\n<p>Hai b&ecirc;n cần tập trung v&agrave;o lợi &iacute;ch cốt l&otilde;i c&oacute; thể đạt được hơn l&agrave; vị thế cứng nhắc v&agrave; chấp nhận x&acirc;y dựng, củng cố trong thời gian d&agrave;i thay v&igrave; chiến thắng vang dội th&ocirc;ng qua cuộc gặp ngoại giao.</p>\r\n</blockquote>\r\n\r\n<p>Sau mỗi cuộc gặp bế tắc sẽ lu&ocirc;n c&oacute; một b&ecirc;n chủ động đứng ra, tiếp tục mời đ&agrave;m ph&aacute;n. Nhưng điều n&agrave;y cần thời gian. Ch&uacute;ng ta phải chờ. Thực tế, cho đến nay, cả Mỹ v&agrave; Triều Ti&ecirc;n chưa b&ecirc;n n&agrave;o khẳng định thỏa thuận đ&atilde; ho&agrave;n tất hay thỏa thuận kh&ocirc;ng thể đạt được, chỉ l&agrave; chưa thể k&yacute; kết ngay b&acirc;y giờ m&agrave; th&ocirc;i. T&oacute;m lại, kh&ocirc;ng b&ecirc;n n&agrave;o muốn chiến tranh vũ trang nhưng cả hai cần thời gian, gắn kết th&ecirc;m về mặt ngoại giao để t&igrave;m được sự đồng thuận chung.</p>\r\n\r\n<p>Dường như điểm bất đồng trong cuộc đ&agrave;m ph&aacute;n l&agrave; tiến tr&igrave;nh phi hạt nh&acirc;n h&oacute;a v&agrave; c&aacute;c biện ph&aacute;p trừng phạt. C&acirc;u hỏi được đặt ra l&agrave;: l&agrave;m thế n&agrave;o để ph&aacute; vỡ sự bế tắc đ&oacute;?</p>\r\n\r\n<p>Hai b&ecirc;n cần s&aacute;ng tạo trong việc tạo dựng vị thế của m&igrave;nh ph&ugrave; hợp với lợi &iacute;ch tr&ecirc;n b&agrave;n đ&agrave;m ph&aacute;n. V&iacute; dụ về ph&iacute;a Mỹ, buộc Triều Ti&ecirc;n trở th&agrave;nh quốc gia c&oacute; tr&aacute;ch nhiệm l&agrave; mục ti&ecirc;u cơ bản, đương nhi&ecirc;n vẫn cần th&ecirc;m những nhượng bộ để th&aacute;o gỡ hai điểm bất đồng tr&ecirc;n. C&ograve;n đối với Triều Ti&ecirc;n, ch&iacute;nh quyền được c&ocirc;ng nhận v&agrave; ph&aacute;t triển kinh tế l&agrave; những ưu ti&ecirc;n h&agrave;ng đầu - nhưng gỡ bỏ cấm vận kh&ocirc;ng phải l&agrave; con đường duy nhất để đạt được những mục ti&ecirc;u đ&oacute;.</p>\r\n\r\n<p>Thượng đỉnh Mỹ - Triều tại H&agrave; Nội kh&eacute;p lại nhưng cả hai nước vẫn c&ograve;n cơ hội t&aacute;i lập c&aacute;c cuộc đ&agrave;m ph&aacute;n ở cấp sự vụ để tạo ra c&aacute;c giải ph&aacute;p bền vững, l&acirc;u d&agrave;i m&agrave; c&aacute;c hội nghị ngoại giao kh&oacute; c&oacute; thể đạt được.</p>\r\n\r\n<p>Nếu cả Mỹ v&agrave; Triều Ti&ecirc;n đều giữ những k&ecirc;nh ngoại giao mở, hy vọng chắc chắn vẫn c&ograve;n.</p>', NULL, '1', 56, '2019-03-01 08:49:14', '2019-04-11 09:05:02', NULL),
(89, 'Từ khi nào con người lại uống sữa của các loài khác?', 'tu-khi-nao-con-nguoi-lai-uong-sua-cua-cac-loai-khac', '<h2>Phải chăng con người l&agrave; lo&agrave;i duy nhất tr&ecirc;n đời c&oacute; h&agrave;nh vi uống sữa từ c&aacute;c lo&agrave;i vật kh&aacute;c?</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kể từ khi chăn nu&ocirc;i trở th&agrave;nh ch&igrave;a kh&oacute;a then chốt cho duy tr&igrave; sự sống, th&igrave; việc uống sữa của c&aacute;c lo&agrave;i như b&ograve;... cũng trở th&agrave;nh một th&oacute;i quen ăn uống của con người.</p>\r\n\r\n<p><strong>Lịch sử &quot;Lấy sữa lo&agrave;i kh&aacute;c để uống&quot; của con người</strong></p>\r\n\r\n<p>Quay ngược thời gian trở lại 12000 &ndash; 15000 năm về trước, con người khi đ&oacute; chỉ vừa biết c&aacute;ch chăn nu&ocirc;i v&agrave; g&acirc;y giống c&aacute;c lo&agrave;i nhai lại nhỏ, điển h&igrave;nh l&agrave; d&ecirc; v&agrave; cừu.</p>\r\n\r\n<p>Đối với c&aacute;c bộ tộc du mục, việc nu&ocirc;i c&aacute;c lo&agrave;i vật n&agrave;y mang đến cho họ một nguồn gi&aacute; trị rất to lớn. L&ocirc;ng v&agrave; da được đan th&agrave;nh quần &aacute;o, xương được d&ugrave;ng l&agrave;m vũ kh&iacute; hoặc trang sức. Nhưng đặc biệt, việc nu&ocirc;i d&ecirc; v&agrave; cừu thực sự l&agrave; rất ph&ugrave; hợp với điều kiện của c&aacute;c tộc du mục thời kỳ ấy, bởi ch&uacute;ng kh&ocirc;ng đ&ograve;i hỏi qu&aacute; nhiều c&ocirc;ng sức chăm s&oacute;c.&nbsp;Ch&uacute;ng c&oacute; thể ăn bất k&igrave; thứ g&igrave; m&agrave; vẫn tồn tại được.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/cows-154544595774132705650.jpg\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 1.\" src=\"https://kenh14cdn.com/2018/12/22/cows-154544595774132705650.jpg\" /></a></p>\r\n\r\n<p>Chăn nu&ocirc;i gia s&uacute;c l&uacute;c đ&oacute; được v&iacute; như c&oacute; một chiếc kho lạnh của người xưa, v&igrave; n&oacute; cung cấp một kh&ocirc;ng gian dự trữ dinh dưỡng cho tương lai. V&agrave; trong qu&aacute; tr&igrave;nh chăn nu&ocirc;i, họ nhận ra c&aacute;c lo&agrave;i vật n&agrave;y đều nu&ocirc;i con bằng sữa, c&oacute; nghĩa l&agrave; sữa của ch&uacute;ng về mặt logic l&agrave; bổ dưỡng.</p>\r\n\r\n<p>Kể từ đ&oacute;, họ cũng&nbsp;đ&atilde; học được c&aacute;ch vắt sữa từ c&aacute;c lo&agrave;i động vật n&agrave;y để đ&aacute;p ứng nhu cầu dinh dưỡng ri&ecirc;ng. Điều n&agrave;y cũng c&oacute; &yacute; nghĩa hạn chế tập t&iacute;nh giết th&uacute; lấy thịt, bởi v&igrave; việc vắt sữa cung cấp nguồn dinh dưỡng l&acirc;u d&agrave;i hơn hẳn.</p>\r\n\r\n<p>Th&uacute; vị l&agrave; l&uacute;c ấy b&ograve; nh&agrave; chưa tồn tại, chỉ c&oacute; tổ ti&ecirc;n của ch&uacute;ng &ndash; b&ograve; Aurochs. So với b&ograve; nh&agrave; b&acirc;y giờ th&igrave; Aurochs c&oacute; k&iacute;ch thước to hơn, v&agrave; cũng l&agrave; lo&agrave;i rất hung hăng, khiến cho con người thực sự kh&oacute; khăn để thuần h&oacute;a n&oacute;. D&ugrave; sao cuối c&ugrave;ng ch&uacute;ng cũng trở n&ecirc;n bớt hoang d&atilde; hơn, ph&ugrave; hợp với sự chăn nu&ocirc;i của con người hơn, v&agrave; cuối c&ugrave;ng l&agrave; tiến h&oacute;a th&agrave;nh b&ograve; nh&agrave; b&acirc;y giờ.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/20181217212730-15454459577341009578511.png\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 2.\" src=\"https://kenh14cdn.com/2018/12/22/20181217212730-15454459577341009578511.png\" /></a></p>\r\n\r\n<p><strong>Con người &ndash; lo&agrave;i chuy&ecirc;n uống sữa lo&agrave;i kh&aacute;c ngay cả khi đ&atilde; trưởng th&agrave;nh</strong></p>\r\n\r\n<p>Thực sự th&igrave; trong thế giới động vật, ch&uacute;ng ta l&agrave; lo&agrave;i duy nhất trực tiếp uống sữa từ lo&agrave;i kh&aacute;c. Hoặc &iacute;t nhất l&agrave; lo&agrave;i duy nhất vẫn l&agrave;m vậy khi đ&atilde; trưởng th&agrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để giải th&iacute;ch được điều n&agrave;y, bạn cần hiểu hai kh&aacute;i niệm: lactase v&agrave; lactose. Lactose l&agrave; một loại đường ch&iacute;nh trong sữa. Lactase l&agrave; enzyme c&oacute; khả năng ph&aacute; vỡ c&aacute;c ph&acirc;n tử đường lactose th&agrave;nh c&aacute;c phần m&agrave; m&aacute;u c&oacute; thể hấp thụ được l&agrave; glucose v&agrave; galactose. Tất cả c&aacute;c động vật sơ sinh đều c&oacute; thể hấp thụ được sữa mẹ l&agrave; nhờ c&oacute; gen quy định enzyme lactase. V&agrave; gene n&agrave;y sẽ dần biến mất v&agrave;o khoảng thời gian cai sữa.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2018/12/22/milk-cinammon-15454460707642090721344.jpg\" target=\"_blank\"><img alt=\"Từ khi nào con người lại uống sữa của các loài khác? Hóa ra đằng sau câu chuyện uống sữa lại ẩn chứa những sự thật cực kỳ thú vị - Ảnh 4.\" src=\"https://kenh14cdn.com/2018/12/22/milk-cinammon-15454460707642090721344.jpg\" /></a></p>\r\n\r\n<p>Con người nhờ c&oacute; tiến h&oacute;a v&agrave; tập t&iacute;nh chăn nu&ocirc;i động vật lấy sữa đ&atilde; dẫn đến th&oacute;i quen uống sữa ngay cả khi đ&atilde; trưởng th&agrave;nh. Lactase persistence l&agrave; thuật ngữ để chỉ khả năng tiếp tục hoạt động của enzyme lactase ở tuổi trưởng th&agrave;nh của mỗi người, được coi l&agrave; một sự tiến h&oacute;a khi cho ph&eacute;p con người c&oacute; thể kết hợp nhiều sữa v&agrave; sản phẩm từ sữa hơn v&agrave;o chế độ ăn của m&igrave;nh.</p>\r\n\r\n<p>Chốt lại, nhu cầu dinh dưỡng, khả năng thuần h&oacute;a c&aacute;c lo&agrave;i kh&aacute;c, sự tiến h&oacute;a v&agrave; một v&agrave;i điều kiện sống (như bối cảnh du mục) l&agrave; những l&yacute; do đ&atilde; th&uacute;c đẩy con người t&igrave;m đến nguồn sữa của c&aacute;c lo&agrave;i động vật kh&aacute;c.</p>\r\n\r\n<p>Tham khảo: Science News</p>', NULL, '1', 7, '2019-03-06 07:00:03', '2019-04-12 16:35:08', NULL);

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
(159, 73, 3, '2019-03-07 03:18:15', '2019-03-07 03:18:15');

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
(11, 'Nguyễn Diệu Anh', '12345678', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Viet Nam', '2019-02-27 08:21:19', NULL, 1065960, 2, '1', 'giao hang can than nhe :D', '2019-02-27 08:21:19', '2019-02-27 08:21:19'),
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
(28, 'Tran Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, USA', '2019-03-14 03:08:24', NULL, 634000, 21, '2', NULL, '2019-03-14 03:08:24', '2019-03-14 03:08:24'),
(29, 'Tran Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-03-14 17:23:50', NULL, 1173200, 21, '2', NULL, '2019-03-14 17:23:50', '2019-03-14 17:23:50'),
(30, 'Tran Van Tung', '0975853526', 'ngocuser@gmail.cc', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, VN', '2019-03-14 17:26:18', NULL, 663000, 21, '2', NULL, '2019-03-14 17:26:18', '2019-03-14 17:26:18'),
(31, 'Tran Duy Hong', '0974521691', 'namanamnama@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-15 17:28:03', NULL, 253000, 38, '2', NULL, '2019-03-15 17:28:03', '2019-03-15 17:28:03'),
(32, 'Phan Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-03-15 17:34:36', NULL, 316000, 20, '2', NULL, '2019-03-15 17:34:36', '2019-03-15 17:34:36'),
(33, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-03-16 17:35:04', NULL, 1202500, 20, '2', NULL, '2019-03-16 17:35:04', '2019-03-16 17:35:04'),
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
(54, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-02-15 01:46:39', NULL, 42000, 2, '2', NULL, '2019-02-15 01:46:39', '2019-02-15 01:46:39'),
(55, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-02-14 01:47:01', NULL, 82000, 2, '2', NULL, '2019-02-14 01:47:01', '2019-02-14 01:47:01'),
(56, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-02-14 01:47:01', NULL, 50000, 2, '2', NULL, '2019-02-14 01:47:01', '2019-02-14 01:47:01'),
(57, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-02-14 01:47:01', NULL, 71000, 2, '2', NULL, '2019-02-14 01:47:01', '2019-02-14 01:47:01'),
(58, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-03-23 01:54:11', NULL, 42000, 2, '2', NULL, '2019-03-23 01:54:11', '2019-03-23 01:54:11'),
(59, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, HL', '2019-03-23 01:56:35', NULL, 822000, 2, '2', NULL, '2019-03-23 01:56:35', '2019-03-23 01:56:35'),
(60, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, HY', '2019-03-23 02:04:48', NULL, 429200, 1, '2', NULL, '2019-03-23 02:04:48', '2019-03-23 02:04:48'),
(61, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, HY', '2019-03-23 02:06:03', NULL, 76000, 1, '2', NULL, '2019-03-23 02:06:03', '2019-03-23 02:06:03'),
(62, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-03-24 04:45:48', NULL, 630800, 1, '2', NULL, '2019-03-24 04:45:48', '2019-03-24 04:45:48'),
(63, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-24 10:06:34', NULL, 40000, 40, '2', NULL, '2019-03-24 10:06:34', '2019-03-24 10:06:34'),
(64, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-25 03:36:23', NULL, 386400, 40, '2', NULL, '2019-03-25 03:36:23', '2019-03-25 03:36:23'),
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
(76, 'Tran Duy Hong', '0974521691', 'tranduyhong@gmail.cc', 'Long Hung, Van Giang, Hung Yen, VN', '2019-03-28 06:22:06', NULL, 265000, 36, '2', NULL, '2019-03-28 06:22:06', '2019-03-28 06:22:06'),
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
(90, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-03-31 02:36:39', NULL, 1168200, 2, '2', NULL, '2019-03-31 02:36:39', '2019-03-31 02:36:39'),
(91, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-01 02:36:39', NULL, 670720, 2, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(92, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-01 02:36:39', NULL, 700000, 2, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(93, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-01 02:36:39', NULL, 584000, 2, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(94, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, VN', '2019-04-01 02:36:39', NULL, 91000, 20, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(95, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, VN', '2019-04-01 02:36:39', NULL, 322000, 20, '2', NULL, '2019-04-01 02:36:39', '2019-04-01 02:36:39'),
(96, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-04-02 02:41:24', NULL, 378530, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(97, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-04-02 02:41:24', NULL, 958400, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(98, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-04-02 02:41:24', NULL, 491760, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(99, 'Quỳnh Như', '0975859698', 'email@email.com', 'Hung Nguyen Nghe An, NA', '2019-04-02 02:41:24', NULL, 187770, 20, '2', NULL, '2019-04-02 02:41:24', '2019-04-02 02:41:24'),
(100, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, HY', '2019-04-03 03:00:32', NULL, 281760, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(101, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, HY', '2019-04-03 03:00:32', NULL, 633770, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(102, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, HY', '2019-04-03 03:00:32', NULL, 471400, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(103, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-03 03:00:32', NULL, 256000, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(104, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-03 03:00:32', NULL, 281760, 30, '2', NULL, '2019-04-03 03:00:32', '2019-04-03 03:00:32'),
(105, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:02:15', NULL, 446760, 30, '2', NULL, '2019-04-04 03:02:15', '2019-04-04 03:02:15'),
(106, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, 2019-04-03 10:00:32', '2019-04-04 03:02:46', NULL, 356770, 30, '1', NULL, '2019-04-04 03:02:46', '2019-04-04 03:02:46'),
(107, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:03:10', NULL, 541200, 30, '1', NULL, '2019-04-04 03:03:10', '2019-04-04 03:03:10'),
(108, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:03:21', NULL, 621000, 30, '1', NULL, '2019-04-04 03:03:21', '2019-04-04 03:03:21'),
(109, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, Hung Yen', '2019-04-04 03:03:35', NULL, 354200, 30, '2', NULL, '2019-04-04 03:03:35', '2019-04-04 03:03:35'),
(110, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-04 07:21:07', NULL, 69000, 23, '2', NULL, '2019-04-04 07:21:07', '2019-04-04 07:21:07'),
(111, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-04 07:21:19', NULL, 274000, 23, '2', NULL, '2019-04-04 07:21:19', '2019-04-04 07:21:19'),
(112, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-04 07:21:33', NULL, 381200, 23, '2', NULL, '2019-04-04 07:21:33', '2019-04-04 07:21:33'),
(113, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-04 07:27:51', NULL, 69000, 23, '2', NULL, '2019-04-04 07:27:51', '2019-04-04 07:27:51'),
(114, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, Viet Nam', '2019-04-04 07:31:54', NULL, 407400, 23, '2', NULL, '2019-04-04 07:31:54', '2019-04-04 07:31:54'),
(115, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-05 04:50:48', NULL, 68000, 1, '2', 'VN', '2019-04-05 04:50:48', '2019-04-05 04:50:48'),
(116, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-06 05:27:48', NULL, 630800, 1, '2', NULL, '2019-04-06 05:27:48', '2019-04-06 05:27:48'),
(117, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-06 05:27:48', NULL, 1146600, 1, '2', NULL, '2019-04-06 05:27:48', '2019-04-06 05:27:48'),
(118, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-06 05:27:48', NULL, 935550, 1, '2', NULL, '2019-04-06 05:27:48', '2019-04-06 05:27:48'),
(119, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-07 09:57:56', NULL, 435600, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(120, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-07 09:57:56', NULL, 1573200, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(121, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-07 09:57:56', NULL, 935550, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(122, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, SkywayHowellstad', '2019-04-07 09:57:56', NULL, 586950, 42, '2', NULL, '2019-04-07 09:57:56', '2019-04-07 09:57:56'),
(123, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, Ha Noi', '2019-04-08 09:59:30', NULL, 509600, 42, '2', NULL, '2019-04-08 09:59:30', '2019-04-08 09:59:30'),
(124, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-04-08 09:59:30', NULL, 29000, 40, '2', NULL, '2019-04-08 09:59:30', '2019-04-08 09:59:30'),
(125, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-04-09 07:35:45', NULL, 464600, 40, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(126, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, VN', '2019-04-09 07:35:45', NULL, 607000, 40, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(127, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen Nghe An, VN', '2019-04-09 07:35:45', NULL, 130000, 20, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(128, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen Nghe An, VN', '2019-04-09 07:35:45', NULL, 950400, 20, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(129, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen Nghe An, VN', '2019-04-09 07:35:45', NULL, 491760, 20, '2', NULL, '2019-04-09 07:35:45', '2019-04-09 07:35:45'),
(130, 'Quỳnh Như', '0975859698', 'quynhuorange@mail.na', 'Hung Nguyen Nghe An, VN', '2019-04-10 09:04:53', NULL, 665200, 20, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(131, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-10 09:04:53', NULL, 2722500, 1, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(132, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, đahakj', '2019-04-10 09:04:53', NULL, 505000, 1, '2', 'ddad', '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(133, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-10 09:04:53', NULL, 79000, 2, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(134, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, Viet Nam', '2019-04-10 09:04:53', NULL, 171000, 2, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(135, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang,, Hưng Yên', '2019-04-10 09:04:53', NULL, 719150, 1, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
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
(146, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, USA', '2019-04-10 09:04:53', NULL, 147000, 23, '2', NULL, '2019-04-10 09:04:53', '2019-04-10 09:04:53'),
(147, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, USA', '2019-04-13 10:02:11', NULL, 308000, 30, '2', NULL, '2019-04-13 10:02:11', '2019-04-13 10:02:11'),
(148, 'Tran Anh Duong', '0975852639', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371, New Zealand', '2019-04-13 10:02:32', NULL, 613150, 30, '2', NULL, '2019-04-13 10:02:32', '2019-04-13 10:02:32'),
(149, 'Trần Giao Linh', '0975852104', 'giaolinhhy@gmail.cc', '694 Ines Drive West Jalenburgh, FL 45663, Jalenburgh', '2019-04-13 10:03:01', NULL, 495600, 36, '2', NULL, '2019-04-13 10:03:01', '2019-04-13 10:03:01'),
(150, 'Trần Giao Linh', '0975852104', 'giaolinhhy@gmail.cc', '694 Ines Drive West Jalenburgh, FL 45663, Drive West', '2019-04-13 10:03:16', NULL, 613150, 36, '2', NULL, '2019-04-13 10:03:16', '2019-04-13 10:03:16'),
(151, 'Trần Giao Linh', '0975852104', 'giaolinhhy@gmail.cc', '694 Ines Drive West Jalenburgh, FL 45663, VN', '2019-04-13 10:03:56', NULL, 261000, 36, '2', NULL, '2019-04-13 10:03:56', '2019-04-13 10:03:56'),
(152, 'Tran Duy Hong', '0974521691', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen, Singrapore', '2019-04-13 10:04:32', NULL, 336400, 38, '2', NULL, '2019-04-13 10:04:32', '2019-04-13 10:04:32'),
(153, 'Tran Duy Hong', '0974521691', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen, Viet Nam', '2019-04-13 10:05:08', NULL, 475600, 38, '2', NULL, '2019-04-13 10:05:08', '2019-04-13 10:05:08'),
(154, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, USA', '2019-04-13 10:05:37', NULL, 55000, 40, '2', NULL, '2019-04-13 10:05:37', '2019-04-13 10:05:37'),
(155, 'Đỗ Thị Hà', '0975852416', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen, Viet Nam', '2019-04-13 10:05:54', NULL, 625000, 40, '2', NULL, '2019-04-13 10:05:54', '2019-04-13 10:05:54'),
(156, 'Hong Hue', '0987193299', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169, Viet Nam', '2019-04-13 10:06:34', NULL, 605000, 42, '2', NULL, '2019-04-13 10:06:34', '2019-04-13 10:06:34'),
(157, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-14 10:06:34', NULL, 495600, 2, '2', NULL, '2019-04-14 10:06:34', '2019-04-14 10:06:34'),
(158, 'Nguyễn Diệu Anh', '0987193298', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh, VN', '2019-04-14 10:06:34', NULL, 178000, 2, '2', 'luu y', '2019-04-14 10:06:34', '2019-04-14 10:06:34'),
(159, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, Viet Nam', '2019-04-14 10:06:34', NULL, 565000, 1, '2', NULL, '2019-04-14 10:06:34', '2019-04-14 10:06:34'),
(160, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, VN', '2019-04-15 10:06:34', NULL, 619150, 1, '2', NULL, '2019-04-15 10:06:34', '2019-04-15 10:06:34'),
(161, 'Trần Tuấn Ngọc', '0975853528', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên, Viet Nam', '2019-04-15 10:06:34', NULL, 534000, 1, '2', 'giao hang can than', '2019-04-15 10:06:34', '2019-04-15 10:06:34'),
(162, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, HN', '2019-04-16 10:06:34', NULL, 150000, 57, '2', 'giao can than ', '2019-04-16 10:06:34', '2019-04-16 10:06:34'),
(163, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-16 10:06:34', NULL, 146000, 57, '2', 'giao hang', '2019-04-16 10:06:34', '2019-04-16 10:06:34'),
(164, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-17 10:06:34', NULL, 372000, 57, '2', 'ship', '2019-04-17 10:06:34', '2019-04-17 10:06:34'),
(165, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-18 10:06:34', NULL, 578500, 57, '2', 'ship', '2019-04-18 10:06:34', '2019-04-18 10:06:34'),
(166, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-18 10:06:34', NULL, 922800, 57, '2', 'ship tai nha', '2019-04-18 10:06:34', '2019-04-18 10:06:34'),
(167, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, VN', '2019-04-19 10:06:34', NULL, 747000, 57, '2', 'nha  o xa', '2019-04-19 10:06:34', '2019-04-19 10:06:34'),
(168, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-20 10:06:34', NULL, 388000, 16, '2', 'mua hang gap', '2019-04-20 10:06:34', '2019-04-20 10:06:34'),
(169, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-21 10:06:34', NULL, 198000, 16, '2', 'luu y', '2019-04-21 10:06:34', '2019-04-21 10:06:34'),
(170, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-22 10:06:34', NULL, 446760, 16, '2', 'giao hang nhanh', '2019-04-22 10:06:34', '2019-04-22 10:06:34'),
(171, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-23 10:06:34', NULL, 760000, 16, '2', 'luu y', '2019-04-23 10:06:34', '2019-04-23 10:06:34'),
(172, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-23 10:06:34', NULL, 600000, 16, '2', 'luu y', '2019-04-23 10:06:34', '2019-04-23 10:06:34'),
(173, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-24 10:06:34', NULL, 435600, 16, '2', 'mua hang', '2019-04-24 10:06:34', '2019-04-24 10:06:34'),
(174, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-24 10:06:34', NULL, 505000, 16, '2', 'mua 1sp', '2019-04-24 10:06:34', '2019-04-24 10:06:34'),
(175, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-24 10:06:34', NULL, 579150, 16, '2', 'mua sua tuoi', '2019-04-24 10:06:34', '2019-04-24 10:06:34'),
(176, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-25 10:06:34', NULL, 103000, 16, '2', 'giao hang nhanh', '2019-04-25 10:06:34', '2019-04-25 10:06:34'),
(177, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-25 10:06:34', NULL, 105000, 16, '2', 'Mua sữa tươi', '2019-04-25 10:06:34', '2019-04-25 10:06:34'),
(178, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-26 10:06:34', NULL, 700000, 16, '2', NULL, '2019-04-26 10:06:34', '2019-04-26 10:06:34'),
(179, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-27 10:06:34', NULL, 366660, 16, '2', NULL, '2019-04-27 10:06:34', '2019-04-27 10:06:34'),
(180, 'Lê Văn Dũng', '0985412345', 'dunglv@gmail.com', '765 Leon Ville Apt. 519New Talonburgh, KS 76367, ', '2019-04-29 10:06:34', NULL, 623700, 16, '2', NULL, '2019-04-29 10:06:34', '2019-04-29 10:06:34'),
(181, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-29 10:06:34', NULL, 380000, 3, '2', NULL, '2019-04-29 10:06:34', '2019-04-29 10:06:34'),
(182, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 640000, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(183, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 1099980, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(184, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 623700, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(185, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 544500, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(186, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-04-30 10:06:34', NULL, 475200, 3, '2', NULL, '2019-04-30 10:06:34', '2019-04-30 10:06:34'),
(187, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-05-01 06:29:53', NULL, 516300, 3, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(188, 'Keanu Reeves', '0389975223', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576, ', '2019-05-01 06:29:53', NULL, 512000, 3, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(189, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-01 06:29:53', NULL, 516300, 58, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(190, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-01 06:29:53', NULL, 512000, 58, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(191, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-01 06:29:53', NULL, 475200, 58, '2', NULL, '2019-05-01 06:29:53', '2019-05-01 06:29:53'),
(192, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-02 06:29:53', NULL, 544500, 58, '2', NULL, '2019-05-02 06:29:53', '2019-05-02 06:29:53'),
(193, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-02 06:29:53', NULL, 623700, 58, '2', NULL, '2019-05-02 06:29:53', '2019-05-02 06:29:53'),
(194, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-02 06:29:53', NULL, 733320, 58, '2', NULL, '2019-05-02 06:29:53', '2019-05-02 06:29:53'),
(195, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-03 06:29:53', NULL, 640000, 58, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(196, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-03 06:29:53', NULL, 760000, 58, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(197, 'Tuan Ngoc', '0385236236', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen, ', '2019-05-03 06:29:53', NULL, 623700, 58, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(198, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-03 06:29:53', NULL, 516300, 59, '2', NULL, '2019-05-03 06:29:53', '2019-05-03 06:29:53'),
(199, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-04 07:28:28', NULL, 512000, 59, '2', NULL, '2019-05-04 07:28:28', '2019-05-04 07:28:28'),
(200, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-04 07:28:28', NULL, 475200, 59, '2', NULL, '2019-05-04 07:28:28', '2019-05-04 07:28:28'),
(201, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-05-05 07:44:43', NULL, 544500, 59, '2', NULL, '2019-05-05 07:44:43', '2019-05-05 07:44:43'),
(202, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-02-09 03:16:39', NULL, 623700, 59, '2', NULL, '2019-02-09 03:16:39', '2019-02-09 03:16:39'),
(203, 'Lô Minh Đức', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-02-09 03:16:39', NULL, 686660, 59, '2', NULL, '2019-02-09 03:16:39', '2019-02-09 03:16:39'),
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
(221, 'Dan Reynolds', '0498512589', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861, ', '2019-02-21 03:16:39', NULL, 140000, 5, '2', NULL, '2019-02-21 03:16:39', '2019-02-21 03:16:39'),
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
(239, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-05-06 08:49:25', NULL, 320000, 4, '0', NULL, '2019-05-06 08:49:25', '2019-05-06 08:49:25'),
(240, 'Hà Anh Tuấn', '0975841253', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA, ', '2019-05-06 08:49:33', NULL, 380000, 4, '0', NULL, '2019-05-06 08:49:33', '2019-05-06 08:49:33'),
(241, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-23 08:58:30', NULL, 512000, 6, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(242, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-23 08:58:30', NULL, 516300, 6, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(243, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-23 08:58:30', NULL, 475200, 6, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(244, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-22 08:58:30', NULL, 544500, 6, '0', NULL, '2019-01-22 08:58:30', '2019-01-22 08:58:30'),
(245, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-22 08:58:30', NULL, 623700, 6, '0', NULL, '2019-01-22 08:58:30', '2019-01-22 08:58:30'),
(246, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 366660, 6, '0', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(247, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 320000, 6, '0', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(248, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 380000, 6, '0', 'hihi', '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(249, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 315400, 6, '0', '8 rồi', '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(250, 'Ngô Công Công', '0958963269', 'ngochicong@mail.com', '7397 Will Way Apt. 914South Stephanhaven, NM 42273-7751, ', '2019-01-21 08:58:30', NULL, 292000, 6, '0', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(251, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-20 08:58:30', NULL, 600000, 7, '0', NULL, '2019-01-20 08:58:30', '2019-01-20 08:58:30'),
(252, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-20 08:58:30', NULL, 388000, 7, '0', NULL, '2019-01-20 08:58:30', '2019-01-20 08:58:30'),
(253, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-20 08:58:30', NULL, 185000, 7, '0', NULL, '2019-01-20 08:58:30', '2019-01-20 08:58:30'),
(254, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 251000, 7, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30');
INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `address`, `input_date`, `delivery_date`, `sum_money`, `user_id`, `status`, `note`, `created_at`, `updated_at`) VALUES
(255, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 256760, 7, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(256, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-21 08:58:30', NULL, 313000, 7, '0', NULL, '2019-01-21 08:58:30', '2019-01-21 08:58:30'),
(257, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 240000, 7, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(258, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 435600, 7, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(259, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-23 08:58:30', NULL, 505000, 7, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(260, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-05-06 09:02:45', NULL, 579150, 7, '0', NULL, '2019-05-06 09:02:45', '2019-05-06 09:02:45'),
(261, 'Nguyen Huy Hop', '0985497915', 'huyhop@example.org', '57323 Zboncak FortNorth Josie, AZ 31371, ', '2019-01-19 09:02:56', NULL, 98000, 7, '0', NULL, '2019-05-06 09:02:56', '2019-05-06 09:02:56'),
(262, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-19 09:02:56', NULL, 281300, 8, '0', NULL, '2019-05-06 09:07:05', '2019-05-06 09:07:05'),
(263, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-19 09:02:56', NULL, 235000, 8, '0', NULL, '2019-05-06 09:07:12', '2019-05-06 09:07:12'),
(264, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-18 09:02:56', NULL, 512000, 8, '0', NULL, '2019-05-06 09:07:21', '2019-05-06 09:07:21'),
(265, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-18 09:02:56', NULL, 475200, 8, '0', NULL, '2019-05-06 09:07:29', '2019-05-06 09:07:29'),
(266, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-17 09:02:56', NULL, 544500, 8, '0', NULL, '2019-05-06 09:07:36', '2019-05-06 09:07:36'),
(267, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-16 09:02:56', NULL, 623700, 8, '0', NULL, '2019-05-06 09:07:43', '2019-05-06 09:07:43'),
(268, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-16 09:02:56', NULL, 366660, 8, '0', NULL, '2019-05-06 09:07:52', '2019-05-06 09:07:52'),
(269, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-16 09:02:56', NULL, 320000, 8, '0', NULL, '2019-05-06 09:07:58', '2019-05-06 09:07:58'),
(270, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-15 09:02:56', NULL, 380000, 8, '0', NULL, '2019-05-06 09:08:04', '2019-05-06 09:08:04'),
(271, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-15 09:02:56', NULL, 315400, 8, '0', 'mua ít', '2019-05-06 09:08:22', '2019-05-06 09:08:22'),
(272, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-15 09:02:56', NULL, 292000, 8, '0', 'mua ít hàng', '2019-05-06 09:08:31', '2019-05-06 09:08:31'),
(273, 'Bùi Văn Sỹ', '0985497990', 'vansybui@example.net', '276 Kristin Brooks Apt. 504South Mazieton, MA 95813, ', '2019-01-14 09:02:56', NULL, 435600, 8, '0', NULL, '2019-05-06 09:16:59', '2019-05-06 09:16:59'),
(274, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-14 09:02:56', NULL, 516300, 9, '0', NULL, '2019-05-06 09:19:04', '2019-05-06 09:19:04'),
(275, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-13 09:02:56', NULL, 512000, 9, '0', NULL, '2019-05-06 09:19:10', '2019-05-06 09:19:10'),
(276, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-12 09:02:56', NULL, 475200, 9, '0', NULL, '2019-05-06 09:19:16', '2019-05-06 09:19:16'),
(277, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-12 09:02:56', NULL, 544500, 9, '0', NULL, '2019-05-06 09:19:23', '2019-05-06 09:19:23'),
(278, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-12 09:02:56', NULL, 623700, 9, '0', NULL, '2019-05-06 09:19:29', '2019-05-06 09:19:29'),
(279, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 366660, 9, '0', NULL, '2019-05-06 09:19:36', '2019-05-06 09:19:36'),
(280, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 320000, 9, '0', NULL, '2019-05-06 09:19:43', '2019-05-06 09:19:43'),
(281, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 380000, 9, '0', NULL, '2019-05-06 09:19:50', '2019-05-06 09:19:50'),
(282, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-11 09:02:56', NULL, 601300, 9, '0', NULL, '2019-05-06 09:20:08', '2019-05-06 09:20:08'),
(283, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-10 09:02:56', NULL, 282000, 9, '0', NULL, '2019-05-06 09:20:25', '2019-05-06 09:20:25'),
(284, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-10 09:02:56', NULL, 579150, 9, '0', NULL, '2019-05-06 09:20:34', '2019-05-06 09:20:34'),
(285, 'Mai Thanh Toán', '0985485950', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673Aliachester, NJ 03064-7847, ', '2019-01-10 09:02:56', NULL, 95000, 9, '0', NULL, '2019-05-06 09:20:45', '2019-05-06 09:20:45'),
(286, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 435600, 23, '0', 'mua cho chau', '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(287, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 505000, 23, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(288, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 579150, 23, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(289, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 69000, 23, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(290, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 180000, 23, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(291, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 340000, 23, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(292, 'Tran Van Hao', '0978852320', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261, ', '2019-01-23 08:58:30', NULL, 330000, 23, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(293, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 200000, 57, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(294, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 480000, 57, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(295, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 380000, 57, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(296, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 250000, 57, '0', 'mua số lượng lớn mong được free ship', '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(297, 'Nguyen Huu Luan', '0975856260', 'nghuuluan@mail.com', '58709 Feest SkywayHowellstad, NV 27169, ', '2019-01-23 08:58:30', NULL, 185000, 57, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(298, 'Lo Minh Duc', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-01-23 08:58:30', NULL, 210000, 59, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(299, 'Lo Minh Duc', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-01-23 08:58:30', NULL, 340000, 59, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(300, 'Lo Minh Duc', '0975006960', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam, ', '2019-01-23 08:58:30', NULL, 120000, 59, '1', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(301, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-23 08:58:30', NULL, 435600, 21, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(302, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-23 08:58:30', NULL, 505000, 21, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(303, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-23 08:58:30', NULL, 579150, 21, '0', NULL, '2019-01-23 08:58:30', '2019-01-23 08:58:30'),
(304, 'Tran Thanh Tung', '0975853526', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367, ', '2019-01-09 09:02:56', NULL, 145000, 21, '0', NULL, '2019-05-06 09:48:39', '2019-05-06 09:48:39'),
(305, 'Ngoc Tran Tuan', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, ', '2019-01-09 09:02:56', NULL, 240000, 22, '0', NULL, '2019-05-06 09:52:06', '2019-05-06 09:52:06'),
(306, 'Ngoc Tran Tuan', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, ', '2019-01-08 09:02:56', NULL, 125000, 22, '0', NULL, '2019-05-06 09:52:14', '2019-05-06 09:52:14'),
(307, 'Ngoc Tran Tuan', '0975410002', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805, ', '2019-01-08 09:02:56', NULL, 680000, 22, '0', NULL, '2019-05-06 09:52:32', '2019-05-06 09:52:32'),
(308, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-08 09:02:56', NULL, 340000, 10, '0', NULL, '2019-05-06 09:54:42', '2019-05-06 09:54:42'),
(309, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-08 09:02:56', NULL, 600000, 10, '0', NULL, '2019-05-06 09:54:48', '2019-05-06 09:54:48'),
(310, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-08 09:02:56', NULL, 240000, 10, '0', NULL, '2019-05-06 09:54:55', '2019-05-06 09:54:55'),
(311, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-07 09:02:56', NULL, 235000, 10, '0', NULL, '2019-05-06 09:55:04', '2019-05-06 09:55:04'),
(312, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-07 09:02:56', NULL, 250000, 10, '0', NULL, '2019-05-06 09:55:12', '2019-05-06 09:55:12'),
(313, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-07 09:02:56', NULL, 256000, 10, '0', NULL, '2019-05-06 10:00:33', '2019-05-06 10:00:33'),
(314, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-06 09:02:56', NULL, 256760, 10, '0', NULL, '2019-05-06 10:00:41', '2019-05-06 10:00:41'),
(315, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-06 09:02:56', NULL, 123000, 10, '0', NULL, '2019-05-06 10:00:52', '2019-05-06 10:00:52'),
(316, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-05 09:02:56', NULL, 435600, 10, '0', NULL, '2019-05-06 10:01:05', '2019-05-06 10:01:05'),
(317, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-05 09:02:56', NULL, 505000, 10, '0', NULL, '2019-05-06 10:01:11', '2019-05-06 10:01:11'),
(318, 'Lâm Xung', '0971025006', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc, ', '2019-01-05 09:02:56', NULL, 579150, 10, '0', NULL, '2019-05-06 10:01:18', '2019-05-06 10:01:18');

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
(540, 1, 585000, 1, 29, 318, '2019-05-06 10:01:18', '2019-05-06 10:01:18');

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
(1, 'Sữa Nan Nga số 1 (800g)', 'sua-nan-nga-so-1-800g', 290000, 3, NULL, NULL, NULL, NULL, 'Nan', '<p>Vi khuẩn biphidum BL tăng cường khả năng miễn dịch cho trẻ nhỏ DHA ch&iacute;nh l&agrave; (omega 3) v&agrave; ARA (omega 6) ph&aacute;t triển n&atilde;o bộ, thị gi&aacute;c Chất đạm OPTIPRO ph&aacute;t triển chiều cao tối đa</p>', '<p>Sữa bột Nan Nga số 1 800g để b&eacute; ph&aacute;t triển to&agrave;n diện Sữa bột Nan Nga số 1 800g hộp lớn l&agrave; sữa bột cho b&eacute; y&ecirc;u được chế biến theo c&ocirc;ng thức d&agrave;nh cho trẻ sơ sinh để đảm bảo tăng trưởng l&agrave;nh mạnh cho b&eacute; từ khi mới sinh. Trong th&agrave;nh phần c&oacute; chứa Bifidus BL l&agrave; 1 loại probiotic tự nhi&ecirc;n được t&igrave;m thấy trong sữa mẹ gi&uacute;p hỗ trợ một hệ thực vật đường ruột khỏe mạnh v&agrave; c&acirc;n bằng hệ miễn dịch. C&aacute;ch pha: 30ml nước/ 1 th&igrave;a bột (th&igrave;a c&oacute; sẵn trong hộp). Sản phẩm đ&oacute;ng hộp 800gr D&agrave;nh cho b&eacute; 0-6 th&aacute;ng tuổi</p>', 3, 7, '1', 85, 20, 27, '2019-02-11 23:29:18', '2019-05-06 09:20:08', NULL),
(2, 'Sữa Nan Supreme số 2 800g Thụy Sĩ', 'sua-nan-supreme-so-2-800g-thuy-si', 292000, 0, NULL, NULL, NULL, NULL, 'Nan', '<p>Bổ sung 31 dưỡng chất gi&uacute;p trẻ ph&aacute;t triển to&agrave;n diện Chứa HMO tăng cường sức đề kh&aacute;ng của trẻ Chứa DHA v&agrave; ARA ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực 800g d&agrave;nh cho b&eacute; từ 6-24 th&aacute;ng tuổi</p>', '<p>Sữa Nan Supreme số 2 800g Thụy Sĩ ph&ograve;ng ngừa dị ứng cho trẻ Sữa Nan Supreme số 2 800g Thụy Sĩ bổ sung 2FL HM-O gi&uacute;p tăng cường hệ miễn dịch gi&uacute;p b&eacute; ph&aacute;t triển khỏe mạnh Đ&acirc;y l&agrave; d&ograve;ng sữa c&ocirc;ng thức được chứng nhận an to&agrave;n cho trẻ bởi EFSA (Ủy ban An To&agrave;n Thực Phẩm Ch&acirc;u &Acirc;u) v&agrave; FDA (Cục Quản l&yacute; Thực phẩm v&agrave; Dược Phẩm Hoa Kỳ) Đặc biệt trong sữa c&oacute; bổ sung th&agrave;nh phần HMO (Oligosaccharides chỉ t&igrave;m thấy trong sữa mẹ) gi&uacute;p tăng cường sức đề kh&aacute;ng cho b&eacute; y&ecirc;u Sữa Nan Supreme số 2 800g Thụy Sĩ c&oacute; 100% đạm whey thủy ph&acirc;n một phần ph&ograve;ng ngừa nguy cơ dị ứng cho trẻ Sản phẩm được nhập khẩu ch&iacute;nh h&atilde;ng từ Đức</p>', 3, 7, '1', 92, 16, 20, '2019-02-11 23:20:19', '2019-05-06 09:08:31', NULL),
(3, 'Sữa Nan Supreme số 1 400g Thụy Sĩ', 'sua-nan-supreme-so-1-400g-thuy-si', 332000, 5, NULL, NULL, NULL, NULL, 'Nan', '<p>Bổ sung 31 dưỡng chất gi&uacute;p trẻ ph&aacute;t triển to&agrave;n diện Chứa HMO tăng cường sức đề kh&aacute;ng của trẻ Chứa DHA v&agrave; ARA ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực 800g d&agrave;nh cho b&eacute; từ 6-24 th&aacute;ng tuổi</p>', '<p>Sữa Nan Supreme số 1 400g Thụy Sĩ ph&ograve;ng ngừa dị ứng cho trẻ Sữa Nan Supreme số 1 400g Thụy Sĩ bổ sung 2FL HM-O gi&uacute;p tăng cường hệ miễn dịch gi&uacute;p b&eacute; ph&aacute;t triển khỏe mạnh Sản phẩm l&agrave; d&ograve;ng sữa c&ocirc;ng thức được chứng nhận an to&agrave;n cho trẻ bởi FDA (Cục Quản l&yacute; Thực phẩm v&agrave; Dược Phẩm Hoa Kỳ) v&agrave; EFSA (Ủy ban An To&agrave;n Thực Phẩm Ch&acirc;u &Acirc;u) Sữa bổ sung HMO (Oligosaccharides trong sữa mẹ) l&agrave; th&agrave;nh phần đặc biệt chỉ được t&igrave;m thấy trong sữa mẹ gi&uacute;p tăng cường sức đề kh&aacute;ng cho b&eacute; y&ecirc;u Sữa Nan Supreme số 1 400g Thụy Sĩ c&oacute; 100% đạm whey thủy ph&acirc;n một phần ph&ograve;ng ngừa nguy cơ dị ứng cho trẻ Sản phẩm được nhập khẩu ho&agrave;n to&agrave;n từ Đức</p>', 3, 7, '1', 85, 43, 33, '2019-02-11 23:20:20', '2019-05-06 09:08:22', NULL),
(4, 'Sữa Abbott Grow Gold 6+ hương vani 900g', 'sua-abbott-grow-gold-6-huong-vani-900g', 380000, 0, NULL, NULL, NULL, NULL, 'Abbott', '<p>Hệ dưỡng chất ti&ecirc;n tiến Growth Power hỗ trợ ti&ecirc;u h&oacute;a, ph&aacute;t triển vượt trội Ph&aacute;t triển n&atilde;o bộ, tăng cường tr&iacute; nhớ Gi&uacute;p b&eacute; lu&ocirc;n khỏe mạnh, ph&aacute;t triển chiều cao 900g d&agrave;nh cho b&eacute; từ 5 tuổi trở l&ecirc;n Thương hiệu Abbott Hoa Kỳ</p>', '<p>Sữa Abbott Grow Gold 6+ hương vani 900g Từ 6 tuổi trở l&ecirc;n, b&eacute; cần một hệ dưỡng chất mới để vừa đ&aacute;p ứng đủ nhu cầu dinh dưỡng h&agrave;ng ng&agrave;y cho hoạt động thể chất m&agrave; c&ograve;n cần phải k&iacute;ch th&iacute;ch sự ph&aacute;t triển của n&atilde;o bộ, khả năng s&aacute;ng tạo của trẻ nữa. Sữa bột c&ocirc;ng thức Abbott Grow Gold 6+ với hệ dưỡng chất ti&ecirc;n tiến Growth Power chứa h&oacute;a 30 dưỡng chất gồm cả DHA, Cholin, v&agrave; h&agrave;m lượng Canxi tối ưu, đ&aacute;p ứng đầy đủ nhu cầu dinh dưỡng, hỗ trợ sự tăng trưởng v&agrave; ph&aacute;t triển vượt trội của trẻ trong suốt giai đoạn đến trường.</p>', 9, 2, '1', 85, 22, 27, '2019-02-11 23:20:21', '2019-05-06 09:19:50', NULL),
(5, 'Sữa Abbott Grow 4 hương Vani 900g', 'sua-abbott-grow-4-huong-vani-900g', 320000, 0, NULL, NULL, NULL, NULL, 'Abbott', '<p>H&agrave;m lượng canxi v&agrave; vitamin D cao hỗ trợ ph&aacute;t triển chiều cao tối ưu H&agrave;m lượng DHA, Taurin, Omega 9 gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c. Tăng cường sức đề kh&aacute;ng trẻ nhỏ D&agrave;nh cho b&eacute; tr&ecirc;n 2 tuổi Hương vani 900g - Hoa Kỳ</p>', '<p>Sữa bột cho b&eacute; Abbott Grow 4 hương Vani 900g d&agrave;nh cho c&aacute;c b&eacute; từ 2 tuổi trở l&ecirc;n Nguy&ecirc;n liệu Sữa Abbott grow 4 to&agrave;n phần bổ sung lecithin v&agrave; sữa t&aacute;ch kem (58,3%), mật bắp, sucrose, lactose, KHO&Aacute;NG CHẤT (canxi carbonat, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat), VITAMIN (acid ascorbic, cholin bitartrat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat, pyridoxin hydroclorid, canxi pantothenat, thiamin hydroclorid, vitamin K1, riboflavin, acid folic, d-biotin), hương vani, dầu c&aacute; (nguồn cung cấp DHA), taurin.</p>', 9, 2, '1', 82, 22, 28, '2019-02-11 23:20:22', '2019-05-06 09:20:08', NULL),
(6, 'Sữa Abbott Grow Gold 3+ hương Vani 900g', 'sua-abbott-grow-gold-3-huong-vani-900g', 378000, 3, NULL, NULL, NULL, NULL, 'Abbott', '<p>Hệ dưỡng chất ti&ecirc;n tiến G Power+ gi&agrave;u dưỡng chất v&agrave; protein Gi&agrave;u vitamin D, Canxi, phốt pho tốt cho xương, ph&aacute;t triển chiều cao DHA, Taurin, Cholin, kẽm, sắt, đồng, I ốt,...tố cho n&atilde;o bộ v&agrave; thị gi&aacute;c Trọng lượng 900g - Hoa Kỳ D&agrave;nh cho b&eacute; từ 3-6 tuổi</p>', '<p>Sữa bột cho b&eacute; Abbott Grow Gold 3+ hương Vani 900g Nguy&ecirc;n liệu Sữa t&aacute;ch kem v&agrave; sữa nguy&ecirc;n kem bổ sung lecithin (60,3%), lactose, sucrose, mật bắp, KHO&Aacute;NG CHẤT (tricanxi phosphat, sắt sulfat, kẽm sulfat, đồng sulfat, mangan sulfat, natri selenat), hỗn hợp inulin v&agrave; fructo-oligosaccharid, hương vani, VITAMIN (cholin bitartrat, natri ascorbat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat, canxi pantothenat, pyridoxin hydroclorid, thiamin hydroclorid, acid folic, vitamin K1, d-biotin, cyanocobalamin), dầu c&aacute; tinh chế (nguồn cung cấp DHA), taurin.</p>', 9, 2, '1', 84, 25, 28, '2019-02-11 23:20:23', '2019-05-06 09:19:36', NULL),
(7, 'Sữa Enfamil Premium Infant Formula (0-12 tháng)', 'sua-enfamil-premium-infant-formula-0-12-thang', 630000, 1, NULL, NULL, NULL, NULL, 'Enfa', '<p>Bổ sung DHA, sắt, choline tốt cho tr&iacute; n&atilde;o v&agrave; thị lực của trẻ Vitamin v&agrave; kho&aacute;ng chất gi&uacute;p b&eacute; ph&aacute;t triển to&agrave;n diện về thể chất v&agrave; tinh thần S&aacute;nh vừa đủ, thơm ngon, kh&ocirc;ng ngấy D&agrave;nh cho b&eacute; từ 0-12 th&aacute;ng tuổi Trọng lượng: 629g</p>', '<p>Sữa cho b&eacute; Enfamil Premium Infant Formula (0-12 th&aacute;ng) Sản phẩm kết hợp c&ocirc;ng thức độc quyền Neuro Complete c&ugrave;ng với c&aacute;c loại vitamin v&agrave; kho&aacute;ng chất của b&eacute; l&agrave; DHA, sắt, choline đem tốt cho n&atilde;o bộ v&agrave; thị lực của trẻ nhỏ Sữa bột cho b&eacute; Enfamil Premium Infant Formula (0-12 th&aacute;ng) l&agrave; nguy&ecirc;n liệu hết sức thần khiết mẹ kh&ocirc;ng lo b&eacute; bị dị ứng khi uống..</p>', 6, 5, '1', 87, 18, 26, '2019-02-11 23:20:24', '2019-05-06 09:19:29', NULL),
(8, 'Sữa Enfagrow Premium Toddler Next Step (1-3 tuổi)', 'sua-enfagrow-premium-toddler-next-step-1-3-tuoi', 550000, 1, NULL, NULL, NULL, NULL, 'Enfa', '<p>Bổ sung 22 kho&aacute;ng chất hỗ trợ tăng trưởng l&agrave;nh mạnh Sữa bổ sung Omega 3 DHA v&agrave; cắt tốt cho n&atilde;o bộ Tăng sức đề kh&aacute;ng, chống t&aacute;c nh&acirc;n oxy h&oacute;a nhờ vitamin C v&agrave; E Trọng lượng: 680g</p>', '<p>Sữa bột cho b&eacute; Enfagrow Premium Toddler Next Step (1-3 tuổi) Nh&igrave;n b&eacute; chập chững những bước đi đầu ti&ecirc;n cũng như bắt đầu bập bẹ gọi tiếng ba, m&aacute; l&agrave; niềm vui v&ocirc; bờ bến của những người l&agrave;m cha l&agrave;m mẹ. Giai đoạn n&agrave;y rơi v&agrave;o độ tuổi từ 1-3 v&agrave; cũng l&agrave; l&uacute;c b&eacute; cần bổ sung dinh dưỡng v&agrave; năng lượng cần thiết để ph&aacute;t triển chiều cao, c&acirc;n nặng tối đa bắt kịp đ&agrave; ph&aacute;t triển của c&aacute;c b&eacute; c&ugrave;ng trang lưa. Ch&iacute;nh v&igrave; thế, thương hiệu Mead Johnson đ&atilde; nghi&ecirc;n cứu th&agrave;nh c&ocirc;ng sản phẩm sữa đ&aacute;p ứng đủ năng lượng cho hoạt động v&agrave; ph&aacute;t triển h&agrave;ng ng&agrave;y đ&oacute; l&agrave; sữa bột cho b&eacute; Enfagrow Premium Toddler Next Step (1-3 year) 680g.</p>', 6, 5, '1', 84, 46, 30, '2019-02-11 23:20:25', '2019-05-06 09:19:23', NULL),
(9, 'Sữa Enfagrow A+ 360° Brain DHA số 4 (1.8kg)', 'sua-enfagrow-a-3600-brain-dha-so-4-18kg', 495000, 4, NULL, NULL, NULL, NULL, 'Enfa', '<p>D&agrave;nh cho b&eacute; từ 2 - 6 tuổi Tăng th&ecirc;m 40% h&agrave;m lượng DHA Bổ sung MFGM Pro gi&uacute;p b&eacute; ph&aacute;t triển tr&iacute; n&atilde;o tốt hơn cả về TƯ DUY v&agrave; CẢM X&Uacute;C Hỗ trợ hệ miễn dịch 3 chiều Dễ hấp thụ v&agrave; ti&ecirc;u h&oacute;a tốt.</p>', '<p>Sữa bột dinh dưỡng Enfagrow A+ 360&deg; Brain DHA số 4 (1.8kg) Độ tuổi sử dụng: C&aacute;c b&eacute; từ 2-6 tuổi.</p>', 6, 5, '1', 83, 29, 29, '2019-02-11 23:20:26', '2019-05-06 09:19:17', NULL),
(10, 'Sữa Enfagrow A+ 360° Brain DHA số 3 (900g)', 'sua-enfagrow-a-3600-brain-dha-so-3-900g', 512000, 0, NULL, NULL, NULL, NULL, 'Enfa', '<p>D&agrave;nh cho b&eacute; từ 1-3 tuổi Bổ sung MFGM Pro gi&uacute;p b&eacute; ph&aacute;t triển tr&iacute; n&atilde;o tốt hơn cả về TƯ DUY v&agrave; CẢM X&Uacute;C Hỗ trợ hệ miễn dịch 3 chiều Dễ hấp thụ v&agrave; ti&ecirc;u h&oacute;a tốt.</p>', '<p>Sữa Enfagrow A+ 360&deg; Brain DHA số 3 (900g) Th&agrave;nh phần: Bột bơ sữa (nguồn của MGFM), bột kem (dầu hạt cải, chất rắn glucose, dầu hướng dương, lactose, dầu dừa, dầu đậu n&agrave;nh, đạm bơ c&ocirc; đặc, mono v&agrave; diglycerides, kali citrat, đạm sữa c&ocirc; lập, natri ascorbat, kali phosphat, ascorbyl palmitat, vitamin E v&agrave; lecithin đậu n&agrave;nh), Siro mật bắp (thực vật), sữa bột kh&ocirc;ng b&eacute;o, sữa bột nguy&ecirc;n kem, đường sucrose (thực vật), galactooligosaccharide, polydextrose, c&aacute;c kho&aacute;ng chất (canxi carbonat, đồng sulphat, magie phốtphat, kẽm sulphat, sắt sulphat, mangan sulphat, kali i-ot v&agrave; kali citrat), hương vani tổng hợp, c&aacute;c vitamin cần thiết (vitamin A palmitat, vitamin B1, B6, vitamin B12, vitamin C, vitamin D, vitamin K, vitamin E, biotin, canxi phanthothenat, choline bitartrate, acid folic, vitamin PP, vitamin K), dầu c&aacute; l&aacute; nguồn của Axit Docosahexaenoic (DHA), beta-glucan từ men, taurine v&agrave; c&aacute;c chất chống oxy h&oacute;a (Axit ascobic).</p>', 6, 5, '1', 85, 21, 25, '2019-02-11 23:20:27', '2019-05-06 09:19:10', NULL),
(11, 'Sữa Enfamil A+ Lactofree Care hộp 400g', 'sua-enfamil-a-lactofree-care-hop-400g', 235000, 0, '', '', '', '', 'Enfa', '<p>Kh&ocirc;ng chứa đường lactose Chứa đạm nguồn gốc sữa b&ograve; H&agrave;m lượng DHA khuyến nghị của c&aacute;c chuy&ecirc;n gia D&agrave;nh cho b&eacute; từ 0 - 12 th&aacute;ng tuổi.</p>', '<p>Sữa Enfamil A+ Lactofree Care hộp 400g gi&uacute;p b&eacute; ph&aacute;t triển thể chất v&agrave; sức khỏe to&agrave;n diện Được đặc chế cho trẻ bị ti&ecirc;u chảy do bất (kh&ocirc;ng) dung nạp lactose. Đ&acirc;y l&agrave; sản phẩm dinh dưỡng đặc biệt với đạm sữa b&ograve; v&agrave; kh&ocirc;ng chứa lactose. Được đặc chế hỗ trợ ph&aacute;t triển tr&iacute; tuệ v&agrave; thị lực ở trẻ nhỏ do chứa DHA &amp; ARA. H&agrave;m lượng của DHA trong sản phẩm gi&uacute;p đạt khuyến nghị của FAO/WHO cho trẻ 0-12 th&aacute;ng sinh đủ th&aacute;ng.</p>', 6, 5, '1', 84, 20, 27, '2019-02-11 23:20:28', '2019-05-06 09:19:04', NULL),
(13, 'Sữa tươi uống', 'sua-tuoi-uong', 123000, 0, NULL, NULL, NULL, NULL, 'Meiji', '<p>&ocirc; tả ngắn</p>', '<p>ới thiệu sản phẩm</p>', 1, 3, '1', 89, 13, 21, '2019-02-13 00:04:29', '2019-05-06 10:00:52', NULL),
(14, 'Sữa hạt óc chó', 'sua-hat-oc-cho', 262000, 2, NULL, NULL, NULL, NULL, 'Meiji', '<p>M&ocirc; tả ngắn&nbsp;Sữa hạt &oacute;c ch&oacute; 2</p>', '<p>Giới thiệu sản phẩm&nbsp;Sữa hạt &oacute;c ch&oacute; 2</p>', 1, 6, '1', 85, 18, 26, '2019-02-13 07:57:30', '2019-05-06 10:00:41', NULL),
(16, 'Sữa tươi TH 2019', 'sua-tuoi-th-2019', 150000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>Sữa tươi TH 2019</p>', '<p>Sữa tươi TH 2019</p>', 16, 1, '0', 100, 13, 14, '2019-02-22 08:57:44', '2019-04-24 02:48:39', NULL),
(17, 'Sữa Tươi True Global', 'sua-tuoi-true-global', 190000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>Sữa Tươi True Global</p>', '<p>Sữa Tươi True Global</p>', 16, 1, '1', 86, 41, 33, '2019-02-22 08:58:41', '2019-05-06 10:00:33', NULL),
(18, 'Lốc 6 Hộp Sữa Nguyên Kem Devondale FullCream (200ml / Hộp)', 'loc-6-hop-sua-nguyen-kem-devondale-fullcream-200ml-hop', 66000, 0, NULL, NULL, NULL, NULL, 'TH', '<p>100% sữa tươi nguy&ecirc;n chất của &Uacute;c</p>\r\n\r\n<p>Kh&ocirc;ng chứa chất bảo quản an to&agrave;n cho sức khỏe</p>\r\n\r\n<p>Bổ sung dinh dưỡng, vitamin, canxi, chất b&eacute;o...</p>\r\n\r\n<p>Ph&ugrave; hợp cho mọi lứa tuổi, đặc biệt l&agrave; trẻ em, người gi&agrave;</p>', '<ul>\r\n	<li><strong>Lốc 6 Hộp Sữa Nguy&ecirc;n Kem Devondale FullCream (200ml / Hộp)</strong>&nbsp;l&agrave; thực phẩm&nbsp;rất gi&agrave;u dinh dưỡng, gi&agrave;u vitamin v&agrave; kho&aacute;ng chất từ thi&ecirc;n nhi&ecirc;n, &iacute;t b&eacute;o, rất tốt cho cơ thể.&nbsp;Sữa nguy&ecirc;n kem với tất cả chất dinh dưỡng tự nhi&ecirc;n mang hương vị thơm ngon, b&eacute;o ngậy sẽ khiến cả gia đ&igrave;nh y&ecirc;u th&iacute;ch.</li>\r\n	<li>Sữa tươi nguy&ecirc;n chất 100% được xử l&yacute; bằng c&ocirc;ng nghệ&nbsp;tiệt tr&ugrave;ng&nbsp;v&agrave; đồng ho&aacute;.</li>\r\n	<li>Sản phẩm được nhập khẩu trực tiếp với chất lượng &Uacute;c.</li>\r\n	<li>Nguồn cung cấp Canxi, Protein v&agrave; Vitamin A.</li>\r\n	<li>Kh&ocirc;ng c&oacute; chất bảo quản, kh&ocirc;ng chất phụ gia an to&agrave;n cho sức khỏe.</li>\r\n</ul>', 16, 12, '1', 73, 43, 43, '2019-03-01 08:46:59', '2019-05-06 10:00:33', NULL),
(19, 'Kem Sữa Đặc Có Đường Carnation Tuýp (180g)', 'kem-sua-dac-co-duong-carnation-tuyp-180g', 25000, 0, NULL, NULL, NULL, NULL, 'Nestlé', '<p>Dạng Tu&yacute;p độc đ&aacute;o</p>\r\n\r\n<p>Dễ d&agrave;ng sử dụng, bảo quản</p>\r\n\r\n<p>Ph&ugrave; hợp sử dụng cho c&aacute;c hoạt động d&atilde; ngoại, picnic</p>\r\n\r\n<p>Bổ sung Vitamin A, B1, D3</p>', '<ul>\r\n	<li><strong>Kem Sữa Đặc C&oacute; Đường Carnation Tu&yacute;p (180g)</strong>&nbsp;ph&ugrave; hợp cho người lớn v&agrave; trẻ em từ 1 tuổi trở l&ecirc;n với 1 - 2 khẩu phần (30g) Carnation mỗi ng&agrave;y.</li>\r\n	<li>Th&agrave;nh phần: Đường (47%), nước, sữa bột t&aacute;ch kem, dầu cọ, bột whey, c&aacute;c vitamin (A, B1, D3), chất ổn định (407a, 341(iii)).</li>\r\n	<li>Sản phẩm c&oacute; chứa sữa.</li>\r\n	<li>Khối lượng tịnh: 180 g</li>\r\n	<li>Hướng dẫn sử dụng: Creamer đặc c&oacute; đường Carnation được c&oacute; thể sử dụng trực tiếp hoặc d&ugrave;ng để pha chế c&aacute;c m&oacute;n ăn, đồ uống.</li>\r\n	<li>Hướng dẫn bảo quản: bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Sau khi mở tu&yacute;p n&ecirc;n đậy k&iacute;n nắp, bảo quản trong tủ lạnh.</li>\r\n	<li>NSX: 9 th&aacute;ng trước hạn sử dụng.</li>\r\n	<li>HSD: Xem &ldquo;BB&rdquo; tr&ecirc;n bao b&igrave; sản phẩm.</li>\r\n	<li>Ch&uacute; &yacute;: Kh&ocirc;ng sử dụng sản phẩm cho trẻ sơ sinh v&agrave; kh&ocirc;ng d&ugrave;ng để thay thế sữa mẹ.</li>\r\n	<li>Kh&ocirc;ng sử dụng cho người dị ứng với c&aacute;c th&agrave;nh phần của sản phẩm.</li>\r\n	<li>Sản xuất bởi: F&amp;N Dairies (Thailand) Limited. 668 Moo 4 Rojana Industrial park Zone 2, U-thai, Phra Nakhon Si Ayutthaya 13210, Th&aacute;i Lan.</li>\r\n</ul>', 19, 1, '1', 42, 58, 60, '2019-03-05 09:29:34', '2019-05-06 09:55:12', NULL),
(20, 'Combo 15 hộp Sữa đặc MILKO - Sữa nhập khẩu MALAYSIA', 'combo-15-hop-sua-dac-milko-sua-nhap-khau-malaysia', 160000, 0, NULL, NULL, NULL, NULL, 'Milko', '<p>Milko l&agrave; thương hiệu sữa đặc nổi tiếng ở Malaysia</p>\r\n\r\n<p>Sản phẩm c&oacute; sự kh&aacute;c biệt so với c&aacute;c sản d&ograve;ng sữa đặc kh&aacute;c tr&ecirc;n thị trường bởi vị ngọt thanh, kh&ocirc;ng tạo cảm gi&aacute;c ng&aacute;n, qu&aacute; ngọt cho khi sử dụng; giữ được hương thơm tự nhi&ecirc;n của sữa.</p>\r\n\r\n<p>Sản phẩm th&iacute;ch hợp để ăn k&egrave;m với b&aacute;nh m&igrave;, l&agrave;m sữa chua, l&agrave;m c&aacute;c loại b&aacute;nh, pha lo&atilde;ng để uống...</p>', '<p>Sữa đặc MILKO</p>\r\n\r\n<p>- Sản phẩm được sản xuất bởi c&ocirc;ng ty: Promac Enterpries SND BHD, Kuala Lumper, Malaysia</p>\r\n\r\n<p>- Milko l&agrave; thương hiệu sữa đặc nổi tiếng ở Malaysia, sản phẩm c&oacute; sự kh&aacute;c biệt so với c&aacute;c sản d&ograve;ng sữa đặc kh&aacute;c tr&ecirc;n thị trường bởi vị ngọt thanh, kh&ocirc;ng tạo cảm gi&aacute;c ng&aacute;n, qu&aacute; ngọt cho khi sử dụng; giữ được hương thơm tự nhi&ecirc;n của sữa.</p>\r\n\r\n<p>- Sản phẩm được c&ocirc;ng ty CP Sản xuất, Thương mại &amp; Dịch vụ Ph&uacute;c Thịnh nhập khẩu trực tiếp từ Malaysia v&agrave; ph&acirc;n phối tại thị trường Việt Nam.</p>\r\n\r\n<p>- Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>+ Khối lượng: 390ml/hộp</p>\r\n\r\n<p>+ Hạn sử dụng: 11/2019</p>\r\n\r\n<p>+ Bao b&igrave;: Lon thiếc (sản phẩm đạt quy chuẩn kỹ thuật quốc gia)</p>\r\n\r\n<p>+ Th&agrave;nh phần: Sữa kh&ocirc;ng b&eacute;o nguy&ecirc;n chất (10%), Đường, nước, chất b&eacute;o thực vật, chất chống đ&ocirc;ng v&oacute;n, mononatri orthophosphat, Vitamin A, D3, B1</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/93/84/88/e58a239abc7a3272e6af122efc897c42.jpg\" style=\"height:333px; width:250px\" /></p>', 19, 1, '1', 84, 17, 16, '2019-03-05 09:31:11', '2019-05-06 09:55:04', NULL),
(21, 'Cà Phê Sữa Đặc Archcafé (12 gói x 18g)', 'ca-phe-sua-dac-archcafe-12-goi-x-18g', 48000, 0, NULL, NULL, NULL, NULL, 'Archcafé', '<ul>\r\n	<li>Kh&ocirc;ng chỉ l&agrave; thức uống m&agrave; c&ograve;n l&agrave; nghệ thuật pha chế</li>\r\n	<li>Vị ngọt-đắng dịu d&agrave;ng</li>\r\n	<li>Thưởng thức tinh hoa của nghệ thuật ẩm thực</li>\r\n	<li>Sản phẩm kh&ocirc;ng chứa hương, m&agrave;u nh&acirc;n tạo</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&agrave; Ph&ecirc; Sữa Đặc Archcaf&eacute; (12 g&oacute;i x 18g)</strong>&nbsp;kh&ocirc;ng chỉ l&agrave; thức uống m&agrave; c&ograve;n l&agrave; nghệ thuật pha chế từ sữa đặc sấy dạng bột nhập khẩu từ Đức, h&ograve;a quyện c&ugrave;ng c&agrave; ph&ecirc; Việt Nam cho vị ngọt-đắng dịu d&agrave;ng m&agrave; bạn chỉ c&oacute; thể t&igrave;m thấy ở Archcaf&eacute;.</li>\r\n	<li>Thưởng thức Archcaf&eacute; c&agrave; ph&ecirc; sữa đặc thưởng thức tinh hoa của nghệ thuật ẩm thực đường phố Việt Nam.&nbsp;Archcaf&eacute; - Authentic Vietnamese Coffee.<br />\r\n	Sản phẩm kh&ocirc;ng chứa hương, m&agrave;u nh&acirc;n tạo.&nbsp;</li>\r\n	<li>C&agrave; ph&ecirc; sữa Việt Nam từ l&acirc;u đ&atilde; được người Việt v&agrave; nước ngo&agrave;i ưa chuộng v&igrave; vị ngon tuyệt của sữa đặc b&eacute;o ngọt v&agrave; c&agrave; ph&ecirc; đắng nhẹ.</li>\r\n</ul>', 19, 12, '1', 64, 38, 37, '2019-03-05 09:32:22', '2019-05-06 09:54:55', NULL),
(22, 'Thùng 24 Hộp Sữa Óc Chó Golden Milk (190ml x 24 Hộp)', 'thung-24-hop-sua-oc-cho-golden-milk-190ml-x-24-hop', 340000, 0, NULL, NULL, NULL, NULL, 'Golden Milk', '<p>Ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; hệ thần kinh</p>\r\n\r\n<p>Hỗ trợ ph&aacute;t triển chiều cao tối đa</p>\r\n\r\n<p>Ngăn ngừa l&atilde;o h&oacute;a &ndash; Cho vẻ đẹp rạng ngời</p>\r\n\r\n<p>Cho hệ tim mạch lu&ocirc;n khỏe mạnh</p>', '<ul>\r\n	<li><strong>Th&ugrave;ng 24 Hộp Sữa &Oacute;c Ch&oacute; Golden Milk (190ml x 24 Hộp)</strong>&nbsp;l&agrave; sự kết hợp ho&agrave;n hảo của nhiều loại hạt dinh dưỡng như: hạt &oacute;c ch&oacute;, hạnh nh&acirc;n, đậu đen, đậu n&agrave;nh, đậu phộng v&agrave; hạt th&ocirc;ng theo c&ocirc;ng thức đặc biệt nhất.</li>\r\n	<li>Được sản xuất tại H&agrave;n Quốc, với c&ocirc;ng nghệ sản xuất hiện đại theo ti&ecirc;u chuẩn HACCP, Sữa &Oacute;c ch&oacute; Golden Milk giữ trọn được vị thơm ngon, đậm đ&agrave; của c&aacute;c loại hạt, l&agrave; thức uống dinh dưỡng tốt nhất cho cả gia đ&igrave;nh!</li>\r\n	<li>Với h&agrave;m lượng Omega-3 dồi d&agrave;o &ndash; hạt &oacute;c ch&oacute; được biết đến l&agrave; 1 si&ecirc;u thực phẩm, Sữa &Oacute;c ch&oacute; Golden milk kh&ocirc;ng chỉ gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o ở trẻ nhỏ m&agrave; c&ograve;n giảm căng thẳng, tăng tập trung v&agrave; hỗ trợ tr&iacute; nhớ ở người lớn tuổi.</li>\r\n	<li>Đặc biệt đối với phụ nữ đang mang thai, trong sữa &oacute;c ch&oacute; lượng omega cao gấp 5 lần so với lượng chất n&agrave;y trong cơ thể c&aacute; hồi. V&igrave; vậy Sữa &oacute;c ch&oacute; Golden milk c&oacute; t&aacute;c dụng rất tốt trong việc tăng cường khả năng ph&aacute;t triển tr&iacute; n&atilde;o.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk chứa h&agrave;m lượng canxi cao từ c&aacute;c loại hạt như hạt &oacute;c ch&oacute;, hạnh nh&acirc;n gi&uacute;p cơ thể x&acirc;y dựng v&agrave; duy tr&igrave; hệ xương-răng chắc khỏe. Đồng thời k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u, tạo cơ v&agrave; tế b&agrave;o th&acirc;n kinh hoạt động tốt hơn.</li>\r\n	<li>Chất chống oxy h&oacute;a &ndash; vitamin C, E, Beta caroten v&agrave; Axit alpha linoleic gi&uacute;p c&acirc;n bằng h&agrave;m lượng hormone trong cơ thể, sản sinh collagen tốt cho da v&agrave; t&oacute;c&hellip;Đặc biệt l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a của cơ thể cao gấp 15 lần vitamin E (theo Hiệp hội H&oacute;a học Mỹ).</li>\r\n	<li>Lượng dưỡng chất lớn trong Sữa &oacute;c ch&oacute; Golden milk như axit b&eacute;o, protein&hellip; c&oacute; khả năng tăng sản sinh nội tiết tố nữ estrogen gi&uacute;p v&ograve;ng 1 ph&aacute;t triển hơn.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk chứa Axit b&eacute;o Omega-3, gi&agrave;u chất xơ, Vitamin B, Magi&ecirc;, Vitamin E, đặc biệt chứa h&agrave;m lượng cao c&aacute;c axit b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a c&ugrave;ng với c&aacute;c ph&acirc;n tử hoạt t&iacute;nh sinh học gi&uacute;p hỗ trợ sức khỏe ổn định đường huyết v&agrave; ngăn ngừa c&aacute;c yếu tố của bệnh tim mạch.</li>\r\n	<li>Sữa &Oacute;c ch&oacute; Golden Milk l&agrave; ngưồn cung cấp dồi d&agrave;o về vitamin E, Calcium, phosphor, Sắt v&agrave; Magnesium. N&oacute; c&ograve;n chứa Kẽm, Selenium, Đồng v&agrave; Niacin,&hellip;</li>\r\n	<li>Gi&uacute;p tăng cường hệ miễn dịch, hỗ trợ sức khỏe hệ thần kinh v&agrave; c&ograve;n củng cố hoạt động hệ xương v&agrave; răng.</li>\r\n</ul>\r\n\r\n<p><strong>Sữa hạt &oacute;c ch&oacute;, hạnh nh&acirc;n, đậu đen, đậu n&agrave;nh Golden milk ph&ugrave; hợp với mọi lứa tuổi v&agrave; đặc biệt tốt cho những đối tượng sau đ&acirc;y:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em (trong độ tuổi đi học)</li>\r\n	<li>Phụ nữ mang thai v&agrave; người gi&agrave;</li>\r\n	<li>Vận động vi&ecirc;n đang chơi thể thao, những người phải vận động nhiều</li>\r\n	<li>Người ăn chay, cơ thể thiếu hụt dinh dưỡng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 16, 12, '1', 85, 36, 19, '2019-03-05 09:33:59', '2019-05-06 09:54:42', NULL),
(23, 'Enfagrow Premium Toddler Next Step, 680g', 'enfagrow-premium-toddler-next-step-680g', 600000, 0, NULL, NULL, NULL, NULL, 'Mead Johnson', '<p><strong>CH&Uacute; &Yacute;:&nbsp;</strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ nhỏ. C&aacute;c yếu tố chống nhiễm khuẩn, đặc biệt l&agrave; kh&aacute;ng thể chỉ c&oacute; trong sữa mẹ c&oacute; t&aacute;c dụng gi&uacute;p trẻ ph&ograve;ng, chống bệnh ti&ecirc;u chảy, nhiễm khuẩn đường h&ocirc; hấp v&agrave; một số bệnh nhiễm khuẩn kh&aacute;c.Thực hiện đ&uacute;ng hướng dẫn vệ sinh, tiệt khuẩn. Việc sử dụng b&igrave;nh b&uacute; c&oacute; thể l&agrave;m cho trẻ bỏ b&uacute; mẹ v&agrave; c&oacute; nguy cơ bị ti&ecirc;u chảy</p>', '<h3>Thực phẩm bổ sung: Enfagrow Premium Toddler Next Step cho trẻ từ 1-3 tuổi&nbsp;</h3>\r\n\r\n<p><strong>Thực phẩm bổ sung Enfagrow Premium Todder Next Step cho trẻ từ 1-3 tuổi&nbsp;</strong>được nhập khẩu trực tiếp từ Mỹ. Sản phẩm kh&ocirc;ng chứa th&agrave;nh phần biến đổi Gen. Sản phẩm chứa bộ dưỡng chất Triple Health Guard (DHA cho tr&iacute; n&atilde;o, 22 dưỡng chất cho bữa ăn ho&agrave;n thiện, Prebiotics &amp; Vitamins cho hệ miễn dịch).&nbsp;</p>\r\n\r\n<p><img alt=\"_MG_7776 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/85bcc570cef013b07461e2f49c284e01.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Mead Johnson</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>H&agrave;ng nội địa ch&iacute;nh h&atilde;ng, sản xuất tại Mỹ. Nhập khẩu nguy&ecirc;n hộp 100% bởi MEAD JOHNSON NUTRITION VIỆT NAM</p>\r\n\r\n<p><img alt=\"_MG_7777 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/78459dd11b377c2202b66947ad0f91ad.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Khối lượng:</strong>&nbsp;680g/hộp</p>\r\n\r\n<p><strong>Th&agrave;nh phần :</strong></p>\r\n\r\n<p>- Sản phẩm c&oacute; chứa đạm v&agrave; đậu n&agrave;nh</p>\r\n\r\n<p>- Sữa bột t&aacute;ch b&eacute;o, siro mật bắp, dầu thực vật (dầu cọ Olein, dầu dừa, dầu đậu n&agrave;nh v&agrave; dầu hoa hướng dương gi&agrave;u oleic), galactooligosaccharides, polydextrose, canxi carbonat, magie phosphate, muối, sắt sunfate, kẽm sunfate, mangan sunfate, đồng (II) sunfate, dầu c&aacute; ngừ, niacin, axit ascorbic, canxi pantothenate, vitamin B6, vitamin B1, vitamin D3, vitamin B2, axit folic, biotin, chất chống oxi h&oacute;a (ascorbyl palmitate, vitamin E, vitamin A, hương tự nhi&ecirc;n, chất nhũ h&oacute;a (soy lecithin).</p>\r\n\r\n<p><img alt=\"_MG_7778 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/af49ac82e279795261e602e9b144d6d5.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Hướng dẫn c&aacute;ch pha v&agrave; sử dụng:</strong></p>\r\n\r\n<p>- Khuyến nghị: Uống 1 ly mỗi ng&agrave;y</p>\r\n\r\n<p>- Lưu &yacute;: Sức khỏe của trẻ t&ugrave;y thuộc v&agrave;o sự tu&acirc;n thủ chặt chẽ c&aacute;c hướng dẫn dưới đ&acirc;y</p>\r\n\r\n<p>- Vệ sinh, chuẩn bị dụng cụ pha chế, sử dụng v&agrave; bảo quản một c&aacute;ch th&iacute;ch hợp l&agrave; rất quan trọng trong qu&aacute; tr&igrave;nh pha chế cho trẻ, n&ecirc;n hỏi &yacute; kiến b&aacute;c sĩ để biết loại dụng cụ n&agrave;o ph&ugrave; hợp với con bạn</p>\r\n\r\n<p>- Rửa tay sạch với x&agrave; ph&ograve;ng v&agrave; nước trước khi pha</p>\r\n\r\n<p>- Rửa sạch cốc hay dụng cụ v&agrave; nắp</p>\r\n\r\n<p>- Đun s&ocirc;i c&aacute;c vật dụng trong 1 ph&uacute;t&nbsp;</p>\r\n\r\n<p>- Đun s&ocirc;i nước trong 1 ph&uacute;t</p>\r\n\r\n<p>- Để nước nguội đến 40 độ C (ấm) trước khi pha</p>\r\n\r\n<p>- Cho đ&uacute;ng lượng nước ấm v&agrave;o cốc hay dụng cụ</p>\r\n\r\n<p>- Cho sản phẩm v&agrave;o, đậy kỹ nắp dụng cụ v&agrave; lắc đều</p>\r\n\r\n<p>- Để pha một ly Enfagrow cho trẻ, cho 3 muỗng gạt (36g bột) v&agrave;o 6 ounces(tương đương 180ml) nước ấm (kh&ocirc;ng qu&aacute; 40 độ C)</p>\r\n\r\n<p>- Khuấy hay lắc đều, v&agrave; cho trẻ sử dụng</p>\r\n\r\n<p><img alt=\"_MG_7780 copy copy\" src=\"https://cdn.concung.com/storage/images/ViContent/019ea7ace67cca38b625dc36fc4c6d92.PNG\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đối tượng sử dụng:</strong>&nbsp;D&agrave;nh cho trẻ từ 1 -3 tuổi trở l&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong></p>\r\n\r\n<p>- Đậy k&iacute;n nắp hộp sau khi mở v&agrave; để ở nơi m&aacute;t, kh&ocirc; r&aacute;o</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n cho sản phẩm v&agrave;o tủ lạnh</p>\r\n\r\n<p>- N&ecirc;n sử dụng trong v&ograve;ng 4 tuần từ khi mở sản phẩm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nh&agrave; sản xuất:</strong></p>\r\n\r\n<p>Mead Johnson Nutrition -&nbsp; 2400 West Lloyd Expressway Evansville, IN 47721 USA</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Hoa Kỳ</p>', 6, 5, '1', 89, 18, 12, '2019-03-05 09:42:22', '2019-05-06 09:54:48', NULL),
(24, 'Thùng 48 hộp sữa tươi tiệt trùng Ba Vì có đường 180ml', 'thung-48-hop-sua-tuoi-tiet-trung-ba-vi-co-duong-180ml', 240000, 0, NULL, NULL, NULL, NULL, 'Ba Vi', '<p><strong>Sữa dinh dưỡng n&ocirc;ng trại Ba V&igrave; c&oacute; đường</strong>&nbsp;với hương vị thơm ngon, dễ uống, trong&nbsp;<strong>sữa</strong>&nbsp;bổ sung dồi d&agrave;o vitamin A gi&uacute;p s&aacute;ng mắt v&agrave; c&ocirc;ng thức gồm Vitamin D3 - Canxi v&agrave; Vitamin K2 c&oacute; t&aacute;c dụng hỗ trợ ph&aacute;t triển chiều cao hiệu quả.</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>', '<p><strong>Sữa dinh dưỡng n&ocirc;ng trại Ba V&igrave; c&oacute; đường</strong>&nbsp;với hương vị thơm ngon, dễ uống, trong&nbsp;<strong>sữa</strong>&nbsp;bổ sung dồi d&agrave;o vitamin A gi&uacute;p s&aacute;ng mắt v&agrave; c&ocirc;ng thức gồm Vitamin D3 - Canxi v&agrave; Vitamin K2 c&oacute; t&aacute;c dụng hỗ trợ ph&aacute;t triển chiều cao hiệu quả.</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>\r\n\r\n<p><img alt=\"Gía trị dinh dưỡng\" src=\"https://cdn.tgdd.vn/Products/Images//2386/195808/bhx/files/3Y8A1073.JPG\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng v&agrave; bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>Lắc đều trước khi uống. Ngon hơn khi uống lạnh.</li>\r\n	<li>Kh&ocirc;ng d&ugrave;ng cho trẻ dưới 2 tuổi.</li>\r\n	<li>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</li>\r\n</ul>', 17, 1, '1', 84, 27, 20, '2019-03-06 08:09:45', '2019-05-06 09:20:57', NULL),
(25, 'Lốc 3 chai sữa tươi tiệt trùng Lothamilk sô cô la 180ml', 'loc-3-chai-sua-tuoi-tiet-trung-lothamilk-so-co-la-180ml', 21000, 0, NULL, NULL, NULL, NULL, 'Lothamilk', '<p><strong>Sữa tươi tiệt tr&ugrave;ng Lothamilk s&ocirc; c&ocirc; la</strong>&nbsp;được chế biến từ sữa b&ograve; tươi nguy&ecirc;n chất 100%, rất gi&agrave;u đạm, bơ sữa, vitamin v&agrave; kho&aacute;ng chất cần thiết gi&uacute;p ph&aacute;t triển chiều cao, duy tr&igrave; cơ thể khoẻ mạnh, minh mẫn v&agrave; dồi d&agrave;o sinh lực.</p>', '<p><strong>Sữa tươi tiệt tr&ugrave;ng Lothamilk s&ocirc; c&ocirc; la</strong>&nbsp;được chế biến từ sữa b&ograve; tươi nguy&ecirc;n chất 100%, rất gi&agrave;u đạm, bơ sữa, vitamin v&agrave; kho&aacute;ng chất cần thiết gi&uacute;p ph&aacute;t triển chiều cao, duy tr&igrave; cơ thể khoẻ mạnh, minh mẫn v&agrave; dồi d&agrave;o sinh lực.</p>\r\n\r\n<p><strong>Sữa tươi</strong>&nbsp;được đ&oacute;ng g&oacute;i bao b&igrave; theo quy tr&igrave;nh tu&acirc;n thủ nghi&ecirc;m ngặt c&aacute;c ti&ecirc;u chuẩn vệ sinh thực phẩm, đảm bảo giữ trọn hương vị thơm ngon v&agrave; c&aacute;c chất dinh dưỡng c&oacute; trong sữa.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin dinh dưỡng</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images//2386/157902/bhx/files/sua-tuoi-tiet-trung-lothamilk-co-duong-180ml.jpg\" /></strong></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Uống trực tiếp, ngon hơn khi uống lạnh.</li>\r\n	<li>Sản phẩm d&ugrave;ng cho 1 lần uống.</li>\r\n</ul>\r\n\r\n<p><strong>Bảo quản:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh nhiệt độ cao v&agrave; &aacute;nh nắng trực tiếp.</li>\r\n	<li>N&ecirc;n d&ugrave;ng hết sau khi mở, nếu c&ograve;n bảo quản ngăn m&aacute;t tủ lạnh, n&ecirc;n d&ugrave;ng hết sau 3 ng&agrave;y.</li>\r\n</ul>', 16, 1, '1', 44, 82, 64, '2019-03-06 08:14:41', '2019-05-06 09:48:39', NULL),
(26, 'Sữa Tươi Tiệt Trùng Ít Béo Harvey Fresh Low Fat Milk Hộp 1 Lít', 'sua-tuoi-tiet-trung-it-beo-harvey-fresh-low-fat-milk-hop-1-lit', 34000, 0, NULL, NULL, NULL, NULL, 'Harvey', '<p>Xuất xứ : &Uacute;c</p>\r\n\r\n<p>Thể t&iacute;ch : 1 l&iacute;t</p>\r\n\r\n<p>Hương vị sữa nguy&ecirc;n chất, thơm ngon</p>\r\n\r\n<p>Sữa tiệt tr&ugrave;ng &iacute;t b&eacute;o</p>\r\n\r\n<p>Cung cấp nhiều Vitamin v&agrave; kho&aacute;ng chất</p>\r\n\r\n<p>H&agrave;m lượng chất b&eacute;o thấp trong sữa, sản phẩm rất th&iacute;ch hợp cho người đang c&oacute; nhu cầu ăn ki&ecirc;ng, người bị tiểu đường sử dụng</p>\r\n\r\n<p>Gi&uacute;p ph&aacute;t triển thể chất v&agrave; tr&iacute; tuệ</p>\r\n\r\n<p>Th&iacute;ch hợp cho người đang ăn ki&ecirc;ng.</p>\r\n\r\n<p>Đ&oacute;ng hộp tiện dụng cho sử dụng gia đ&igrave;nh, chăm s&oacute;c tốt nhất sức khỏe gia đ&igrave;nh m&agrave; vẫn tiết kiệm thời gian v&agrave; chi ph&iacute;</p>', '<p><strong>Xuất xứ:</strong>&nbsp;&Uacute;c,&nbsp;Harvey l&agrave; thương hiệu từ &Uacute;c</p>\r\n\r\n<p><strong>Qui c&aacute;ch:</strong>&nbsp;1L/ 1 Hộp. Th&ugrave;ng 12 hộp</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Đặc điểm nổi bật</strong><strong>:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương vị sữa nguy&ecirc;n chất, thơm ngon</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sữa tiệt tr&ugrave;ng &iacute;t b&eacute;o</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cung cấp nhiều Vitamin v&agrave; kho&aacute;ng chất</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;m lượng chất b&eacute;o thấp trong sữa, sản phẩm rất th&iacute;ch hợp cho người đang c&oacute; nhu cầu ăn ki&ecirc;ng, người bị tiểu đường sử dụng</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gi&uacute;p ph&aacute;t triển thể chất v&agrave; tr&iacute; tuệ</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Th&iacute;ch hợp cho người đang ăn ki&ecirc;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đ&oacute;ng hộp tiện dụng cho sử dụng gia đ&igrave;nh, chăm s&oacute;c tốt nhất sức khỏe gia đ&igrave;nh m&agrave; vẫn tiết kiệm thời gian v&agrave; chi ph&iacute;.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&ugrave;ng cho b&eacute; tr&ecirc;n 1 tuổi</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N&ecirc;n d&ugrave;ng hết sau khi mở, nếu c&ograve;n bảo quản ngăn m&aacute;t tủ lanh, n&ecirc;n d&ugrave;ng hết sau 3 ng&agrave;y.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sử dụng trực tiếp.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ngon hơn khi uống lạnh</p>\r\n\r\n<p><strong>Bảo quản:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sữa tiệt tr&ugrave;ng ở nhiệt độ cao. Bảo quản ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do qu&aacute; tr&igrave;nh xử l&yacute; ở nhiệt độ cao ,đ&oacute;ng g&oacute;i ni&ecirc;m phong k&iacute;n, sữa tiệt tr&ugrave;ng UHT c&oacute; thể bảo quản khi chưa mở nhiều th&aacute;ng m&agrave; kh&ocirc;ng cần để tủ lạnh.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sau khi mở nắp, giữ ở tủ lạnh hoặc dưới 40&nbsp;Cv&agrave; sử dụng trong v&ograve;ng 7 ng&agrave;y.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 16, 12, '1', 57, 61, 48, '2019-03-06 08:16:47', '2019-05-06 09:48:39', NULL),
(27, 'Sữa tươi tiệt trùng Nuti không đường hộp 1 lít', 'sua-tuoi-tiet-trung-nuti-khong-duong-hop-1-lit', 29000, 0, NULL, NULL, NULL, NULL, 'Nuti', '<p><strong>Sữa tươi Nuti 100%</strong>&nbsp;được sản xuất từ nguồn sữa b&ograve; tươi nguy&ecirc;n chất v&agrave; tươi ngon tại c&aacute;c trang trại quy m&ocirc; ở Gia Lai. Sữa tươi Nuti 100% l&agrave; nguồn bổ sung vitamin A, D3, Kẽm c&ugrave;ng nhiều vi dưỡng chất thiết yếu kh&aacute;c gi&uacute;p xương v&agrave; răng chắc khoẻ, s&aacute;ng m&aacute;t, tăng sức đề kh&aacute;ng cho gia đ&igrave;nh lu&ocirc;n khoẻ mạnh.</p>', '<p><strong>Sữa tươi Nuti 100%</strong>&nbsp;được sản xuất từ nguồn sữa b&ograve; tươi nguy&ecirc;n chất v&agrave; tươi ngon tại c&aacute;c trang trại quy m&ocirc; ở Gia Lai. Sữa tươi Nuti 100% l&agrave; nguồn bổ sung vitamin A, D3, Kẽm c&ugrave;ng nhiều vi dưỡng chất thiết yếu kh&aacute;c gi&uacute;p xương v&agrave; răng chắc khoẻ, s&aacute;ng m&aacute;t, tăng sức đề kh&aacute;ng cho gia đ&igrave;nh lu&ocirc;n khoẻ mạnh.</p>\r\n\r\n<p><strong>Sữa tươi</strong>&nbsp;kh&ocirc;ng&nbsp;đường với hương vị thơm ngon, b&eacute;o ngậy, c&oacute; thể uống trực tiếp hoặc d&ugrave;ng l&agrave;m nguy&ecirc;n liệu l&agrave;m b&aacute;nh ngọt, b&aacute;nh flan, nấu s&uacute;p...</p>\r\n\r\n<p><strong>Gi&aacute; trị dinh dưỡng:</strong></p>\r\n\r\n<p><img alt=\"Bảng giá trị dinh dưỡng sữs tươi tiệt trùng NutiFood không đường 1 lít\" src=\"https://cdn.tgdd.vn/Products/Images/2386/135057/bhx/sua-tuoi-tiet-trung-nuti-100-khong-duong-hop-1l-6.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Lắc đều trước khi sử dụng. Ngon hơn khi uống lạnh.</li>\r\n	<li>Kh&ocirc;ng d&ugrave;ng cho trẻ em dưới 1 tuổi.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;Bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</li>\r\n	<li>Tr&aacute;nh &aacute;nh nắng mặt trời trực tiếp.</li>\r\n	<li>Nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t. Sau khi mở hộp, bảo quản lạnh ở 3 - 8 độ C v&agrave; sử dụng hết trong v&ograve;ng 3 ng&agrave;y.</li>\r\n</ul>', 16, 1, '1', 69, 70, 54, '2019-03-06 08:18:32', '2019-05-06 09:48:39', NULL),
(28, 'Sữa ông thọ 2019', 'sua-ong-tho-2019', 40000, 0, NULL, NULL, NULL, NULL, 'Vinamilk', '<p>Sữa &ocirc;ng thọ 2019</p>', '<p>Sữa &ocirc;ng thọ 2019</p>', 19, 1, '1', 54, 47, 46, '2019-03-21 03:58:29', '2019-05-06 09:48:39', NULL),
(29, 'Sữa bột Aptamil 1 (900g)', 'sua-bot-aptamil-1-900g', 585000, 1, NULL, NULL, NULL, NULL, 'Aptamil', '<p><em><strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ sơ sinh v&agrave; trẻ nhỏ. Sản phẩm n&agrave;y l&agrave; thức ăn bổ sung v&agrave; được ăn th&ecirc;m c&ugrave;ng với sữa mẹ d&ugrave;ng cho trẻ nhỏ.</strong></em></p>\r\n\r\n<p><br />\r\n&bull; Độ tuổi ph&ugrave; hợp: từ sơ sinh<br />\r\n&bull; Khối lượng tịnh: 900g<br />\r\n&bull; Xuất xứ: Ch&acirc;u &Acirc;u</p>', '<p>Sữa bột Aptamil 1 chứa th&agrave;nh phần dưỡng chất độc đ&aacute;o, d&agrave;nh cho trẻ từ khi&nbsp;mới sinh.<br />\r\n&bull;&nbsp;<strong>GOS/FOS</strong>&nbsp;<strong>(9:1)&nbsp;</strong>gi&uacute;p ph&aacute;t triển hệ ti&ecirc;u h&oacute;a<br />\r\n&bull;&nbsp;<strong>LCPs (DHA, AA)</strong>&nbsp;l&agrave; hỗn hợp c&aacute;c ax&iacute;t b&eacute;o, gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực&nbsp;của trẻ<br />\r\n&bull;&nbsp;<strong>Nucleotides</strong>&nbsp;tăng cường sức đề kh&aacute;ng, bảo vệ hệ miễn dịch đường&nbsp;ruột<br />\r\n&bull; Ngo&agrave;i ra,&nbsp;Aptamil 1 c&ograve;n cung cấp nhiều dưỡng chất kh&aacute;c như c&aacute;c&nbsp;Vitamin (A, D, E, C, B1, B12...), Protein, đạm Whey, c&aacute;c kho&aacute;ng chất...</p>', 14, 8, '1', 86, 14, 15, '2019-04-08 10:01:29', '2019-05-06 10:01:18', NULL),
(30, 'Sữa bột Aptamil 4 (800g)', 'sua-bot-aptamil-4-800g', 505000, 0, NULL, NULL, NULL, NULL, 'Aptamil', '<p><em><strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ sơ sinh v&agrave; trẻ nhỏ. Sản phẩm n&agrave;y l&agrave; thức ăn bổ sung v&agrave; được ăn th&ecirc;m c&ugrave;ng với sữa mẹ d&ugrave;ng cho trẻ nhỏ.</strong></em><br />\r\n&bull; Độ tuổi ph&ugrave; hợp: 2 - 3 tuổi<br />\r\n&bull; Khối lượng tịnh: 800g<br />\r\n&bull; Xuất xứ: Ch&acirc;u &Acirc;u</p>', '<p>Sữa bột Aptamil 4 c&oacute; chứa Pronutra+ - l&agrave; hỗn hợp độc đ&aacute;o của c&aacute;c th&agrave;nh phần: GOS/FOS, LCPs, Vitamin A, C, D v&agrave; sắt, hỗ trợ sự ph&aacute;t triển to&agrave;n diện của trẻ.<br />\r\n&bull;&nbsp;<strong>GOS/FOS</strong>&nbsp;gi&uacute;p ph&aacute;t triển hệ ti&ecirc;u h&oacute;a<br />\r\n&bull;&nbsp;<strong>Vitamin A, C, D</strong>&nbsp;tăng cường khả năng miễn dịch<br />\r\n&bull;&nbsp;<strong>Vitamin D&nbsp;</strong>th&uacute;c đẩy sự ph&aacute;t triển của xương v&agrave; răng<br />\r\n&bull;&nbsp;<strong>Sắt</strong>&nbsp;gi&uacute;p tạo m&aacute;u<br />\r\n&bull;&nbsp;<strong>LCPs (DHA, ARA)</strong>&nbsp;l&agrave; hỗn hợp c&aacute;c ax&iacute;t b&eacute;o, gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực trong giai đoạn tăng trưởng của trẻ</p>\r\n\r\n<p>Hướng dẫn sử dụng, bảo quản<br />\r\n&bull; Rửa sạch tay trước khi pha sữa&nbsp;cho trẻ<br />\r\n&bull; Rửa cốc v&agrave; nắp đậy cho đến khi kh&ocirc;ng c&ograve;n bợn bẩn<br />\r\n&bull; Đun s&ocirc;i cốc v&agrave; nắp đậy trong 5 ph&uacute;t, đậy nắp k&iacute;n cho đến khi sử dụng<br />\r\n&bull; Đun s&ocirc;i nước uống trong 5 ph&uacute;t, để nguội bớt<br />\r\n&bull; Tham khảo bảng hướng dẫn c&aacute;ch pha in tr&ecirc;n bao b&igrave;, r&oacute;t ch&iacute;nh x&aacute;c lượng nước ấm cần d&ugrave;ng v&agrave;o cốc đ&atilde; luộc<br />\r\n&bull; Th&ecirc;m số lượng muỗng sữa bột&nbsp;tương ứng cho số th&aacute;ng tuổi của trẻ theo bảng hướng dẫn in tr&ecirc;n bao b&igrave;<br />\r\n&bull; Đậy nắp v&agrave; lắc hoặc khuấy đều cho đến khi bột được h&ograve;a tan ho&agrave;n to&agrave;n v&agrave; cho trẻ uống liền<br />\r\n&bull; Đậy k&iacute;n nắp hộp sau mỗi lần sử dụng, bảo quản nơi kh&ocirc; r&aacute;o, n&ecirc;n sử dụng trong v&ograve;ng 4 tuần sau khi mở nắp hộp</p>\r\n\r\n<p>Th&ocirc;ng tin thương hiệu<br />\r\nAptamil l&agrave; thương hiệu sữa của Danone Nutricia, Ph&aacute;p - Tập đo&agrave;n dinh dưỡng b&aacute;n chạy h&agrave;ng đầu ch&acirc;u &Acirc;u. Danone Nutricia tập trung trong 4 lĩnh vực ch&iacute;nh: nước uống, dinh dưỡng y tế, thực phẩm từ sữa tươi v&agrave; dinh dưỡng đầu đời. Với kinh nghiệm hơn 100 năm trong lĩnh vực chăm s&oacute;c trẻ em, 50 năm về nghi&ecirc;n cứu sữa mẹ v&agrave; dinh dưỡng đầu đời, Danone Nutricia hiện c&oacute; mặt tại hơn 140 quốc gia tr&ecirc;n to&agrave;n thế giới.</p>', 14, 8, '1', 85, 15, 15, '2019-04-08 10:04:40', '2019-05-06 10:01:11', NULL),
(31, 'Sữa bột France Lait 3 (900g) - Hàng chính hãng', 'sua-bot-france-lait-3-900g-hang-chinh-hang', 440000, 1, NULL, NULL, NULL, NULL, 'France Lait', '<p><em><strong>Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ sơ sinh v&agrave; trẻ nhỏ. Sản phẩm n&agrave;y l&agrave; thức ăn bổ sung v&agrave; được ăn th&ecirc;m c&ugrave;ng với sữa mẹ d&ugrave;ng cho trẻ nhỏ.</strong></em></p>\r\n\r\n<ul>\r\n	<li>Độ tuổi ph&ugrave; hợp: 1 - 3 tuổi</li>\r\n	<li>Khối lượng tịnh: 900g</li>\r\n	<li>Xuất xứ: Ph&aacute;p</li>\r\n</ul>', '<p>Sữa bột France Lait 3 được&nbsp;nhập khẩu nguy&ecirc;n hộp từ Ph&aacute;p. Sản phẩm c&oacute; thể d&ugrave;ng để thay thế bữa ăn hoặc bổ sung cho chế độ ăn của trẻ mất hoặc thiếu sữa mẹ, hỗ trợ sự ph&aacute;t triển của trẻ theo sinh l&yacute; lứa tuổi.</p>\r\n\r\n<ul>\r\n	<li>H&agrave;m lượng Protein vừa phải: 2g/100ml, ph&ugrave; hợp với ti&ecirc;u h&oacute;a của trẻ</li>\r\n	<li>Hệ số thẩm thấu thấp tăng cường khả năng hấp thu</li>\r\n	<li>Axit b&eacute;o cần thiết g&oacute;p phần cho sự ph&aacute;t triển n&atilde;o bộ v&agrave; mắt</li>\r\n	<li>Tỷ lệ Axit Linoleic/ Linolenic = 10 k&iacute;ch th&iacute;ch sự ph&aacute;t triển n&atilde;o v&agrave; thị gi&aacute;c</li>\r\n	<li>Cung cấp đấy đủ c&aacute;c vitamin v&agrave; kho&aacute;ng chất cần thiết cho sự tăng trưởng v&agrave; ph&aacute;t triển ban đầu của trẻ nhỏ</li>\r\n	<li>Chứa c&aacute;c Fructo-Oligosaccharide, khuyến kh&iacute;ch sự&nbsp;ph&aacute;t triển của&nbsp;hệ vi khuẩn đường ruột, gi&uacute;p điều chỉnh nhu động ruột</li>\r\n	<li>Th&acirc;n thiện với hệ ti&ecirc;u h&oacute;a của trẻ</li>\r\n</ul>', 12, 8, '1', 85, 15, 16, '2019-04-08 11:18:27', '2019-05-06 10:01:05', NULL),
(32, 'Sữa ông thọ hộp giấy', 'sua-ong-tho-hop-giay', 60000, 0, NULL, NULL, NULL, NULL, 'Vinamilk', '<p>Sữa đặc &Ocirc;ng Thọ - Vị ngon c&ugrave;ng năm th&aacute;ng</p>', '<p>Trải qua gần 40 năm, thực phẩm bổ sung sữa đặc <strong>&Ocirc;ng Thọ</strong> đ&atilde; trở th&agrave;nh người bạn đồng h&agrave;nh kh&ocirc;ng thể thiếu trong gian bếp của c&aacute;c gia đ&igrave;nh Việt Nam với gi&aacute; trị dinh dưỡng gi&agrave;u đạm, hương vị ngon đậm đ&agrave; c&ugrave;ng vẻ s&aacute;nh đặc v&agrave;ng &oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sữa đặc &Ocirc;ng Thọ</strong> l&agrave; b&iacute; quyết bỏ t&uacute;i kh&ocirc;ng thể thiếu của c&aacute;c b&agrave; nội trợ, với độ đạm cao sẽ đem đến nhiều m&oacute;n ăn ngon, tinh tế v&agrave; hấp dẫn: từ ly sữa nóng thơm ngon b&ocirc;̉ dưỡng cho &ocirc;ng bà, mẻ sữa chua sánh mịn cho con gái, ly sinh t&ocirc;́ béo ng&acirc;̣y cho con trai, ly cà ph&ecirc; sữa đ&acirc;̣m đà khi&ecirc;́n b&ocirc;́ m&ecirc; m&acirc;̉n hay mẻ bánh flan cho cả gia đình vào ngày cu&ocirc;́i tu&acirc;̀n.</p>', 19, 1, '1', 87, 13, 15, '2019-04-13 04:58:25', '2019-05-06 09:23:01', NULL);

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
(1, 'Trần Tuấn Ngọc', 'ngoctt', '0975853528', NULL, '$2y$10$/LDbevQ4h4HNR.x0WBxLUeVavqDi9atLIOcIQoYxz7FLhMn7xPtoe', 'trantuanngoc@gmail.com', 'Long Hung, Van Giang, Hưng Yên', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, NULL, '2019-03-29 23:20:16', '2019-03-07 08:16:11'),
(2, 'Nguyễn Diệu Anh', 'ndanh00', '0987193298', NULL, '$2y$10$GBvpQeyOsgyJe.5HQ5UNMubuWvvTcf0pvRixHFYygNHVpUL8.Fqay', 'ndanh00@ndanh00.com', 'Hạ Long, TP Quảng Ninh', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, NULL, '2019-03-29 23:20:16', '2019-03-06 08:24:16'),
(3, 'Keanu Reeves', 'keanureeves', '0389975223', NULL, '$2y$10$2ndpGrkpku9wpqzk6ycUKO1/UqIY1TABc3mGe5TiPD8QB8D1tT8EC', 'aletha74@example.com', '9652 Abernathy Lakes Suite 069 South Sethland, KY 37913-5576', 1, NULL, '2019-04-13 10:33:23', '1', NULL, NULL, 'KflmFR4FfCQdGX7kKviddmbRQY7so0AQNeDUWqPJHI56N9Qg4QEESq0Ak4KA', '2019-02-11 23:20:17', '2019-05-06 06:27:43'),
(4, 'Hà Anh Tuấn', 'haanhtuan', '0975841253', NULL, '$2y$10$.m1.yMDoqdCDQKK5JXLmo.qJTFojWK9Hzxdx4Ppjs5Ua971UFoYGW', 'haanhtuan@mail.net', '8206 Bartoletti Trail Port Peterberg, KY 88261 USA', 1, NULL, '2019-04-13 10:33:26', '1', NULL, NULL, 'qNfTWIUqYMPAsgx3gADtoEwxjskqH7jGKyVdJez7CD6atxn9WQoR032z2t7D', '2019-02-11 23:20:17', '2019-05-06 08:38:41'),
(5, 'Dan Reynolds', 'danreynolds', '0498512589', NULL, '$2y$10$FLlqi5MhYwlqoxbrVVMn/exRGbJvNn.S9dVgfWwMUDyM7tOCPdQJW', 'shannon09@example.org', '82927 Wisoky Radial Apt. 539  Lake Idellaton, DC 75861', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, 'k3pthHbN3L5uOFekrtU4ePPi1hYsX96U5X5Krixn3ugpLhJR7Xlr8hz6VF39', '2019-02-11 23:20:17', '2019-05-06 08:03:06'),
(6, 'Ngô Công Công', 'ngochicong', '0958963269', NULL, '$2y$10$7RnBtk58.409ig3P0TshNOh0JxF0w/xu2eTNl6rlrHSPy76ye0Ao6', 'ngochicong@mail.com', '7397 Will Way Apt. 914\r\nSouth Stephanhaven, NM 42273-7751', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, '4wbeYlalWZZqzh454N1Xhe5wL2v8T6arkygOQVZ6pLiTg5d8dCF5FTveYOUr', '2019-02-11 23:20:17', '2019-05-06 08:53:50'),
(7, 'Nguyen Huy Hop', 'huyhop', '0985497915', NULL, '$2y$10$fc/Io2JLw6ZRdhyWVE0sIexnVgF4f4WL7PaWycnnyY7wjwyA.yUzG', 'huyhop@example.org', '57323 Zboncak Fort\r\nNorth Josie, AZ 31371', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, '6atoGl183uG9nXokNCkkF2BxKWXz6l3Wgq0Nw9lS3lrFqwLOerUWaMStZj7v', '2019-02-11 23:20:17', '2019-05-06 08:56:11'),
(8, 'Bùi Văn Sỹ', 'vansybui', '0985497990', NULL, '$2y$10$zqcTE6mFSw75/7a3/yxYZe85HRIG20GPjPrasMF2EooPrr7Im3Woe', 'vansybui@example.net', '276 Kristin Brooks Apt. 504\r\nSouth Mazieton, MA 95813', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, 'NF8VZWrMwY9chprHVPrcGwDh0OGz74latB4wbiL7yyzH3Kqsoiw1GC7Ik4av', '2019-02-11 23:20:17', '2019-05-06 08:56:17'),
(9, 'Mai Thanh Toán', 'maithanhtoan', '0985485950', NULL, '$2y$10$4cW0WnQ8a7qX2wGYZIdPCOwBcIdN8t6bcOFdXp/yexdUugg6ndppy', 'maithanhtoan@yahoo.com', '1087 Alivia Estates Suite 673\r\nAliachester, NJ 03064-7847', 1, NULL, '2019-04-13 10:33:28', '1', NULL, NULL, 'sIQ409TzSYrJWkFcNbaX3kpL6JtBJ55tXsSDk6tStDmwMNK2XvojQApxdGkS', '2019-02-11 23:20:17', '2019-05-06 08:56:22'),
(10, 'Lâm Xung', 'lamxung', '0971025006', NULL, '$2y$10$tCCtB5KabxpG0QOk.fv1c.k1NZtmO1OExvzrLHUKwdTa6wRQcuWii', 'lamxung@stl.net', '9665 Friesen Flat Tatumside, Lương Sơn Bạc', 1, NULL, '2019-05-06 09:54:11', '1', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 09:54:11'),
(11, 'Carmelo Jakubowski', 'deanna63', '0985401595', NULL, '$2y$10$S6CXloKOI6RBSu99oFdiVOuvr6aOaesOQabZGw8QQMNd4.Hrj0a8.', 'madonna99@example.net', '8690 Hand Plaza Apt. 521\r\nWest Wilfrid, AZ 20783-8805', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 08:56:32'),
(12, 'Guiseppe Balistreri Sr.', 'zroob', '0985412006', NULL, '$2y$10$ExyYY7z45l3KpD01EnXtH.xx.6v1IPMcUATWL9OoqYy0zYSOs0oXa', 'thammes@example.net', '694 Ines Drive\r\nWest Jalenburgh, FL 45663', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 08:56:39'),
(13, 'Mr. Elmore Walker Sr.', 'framilucile', '0912390345', NULL, '$2y$10$DtN0t5KT6q7vnhTNJkjv9O5afUJC2WbvE3L8G53IRdpX4ofxswnT.', 'jamaal.fay@example.net', '58709 Feest Skyway\r\nHowellstad, NV 27169', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 08:56:44'),
(14, 'Josie Wyman', 'heaneyamir', '0985412301', NULL, '$2y$10$iuF6Dw4tt80CSYeCTe.mTekQI1IBHJT97xb/Fooi8kiOg8EkdvfRK', 'don.shanahan@example.net', '1117 Jennie Common\r\nEast Tod, OH 88638', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 08:56:49'),
(15, 'Deven Crist', 'shyannegibson', '0985496032', NULL, '$2y$10$FVj0dKPHuhBBYGlBzBpKIe2mFWs4kO0CXwBWrJYcyp58jrr1zMua2', 'ohartmann@example.com', '4438 Bayer Streets\r\nEast Aniyahaven, SD 24736', 0, 'ndRo79wDNKU01oyH1AtJKdFjOBK4sn84S2Ls6EoKox7I2LnReEv4sds8qZu8GlSC', NULL, '0', NULL, NULL, NULL, '2019-02-11 23:20:17', '2019-05-06 08:57:35'),
(16, 'Lê Văn Dũng', 'dunglv', '0985412345', NULL, '$2y$10$W2Br8AYUhY4oTHXbYQHYIuve3ZWAxy7HRPMAQyGXeaGc.70bFooSe', 'dunglv@gmail.com', '765 Leon Ville Apt. 519\r\nNew Talonburgh, KS 76367', 1, '', '2019-02-28 17:00:00', '1', NULL, NULL, 'I0Nw8LTPWSvHPuejXSMlsuQBAA0cpy0sNPdyTgXDqVuJDmTuZyCbQJEDzDIe', '2019-02-11 23:20:17', '2019-05-06 06:16:26'),
(20, 'Quỳnh Như', 'quynhnhu', '0975859698', NULL, '$2y$10$qdUDayOsrcw5hIaKlktjPOlGPK.b5qU9ZWxzBVqWZI/6yXRBcQRBO', 'quynhuorange@mail.na', 'Hung Nguyen tinh Nghe An', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, NULL, '2019-02-12 09:19:48', '2019-04-11 09:15:48'),
(21, 'Tran Thanh Tung', 'trantung', '0975853526', NULL, '$2y$10$QXFyodMJ.JLV85oJPKAX2uiLLx6P5MnWqny95j1YcnSv.jtdgp5Lu', 'thanhtung@mail.usa', '765 Leon Ville Apt. 519 New Talonburgh, KS 76367', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, 'w5kkZGYD6gQWjb8akd0Yzqna1ZJx51eL17D6cE1qCoqQ4QKlKofpUlKIRx4p', '2019-02-25 09:00:09', '2019-03-14 17:00:51'),
(22, 'Ngoc Tran Tuan', 'ngoctrantuan', '0975410002', NULL, '$2y$10$.sbI6BFoDbzKq07DChVsqOVxNf/BIiRmBJqRyD6nBXiv.bUnbRhcm', 'ngocttt@mail.as', '8690 Hand Plaza Apt. 521West Wilfrid, AZ 20783-8805', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, 'oSShNCwIVhGuXyI8qhGfl6DA1Sg0k355Wx74gw1gWDCAlkVrYmTGEs6MKAjt', '2019-02-25 10:36:51', '2019-04-13 10:08:28'),
(23, 'Tran Van Hao', 'tvhao57', '0978852320', NULL, '$2y$10$XCktaXvDji.LYdez8QxCW.OjbgG56yXF7QGZS1e/JG0vwv/x8FHRO', 'tvhao@gmail.com', '8206 Bartoletti Trail Port Peterberg, KY 88261', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, 'eNWZAnbljj8vqmOEd2bay0MIavQe78dQ43Mzb1gXcS8z4g4KUxpet3dHBmiK', '2019-02-25 10:50:30', '2019-04-13 10:08:12'),
(30, 'Tran Anh Duong', 'anhduong', '0975852639', NULL, '$2y$10$jVClT1LqJezQapBlexb/WeFRSp0l/drBtHD1N.wsKcVcHxdeXDcZO', 'anhduong@gmail.com', '57323 Zboncak FortNorth Josie, AZ 31371', 1, NULL, '2019-02-28 17:00:00', '1', NULL, NULL, NULL, '2019-02-26 04:18:35', '2019-04-13 10:07:46'),
(36, 'Tran Giao Linh', 'giaolinh', '0975852104', NULL, '$2y$10$kaJnWPhnQO0m/FJIwbFJYOyORUuOeaOGOfIbJ.AYC4tyWPg1Mtxxq', 'giaolinhhy@gmail.cc', '694 Ines Drive West Jalenburgh, FL 45663', 1, NULL, '2019-03-02 02:57:12', '1', NULL, NULL, NULL, '2019-03-02 02:56:59', '2019-03-02 02:57:12'),
(38, 'Tran Duy Hong', 'duyhong', '0974521691', NULL, '$2y$10$GgAAt/CYYNWPUcgkpf3KtO8kWBGTLl.uh5BRYfRy1ghNJNXyMmTaW', 'guyhongit@mail.cc', 'Long Hung, Van Giang, Hung Yen', 1, NULL, '2019-03-07 08:14:10', '1', NULL, NULL, NULL, '2019-03-07 08:13:07', '2019-03-28 04:49:17'),
(40, 'Do Thi Ha', 'dtha65', '0975852416', NULL, '$2y$10$r88qekLgtO9vQn/fmKwg3.eGbOEl0lyDcimsF8b05WAobSsie.5d6', 'dtha65@gmail.com', 'Long Hung, Van Giang, Hung Yen', 1, NULL, '2019-03-25 10:05:49', '1', NULL, NULL, NULL, '2019-03-25 10:04:40', '2019-03-28 04:49:21'),
(42, 'Hong Hue', 'honghue', '0987193299', NULL, '$2y$10$tTpxCBU99jpIOWJYQfLjtO8xJht80Oy5xTWL/R/PDOu7M3sjiSFXu', 'honghue@gmail.com', '58709 Feest SkywayHowellstad, NV 27169', 1, NULL, '2019-04-09 03:44:44', '1', NULL, NULL, NULL, '2019-03-28 05:58:51', '2019-04-13 10:06:57'),
(56, 'Bui Thi Quyen', 'quyenquyen', '0974859606', NULL, '$2y$10$s/rbRf2fCP9h/5tdPyT2n.FFX.NiLIjYfRnPAEneZPNZ2H9.2Lumi', 'buithiquyen@gmail.ccc', 'huyen Y Yen, Tinh Nam Dinh, Viet Nam', 1, NULL, '2019-04-11 05:08:39', '1', NULL, NULL, 'F26tl9ti8RuQ6dfMHLm8s8zNrCB5gwom5ILMYg7pTkKrz2ArRYSG6ktSCpP2', '2019-04-11 05:08:23', '2019-05-06 06:32:34'),
(57, 'Nguyen Huu Luan', 'nghuuluan', '0975856260', NULL, '$2y$10$ysk4nMR0RdFRzaDLsLJQmO0WzY7TpxaIHk6FkD2H51oUy8Qette6u', 'nghuuluan@mail.com', '58709 Feest Skyway\r\nHowellstad, NV 27169', 1, NULL, '2019-04-11 05:08:39', '1', NULL, NULL, 'HKS8NsCq4WFYaJHJWRzRfMfGldIAWui45q7YqlfY6je0DOo0au16Nr189glz', '2019-04-23 07:11:47', '2019-05-06 04:42:37'),
(58, 'Tuan Ngoc', 'tuanngoc', '0385236236', NULL, '$2y$10$n.Y8PzfoZ4gGUnGDKVhHEuJ4jGVKYv/D3Q2uEekdWGaG/EVfbY0Yi', 'tuanngoc@mail.com', 'Lai Oc, Long Hung, Van Giang, Hung Yen', 1, NULL, '2019-02-28 17:00:00', '1', '', NULL, 'tSoOzK0gis104Uclt0l8M4KL4WNpE1ytP7rK9ZOg32X6xeKMlssRWPTUq41r', '2019-05-06 04:41:32', '2019-05-06 06:30:35'),
(59, 'Lo Minh Duc', 'lmduc1997', '0975006960', NULL, '$2y$10$CysuX.zKd6CK1ZMRkKmv2eBx1IP.QTo9QzUxFKU6BH3w1Tf4PitBG', 'trantuanngoctn97@gmail.com', 'Như Thanh, Thanh Hóa, VIệt Nam', 1, NULL, '2019-05-06 07:34:20', '1', NULL, NULL, 'dG4PzfLIJrB4cMBMo4a9ao0D2mgF6SYB1F1wpzjDoMBZ4waK4VT72mxPpepI', '2019-05-06 07:33:30', '2019-05-06 07:34:20');

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
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `catagories_types`
--
ALTER TABLE `catagories_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `new_tags`
--
ALTER TABLE `new_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

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
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
