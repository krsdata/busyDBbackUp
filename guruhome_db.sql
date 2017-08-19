-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2017 at 09:57 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guruhome_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `name`) VALUES
(1, 'admin@admin.com', '$2y$10$FxlETUgr3Y2GiCXxji0axeKYJC5hOXfOk6.W4zjUz4SKqRrIEcKQy', 'ydN4YzUrRLFTp2fgRtDqM3IUTJyRW241XiDBRF0XbQbIEZrh3pCDVtRy5FN4', NULL, '2017-07-01 20:39:41', ''),
(5, 'admin2@gmail.com', '$2y$10$uoNjJQyK46bOUZNkv4C4ruwfZJnnU8wo7TRzt7Ex1tx/gkdge.TIm', '6yk7lJWSXtNDvbrnYvo46WcjLgedxqPZAShbUxzWGJMvm7VnR1q1A97eh8E4', '2017-03-19 10:22:04', '2017-03-19 10:37:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `category_name`, `sub_category_name`, `parent_id`, `level`, `status`, `created_at`, `updated_at`) VALUES
(79, 'GRAINS & PULSES', 'grains-pulses', 'GRAINS & PULSES', 'GRAINS & PULSES', 0, 1, 1, '2017-04-20 20:23:11', '2017-04-20 20:23:11'),
(80, 'OIL & GHEE', 'oil-ghee', 'OIL & GHEE', 'OIL & GHEE', 0, 1, 1, '2017-04-20 20:24:25', '2017-04-20 20:24:25'),
(81, 'SALT & SUGAR', 'salt-sugar', 'SALT & SUGAR', 'SALT & SUGAR', 0, 1, 1, '2017-04-20 20:24:50', '2017-04-20 20:24:50'),
(82, 'AATA', 'aata', 'AATA', 'AATA', 0, 1, 1, '2017-04-20 20:25:09', '2017-04-20 20:25:09'),
(83, 'TEA & COFFEE', 'tea-coffee', 'TEA & COFFEE', 'TEA & COFFEE', 0, 1, 1, '2017-04-20 20:25:30', '2017-04-20 20:25:30'),
(84, 'COSMETICS', 'cosmetics', 'COSMETICS', 'COSMETICS', 0, 1, 1, '2017-04-20 20:25:52', '2017-04-20 20:25:52'),
(85, 'NUTS & DRY FRUIT', 'nuts-dry-fruit', 'NUTS & DRY FRUIT', 'NUTS & DRY FRUIT', 0, 1, 1, '2017-04-20 20:26:08', '2017-04-20 20:26:08'),
(86, 'MASALE - SPICES', 'masale-spices', 'MASALE - SPICES', 'MASALE - SPICES', 0, 1, 1, '2017-04-20 20:26:56', '2017-04-20 20:26:56'),
(87, 'Masoor Dal', 'masoor-dal', 'Masoor Dal', 'Masoor Dal', 79, 2, 1, '2017-04-20 20:30:06', '2017-04-20 20:30:06'),
(88, 'Green Mung Dal', 'green-mung-dal', 'Green Mung Dal', 'Green Mung Dal', 79, 2, 1, '2017-04-20 20:30:26', '2017-04-20 20:30:26'),
(89, 'Arhar/Toor Dal', 'arhartoor-dal', 'Arhar/Toor Dal', 'Arhar/Toor Dal', 79, 2, 1, '2017-04-20 20:30:47', '2017-04-20 20:30:47'),
(90, 'Chana Dal', 'chana-dal', 'Chana Dal', 'Chana Dal', 79, 2, 1, '2017-04-20 20:31:43', '2017-04-20 20:31:43'),
(91, 'Urad Dal', 'urad-dal', 'Urad Dal', 'Urad Dal', 79, 2, 1, '2017-04-20 20:32:11', '2017-04-20 20:32:11'),
(92, 'Ghee', 'ghee', 'Ghee', 'Ghee', 80, 2, 1, '2017-04-20 20:33:00', '2017-04-20 20:33:00'),
(93, 'Cow Ghee', 'cow-ghee', 'Cow Ghee', 'Cow Ghee', 80, 2, 1, '2017-04-20 20:33:25', '2017-04-20 20:33:25'),
(94, 'Soyabean Oil', 'soyabean-oil', 'Soyabean Oil', 'Soyabean Oil', 80, 2, 1, '2017-04-20 20:33:54', '2017-04-20 20:33:54'),
(95, 'Mustard Oil', 'mustard-oil', 'Mustard Oil', 'Mustard Oil', 80, 2, 1, '2017-04-20 20:34:18', '2017-04-20 20:34:18'),
(96, 'OTHER PRODUCTS', 'other-products', 'OTHER PRODUCTS', 'OTHER PRODUCTS', 0, 1, 1, '2017-04-20 20:44:34', '2017-04-20 20:44:34'),
(97, 'Wheat Aata', 'wheat-aata', 'Wheat Aata', 'Wheat Aata', 82, 2, 1, '2017-05-01 06:02:46', '2017-05-01 06:02:46'),
(98, 'Besan', 'besan', 'Besan', 'Besan', 82, 2, 1, '2017-05-01 06:03:17', '2017-05-01 06:03:17'),
(99, 'Makka Aata', 'makka-aata', 'Makka Aata', 'Makka Aata', 82, 2, 1, '2017-05-01 06:08:20', '2017-05-01 06:08:20'),
(100, 'Baajri Aata', 'baajri-aata', 'Baajri Aata', 'Baajri Aata', 82, 2, 1, '2017-05-01 06:08:44', '2017-05-01 06:08:44'),
(101, 'Rice', 'rice', 'Rice', 'Rice', 79, 2, 1, '2017-05-01 09:32:10', '2017-05-01 09:32:10'),
(102, 'VEGETABLE', 'vegetable', 'VEGETABLE', 'VEGETABLE', 0, 1, 1, '2017-08-11 15:34:26', '2017-08-11 15:42:23'),
(103, 'CAR WASHING', 'car-washing', 'CAR WASHING', 'CAR WASHING', 0, 1, 1, '2017-08-11 15:52:27', '2017-08-11 15:52:27'),
(104, 'LAUNDRY SERVICE', 'laundry-service', 'LAUNDRY SERVICE', 'LAUNDRY SERVICE', 0, 1, 1, '2017-08-11 15:53:32', '2017-08-11 15:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupans`
--

CREATE TABLE `coupans` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupan_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `customer_supports`
--

CREATE TABLE `customer_supports` (
  `id` int(10) NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(10) UNSIGNED NOT NULL,
  `dealer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dealer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2017_03_19_212358_create_admin_table', 1),
('2017_03_19_212358_create_categories_table', 1),
('2017_03_19_212358_create_products_table', 1),
('2017_03_19_212358_create_users_table', 1),
('2017_03_19_212400_add_foreign_keys_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `page_content` text,
  `creeated_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_category` int(10) UNSIGNED DEFAULT NULL,
  `product_sub_category` int(10) UNSIGNED DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `qty` int(10) UNSIGNED DEFAULT '1',
  `discount` float(10,2) NOT NULL DEFAULT '0.00',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `photo` mediumtext COLLATE utf8_unicode_ci,
  `product_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validity` int(10) UNSIGNED DEFAULT NULL,
  `product_key_id` int(10) UNSIGNED DEFAULT NULL,
  `total_stocks` int(10) UNSIGNED DEFAULT NULL,
  `available_stocks` int(10) UNSIGNED DEFAULT NULL,
  `views` int(10) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_title`, `product_category`, `product_sub_category`, `price`, `qty`, `discount`, `description`, `photo`, `product_type`, `validity`, `product_key_id`, `total_stocks`, `available_stocks`, `views`, `created_at`, `updated_at`) VALUES
(15, 'Masoor Dal', 87, NULL, 107.00, 1, 0.00, '<p>Masoor Daal</p>\r\n', '1493424524mas.jpg', NULL, NULL, NULL, NULL, NULL, 24, '2017-04-28 12:51:14', '2017-08-14 19:53:18'),
(16, 'Sabut Black Masoor Dal', 87, NULL, 107.00, 1, 0.00, '<p>Sabut Black Masoor Dal</p>\r\n', '1493424893mm.jpg', NULL, NULL, NULL, NULL, NULL, 8, '2017-04-28 12:54:55', '2017-04-30 04:12:46'),
(17, 'Green Moong Dal', 88, NULL, 107.00, 1, 0.00, '<p>Green Moong Dal</p>\r\n', '1493425163mas.jpg', NULL, NULL, NULL, NULL, NULL, 9, '2017-04-28 12:57:08', '2017-08-19 11:24:43'),
(24, 'TATA Salt ', 81, NULL, 18.00, 1, 0.00, '<p>Tata Salt</p>\r\n\r\n<p>1KG</p>\r\n\r\n<p>Tata White Salt is pure and white salt, manufactured using vacuum evaporation technology. This salt contains requisite amount of Iodine that ensures proper mental development of children and also prevents iodine deficiency disorders in adults. Just add it to make your dishes delectable and wholesome.</p>\r\n', '1493442603salt.jpg', NULL, NULL, NULL, NULL, NULL, 25, '2017-04-29 05:10:03', '2017-08-08 10:51:17'),
(25, 'Toor Dal', 89, NULL, 96.00, 1, 0.00, '<p>Best quality toor dal</p>\r\n', '1493616672toor.jpg', NULL, NULL, NULL, NULL, NULL, 18, '2017-05-01 05:31:12', '2017-08-02 16:07:11'),
(26, 'Chana Dal', 90, NULL, 110.00, 1, 10.00, '<p>Best Chana Dal 1 Kg</p>\r\n', '1493617063chana-dal-1.jpg', NULL, NULL, NULL, NULL, NULL, 8, '2017-05-01 05:37:43', '2017-07-27 19:10:21'),
(27, 'Urad Dal', 91, NULL, 120.00, 1, 5.00, '<p>Best Quality Urad Dal 1 KG</p>\r\n', '1493617138urad-991129.jpg', NULL, NULL, NULL, NULL, NULL, 21, '2017-05-01 05:38:58', '2017-08-10 06:12:31'),
(28, 'Desi Ghee', 92, NULL, 399.00, 1, 0.00, '<p>Best Quality Desi Ghee 1 KG</p>\r\n', '1493617299ghee1.jpg', NULL, NULL, NULL, NULL, NULL, 13, '2017-05-01 05:41:39', '2017-07-23 20:52:45'),
(29, 'Cow Ghee', 93, NULL, 550.00, 1, 0.00, '<p>Best Quality Cow Ghee 1 KG</p>\r\n', '1493617417cow-ghee.jpg', NULL, NULL, NULL, NULL, NULL, 12, '2017-05-01 05:43:37', '2017-08-11 18:26:05'),
(30, 'Soyabean Oil', 94, NULL, 78.00, 1, 0.00, '<p>Best quality soyabean oil for cooking 1 KG</p>\r\n', '1493617546soybean_oil.jpg', NULL, NULL, NULL, NULL, NULL, 10, '2017-05-01 05:45:46', '2017-07-30 15:16:25'),
(31, 'Mastard Oil', 95, NULL, 120.00, 1, 5.00, '<p>Best quality mastard oil 1 KG</p>\r\n', '1493618303mustard-oil.jpg', NULL, NULL, NULL, NULL, NULL, 12, '2017-05-01 05:58:23', '2017-08-16 15:31:00'),
(32, 'White Sugar', 81, NULL, 40.00, 1, 0.00, '<p>Best quality sugar 1 KG</p>\r\n', '1493621178sugar.jpg', NULL, NULL, NULL, NULL, NULL, 7, '2017-05-01 06:46:18', '2017-07-21 23:52:18'),
(33, 'Ashirwad Whole Wheat Aata', 97, NULL, 340.00, 1, 0.00, '<p>Ashirwad Whole Wheat Aata 10 KG</p>\r\n', '1493621428aata.png', NULL, NULL, NULL, NULL, NULL, 17, '2017-05-01 06:50:28', '2017-08-03 21:16:16'),
(34, 'Besan', 98, NULL, 92.00, 1, 0.00, '<p>Best quality besan 1 KG</p>\r\n', '1493621623besan-ladoo-4.jpg', NULL, NULL, NULL, NULL, NULL, 10, '2017-05-01 06:53:43', '2017-07-19 16:55:23'),
(35, 'Makai Aata', 99, NULL, 60.00, 1, 0.00, '<p>Best quality Makai Aata 1 KG</p>\r\n', '1493621793makai.jpg', NULL, NULL, NULL, NULL, NULL, 14, '2017-05-01 06:56:33', '2017-08-14 03:33:45'),
(36, 'Bajra Aata', 100, NULL, 80.00, 1, 0.00, '<p>Best Quality Bajra Aata 1 KG</p>\r\n', '1493621894bajra-roti2.jpg', NULL, NULL, NULL, NULL, NULL, 12, '2017-05-01 06:58:14', '2017-08-04 02:16:11'),
(37, 'Black Tea', 83, NULL, 270.00, 1, 0.00, '<p>Best Quality Asam Black Tea Patti 1 KG</p>\r\n', '1493622511chaypatti.jpg', NULL, NULL, NULL, NULL, NULL, 10, '2017-05-01 07:08:31', '2017-07-24 19:14:18'),
(38, 'Lipton Green Tea', 83, NULL, 275.00, 1, 0.00, '<p>Best Quality Green Tea</p>\r\n', '1493622598green-tea.png', NULL, NULL, NULL, NULL, NULL, 3, '2017-05-01 07:09:58', '2017-06-19 10:11:38'),
(39, 'Nescafe Classic Coffee ', 83, NULL, 245.00, 1, 0.00, '<p>Best Quality Nescafe Classic Coffee Pack</p>\r\n', '1493622734coffy.jpg', NULL, NULL, NULL, NULL, NULL, 8, '2017-05-01 07:12:14', '2017-08-17 04:11:34'),
(40, 'Cashews', 85, NULL, 900.00, 1, 0.00, '<p>Besh Quality Bold Cashews 1 KG Pack</p>\r\n', '1493630395cashew.jpg', NULL, NULL, NULL, NULL, NULL, 11, '2017-05-01 09:19:55', '2017-07-12 21:42:36'),
(41, 'Almond', 85, NULL, 900.00, 1, 0.00, '<p>Best Quality Bold Almond 1 KG Pack</p>\r\n', '1493630489294393.jpg', NULL, NULL, NULL, NULL, NULL, 5, '2017-05-01 09:21:29', '2017-07-21 23:52:38'),
(42, 'Pistachios', 85, NULL, 225.00, 1, 0.00, '<p>Best Quality Pistachios 100 GM</p>\r\n', '1493630619pistachio-day-fun.jpg', NULL, NULL, NULL, NULL, NULL, 7, '2017-05-01 09:23:39', '2017-07-27 10:56:24'),
(43, 'Walnut', 85, NULL, 175.00, 1, 0.00, '<p>Best Quality Walnut 100 GM</p>\r\n', '1493630700Walnut2-1020x765.jpg', NULL, NULL, NULL, NULL, NULL, 5, '2017-05-01 09:25:00', '2017-07-21 23:52:47'),
(44, 'Raisins', 85, NULL, 65.00, 1, 0.00, '<p>Best Quality&nbsp;Raisins 200 GM Pack</p>\r\n', '1493630767dry-grapes-500x500.jpg', NULL, NULL, NULL, NULL, NULL, 3, '2017-05-01 09:26:07', '2017-05-23 05:59:07'),
(45, 'Peanuts', 85, NULL, 80.00, 1, 0.00, '<p>Best Quality&nbsp;Peanuts 500 GM Pack</p>\r\n', '1493630840peanut_16x9.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:27:20', '2017-05-21 04:33:56'),
(46, 'Apricots/Khubani', 85, NULL, 135.00, 1, 0.00, '<p>Best Quality&nbsp;Apricots/Khubani 100 GM Pack</p>\r\n', '1493630964dry-apricots.jpg', NULL, NULL, NULL, NULL, NULL, 4, '2017-05-01 09:29:24', '2017-07-03 10:38:37'),
(47, 'India Gate Super Basmati Rice', 101, NULL, 113.00, 1, 0.00, '<p>India Gate Super Basmati Rice are well known for their large kernels and special fragrance. The grains grow significantly after cooking giving &nbsp;the rice a rich visual appeal. Hot rice served with curries is a fulfilling meal.</p>\r\n\r\n<p>Large grains Unique fragrance</p>\r\n\r\n<p>Every effort is made to maintain accuracy of all information. However, actual product packaging and materials may contain more and/or different information. It is recommended not to solely rely on the information presented.</p>\r\n\r\n<p><strong>1 KG</strong></p>\r\n', '1493631237pro_20.jpg', NULL, NULL, NULL, NULL, NULL, 12, '2017-05-01 09:33:57', '2017-08-15 17:04:34'),
(48, 'India Gate Tibar Basmati Rice', 101, NULL, 105.00, 1, 0.00, '<p>India Gate Tibar Rice is pure basmati rice, cultivar of the fertile land of Himalaya. It is prized for its long, slender grain of rice. On cooking, each rice grain remain separate and has an appetizing earthly aroma.</p>\r\n\r\n<p>Basmati rice Cultivar of Himalaya Long grain Aromatic rice</p>\r\n\r\n<p>Every effort is made to maintain accuracy of all information. However, actual product packaging and materials may contain more and/or different information. It is recommended not to solely rely on the information presented.</p>\r\n\r\n<p><strong>1 KG</strong></p>\r\n', '1493631311pro_24203.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:35:11', '2017-05-29 06:17:56'),
(49, 'India Gate Dubar Basmati Rice', 101, NULL, 95.00, 1, 0.00, '<p>India Gate Dubar Rice are identified by their long grains of rice and special fragrance. The cooked rice grains develop a fluffy texture and the length of grains also increase. The rice pairs well with curries, lentils etc.</p>\r\n\r\n<p>Long grains Natural aroma</p>\r\n\r\n<p>Every effort is made to maintain accuracy of all information. However, actual product packaging and materials may contain more and/or different information. It is recommended not to solely rely on the information presented.</p>\r\n\r\n<p><strong>1 KG</strong></p>\r\n', '1493631398pro_10964.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:36:38', '2017-05-29 06:51:52'),
(50, 'Daawat Basmati Brown Rice', 101, NULL, 145.00, 1, 0.00, '<p>Daawat Brown Basmati Rice becomes ready for serving in just 15 minutes. This delicious and healthy rice have zero cholesterol and are rich in vitamins, minerals and fibre. On cooking the grains expand to yield a fluffy and soft texture.</p>\r\n', '1493631434pro_119839.jpg', NULL, NULL, NULL, NULL, NULL, 5, '2017-05-01 09:37:14', '2017-07-21 23:53:34'),
(51, 'Dove Beauty Cream Soap - 3 Soap Pack', 84, NULL, 174.00, 1, 0.00, '<h2>3x100 gm</h2>\r\n\r\n<p>Make your skin soft and supple with the nourishing care of Dove Beauty Bar. It forms a creamy foam enriched with moisturizer that gently cleanses and hydrates skin leaving a mild fragrance after a refreshing bath.</p>\r\n', '1493631611pro_124472.jpg', NULL, NULL, NULL, NULL, NULL, 11, '2017-05-01 09:40:11', '2017-08-07 10:31:43'),
(52, 'Dettol Cool Soap', 84, NULL, 47.00, 1, 0.00, '<h2>125 gm</h2>\r\n\r\n<p>With refreshing menthol, Dettol Cool Soap offers an advanced protection against a wide range of unseen germs. Its pH-balanced formula with Dettol&#39;s trusted germ protection gives a burst of refreshment, restoring the skin moisture and leaving your skin feeling healthy and fresh.</p>\r\n', '1493631663pro_18820.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:41:03', '2017-05-21 20:21:53'),
(53, 'Lux Soft Touch Soap', 84, NULL, 26.00, 1, 0.00, '<h2>100 gm</h2>\r\n\r\n<p>With silk essence and floral fragrance of rose Gently moisturizes and nourishes skin Leaves you with soft, smooth and nourished skin</p>\r\n', '1493631713pro_18837.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:41:53', '2017-05-03 22:47:51'),
(54, 'Pears Pure & Gentle Soap', 84, NULL, 60.00, 1, 0.00, '<h2>125 gm</h2>\r\n\r\n<p>Mild on skin Gently moisturizes and nourishes skin Enriched with pure glycerine and natural oils</p>\r\n', '1493631761pro_23600.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:42:41', '2017-05-22 04:11:50'),
(55, 'Lifebuoy Care Soap', 79, NULL, 26.00, 1, 0.00, '<h2>125 gm</h2>\r\n\r\n<p>Has active natural shield for anti germ protection Makes skin soft and supple Enriched with the goodness of milk and oats Specially designed for sensitive skin</p>\r\n', '1493631822pro_25806.jpg', NULL, NULL, NULL, NULL, NULL, 21, '2017-05-01 09:43:42', '2017-07-29 05:12:21'),
(56, 'Himalaya Neem & Turmeric Soap', 84, NULL, 140.00, 1, 0.00, '<h2>4x125 gm</h2>\r\n\r\n<p>With benefits of Neem and Turmeric Non-greasy Makes skin soft and supple Hydrates the skin</p>\r\n', '1493631870pro_25653.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:44:30', '2017-05-20 00:24:53'),
(57, 'Cinthol Original Soap', 84, NULL, 132.00, 1, 0.00, '<h2>4x100 gm</h2>\r\n\r\n<p>Fresh and soothing fragrance Protect against and removes bad odour</p>\r\n', '1493631911pro_10812.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:45:11', '2017-05-16 12:29:24'),
(58, 'Dove Hair Therapy Intense Repair Shampoo', 84, NULL, 440.00, 1, 0.00, '<h2>650 ml</h2>\r\n\r\n<p>Nourishes hair with Keratin actives Strengthens hair at cellular level Prevents breakage Repairs damaged hair</p>\r\n', '1493632039pro_25251.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:47:19', '2017-05-20 19:41:52'),
(59, 'Head & Shoulders Smooth & Silky Anti Dandruff Shampoo', 84, NULL, 250.00, 1, 0.00, '<h2>340 ml</h2>\r\n\r\n<p>Formulated with moisturizers Helps soften and restore dry, frizzy hair 100% flake free Gives a silky smooth look</p>\r\n', '1493632102pro_104710.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:48:22', '2017-05-07 07:55:38'),
(60, 'Himalaya Tea Tree & Aloe Vera Anti Dandruff Shampoo', 84, NULL, 220.00, 1, 0.00, '<h2>400 ml</h2>\r\n\r\n<p>Contains herbal ingredients Vanquishes the root causes of dandruff Soothes and moisturises hair</p>\r\n', '1493632161pro_887.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:49:21', '2017-05-19 15:16:48'),
(61, 'Himani Navratna Cool Talc', 84, NULL, 150.00, 1, 0.00, '<h2>400 gm</h2>\r\n\r\n<p>Himani Navratna Cool Talc</p>\r\n', '1493632211pro_116625.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:50:11', '2017-05-22 19:45:40'),
(62, 'Nycil Cool Gulabjal Talc', 84, NULL, 115.00, 1, 0.00, '<h2>400 gm</h2>\r\n\r\n<p>Experience the cool and refreshing Nycil Cool Gulabjal Talc that gives a quick relief from prickly heat. With the goodness of Makhya Satva, Neem oil, Pudina Ark, rose petal power, it exhibits anti-bacterial, anti-fungal properties and absorbs sweat, keeping the skin dry.</p>\r\n', '1493632267pro_24370.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:51:07', '2017-05-16 10:20:50'),
(63, 'Wild Stone Hydra Energy Talc', 84, NULL, 150.00, 1, 0.00, '<h2>300 gm</h2>\r\n\r\n<p>Wild Stone Hydra Energy Talc</p>\r\n', '1493632334pro_24981.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:52:14', '2017-05-03 22:47:13'),
(64, 'Nivea Whitening Talc Touch Deodorant (Women)', 84, NULL, 199.00, 1, 0.00, '<h2>150 ml</h2>\r\n\r\n<p>Nivea Whitening Talc Deodorant gives all the benefits of talcum powder without being visible. With micro powder and liquorice extracts, it spreads across evenly and does not accumulate under the creases of your skin. The 48 hour protection formula also helps keep you fresh all day long.</p>\r\n', '1493632404pro_32706.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-05-01 09:53:24', '2017-05-05 15:12:24'),
(65, 'LOKI', 102, NULL, 25.00, 1, 0.00, '<p>only KG</p>\r\n', '1502465878Loki.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-08-11 15:37:58', '2017-08-12 23:33:06'),
(66, 'GILKI', 102, NULL, 30.00, 1, 0.00, '<p>FRESH GILKI</p>\r\n', '1502466293GILKI.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-08-11 15:44:53', '2017-08-12 23:21:45'),
(67, 'TAMATAR', 102, NULL, 65.00, 1, 0.00, '<p>ONLY 1KG</p>\r\n', '1502466460TAMATAR.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-08-11 15:47:40', '2017-08-12 23:48:14'),
(68, 'HARI MIRCH', 102, NULL, 60.00, 1, 0.00, '<p>FRESH MIRCHI 1KG</p>\r\n', '1502466643HARI MIRCH.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-08-11 15:50:43', '2017-08-12 23:25:32'),
(69, 'PRESS', 104, NULL, 10.00, 1, 0.00, '<p>ONLY SHIRT PANT</p>\r\n', '1502467058LAUNDRY.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-08-11 15:57:38', '2017-08-12 23:17:58'),
(70, 'CAR WASHING', 103, NULL, 300.00, 1, 0.00, '<p>GOOD CAR WASHING</p>\r\n', '1502467160CAR WASHING.jpg', NULL, NULL, NULL, NULL, NULL, 2, '2017-08-11 15:59:20', '2017-08-12 23:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_keys`
--

CREATE TABLE `product_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `secret_key` text COLLATE utf8_unicode_ci,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `validity_year` int(10) UNSIGNED DEFAULT NULL,
  `dealer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field_key`, `field_value`, `created_at`, `updated_at`) VALUES
(44, 'website_title', 'Guruhomeshops : India Largest kirana shop', '2017-04-15 17:31:06', '2017-04-20 13:15:35'),
(45, 'website_email', 'info@guruhomeshops.com', '2017-04-15 17:31:07', '2017-04-20 13:15:35'),
(46, 'website_url', 'http://guruhomeshops.com/', '2017-04-15 17:31:07', '2017-04-20 13:15:35'),
(47, 'contact_number', '+91-9168518310', '2017-04-15 17:31:07', '2017-04-21 19:52:31'),
(48, 'company_address', '<p>Nagpur , MH 440034</p>\r\n', '2017-04-15 17:31:07', '2017-04-23 12:43:17'),
(49, 'banner_image1', '149271233901.jpg', '2017-04-15 17:31:07', '2017-04-20 12:48:59'),
(53, '_method', 'PATCH', '2017-04-15 18:06:33', '2017-04-15 18:06:33'),
(54, 'banner_image2', '149271236302.jpg', '2017-04-20 12:49:23', '2017-04-20 12:49:23'),
(55, 'banner_image3', '149271387201.jpg', '2017-04-20 12:49:23', '2017-04-20 13:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_billing_addresses`
--

CREATE TABLE `shipping_billing_addresses` (
  `id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address1` text,
  `address2` text,
  `zip_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address_type` tinyint(4) DEFAULT '1',
  `payment_mode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_billing_addresses`
--

INSERT INTO `shipping_billing_addresses` (`id`, `user_id`, `product_id`, `status`, `reference_number`, `name`, `email`, `mobile`, `phone`, `address1`, `address2`, `zip_code`, `city`, `state`, `country`, `address_type`, `payment_mode`, `created_at`, `updated_at`) VALUES
(1, 11, NULL, NULL, NULL, ' nileshvyas1986@gmail.com', 'admin@admin.com', '343543543', NULL, 'dfgdfgfdgfd', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-04-10 10:23:08', '2017-04-10 10:40:56'),
(2, 11, NULL, NULL, NULL, ' nileshvyas1986@gmail.com', 'admin@admin.com', '256   ', NULL, 'mp', 'mp', '452001', 'kad@gmail.com', '123456', NULL, 2, NULL, '2017-04-10 10:37:01', '2017-04-10 11:29:12'),
(3, 0, NULL, NULL, NULL, 'nileshvyas1986@gmail.com', 'admin@admin.com', ' ', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-04-10 12:56:40', '2017-04-10 13:01:02'),
(4, 16, NULL, NULL, NULL, 'kundn', 'kroy.webxpert@gmail.com', '456123', NULL, 'indore', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-04-10 13:39:17', '2017-04-10 13:39:17'),
(5, 16, NULL, NULL, NULL, 'kandu', 'kanu@sdfdk.cso', '45421212', NULL, 'indore sds', 'dgdfgfdg', '89089', 'indore', 'mp', NULL, 2, NULL, '2017-04-10 13:39:41', '2017-04-10 13:39:41'),
(6, 15, NULL, NULL, NULL, 'nileshvyas1986@gmail.com', 'kroy.iips@gmail.com', ' 456123 ', NULL, '4', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-04-10 16:31:26', '2017-04-14 16:02:37'),
(7, 15, NULL, NULL, NULL, 'nileshvyas1986@gmail.com', 'admin@admin.com', ' 456123 ', NULL, '4', 'fsdfds', '34324324', 'kad2@gmail.com', 'kad2@gmail.com', NULL, 2, NULL, '2017-04-10 16:31:50', '2017-04-14 16:02:40'),
(8, 18, NULL, NULL, NULL, 'vaibhav', 'v@gmail.com', '8794564', NULL, 'indore', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-04-10 16:54:45', '2017-04-10 16:54:46'),
(9, 18, NULL, NULL, NULL, 'va', 'v@gmail.com', '789546465', NULL, 'iuh', 'hkjh', '4545415', 'root', 'root', NULL, 2, NULL, '2017-04-10 16:55:23', '2017-04-10 16:55:23'),
(10, 19, NULL, NULL, NULL, 'kundan', 'kroy.iips@gmail.com', '8103194076', NULL, 'indore mp 452001', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-04-13 14:52:34', '2017-04-13 14:52:34'),
(11, 19, NULL, NULL, NULL, 'kundan roy', 'kroy.zend@gmail.com', '8103194076', NULL, 'indore', 'vijay nagar mp', '452001', 'indore', 'mp', NULL, 2, NULL, '2017-04-13 14:53:15', '2017-04-13 14:53:15'),
(12, 20, NULL, NULL, NULL, '', '', ' ', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-01 07:00:53', '2017-05-01 07:00:53'),
(13, 20, NULL, NULL, NULL, 'vicky', 'vaibhavdeveloper2014@gmail.com', '8982461354', NULL, '231 ', 'bdsa sdbsa', '452001', 'indore', 'MP', NULL, 2, NULL, '2017-05-01 07:01:19', '2017-05-01 07:01:19'),
(14, 21, NULL, NULL, NULL, 'sawati koushal', 'sawatikoushal1983@gmail.com', '9096665538', NULL, 'NAGPUR', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-04 11:52:43', '2017-05-04 11:52:43'),
(15, 21, NULL, NULL, NULL, 'sawati koushal', 'sawatikoushal1983@gmail.com', ' 9096665538', NULL, '56 Uday Naagar Near Vithal school', 'Ring Road Nagpur', '440034', 'NAGPUR', 'MAHARASTRA', NULL, 2, NULL, '2017-05-04 11:53:56', '2017-05-04 11:53:56'),
(16, 22, NULL, NULL, NULL, '', '', ' ', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-06-30 11:44:14', '2017-06-30 11:44:14'),
(17, 22, NULL, NULL, NULL, 'Rajesh', 'meenaramutulsiram@gmail.com', '8770828351', NULL, '8 New Kanwar Nagar Indore', 'Nr.Hanuman Mandir', '452006', 'INDORE', 'Madhya Pradesh', NULL, 2, NULL, '2017-06-30 11:45:16', '2017-06-30 11:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `support_type` varchar(255) DEFAULT NULL,
  `subject` tinytext,
  `description` text,
  `ticket_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_key_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `coupan_id` int(11) UNSIGNED DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` float(10,2) DEFAULT NULL,
  `discount_price` float(10,2) DEFAULT '0.00',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `product_id`, `product_name`, `product_key_id`, `payment_mode`, `status`, `coupan_id`, `discount`, `total_price`, `discount_price`, `transaction_id`, `product_details`, `created_at`, `updated_at`) VALUES
(1, 20, 36, 'Bajra Aata', NULL, 'COD', NULL, NULL, NULL, 80.00, 80.00, '1493622088', '[{\"id\":36,\"product_title\":\"Bajra Aata\",\"product_category\":100,\"product_sub_category\":null,\"price\":80,\"qty\":1,\"discount\":0,\"description\":\"<p>Best Quality Bajra Aata 1 KG<\\/p>\\r\\n\",\"photo\":\"1493621894bajra-roti2.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":1,\"created_at\":\"2017-05-01 06:58:14\",\"updated_at\":\"2017-05-01 06:58:14\"}]', '2017-05-01 07:01:28', '2017-05-01 07:01:28'),
(2, 21, 55, 'Lifebuoy Care Soap', NULL, 'COD', NULL, NULL, NULL, 26.00, 26.00, '1493898723', '[{\"id\":55,\"product_title\":\"Lifebuoy Care Soap\",\"product_category\":79,\"product_sub_category\":null,\"price\":26,\"qty\":1,\"discount\":0,\"description\":\"<h2>125 gm<\\/h2>\\r\\n\\r\\n<p>Has active natural shield for anti germ protection Makes skin soft and supple Enriched with the goodness of milk and oats Specially designed for sensitive skin<\\/p>\\r\\n\",\"photo\":\"1493631822pro_25806.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":8,\"created_at\":\"2017-05-01 09:43:42\",\"updated_at\":\"2017-05-04 11:51:39\"}]', '2017-05-04 11:52:03', '2017-05-04 11:52:03'),
(3, 21, 15, 'Masoor Dal', NULL, 'COD', NULL, NULL, NULL, 107.00, 107.00, '1493898723', '[{\"id\":15,\"product_title\":\"Masoor Dal\",\"product_category\":87,\"product_sub_category\":null,\"price\":107,\"qty\":1,\"discount\":0,\"description\":\"<p>Masoor Daal<\\/p>\\r\\n\",\"photo\":\"1493424524mas.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":16,\"created_at\":\"2017-04-28 12:51:14\",\"updated_at\":\"2017-04-30 09:38:17\"}]', '2017-05-04 11:52:03', '2017-05-04 11:52:03'),
(4, 21, 55, 'Lifebuoy Care Soap', NULL, 'COD', NULL, NULL, NULL, 26.00, 26.00, '1493898850', '[{\"id\":55,\"product_title\":\"Lifebuoy Care Soap\",\"product_category\":79,\"product_sub_category\":null,\"price\":26,\"qty\":1,\"discount\":0,\"description\":\"<h2>125 gm<\\/h2>\\r\\n\\r\\n<p>Has active natural shield for anti germ protection Makes skin soft and supple Enriched with the goodness of milk and oats Specially designed for sensitive skin<\\/p>\\r\\n\",\"photo\":\"1493631822pro_25806.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":8,\"created_at\":\"2017-05-01 09:43:42\",\"updated_at\":\"2017-05-04 11:51:39\"}]', '2017-05-04 11:54:10', '2017-05-04 11:54:10'),
(5, 21, 15, 'Masoor Dal', NULL, 'COD', NULL, NULL, NULL, 107.00, 107.00, '1493898852', '[{\"id\":15,\"product_title\":\"Masoor Dal\",\"product_category\":87,\"product_sub_category\":null,\"price\":107,\"qty\":1,\"discount\":0,\"description\":\"<p>Masoor Daal<\\/p>\\r\\n\",\"photo\":\"1493424524mas.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":16,\"created_at\":\"2017-04-28 12:51:14\",\"updated_at\":\"2017-04-30 09:38:17\"}]', '2017-05-04 11:54:12', '2017-05-04 11:54:12'),
(6, 22, 24, 'TATA Salt ', NULL, 'COD', NULL, NULL, NULL, 18.00, 18.00, '1498823130', '[{\"id\":24,\"product_title\":\"TATA Salt \",\"product_category\":81,\"product_sub_category\":null,\"price\":18,\"qty\":1,\"discount\":0,\"description\":\"<p>Tata Salt<\\/p>\\r\\n\\r\\n<p>1KG<\\/p>\\r\\n\\r\\n<p>Tata White Salt is pure and white salt, manufactured using vacuum evaporation technology. This salt contains requisite amount of Iodine that ensures proper mental development of children and also prevents iodine deficiency disorders in adults. Just add it to make your dishes delectable and wholesome.<\\/p>\\r\\n\",\"photo\":\"1493442603salt.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":13,\"created_at\":\"2017-04-29 05:10:03\",\"updated_at\":\"2017-06-26 21:41:29\"}]', '2017-06-30 11:45:30', '2017-06-30 11:45:30'),
(7, 22, 32, 'White Sugar', NULL, 'COD', NULL, NULL, NULL, 40.00, 40.00, '1498823130', '[{\"id\":32,\"product_title\":\"White Sugar\",\"product_category\":81,\"product_sub_category\":null,\"price\":40,\"qty\":1,\"discount\":0,\"description\":\"<p>Best quality sugar 1 KG<\\/p>\\r\\n\",\"photo\":\"1493621178sugar.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":6,\"created_at\":\"2017-05-01 06:46:18\",\"updated_at\":\"2017-06-20 14:52:21\"}]', '2017-06-30 11:45:30', '2017-06-30 11:45:30'),
(8, 22, 31, 'Mastard Oil', NULL, 'COD', NULL, NULL, NULL, 120.00, 120.00, '1498823130', '[{\"id\":31,\"product_title\":\"Mastard Oil\",\"product_category\":95,\"product_sub_category\":null,\"price\":120,\"qty\":1,\"discount\":5,\"description\":\"<p>Best quality mastard oil 1 KG<\\/p>\\r\\n\",\"photo\":\"1493618303mustard-oil.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":8,\"created_at\":\"2017-05-01 05:58:23\",\"updated_at\":\"2017-06-26 21:41:32\"}]', '2017-06-30 11:45:30', '2017-06-30 11:45:30'),
(9, 19, 55, 'Lifebuoy Care Soap', NULL, 'COD', NULL, NULL, NULL, 26.00, 26.00, '1498939765', '[{\"id\":55,\"product_title\":\"Lifebuoy Care Soap\",\"product_category\":79,\"product_sub_category\":null,\"price\":26,\"qty\":1,\"discount\":0,\"description\":\"<h2>125 gm<\\/h2>\\r\\n\\r\\n<p>Has active natural shield for anti germ protection Makes skin soft and supple Enriched with the goodness of milk and oats Specially designed for sensitive skin<\\/p>\\r\\n\",\"photo\":\"1493631822pro_25806.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":15,\"created_at\":\"2017-05-01 09:43:42\",\"updated_at\":\"2017-07-01 20:07:41\"}]', '2017-07-01 20:09:25', '2017-07-01 20:09:25'),
(10, 19, 24, 'TATA Salt ', NULL, 'COD', NULL, NULL, NULL, 18.00, 18.00, '1498940339', '[{\"id\":24,\"product_title\":\"TATA Salt \",\"product_category\":81,\"product_sub_category\":null,\"price\":18,\"qty\":1,\"discount\":0,\"description\":\"<p>Tata Salt<\\/p>\\r\\n\\r\\n<p>1KG<\\/p>\\r\\n\\r\\n<p>Tata White Salt is pure and white salt, manufactured using vacuum evaporation technology. This salt contains requisite amount of Iodine that ensures proper mental development of children and also prevents iodine deficiency disorders in adults. Just add it to make your dishes delectable and wholesome.<\\/p>\\r\\n\",\"photo\":\"1493442603salt.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":17,\"created_at\":\"2017-04-29 05:10:03\",\"updated_at\":\"2017-07-01 20:17:50\"}]', '2017-07-01 20:18:59', '2017-07-01 20:18:59'),
(11, 22, 37, 'Black Tea', NULL, 'COD', NULL, NULL, NULL, 270.00, 270.00, '1499004353', '[{\"id\":37,\"product_title\":\"Black Tea\",\"product_category\":83,\"product_sub_category\":null,\"price\":270,\"qty\":1,\"discount\":0,\"description\":\"<p>Best Quality Asam Black Tea Patti 1 KG<\\/p>\\r\\n\",\"photo\":\"1493622511chaypatti.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":6,\"created_at\":\"2017-05-01 07:08:31\",\"updated_at\":\"2017-06-26 21:41:29\"}]', '2017-07-02 14:05:53', '2017-07-02 14:05:53'),
(12, 22, 40, 'Cashews', NULL, 'COD', NULL, NULL, NULL, 900.00, 900.00, '1499004353', '[{\"id\":40,\"product_title\":\"Cashews\",\"product_category\":85,\"product_sub_category\":null,\"price\":900,\"qty\":1,\"discount\":0,\"description\":\"<p>Besh Quality Bold Cashews 1 KG Pack<\\/p>\\r\\n\",\"photo\":\"1493630395cashew.jpg\",\"product_type\":null,\"validity\":null,\"product_key_id\":null,\"total_stocks\":null,\"available_stocks\":null,\"views\":9,\"created_at\":\"2017-05-01 09:19:55\",\"updated_at\":\"2017-06-26 21:41:31\"}]', '2017-07-02 14:05:53', '2017-07-02 14:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user3', 'user3', 'user3@user3.com', '$2y$10$Lz/T3Dag7MEdSq0rReZ4E.7y8jcDnPVMLT/sboOKQcVuv6kdyPWz6', NULL, '', 0, '0000-00-00 00:00:00', '2017-03-16 22:11:19'),
(2, 'user2', 'user2', 'user2@user2.com', '$2y$10$Hak7CISZtp53vF2V7tP1/uRhXs8mqjebuRwblENnm5L4zFi2xSEuu', NULL, '', 0, '2016-12-04 17:47:05', '2017-03-16 22:10:46'),
(3, 'user1', 'user1', 'user1@user1.com', '$2y$10$wdUo8O4gKFbTeKlA4rdw6uMTRBGQNzIjm/xvHTmcBFiCQrZ3HMboe', NULL, '', 1, '2016-12-04 17:47:53', '2017-03-16 22:10:27'),
(4, 'kundan', 'roy', 'test@gmail.com', '$2y$10$ZYWi19RyDm1M/5JE1/ZPvuz0DaBKLR5xK1MVAuwUMmRH/D1FbpYqO', NULL, '', 1, '2017-03-16 18:18:54', '2017-03-16 18:20:23'),
(8, 'sdmail.com', '', 'user1s@user1.com', '$2y$10$2.K1aGZmgtRokQriv9PtKuZGxodDhccLrf/NMdsa9xc.uIJhc6flu', NULL, NULL, 0, '2017-03-17 21:40:47', '2017-03-17 21:40:47'),
(10, 'Kandy', '', 'kandyroy@gmail.com', '$2y$10$ZYWi19RyDm1M/5JE1/ZPvuz0DaBKLR5xK1MVAuwUMmRH/D1FbpYqO', NULL, NULL, 0, '2017-03-19 23:26:01', '2017-03-19 23:26:01'),
(11, 'kad', 'k', 'kad@gmail.com', '$2y$10$qpdQ8GigrG3bRksUEmgbe.cXNgFvjjkcM04RgcHJAHmSlS5oCtcFK', NULL, NULL, 0, '2017-04-10 12:11:35', '2017-04-10 12:11:35'),
(12, 'fdfdf', '', 'k1@mailinator.com', '$2y$10$Q3q9uh4IoAMmsPypzG37vegTJaeiGMrXguVSMK2XuakV/xs240cgi', NULL, NULL, 0, '2017-04-10 18:10:08', '2017-04-10 18:10:08'),
(13, 'kandy', '', 'kandy@mailinator.com', '$2y$10$lAzg4PtJc5Dm0MoDcwvXKeSDK0v72zxKkWg48JT5rv7zC.SnKlzkS', NULL, NULL, 0, '2017-04-10 18:11:32', '2017-04-10 18:11:32'),
(14, 'kad', '', 'kadw@gmail.com', '$2y$10$bPjm/xDgxirBpeb0ytpkL.vwM/Fxmpka8B1b07silC8zZCIxpwMH2', NULL, NULL, 0, '2017-04-10 18:20:43', '2017-04-10 18:20:43'),
(15, 'kad', '', 'kad2@gmail.com', '$2y$10$YwQ85PyV0xioJtEH8LBPHultXA6TJWDWTKhj.cb.litv1.Da.i5f.', NULL, NULL, 0, '2017-04-10 18:45:43', '2017-04-10 18:45:43'),
(16, 'kad', '', 'kads2@gmail.com', '$2y$10$I3vvSafXQC1rK9FFr8NBDOcW7lqUc7h7plDFgpzb4OFg9NW0i1esm', NULL, NULL, 0, '2017-04-10 19:08:38', '2017-04-10 19:08:38'),
(17, 'kunda', '', 'roy@sdsd.com', '$2y$10$h8KgGLoQgdKgDikG76YsSOvp6Ba.hdj.UdRfN22oFQnXoL0GM6lW6', NULL, NULL, 0, '2017-04-10 21:20:14', '2017-04-10 21:20:14'),
(18, 'vaibhav', '', 'vaibhav@gmail.com', '$2y$10$ffn2Niy9cD.3Iy6pzOGA6OMW0wtBh9KfmZ0ZRzQ9AiwnoZ6o9ld8m', NULL, NULL, 0, '2017-04-10 22:23:40', '2017-04-10 22:23:40'),
(19, 'kundan', '', 'kroy.iips@gmail.com', '$2y$10$BW8yh95vKxFalx7gWz3iI..HQY5tvJD1ahHqRIYG8ZnXMzZzKGb2m', NULL, NULL, 0, '2017-04-13 20:22:09', '2017-04-13 20:22:09'),
(20, 'vicky', '', 'vaibhavdeveloper2014@gmail.com', '$2y$10$UtEnh9StilDGL/NLEz5IheJ9UyjoPAaHOOQtXF60mh01pBP3V3rKq', NULL, NULL, 1, '2017-05-01 07:00:22', '2017-05-01 07:01:57'),
(21, 'Sawati Koushal', '', 'sawatikoushal1983@gmail.com', '$2y$10$4b0h4qxCfM.vmPEuGt0sTeaRDdmhHswrcy1OVwed14iuLIDmPipi.', NULL, NULL, 0, '2017-05-04 11:50:14', '2017-05-04 11:50:14'),
(22, 'Rajesh Pounikar', '', 'meenaramutulsiram@gmail.com', '$2y$10$Pv9L3g2O562xMSsSs57RhOS8AVxDeHfZBESSeVfnNPzL45JyshXfm', NULL, NULL, 0, '2017-06-30 11:43:16', '2017-06-30 11:43:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupans`
--
ALTER TABLE `coupans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_supports`
--
ALTER TABLE `customer_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category` (`product_category`);

--
-- Indexes for table `product_keys`
--
ALTER TABLE `product_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_billing_addresses`
--
ALTER TABLE `shipping_billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `coupans`
--
ALTER TABLE `coupans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_supports`
--
ALTER TABLE `customer_supports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `product_keys`
--
ALTER TABLE `product_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `shipping_billing_addresses`
--
ALTER TABLE `shipping_billing_addresses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
