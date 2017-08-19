-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2017 at 10:04 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krsdata_eventbid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Caterine', 'caterine', 0, 1, 1, '2017-05-10 03:31:54', '2017-05-10 03:31:54'),
(2, 'Hair ', 'hair', 0, 1, 1, '2017-05-10 03:37:26', '2017-05-10 03:37:26'),
(3, 'Cleaning', 'cleaning', 0, 1, 1, '2017-05-10 03:49:07', '2017-05-10 03:49:07'),
(4, 'Car ', 'car', 0, 1, 1, '2017-05-10 03:54:21', '2017-05-10 03:54:21'),
(5, 'Patisserie', 'patisserie', 0, 1, 1, '2017-05-10 03:55:45', '2017-05-10 03:55:45'),
(6, 'Supply Hire', 'supply-hire', 0, 1, 1, '2017-05-10 04:01:57', '2017-05-10 04:01:57'),
(7, 'Waiting/Waitressing', 'waitingwaitressing', 0, 1, 1, '2017-05-10 04:02:55', '2017-05-10 04:02:55'),
(8, 'Entertainment ', 'entertainment', 0, 1, 1, '2017-05-10 04:05:20', '2017-05-10 04:05:20'),
(9, 'Supply ', 'supply', 0, 1, 1, '2017-05-10 04:11:38', '2017-05-10 04:11:38'),
(10, 'hello word how are you', 'hello-word-how-are-you', 0, 1, 1, '2017-05-11 21:45:29', '2017-05-11 21:45:29'),
(11, 'abc', 'abc', 0, 1, 1, '2017-06-16 20:14:41', '2017-06-16 20:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `category_question`
--

CREATE TABLE `category_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_task_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_question_key` text,
  `category_question_value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `firstName`, `lastName`, `email`, `comments`, `created_at`, `updated_at`) VALUES
(0, 'kanika', 'query for angular', 'kroy.iips@gmail.com', 'need tutorial for anguar', '2017-07-16 21:28:35', '2017-07-16 21:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `custom_categories`
--

CREATE TABLE `custom_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('2017_03_12_221035_create_admin_table', 1),
('2017_03_12_221035_create_password_resets_table', 1),
('2017_03_12_221035_create_permission_role_table', 1),
('2017_03_12_221035_create_permissions_table', 1),
('2017_03_12_221035_create_role_user_table', 1),
('2017_03_12_221035_create_roles_table', 1),
('2017_03_12_221035_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tasks`
--

CREATE TABLE `post_tasks` (
  `id` int(10) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `event_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `event_type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `date_required` datetime DEFAULT NULL,
  `time_from` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `time_to` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `inspiration_photo` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_tasks`
--

INSERT INTO `post_tasks` (`id`, `user_id`, `event_title`, `event_type`, `date_required`, `time_from`, `time_to`, `category_id`, `inspiration_photo`, `created_at`, `updated_at`) VALUES
(1, NULL, 'eventTitle', 'eventType', '0000-00-00 00:00:00', '10:10', '5:00', 1, 'inspirationPhoto', '2017-06-17 00:03:40', '2017-06-17 00:03:40'),
(2, NULL, 'eventTitle', 'eventType', '0000-00-00 00:00:00', '10:10', '5:00', 1, 'inspirationPhoto', '2017-06-17 00:07:12', '2017-06-17 00:07:12'),
(3, NULL, 'eventTitle', 'eventType', '0000-00-00 00:00:00', '10:10', '5:00', 1, 'inspirationPhoto', '2017-06-17 00:08:55', '2017-06-17 00:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `user_type`, `company_url`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kundan', 'roy', 'kroy@mailinator.com', 'userType', NULL, '$2y$10$XgVHHHMg8YkqGGAtr6YKIuM9eueMg12a7ycfdJg4Kqk.tJkPS1Rz.', NULL, 0, '2017-04-18 22:04:47', '2017-04-18 22:04:47'),
(2, 'kanika', 'sethi', 'kanikasethi04@gmail.com', 'taskHirer', NULL, '$2y$10$xK/Nc7PjaiRbYItk7Buq4OnMYjyIveKc27PCky7pbjFhtFpBgMl4u', NULL, 0, '2017-04-20 17:53:46', '2017-04-20 17:53:46'),
(3, 'mohit', 'sethi', 'mohitsethi.397@gmail.com', 'taskHirer', NULL, '$2y$10$biX3FX4T61m9GprtWHA4uOQ/wFo8A5dZD.q/6nmDuzATiLAHEEzLe', NULL, 0, '2017-04-20 18:02:00', '2017-04-20 18:02:00'),
(4, 'kanika', 'sethi', 'kanikayadav04@gmail.com', 'taskHirer', NULL, '$2y$10$EWsHUqrlZfdsSLAcFiI6M.ov.AnRjfbuzYXOKllUMLO9DjB9v9Koq', NULL, 0, '2017-04-21 03:43:07', '2017-04-21 03:43:07'),
(5, 'kanika', 'sethi', 'rama@gmail.com', 'taskHirer', NULL, '$2y$10$b.zwJeoRSaP6ue3UwaWre.QUjQ9YbKYpOk9STKaB0DL.V2bfWg/JG', NULL, 0, '2017-04-21 03:47:23', '2017-04-21 03:47:23'),
(6, 'kanika', 'yadav', 'kanikayadav0427@gmail.com', 'taskHirer', NULL, '$2y$10$28fSlHYUwJpQkhHIkhF2D.izVszCUUFqr449wFjZAj7HAmRiK0K9W', NULL, 0, '2017-04-23 03:55:56', '2017-04-23 03:55:56'),
(7, 'Rebecca', 'Aiezza', 'rebecca.aiezza@gmail.com', 'taskHirer', NULL, '$2y$10$wVJQqJZncvuSD8hkIz9ERueWYxleeiKASKWdk9tVToj5iHIf7Y9oG', NULL, 0, '2017-04-25 07:35:57', '2017-04-25 07:35:57'),
(8, 'qw', 'QW', 'qw@s.com', 'taskHirer', NULL, '$2y$10$zvoTpuT0tRsOuejU/byOiu5RRSAObIxH7.QTHynfVO.R32nJb029u', NULL, 0, '2017-04-27 13:52:51', '2017-04-27 13:52:51'),
(9, 'we', 'we', 'we@we.com', 'taskHirer', NULL, '$2y$10$OU1GYfAiWUNJUHhod.QudewV9o4REEEY/mls.jaulNEawtETz2LqG', NULL, 0, '2017-04-27 13:53:18', '2017-04-27 13:53:18'),
(10, 'kanika', 'sethi', 'jojo@gmail.com', 'taskHirer', NULL, '$2y$10$I4OFoESnSmiLMrqDhg5n.OOnZFedG4EQAj2bSMIc1jtVhpwykpBfG', NULL, 0, '2017-04-27 14:02:17', '2017-04-27 14:02:17'),
(11, 'mohan', 'jodaro', 'mohan@gmail.com', 'taskHirer', NULL, '$2y$10$CO2Xoh4WTf9CpeHBXZA0R.SS6gP5V6YiE.32RNqotRmkgk3Lm878y', NULL, 0, '2017-04-27 14:02:57', '2017-04-27 14:02:57'),
(12, 'redf', 'redf', 'res@re.com', 'taskHirer', NULL, '$2y$10$y7hjdzhzRaYxhJJDtc7czeWS9dT6YFwYTObiKGQB4G/SeDtf4hiAW', NULL, 0, '2017-04-27 14:03:18', '2017-04-27 14:03:18'),
(13, 'aakash', 'jain', 'akash@gmail.com', 'taskHirer', NULL, '$2y$10$EeTb.9WLEOm0jvZZ4GFUAOl4vmeCd5J4yAH8oT/bs/3bNNy5A.o1K', NULL, 0, '2017-04-27 14:07:37', '2017-04-27 14:07:37'),
(14, 'asdf', 'asdf', 'as@gm.com', 'taskHirer', NULL, '$2y$10$fDfJ3./ezFS2kz8lqxWdPOfKbtElD8mvmIBilD9NjThHuziaBTO8O', NULL, 0, '2017-04-27 14:08:38', '2017-04-27 14:08:38'),
(15, 'lion', 'lion', 'lion@gmail.com', 'taskHirer', NULL, '$2y$10$6DGAcXnhm39l688XKZlhUOyJytY9/GcCnBJjKjfaUTk19DN9yoLTG', NULL, 0, '2017-04-27 14:09:19', '2017-04-27 14:09:19'),
(16, 'sumit', 'yadav', 'sumityadav920@gmail.com', 'taskHirer', NULL, '$2y$10$gprHBvZrLeYM8ntJLBeQkuEWcSTxy8iy2zd5n.S2jyzYroorptmEe', NULL, 0, '2017-04-28 04:04:27', '2017-04-28 04:04:27'),
(17, 'rama', 'narang', 'rama@gmail.co', 'taskHirer', NULL, '$2y$10$y7UNcq3dzSl/qRFAVcRT1uq0HaGZIcPbXo/CddcUGUt1xLanFgXVq', NULL, 0, '2017-04-28 04:07:08', '2017-04-28 04:07:08'),
(18, 'kanika', 'sethi', 'kanikayadav@gmail.com', 'taskHirer', NULL, '$2y$10$AM/LMEn1M1fthAFHte5Qlu7WqsAAhOHj45DQ9hKk1xnFfpyaQeaJS', NULL, 0, '2017-04-28 04:21:31', '2017-04-28 04:21:31'),
(19, 'harish', 'sethi', 'harish@gmail.com', 'taskHirer', NULL, '$2y$10$Pa70zf/kTAMcvEc/Ij8cROEDgDFQUj/HOEt.mZj0de/vKOC2AKk7q', NULL, 0, '2017-04-28 04:30:26', '2017-04-28 04:30:26'),
(20, 'tirupati', 'balaji', 'tirupati@gmail.com', 'taskHirer', NULL, '$2y$10$YfbqmiePF0gzCPUTlDfVGeWPpR8Wz7s1bbFd2kmPIS9Yq/DKWDHtm', NULL, 0, '2017-04-28 04:32:33', '2017-04-28 04:32:33'),
(21, 'vivek', 'yadav', 'vivekyadav@gmail.com', 'taskHirer', NULL, '$2y$10$6CMNvKuE77KaPqACpSNU0.4LXp3yyDxUxfEypul6n/bVCJ6zoitRy', NULL, 0, '2017-04-28 04:41:49', '2017-04-28 04:41:49'),
(22, 'akash', 'yadav', 'akashyadav@gmail.com', 'taskHirer', NULL, '$2y$10$30B.OzRhQrY8QTTyHpnBZO016s20PTMw.T.Z5zjqTO.abY1xz1nXm', NULL, 0, '2017-05-02 11:53:19', '2017-05-02 11:53:19'),
(23, 'reds', 'Reda', 'red@red.com', 'taskHirer', NULL, '$2y$10$AQ7yGKa.uZRD5C8sAro.ceLW6zZ2LaUyx.eCQwcXk2LjvGP6yf3Gi', NULL, 0, '2017-05-04 04:36:34', '2017-05-04 04:36:34'),
(24, 'Rebecca', 'Aiezza', 'rebecca.aiezza@bigpond.com', 'taskHirer', NULL, '$2y$10$SdAAFky6rZOpQz1uYEwh3edKSaqdFLjehYkvLgnC4o6Sg65MQfm9K', NULL, 0, '2017-05-07 05:12:17', '2017-05-07 05:12:17'),
(25, 'Anita', 'Vishwakarma', 'anita@gmail.com', 'taskHirer', NULL, '$2y$10$TisSLdR.XVhKky5n/djMweUGWIvNKw7QB5/EtWj7r/YFi/zF5Emni', NULL, 0, '2017-05-14 09:22:20', '2017-05-14 09:22:20'),
(26, 'pinky', 'sharma', 'pinky@gmail.com', 'taskHirer', NULL, '$2y$10$9MpPoXVNlnXclN8swcKAyOkCpRvzBvV.Xbgo9at/ZbTguHOdFmQsG', NULL, 0, '2017-05-14 09:33:20', '2017-05-14 09:33:20'),
(27, 'Test', 'Post', 'post@post.com', 'taskProvider', NULL, '$2y$10$IEgogmhSdp0AJ/f13O0JY.vXJmLHs9qlrDC3ceEX7HQejueJMmIji', NULL, 0, '2017-06-20 05:15:39', '2017-06-20 05:15:39');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_question`
--
ALTER TABLE `category_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_categories`
--
ALTER TABLE `custom_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `post_tasks`
--
ALTER TABLE `post_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `category_question`
--
ALTER TABLE `category_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_categories`
--
ALTER TABLE `custom_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_tasks`
--
ALTER TABLE `post_tasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
