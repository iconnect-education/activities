-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2022 at 02:00 PM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maannews_db_maantech`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_ads` text COLLATE utf8mb4_unicode_ci,
  `sidebar_ads` text COLLATE utf8mb4_unicode_ci,
  `before_post_ads` text COLLATE utf8mb4_unicode_ci,
  `after_post_ads` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `header_ads`, `sidebar_ads`, `before_post_ads`, `after_post_ads`, `status`, `created_at`, `updated_at`) VALUES
(1, '<a href=\"  https://www.google.com/  \" target=\"_blank\">\r\n                        <img src=\"https://maannews.maantechnology.com/public/uploads/images/ads/adds.jpg  \" alt=\"https://maannews.maantechnology.com/public/frontend/img/header-adds/adds.jpg\"></a>', '<a class=\"side-add-thumb\" href=\"https://www.google.com/\">\r\n                                <img src=\"https://maannews.maantechnology.com/public/frontend/img/entertainment/slide-card/slide-img-1.jpg\" alt=\"https://maannews.maantechnology.com/public/frontend/img/entertainment/slide-card/slide-img-1.jpg\">\r\n                            </a>', '<a href=\"  https://www.google.com/  \" target=\"_blank\">\r\n                        <img src=\"https://maannews.maantechnology.com/public/uploads/images/ads/adds.jpg  \" alt=\"https://maannews.maantechnology.com/public/frontend/img/header-adds/adds.jpg\"></a>', '<a href=\"  https://www.google.com/  \" target=\"_blank\">\r\n                        <img src=\"https://maannews.maantechnology.com/public/uploads/images/ads/adds.jpg  \" alt=\"https://maannews.maantechnology.com/public/frontend/img/header-adds/adds.jpg\"></a>', 1, '2022-07-03 00:57:19', '2022-10-10 04:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcategories`
--

INSERT INTO `blogcategories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Sports', 1, '2021-09-13 04:01:11', '2021-09-13 04:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogsubcategory_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `summary` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `tags` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blogsubcategory_id`, `title`, `summary`, `description`, `status`, `date`, `tags`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 3, 'Kuldeep Yadav undergoes surgery on injured knee', 'India and Kolkata Knight Riders left-arm spinner Kuldeep Yadav has undergone surgery after sustaining a knee injury.', '<p><span style=\"color: rgb(51, 51, 51); font-family: helvetica, &quot;Segoe UI&quot;, Arial, sans-serif;\">India and Kolkata Knight Riders left-arm spinner&nbsp;</span><a href=\"https://www.cricbuzz.com/profiles/8292/kuldeep-yadav\" style=\"color: rgb(24, 102, 219); outline: none medium; font-family: helvetica, &quot;Segoe UI&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255);\">Kuldeep Yadav</a><span style=\"color: rgb(51, 51, 51); font-family: helvetica, &quot;Segoe UI&quot;, Arial, sans-serif;\">&nbsp;has undergone surgery after sustaining a knee injury. The 26-year-old had already left the IPL 2021 bubble in the UAE and returned to India.</span></p><section class=\"cb-nws-dtl-itms\" itemprop=\"articleBody\" style=\"line-height: 28px; margin: 0px; color: rgb(51, 51, 51); font-family: helvetica, &quot;Segoe UI&quot;, Arial, sans-serif;\"><p class=\"cb-nws-para\" style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px;\">A mainstay in India\'s white-ball teams until the 2019 World Cup, Kuldeep has endured a slump in returns, his drop in performance coinciding with India\'s decision to shelve their two wristspinners theory.</p></section><p>                                            \r\n                                          </p><section class=\"cb-nws-dtl-itms\" itemprop=\"articleBody\" style=\"line-height: 28px; margin: 0px; color: rgb(51, 51, 51); font-family: helvetica, &quot;Segoe UI&quot;, Arial, sans-serif;\"><p class=\"cb-nws-para\" style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px;\">The IPL hasn\'t exactly been a stage to push for a comeback, having been usurped in the playing XI by CV Varun. Kuldeep took a solitary wicket from five appearances in IPL 2020 and wasn\'t picked for any game in the ongoing 2021 season.</p></section>', 1, '2021-09-28', 'Cricket', '[\"public\\/uploads\\/images\\/blogimages\\/maanblogimage29092021_103410_india-and-kolkata-knight-rider.jpg\"]', 1, '2021-09-29 04:34:10', '2022-12-11 04:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `blogsubcategories`
--

CREATE TABLE `blogsubcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogsubcategories`
--

INSERT INTO `blogsubcategories` (`id`, `category_id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 2, 'Cricket', 1, '2021-09-13 06:57:34', '2021-09-13 06:57:34'),
(4, 2, 'Football', 1, '2021-09-13 06:57:52', '2021-09-13 06:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 6, 48, '2022-03-17 19:37:52', '2022-03-17 19:37:52'),
(2, 6, 44, '2022-03-17 19:40:07', '2022-03-17 19:40:07'),
(3, 25, 45, '2022-11-12 09:43:15', '2022-11-12 09:43:15'),
(4, 27, 48, '2022-11-12 09:54:05', '2022-11-12 09:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_map` text COLLATE utf8mb4_unicode_ci,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address_line1`, `address_line2`, `phone`, `email`, `location_map`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maan News', 'Cecilia Chapman, 711-2880', 'NullaSt. Mankato Mississippi 96522 (257) 563-7401', '+8802659874164', 'maan.news@turitor.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3645.133068555471!2d91.08454181482016!3d23.99107768447128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3754051b50ebac3f%3A0x735c1cc426d8ebb!2sNatai%20Bodtoli%20Bazar%2C%20Natai%2C%2C%20Brahmanbaria!5e0!3m2!1sen!2sbd!4v1594548160557!5m2!1sen!2sbd', 'Visit our agency or simply send us an email anytime you want. If you have any questions, please feel free.', 1, '2022-01-29 01:39:58', '2022-11-17 23:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `website`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Hello', 'hello@gmail.com', 'www.hello.com', 'Hello check...', '2021-12-04 04:04:36', '2021-12-04 04:04:36'),
(2, 'test', 'teat@gmail.com', '', 'test', '2022-11-21 16:59:53', '2022-11-21 16:59:53'),
(3, 'test', 'teat@gmail.com', '', 'test', '2022-11-25 02:17:02', '2022-11-25 02:17:02'),
(4, 'test', 'teat@gmail.com', '', 'Mamun', '2022-11-25 02:17:23', '2022-11-25 02:17:23'),
(5, 'test', 'teat@gmail.com', '', 'Mamun sdfdfv', '2022-11-25 02:17:51', '2022-11-25 02:17:51'),
(6, 'test', 'teat@gmail.com', '', 'test', '2022-11-26 04:04:40', '2022-11-26 04:04:40'),
(7, 'mamun', 'mamun@gmail.com', '', 'test', '2022-11-26 04:06:12', '2022-11-26 04:06:12'),
(8, 'mamun', 'mamun@gmail.comaxas', '', 'test', '2022-11-26 04:06:19', '2022-11-26 04:06:19'),
(9, 'mamun', 'mamun@gmail.comaxas', '', 'test', '2022-11-26 04:08:21', '2022-11-26 04:08:21'),
(10, 'mamun', 'mamun@gmail.comaxas', '', 'test sdfre dfg gh456yhtgv aregv  rthebsdcverg  dhgtr', '2022-11-26 04:22:29', '2022-11-26 04:22:29'),
(11, 'mamun', 'mamun@gmail.comaxas', '', 'fgv rfgv', '2022-11-26 04:22:44', '2022-11-26 04:22:44'),
(12, 'Mamun', 'dfgjk', '', 'Bdhbhhhkkn', '2022-11-26 04:51:44', '2022-11-26 04:51:44'),
(13, 'Mamun', 'islam', '', 'Vnjj', '2022-12-01 06:54:44', '2022-12-01 06:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `googleanalytics`
--

CREATE TABLE `googleanalytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `googleanalytics`
--

INSERT INTO `googleanalytics` (`id`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, '<meta name=\"google-site-verification\" content=\"6zjwDVcsojeetIY15O4VJtGIZHYGi0O-u6fSQG_rgqo\" />', '2022-01-23 04:05:58', '2022-07-06 00:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `maanusers`
--

CREATE TABLE `maanusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_expire_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maanusers`
--

INSERT INTO `maanusers` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `verification_code`, `verification_expire_at`, `created_at`, `updated_at`) VALUES
(1, 'User', '21', '123456', 'user21@gmail.com', '$2y$10$vVOm3irnT5tWb92ukJJSaeoZGFUQoVtfaiJIqHps179Y9GmzgUZIO', NULL, NULL, '2021-09-29 03:11:31', '2021-09-29 03:11:31'),
(2, 'Isaac', 'Richard', 'hupoxedy@mailinator.com', 'teraty@mailinator.com', '$2y$10$KKtZ3vvPaGUxhFSTUf31b.V0.ZGAcv1H7e6yyD7CTJFaw3VxmrP8K', NULL, NULL, '2021-10-05 05:03:51', '2021-10-05 05:03:51'),
(3, 'Althea', 'Calderon', 'gyxabypy@mailinator.com', 'cirasy@mailinator.com', '$2y$10$3p006M7gw2iwnfj191uV2.qmoYCDaXWDr/ypD/3ck/t5R/ZSQABRe', NULL, NULL, '2021-10-05 05:04:20', '2021-10-05 05:04:20'),
(4, 'Hello', 'Check', '123987', 'towhiduzzaman.22@gmail.com', '$2y$10$VraBQfj1oqFN5W76qdHQ8e9iQvb/wJx5F58LPmsmaZU70XHR5QCYm', NULL, NULL, '2022-02-03 03:06:59', '2022-02-03 03:06:59'),
(5, 'Check', 'Hello', '147963', 'check@gmail.com', '$2y$10$2xRM02EJUOUR5EqpWRieoe33JgSl24r5L9BVDclYEElJ3RuoWvlOi', NULL, NULL, '2022-02-03 03:15:26', '2022-02-03 03:15:26'),
(6, 'Prince', 'Mahmud', '+8801767432558', 'princey01767@gmail.com', '$2y$10$VFU.rqcIuEBdSIGiYnAnL./ME6Ix7Ff7Wki4JxR2DmICn7jS0PARC', '504425', '2022-03-17 18:30:21', '2022-03-15 09:22:23', '2022-03-17 17:32:45'),
(8, NULL, NULL, NULL, 'recheck@gmail.com', NULL, NULL, NULL, '2022-03-23 03:19:23', '2022-03-23 03:19:23'),
(9, NULL, NULL, NULL, 'aaaaaaaaa@gmail.com', NULL, NULL, NULL, '2022-03-23 03:38:11', '2022-03-23 03:38:11'),
(10, 'Jack', 'Won', '+8201033550084', 'jack@dhlogisrics.co.kr', '$2y$10$oX9bztyf/Q9C7CIYXegaOeUwUCB3MqeGW3UIKHnjR4tCe/lBWL5hq', NULL, NULL, '2022-03-29 06:28:57', '2022-03-29 06:28:57'),
(11, NULL, NULL, NULL, 'adddf@dfd.dfd', NULL, NULL, NULL, '2022-07-03 04:16:35', '2022-07-03 04:16:35'),
(12, NULL, NULL, NULL, 'adddf@dfd.dfd1', NULL, NULL, NULL, '2022-07-03 04:33:11', '2022-07-03 04:33:11'),
(13, NULL, NULL, NULL, 'adddf@dfd.dfdg', NULL, NULL, NULL, '2022-07-03 04:35:32', '2022-07-03 04:35:32'),
(14, NULL, NULL, NULL, 'adddf@dfd.dfdg1', NULL, NULL, NULL, '2022-07-03 04:43:00', '2022-07-03 04:43:00'),
(15, NULL, NULL, NULL, 'dsfsdfa@dfsd.fgdsf', NULL, NULL, NULL, '2022-07-06 00:58:02', '2022-07-06 00:58:02'),
(16, NULL, NULL, NULL, 'dsfdsf@fdf.gfg', NULL, NULL, NULL, '2022-07-06 01:13:41', '2022-07-06 01:13:41'),
(17, NULL, NULL, NULL, 'sunlove6222@gmail.com', NULL, NULL, NULL, '2022-10-10 13:55:51', '2022-10-10 13:55:51'),
(18, NULL, NULL, NULL, 'ojobodionix@gmail.com', NULL, NULL, NULL, '2022-10-11 23:51:30', '2022-10-11 23:51:30'),
(19, 'qsfqsf', 'qsfqsf', '5644556', 'effe@gmail.com', '$2y$10$BBQu8iHBydieA.5RVmnTb.tOk1wz850eMdjlFjG4vm/KWzaTrAycW', NULL, NULL, '2022-10-12 20:19:25', '2022-10-12 20:19:25'),
(20, NULL, NULL, NULL, 'admin@manager.com', NULL, NULL, NULL, '2022-10-14 09:29:53', '2022-10-14 09:29:53'),
(21, 'Ms. Leatha', 'Botsford', '5757583050', 'knowledgesharingblog@yopmail.com', '$2y$10$bKw.0O3L1nNf0RKeFQQIUejAA/xa/N2wzFKGAdoy9mnu1pxK/7EcK', NULL, NULL, '2022-10-15 14:47:07', '2022-10-15 14:47:07'),
(22, NULL, NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, '2022-10-29 07:22:52', '2022-10-29 07:22:52'),
(23, NULL, NULL, NULL, 'run@gmail.com', NULL, NULL, NULL, '2022-10-29 07:38:38', '2022-10-29 07:38:38'),
(24, 'Mohammad', 'Ali', '03429488294', 'alimughal42@gmail.com', '$2y$10$r9j2ZNq4yK8YcO0LKydjzeUgdTR0PXDtjF/qpWxPfQsGeWUxenUc6', NULL, NULL, '2022-10-30 18:33:16', '2022-10-30 18:33:16'),
(25, 'Prince', 'Mahmud', '+8801754215216', 'p@zx.com', '$2y$10$X3cNd.4tASLb2wY9Gqw0E.02fcrvMAaE0uRSh63LXIDgZwXWDGUue', NULL, NULL, '2022-11-12 09:42:08', '2022-11-12 09:42:08'),
(26, 'Prince', 'Mahmud', '+8801782855269', 'p@cx.com', '$2y$10$Zvn5gyR2E6LVjjBCFvyg0uQ8D0XSgqQ24g3shQlgFECUUDRxsDKj.', NULL, NULL, '2022-11-12 09:48:22', '2022-11-12 09:48:22'),
(27, 'Prince', 'Mahmud', '+880146852252', 'p@fc.com', '$2y$10$xIhth7NyWI19Na4UmPhv0OE9BneIkXg9d1jD9FGE7rzlK5Gj84wlG', NULL, NULL, '2022-11-12 09:48:58', '2022-11-12 09:48:58'),
(28, 'Nguyễn', 'Thắng', '0989794186', 'nguyenquocthang.dev@gmail.com', '$2y$10$QhxYbbgDbn9lgPhNBFIRwOaLmIKIx0vhXm7R1n6CYxmGKlwfrI4nG', NULL, NULL, '2022-11-18 08:29:22', '2022-11-18 08:29:22'),
(29, 'Luiz', 'Eduardo', '67991409876', 'suporte.oncreate@gmail.com', '$2y$10$HP/EcSvLc27xQctfN/NR7.eZzkjC/Np5hBz1wfOVq9h47sRqcwl7q', NULL, NULL, '2022-11-19 12:58:27', '2022-11-19 12:58:27'),
(30, 'test_me', 'test_me', '0123456789', 'test_me@gmail.com', '$2y$10$plPK/OwpDl1Yjun/nFS/E.nAjLwgVZGbvsdT092iRfQlU3i8V.igq', NULL, NULL, '2022-11-20 12:50:17', '2022-11-20 12:50:17'),
(31, 'tuhin', 'tuhin', '01234567891', 'tuhin@gmail.com', '$2y$10$uwA3wWnF7vKuKdv9e3KDb.SQq9umQo3DNS0GnlXQ03Ax3PLIfVb0S', NULL, NULL, '2022-11-20 13:39:06', '2022-11-20 13:39:06'),
(32, 'tuhin', 'tuhin', '01234567890', 'tuhin1@gmail.com', '$2y$10$DPCuz6zZGrWh02X/FXS0xOEEhkbF9XxnUvDtR6CDdet6M58zXkqRO', NULL, NULL, '2022-11-20 14:07:07', '2022-11-20 14:07:07'),
(33, NULL, NULL, NULL, 'oo@gmail.com', NULL, NULL, NULL, '2022-11-20 14:52:28', '2022-11-20 14:52:28'),
(34, 'tuhin', 'tuhin', '1234567891', 'tuhin2@gmail.com', '$2y$10$796qOBBe6N2EHd.kgStAcetPaAGw.iK3cMVEQv.SWca1D32DRYDCK', NULL, NULL, '2022-11-20 15:23:54', '2022-11-20 15:23:54'),
(35, 'test', 'test', '34534534', 'tuhin4@gmail.com', '$2y$10$CZtta5tLfxJDzUbgQzkPce402h6szWogQ10NFiyUnSIW89T0h0U9S', NULL, NULL, '2022-11-20 15:49:38', '2022-11-20 15:49:38'),
(36, 'tuhin', 'tuhin', '1234567890', 'tuh1@gmail.com', '$2y$10$W4P7sWu3MRJPxbVXD9NQr.c0Zae2V16rFfhWQXBACOTaNCiFUmi1S', NULL, NULL, '2022-11-21 04:53:05', '2022-11-21 04:53:05'),
(37, 'sadik', 'sadik', '904949049491919', 'sadik@gmail.com', '$2y$10$j4hvF0.sX8Jty4XU1ewdIuEDCEba5C/PDlgOlKkm2tXaikYVJu9fW', NULL, NULL, '2022-11-21 11:03:04', '2022-11-21 11:03:04'),
(38, 'Mamun Islam', 'Mim', '01762358965', 'mam@gmail.com', '$2y$10$Zn0axMqqDUFDJiA2/iZQV.28WnjIN8v.eAJPdOY2funCZl6pS7Qpq', NULL, NULL, '2022-11-21 11:18:17', '2022-12-05 04:51:42'),
(39, 'Mosaddik', 'Ali', '01710286709', 'mosaddikali58@gmail.com', '$2y$10$aGebdsKUgrweNpeRH/C2oOu50J/0XjIaADQ9KxF9tmlBVfkCUSTYK', NULL, NULL, '2022-11-21 11:39:36', '2022-11-21 11:39:36'),
(40, 'Sadik', 'Ali', '01566060968', 'mosaddikword59@gmail.com', '$2y$10$iCZ/DcM36zf11cGWPkiFpekh03RDf8y1YHWhxdC2zAY03ObQ9u5y.', NULL, NULL, '2022-11-21 13:34:50', '2022-11-21 13:34:50'),
(41, 'abdul', 'kader', '123457890', 'abdulkader@gmail.com', '$2y$10$Moo2k2LTNvZ.UfBnUvkyG.PViPrGMrPTQAwl3Z5ijVE2y0TQ4tj9i', NULL, NULL, '2022-11-21 16:20:23', '2022-11-21 16:20:23'),
(42, 'abdul', 'kader', '12345678910', 'abdul@gmail.com', '$2y$10$XtP1jJtL1kTxGZuaPXkRG.7Tx.Q.jbNCWZLiikLvUri8hW6QEjRcu', NULL, NULL, '2022-11-22 05:47:03', '2022-11-22 05:47:03'),
(43, 'Abdul', 'Kader', '01630437666', 'kaderhosen@gmail.com', '$2y$10$LwwdZNG10aqpR80FXE3EPuvAE1ttcBhxMotwgiHP3ufzHvzhWdQe6', NULL, NULL, '2022-11-22 06:10:31', '2022-11-22 06:10:31'),
(44, 'Abdul', 'Kader', '12345678985634', 'test@test.com', '$2y$10$baLsylCsvn/eTGmJwPTateNE6qBR2/Oc0DoGOHLumnpuN9fG8VlOO', NULL, NULL, '2022-11-22 06:11:08', '2022-11-22 06:11:08'),
(45, 'Abdul', 'Kader', '123456789', 'test@sp.com', '$2y$10$rFZnCHgMKb0AOfjP9G9RM.x7x5ZmZnaoAqLhMZCaPwSB4fz9x51Ie', NULL, NULL, '2022-11-22 06:24:47', '2022-11-22 06:24:47'),
(46, 'test2', 'test2', '1267890', 'test2@gmail.com', '$2y$10$1mqfK0WCwLK02fV3X.GGw.Om0S6xl0cZLDs.rUkv1PwxBfbC5C8Z2', NULL, NULL, '2022-11-22 07:33:57', '2022-11-22 07:33:57'),
(47, 'NABIL', 'Niloy', '01956823876', 'like2bd.site@gmail.com', '$2y$10$YrZ6Har7z.a5dkYK7ZJAjex6omdkjeZiWIrYP293qZ2MIQ6Ufj/.a', NULL, NULL, '2022-11-22 08:47:38', '2022-11-22 08:47:38'),
(48, 'test', 'test', '017898939393334', 'bdk23@gmail.com', '$2y$10$nDWGis1b4/y2F0VZPUuiXe.yY.xmR4eMLBWnCc3CuPuDc5heAhSx2', NULL, NULL, '2022-11-22 11:54:03', '2022-11-22 11:54:03'),
(49, 'test', 'test', '01789893939333456', 'bdkh345@gmail.com', '$2y$10$ViMZ6okDfEIX7kGmEv6YHOalXv5yVFXPkaf9eAgvx7cPWcOsKEE9G', NULL, NULL, '2022-11-22 11:55:11', '2022-11-22 11:55:11'),
(50, 'test', 'test', '262892999292', 'jdks@gmail.com', '$2y$10$/hvXOr6mgv0e4me76hjGm.iOzQ572cF/VsZH0z3hssWgZ2hrPT6HS', NULL, NULL, '2022-11-22 13:12:02', '2022-11-22 13:12:02'),
(51, 'test5', 'test', '123467892345', 'test4@sp.com', '$2y$10$eRf6TN.AbcGaY7PlQ.c4bu3/N.wy572gGrxyWK0K0c03nRO0Ljg7a', NULL, NULL, '2022-11-22 13:37:38', '2022-11-22 13:37:38'),
(52, 'test5', 'test5', '124678045689', 'test24@gmail.com', '$2y$10$3ERtndSEtfZX3N4yjLnVpOpNZty5auqLbdUluoEQrHlMLEBco8VW6', NULL, NULL, '2022-11-22 13:42:52', '2022-11-22 13:42:52'),
(53, 'abdul', 'kader', '1246789', 'kader@gmail.com', '$2y$10$VsUhP.XHe.fnZ83Vciz3De0c/S783diYFutHNbq9Hl2BvUbxHmUwC', NULL, NULL, '2022-11-22 13:46:02', '2022-11-22 13:46:02'),
(54, 'Mmmmm', 'Nnnnn', '085236985214', 'sdfg@gmail.com', '$2y$10$PA5sQo8RHUFbkxk3zwW/s.PzOU8OPqPST56bwm4ks86DqIIs7jLe.', NULL, NULL, '2022-11-22 14:04:22', '2022-12-01 08:32:25'),
(55, 'shakil', 'ahmed', '01921001215', 'shakil@yahoo.com', '$2y$10$Qf5ox9hU/XYxPHHrrtQPoOdYaYpFot3lbfiw4Ijw/Ytso7GNi2eT6', NULL, NULL, '2022-11-22 14:44:31', '2022-11-22 14:44:31'),
(56, 'shakil', 'ahmed', '01920995720', 'shakil@gmail.com', '$2y$10$p.7rBFbc18sW.2CPXt0a8uYSUn8LaF7Po5gxpdB.NygCKL2O60kX.', NULL, NULL, '2022-11-22 14:45:49', '2022-11-22 14:45:49'),
(57, 'S', 'S', '017017017017', 's@gmail.com', '$2y$10$skiUOQoM77ddj2RoiIt81.GOBtKtzyEG5SpNFGhA3U.v7aJQS0Juq', NULL, NULL, '2022-11-22 15:00:33', '2022-11-22 15:00:33'),
(58, 'Sgg', 'SSxc', '01712365896', 'ffss@gmail.com', '$2y$10$koxe0qNMmHw8oIhwtAaOjO3OS/sCNb50t7ofQXENIMwCqrnntqXwu', NULL, NULL, '2022-11-22 15:08:31', '2022-11-22 15:08:31'),
(59, 'Ttt', 'Tyyg', '08741236589', 'd@gmail.com', '$2y$10$YUm7namFTShLrr0G0eJoweR8KC.soz5IH5NgM5Ottn7nGT0BzYFSi', NULL, NULL, '2022-11-22 15:10:49', '2022-11-22 15:10:49'),
(60, 'Kk', 'Ll', '85236952145', 'll@gmail.com', '$2y$10$fsPXUW1Zy7RdYpTvSccgm.XW2g6zG2qvUAzW1SWvm.GxXQ65AwkLq', NULL, NULL, '2022-11-22 15:15:26', '2022-11-22 15:15:26'),
(61, 'Tyu', 'Rryy', '07586321548', 'tui@gmail.com', '$2y$10$qunZ6F3viBhQqUwq3tWmBuRhAYBr.k3BxVfp.yRfQqfpmQvPJIcFG', NULL, NULL, '2022-11-22 15:36:42', '2022-11-22 15:36:42'),
(62, 'Rfff', 'Cccc', '12345698712', 'gfff@gmail.com', '$2y$10$zicvp.FtFXhmyT1t47J7.unIwMBX1WGkgPnTfl0AA5YkQBZnY.k2S', NULL, NULL, '2022-11-22 15:47:02', '2022-11-22 15:47:02'),
(63, 'Mmmmm', 'Nnnnnn', '01725361254', 'amar@gmail.com', '$2y$10$rHiyKRgQW7yMSPFcoZlVZu3ER6lSG5bm72fzrhoHU4RLgvyZi/K1G', NULL, NULL, '2022-11-22 17:38:26', '2022-11-22 17:38:26'),
(64, 'tuhin', 'tuhin', '01234567899', 'tuhin6@gmail.com', '$2y$10$uJj2lhBrd9beLlGqWX/G6u.jXNd5ehcxP9SOaS6RPxMnT81bYNNaO', NULL, NULL, '2022-11-22 18:14:56', '2022-11-22 18:14:56'),
(65, 'Mamun', 'Islam', '01236528532', 'mim@gmail.com', '$2y$10$fIRjN0YSjFLTm6.np9AcYee460w6VhJ0QeNXazmppJKuq64bvx6o.', NULL, NULL, '2022-11-23 03:03:59', '2022-11-23 03:03:59'),
(66, 'Qwertyui', 'Twiwhsvshsb', '23154045102', 'iwuwuwuw@gmail.com', '$2y$10$.7MEcdRsXIqPpbiS9cr10.GuoFMF4WEP3zL/mQxsVlnUy/RTRz5uO', NULL, NULL, '2022-11-23 03:41:59', '2022-11-23 03:41:59'),
(67, 'test', 'test', '67272829992762', 'tdk23@gmail.com', '$2y$10$yIqJ/afNDMuKh6rDIw4gLOFu3iZA77xWHp2FRf.Owtyedhu8hPDaW', NULL, NULL, '2022-11-23 03:44:32', '2022-11-23 03:44:32'),
(68, 'test', 'test', '345345344567', 'test@gmail.co', '$2y$10$lUbgJ9oWO7ZkxmnZIhT.2.vpyoTRlbNYIsb.Zn0GnIzrgPSWDHVmG', NULL, NULL, '2022-11-23 03:44:36', '2022-11-23 03:44:36'),
(69, 'sakil', 'sakil', '59494646949496', 'sakil@gmail.com', '$2y$10$/F6rHCWdFNVWRPM9In8ebuVU7Z3YokdY0giP0CcPwRa7T3OweqxLa', NULL, NULL, '2022-11-23 03:49:05', '2022-11-23 03:49:05'),
(70, 'sahinur', 'islam', '0192099570', 'sahinur@yahoo.com', '$2y$10$AFO4Kq3iiYXgLbZlPK/LiOL8N6M/CQ5m2CgvGV5pJWrUgDes40Mmm', NULL, NULL, '2022-11-23 07:48:42', '2022-11-23 07:48:42'),
(71, 'subornna', 'akter', '01921001218', 'suborna@yahoo.com', '$2y$10$TVLEz/wRTOWnIqdaZ4UTpex8CERXRssYo3V.COlB.44DRzTghGmIG', NULL, NULL, '2022-11-23 07:50:48', '2022-11-23 07:50:48'),
(72, 'rony', 'islam', '01970665599', 'rony@yahoo.com', '$2y$10$JOZ/FRu8q/0TmtOtTLBCmO4KmVPI7Z/Vzw4zOQB0IqLPxsm0pxQIm', NULL, NULL, '2022-11-23 08:13:45', '2022-11-23 08:13:45'),
(73, 'arshi', 'bubu', '12369852364', 'arshi@gmail.com', '$2y$10$Sfoif0Ykx264NdMrll8Tt.7ZK3YeFGQAzI.sx8IM/rhfhlXK.Buyi', NULL, NULL, '2022-11-23 09:07:14', '2022-11-23 09:07:14'),
(74, 'Arshi', 'Bubu', '01767690168', 'ammrshi@com', '$2y$10$cI6.DzL2QFB51psRyTvQt.hQ/jW7wdHRtCeAeVND5W7LVTx46w8Ta', NULL, NULL, '2022-11-23 09:19:09', '2022-11-23 09:19:09'),
(75, 'Minhaz', 'Ahamed', '01376752594', 'min@gmail.com', '$2y$10$DwnPLutx1qMsSb7Sp0OlAewze7s5BYRqtSLQIdOeDXrbxXjmDpWHi', NULL, NULL, '2022-11-23 09:21:45', '2022-11-23 09:21:45'),
(76, 'abdul', 'kader', '12456789', 'test123@gmail.com', '$2y$10$IQKBwd/2NKKlSW6EtCrNhuFTQQp5yS3QmthddRqbWW8MBIR.GkwRK', NULL, NULL, '2022-11-23 12:52:44', '2022-11-23 12:52:44'),
(77, 'Abdul', 'Kader', '01747746304', 'kaderhosen2002@gmail.com', '$2y$10$7E/VBTRwPTXsEuNJ3W8eV.ZsyG9GvljGkV9ltNxnRlfX1Zxh25pl.', NULL, NULL, '2022-11-23 13:30:58', '2022-12-06 09:35:23'),
(78, 'rony', 'islam', '01970665577', 'rony@gmail.com', '$2y$10$SqGLaZchE6vaxWVS/tUSs.WDMKx3JjBcaWESpZrjf3YfCgFHDytkC', NULL, NULL, '2022-11-23 14:21:07', '2022-11-23 14:21:07'),
(79, 'Milon', 'Islam', '08546329580', 'milon56@gmail.com', '$2y$10$2a5dnYr47LRTDp84r.4dg.3pYCkkk9omdo2YA8E/1yn6MxD.hfJ26', NULL, NULL, '2022-11-24 04:47:33', '2022-11-24 04:47:33'),
(80, 'tuhin', 'tuhin', '012345678901', 'tuhintuhin@gmail.com', '$2y$10$5kHRM82di.xj8T2X8TvcTehWhFHBgGbBgQBzu/rKEaexsnS.tCA6K', NULL, NULL, '2022-11-25 11:57:30', '2022-11-25 11:57:30'),
(81, 'Mamun', 'Mim', '01761810596', 'amarsopno678@gmail.com', '$2y$10$PRC10qXcZg1FBZCy5MuHYeP3Lp9fsSg9FdkowywzHnbR4NYewwIYu', NULL, NULL, '2022-11-25 12:58:40', '2022-11-25 14:00:56'),
(82, 'shakil', 'mia', '01764972576', 'shakilmia@gmail.com', '$2y$10$jeMBa3oNvosKJR/Lw6gxc.5kmjA0Y0N.l16qFhBTKWOfwfZx3m3dK', NULL, NULL, '2022-11-25 15:17:17', '2022-11-25 15:19:33'),
(83, 'Arfan', 'Arfan', '08484848488', 'arfan@gmail.com', '$2y$10$38F6HVcxV0GWS5H6XFFu3.sGoyNa0pnMOyiaiyiv96X4wMjEcw2x6', NULL, NULL, '2022-11-25 16:25:55', '2022-11-25 16:25:55'),
(84, 'Sakil', 'Mia', '021566958', 'sakil@mai.c', '$2y$10$G38D.3f4dM7uIEG6KMk2NeaeNfRCJRZ6v2w6IPJyrWbzJworyMSu6', NULL, NULL, '2022-11-26 09:29:39', '2022-11-26 09:29:39'),
(85, 'Sahibur', 'Islam', '01766', 'sahinur@mail.com', '$2y$10$PcqekVnD2mgIF9wV6RzKxuc3l.cmecCZyXu0XFenJBcOvfaP0pMxe', NULL, NULL, '2022-11-26 09:32:46', '2022-11-26 09:32:46'),
(86, 'dbdfbd', 'dfvdfvdf', '94898989898', 'janviladola003@gmail.com', '$2y$10$7RoWIztvBYOeHV3hv6uR5uEQHq2c4xGXNL5iQY9BD.KcdQ7wZxVNi', NULL, NULL, '2022-11-27 17:41:14', '2022-11-27 17:41:14'),
(87, 'Karim', 'Karim', '04584848484', 'karim@gmail.com', '$2y$10$WDrWaqZtZZDq2r1Shi6AHu89KNI6Dys0ez0nTB2VEnQz.M5KHz4LK', NULL, NULL, '2022-11-29 07:37:36', '2022-11-29 07:37:36'),
(88, 'nurnobi', 'nurnobi', '0172556526555', 'nurnobi@gmail.com', '$2y$10$F6uDs9a39mq6sDq1u9K7YOoRcgIpuLO3XRLKV95/TKnLRTViSJ3Gq', NULL, NULL, '2022-11-30 05:15:37', '2022-11-30 05:15:37'),
(89, 'Kabir', 'Kabir', '84992822985', 'kabir@gmail.com', '$2y$10$Lr.3UK5fAA5KsY4ecDIqYuHuyqbMPOka4vyc5s45iAwzAPEzFEcPS', NULL, NULL, '2022-11-30 08:49:03', '2022-11-30 08:49:03'),
(90, 'Abdur', 'Abdur', '84994864484', 'abdur@gmail.com', '$2y$10$e3Iw5J7C9y13qPxru4D0jexvv05IVvEQCSpdS6SlALXUvVI6eq4.O', NULL, NULL, '2022-11-30 11:15:55', '2022-11-30 11:15:55'),
(91, 'Abul', 'Kalam', '0466180184', 'abul@gmail.com', '$2y$10$wDigFyfMRCV4hU.tb2BOM.N1yR3Akn0cpavcREY8l22zyOXmejsJC', NULL, NULL, '2022-11-30 11:32:58', '2022-11-30 11:32:58'),
(92, 'Arif', 'Arif', '051848840184', 'arif@gmail.com', '$2y$10$w2g7PrSHO45VCdL9/2WtbeasAELXRStpzVKpw2o3JmvZFg7SgcFe2', NULL, NULL, '2022-11-30 12:32:33', '2022-11-30 12:32:33'),
(93, 'Abdul', 'Kader', '0174776304', 'kadertest@gmail.com', '$2y$10$juOdkLlw5J3PRlCFsa12TuNWh/g.SbQJ3UGc8vs68CDD4UHDoqcui', NULL, NULL, '2022-12-01 16:39:54', '2022-12-01 16:39:54'),
(94, 'Mamun Islam', 'Mim', '01761810531', 'sopno678@gmail.com', '$2y$10$yWBI.TjIN7UYMGNnvuc/XOEdlWj00gIwH/Hbcdcbki75M8CQl4Vvi', NULL, NULL, '2022-12-01 16:43:42', '2022-12-01 17:13:32'),
(95, 'Mim', 'Islam', '01761584518', 'hahaha@gmail.comm', '$2y$10$YgXJ663qKZ/qOU37VmB8I.Xo9W.BLDGrPZlEI1XMprikwOGNh475.', NULL, NULL, '2022-12-01 17:17:52', '2022-12-01 17:17:52'),
(96, 'Mamun', 'Islam', '01414214512', 'mamuns@gmail.com', '$2y$10$1FtysxCvCfEmnlKMUSWxG.dm4Ps1qYGoV3zu/SEtIymWonK.vimEm', NULL, NULL, '2022-12-01 17:29:33', '2022-12-01 17:29:33'),
(97, 'Mamun Islam', 'Mim', '01251452365', 'mim102614@gmail.com', '$2y$10$Ec3mdgfJrSQh6wkuoWVDqOpuLuUty.KDPB8ccUOPExmJcGUNES0Jm', NULL, NULL, '2022-12-01 17:45:24', '2022-12-01 17:45:24'),
(98, 'Mamun Islam', 'Mim', '01525252598', 'mims1026145@gmail.com', '$2y$10$p9XbeTA9aePyCd75g2ChW.Juv3theUiFMxz16QGfS4MXVwJmH28w6', NULL, NULL, '2022-12-01 17:50:13', '2022-12-01 17:50:13'),
(99, 'Mamun Islam', 'Mim', '01323232362', 'hellomamun@gmail.com', '$2y$10$WiBcwrjwyYdhxzP/5WTyLuKzj5lXkN8buPMiE9ZfcZkhceuaRysFC', NULL, NULL, '2022-12-01 18:02:56', '2022-12-01 18:02:56'),
(100, 'Mamun', 'Islam', '01307333051', 'me@gmail.com', '$2y$10$E1Rg22PWF1P.102WHXo5sO2Vl9/MMBeObhuLkKsWypB4ZJTKAleKG', NULL, NULL, '2022-12-01 19:12:56', '2022-12-01 19:12:56'),
(101, 'mdsourov', 'pal', '01764972575', 'sourov@gmail.com', '$2y$10$/hD4lDEUFp5KhrW47hFMhOWRIR/SDitPvLB0MpHPFfzkDvgO1w8lO', NULL, NULL, '2022-12-03 07:41:06', '2022-12-03 07:41:06'),
(102, 'morsalin', 'islam', '01764972574', 'morsalin@gmail.com', '$2y$10$yU0UBVUhjyPri7JiO5o8Du9Ddg1jxw09XTqtfSklaZm8zGP41o6UO', NULL, NULL, '2022-12-03 08:24:43', '2022-12-03 08:24:43'),
(103, 'Md Shakil', 'Mia', '0176497', 'hara@gmail.com', '$2y$10$KvPCiyS5SteA5.8m9xY38ej4Vv3t4IkfdAJN234zKGjyB0XstEl06', NULL, NULL, '2022-12-03 09:00:50', '2022-12-03 09:00:50'),
(104, 'test', 'test', '345345345', 'test@gmail.comm', '$2y$10$ZMRYtc4TC0S0DSQPbcaF6eRUaFKzR7Ur8nQqzSBcjHrGYk2yWxhQO', NULL, NULL, '2022-12-04 18:23:48', '2022-12-04 18:23:48'),
(105, 's', 'k', '1234567', 'sk@gmail.com', '$2y$10$9XgbdF/A29VYdS9RESTSbe3vr/vRFlZx9lWCY/LrzxmRPMbskcLqW', NULL, NULL, '2022-12-04 19:08:45', '2022-12-04 19:08:45'),
(106, 'Sahinur Islam', 'Sahin', '01751908497', 'sahinur@gmail.com', '$2y$10$nvu2UPXSABdWeAQuX7FMseGbv9UpgIk4K5WR31x8v7zGHd/NriWRK', NULL, NULL, '2022-12-04 19:40:30', '2022-12-04 19:40:30'),
(107, 'Mamun Islam', 'Mim', '01763965328', 'mamunimam@gmail.com', '$2y$10$F0G872AAju8LYl8VQdc3meo/aaVJR0gAFsHIlPpKvZ.KfOb063fwi', NULL, NULL, '2022-12-05 03:53:30', '2022-12-05 03:55:14'),
(108, 'Mamun Islam', 'Mim', '01758589658', 'amarsopno6789@gmail.com', '$2y$10$L9CpfyypC2VMbmehFjRATOhNpEXiBpK9W5KHI7nELEApEfR8ieMd.', NULL, NULL, '2022-12-05 08:28:36', '2022-12-05 08:28:36'),
(109, 'nipa akter', 'nipa', '01786786177', 'nipa@gmail.com', '$2y$10$733IyO/l/4tFNQmmOzehj.Ax/EtN/9zNnIJT3Okyy3EufWWEsdioG', NULL, NULL, '2022-12-05 10:50:48', '2022-12-05 10:50:48'),
(110, 'abdul', 'kader', '12345678', 'testkader@gmail.com', '$2y$10$G5cGwcxms2/3u7vtbpCoAeBPnMTWkqZVqqk/.33iseeZScIu/o.dK', NULL, NULL, '2022-12-06 09:00:30', '2022-12-06 09:00:30'),
(111, 'Md', 'Abdul Kader', '123456789', 'kaderhosen220@gmail.com', '$2y$10$Wnfn0pbG04/TBcEWlRawOOIGolNA0UJOBA4o1Zp2NfQSuNS7O288O', NULL, NULL, '2022-12-06 09:22:33', '2022-12-06 16:05:02'),
(112, 'sohel', 'rana', '01303807625', 'sohelrana@gmail.com', '$2y$10$VmcY608DH2iTf1rJ06wzQukF5abdYTLycm7bdCWRk/ZPQnWUtwMM2', NULL, NULL, '2022-12-06 12:05:59', '2022-12-06 12:05:59'),
(113, 'rana', 'Ahammed', '78946522', 'rana@gmail.com', '$2y$10$R34nEJ9SG9T7WTgp3y6AH.mrWLqWTJMffx26RoPHxi3Z1mEkAho5S', NULL, NULL, '2022-12-06 15:07:51', '2022-12-06 15:07:51'),
(115, 'nidhi', 'Akter', '01794536897', 'nidhi123@gmail.com', '$2y$10$LjPS6MOXwfnJaRuBsXg3LuyQ2CVwt5ZbZbiuz1hMe9N50yV6ZuZb.', NULL, NULL, '2022-12-06 15:12:12', '2022-12-06 15:12:12'),
(116, 'amin', 'islam', '01303807623', 'aminislam@gmail.com', '$2y$10$Zl6t.BFJ2Qe3EB1XV0.0ee9ddkv.vupBjHFhnzFQxJ1wxtjPbDtCW', NULL, NULL, '2022-12-06 15:35:58', '2022-12-06 15:35:58'),
(117, 'ganja', 'hbe', '0178965421', 'ganjahbe123@gmail.com', '$2y$10$NVw2KxEX.3LOeO3Kcc16OejvOgjKOypLE8UziaD2XVm7ypRWeFuaO', NULL, NULL, '2022-12-06 15:40:21', '2022-12-06 15:40:21'),
(118, 'mul', 'baji', '6212895166515', 'mul@gmail.com', '$2y$10$Ncime1OS1r9O2SiVaGh10.H4dmIKCQbkUxew0TY4/mzcauMsk2Mh.', NULL, NULL, '2022-12-06 15:52:57', '2022-12-06 15:52:57'),
(119, 'Shanto', 'K', '54604649488684', 'shanto@gmail.com', '$2y$10$xPjl6wvvhfJV6OIxkxkJsupVR/q3AZtC6mSfmsfM9kmIe6L13SkaO', NULL, NULL, '2022-12-06 19:35:12', '2022-12-06 19:35:12'),
(120, 'tanjina', 'akter', '1234567899', 'tanjina123@gmail.com', '$2y$10$JbcCMmIT6LHBquRwPFPhBuHqsIxSQu1Oz/oJIrMIKsx9zCizOixR.', NULL, NULL, '2022-12-06 19:52:42', '2022-12-06 19:52:42'),
(121, 'A', 'A', '12438404648', 'aa@gmail.com', '$2y$10$fOcDtMociX0sbWFCZCdo0OWASub4IoZDli9XC/S6teHYLRLUS175.', NULL, NULL, '2022-12-07 17:49:56', '2022-12-07 17:49:56'),
(122, 'A', 'A', '588756888', 'a@gmail.com', '$2y$10$UiIX4DFdInNChlk0HOX0uO/4FLPiLWkyut1426KLuik1RBMxEPZHa', NULL, NULL, '2022-12-07 17:57:28', '2022-12-07 17:57:28'),
(123, 'Mamun Islam', 'Mim', '01712398745', 'news@gmail.com', '$2y$10$n.VXo/sllSU70/dJFHKieeIUAFFbBAShpRlIErLdBi3RlUXiiaEKW', NULL, NULL, '2022-12-08 05:09:26', '2022-12-08 05:09:26'),
(124, 'saiful', 'islam', '12302145566', 'saiful123@gmail.com', '$2y$10$1gK7O.ovfr0axNwuo/RaauO5WeXW3vJsRCTr.bOob9p9FAuKkp1Cy', NULL, NULL, '2022-12-08 08:10:01', '2022-12-08 08:10:01'),
(125, 'tamanna', 'islam', '018546213544', 'tamanna123@gmail.com', '$2y$10$BlOIZyWlXKtvvpptwXTq7u6kHHi9euAwbatRxxyGly6ZMnOl.tLZ.', NULL, NULL, '2022-12-08 08:10:40', '2022-12-08 08:10:40'),
(126, 'Md Mamun Islam', 'Mim', '01352589654', 'algo@gmail.com', '$2y$10$ncKMsSSuS6eTVBbsp8b7fe.IWPEdunkrSgiPQoFlIi7qeJw4Ko8e2', NULL, NULL, '2022-12-08 08:53:17', '2022-12-10 16:43:54'),
(127, 'Anang', 'Sujatmoko', '085774950086', 'anangsoedjatmoko@gmail.com', '$2y$10$HiypOGdgtO5B0L1RjR1y9eI6c3aoXD/M7qpAue2kzfsOmms5AKLG6', NULL, NULL, '2022-12-08 09:30:27', '2022-12-08 09:30:27'),
(128, 'sumaiya', 'akter', '01965823145', 'sumaiya123@gmail.com', '$2y$10$PHtVRRaLTAvfWki1oQLwJ.1Lf798pUDlQb62eiMTPjX/gL5I2nZHG', NULL, NULL, '2022-12-08 13:58:43', '2022-12-08 13:58:43'),
(129, 'promi', 'akter', '01654578455', 'promi123@gmail.com', '$2y$10$UB1gFoAU.LnZ7xQvRlmbaOznd8nrw5ZhiwRpLnyrgeSCpBA5eyOnm', NULL, NULL, '2022-12-08 14:08:46', '2022-12-08 14:08:46'),
(130, 'smart', 'rahat', '4651323', 'test@gmail.com', '$2y$10$NJy4t.2fu6YaCvEkE7szEeQXcit/MzYrl0mrWV6YvMDc7Z1I7SOwm', NULL, NULL, '2022-12-09 13:35:04', '2022-12-11 15:50:26'),
(131, 'tuhin', 'tuhin', '012154258225544', 'test1@gmail.com', '$2y$10$jGjg4qLPPKx5oqhk8AYXf.FAwdiD9P5X43paRQ8HhnkLKPu2GsZ1e', NULL, NULL, '2022-12-09 15:24:43', '2022-12-09 15:24:43'),
(132, 'tuhin', 'tuhin', '01245789655986', 'test3@gmail.com', '$2y$10$VUXcUEGQebnC7UnAyUMzIeefVHeXlFD8LSRgPibJWb2o/tSAa3y3W', NULL, NULL, '2022-12-09 15:57:53', '2022-12-09 15:57:53'),
(133, 'A', 'K', '84840506', 'ak@gmail.com', '$2y$10$Fh3dtAGRtKrCRq3z8Qn5kO.wvnGnze5j5h6hHwdxRz2VQ5iQVXbAi', NULL, NULL, '2022-12-10 14:48:21', '2022-12-10 14:48:21'),
(134, 'Ttuuj', 'Mbfd', '055800', 'n@gmail.com', '$2y$10$xpGnCQl/UEgyFWK/4K7dUOKvmjAdl.2k4RJiTwBVsNr0T083axCJa', NULL, NULL, '2022-12-10 15:59:48', '2022-12-10 15:59:48'),
(135, 'Mghjjh', 'Fhkkkj', '866500', 'r@gmail.com', '$2y$10$ykXTQhyNaj7/mVeGHcSGw.UhC5YBz.AMyc51QTnf0jKu8p5aH445.', NULL, NULL, '2022-12-10 16:02:32', '2022-12-10 16:02:32'),
(136, 'Mamun Islam', 'Mim', '01852121542', 'desktop@gmail.com', '$2y$10$aoY2RqbWGxT6L2vUWIA9G.gurtMhWmaVSmpwxy8njcciJ2mO5dsBm', NULL, NULL, '2022-12-11 02:43:53', '2022-12-11 02:43:53'),
(137, 'A', 'K', '8164848', 'ii@gmail.com', '$2y$10$7X6n2xLhQqcyE77EG43efeCxNiNgWdRLAMAbrM/TQYCDz5gnEUJSi', NULL, NULL, '2022-12-11 03:57:47', '2022-12-11 03:57:47'),
(138, 'A', 'K', '816484846766446', 'khdhsshsjk@gmail.com', '$2y$10$rXD8HF/VYMf5qUwf8mRp0OW4Wd9L7GVuIw30X.rgOvRbDPxrrygQm', NULL, NULL, '2022-12-11 03:59:02', '2022-12-11 03:59:02'),
(139, 'A', 'K', '81648484676646', 'o@gmail.com', '$2y$10$AMaS7D9HphxbJeZVpMZ3keDDjybyeoUnKZQNhj87WB.9m.4ebjn2q', NULL, NULL, '2022-12-11 04:01:40', '2022-12-11 04:01:40'),
(140, 'A', 'K', '11111111', 'p@gmail.com', '$2y$10$2eHBwFgnBsbPF.Nb.MHko.kCKUmlpnDViujmJn3AX4mPmNX9thuWW', NULL, NULL, '2022-12-11 04:12:37', '2022-12-11 04:12:37'),
(141, 'A', 'K', '11111133', 'x@gmail.com', '$2y$10$n3Xpceg0nC5/I.Es5LCQW.uavncgmgINzrqmlGjYLA2UO9YPNsQFy', NULL, NULL, '2022-12-11 04:16:09', '2022-12-11 04:16:09'),
(142, 'Abdul', 'Kader', '126458889', 'abdulkader@test247.com', '$2y$10$1eGsqrEW7O5a62qNXbPFV.V/.zXDl8cNi02eAUXi4rN5wueZKtV9G', NULL, NULL, '2022-12-11 11:28:18', '2022-12-11 11:28:18'),
(143, 'test', 'TEST', '1234', 'mail@mail.com', '$2y$10$Xed5RjtSQmzQOXhuAEib8OnocK/xEJJTNPU7W6VBJkjASdJRcPXhe', NULL, NULL, '2022-12-11 13:00:52', '2022-12-11 13:00:52'),
(144, 'James', 'Anderson', '8954621355', 'jsmanderson.jsm@gmail.com', '$2y$10$trWiUvwRy6HcqSENFU3ge.J.FnPVz7r96qpxHkRvoqvLGKHorgxnW', NULL, NULL, '2022-12-12 14:19:39', '2022-12-12 14:19:39'),
(145, 'testt', 'testt', '3453400534', 'testt@gmail.com', '$2y$10$/Wj1n1zOTdpMPWNQUh7yX.7vzdjFMVnG0FjYjiAEejG5HdRLUvWbi', NULL, NULL, '2022-12-15 05:42:08', '2022-12-15 05:42:08'),
(146, 'd', 'sdfsd', '0831289828882', 'attackerr.1945@gmail.com', '$2y$10$2IasuavcK9ADzTw1DrYRA.ykb.wM8ECZxscidWHPNMmbnFbjB168G', NULL, NULL, '2022-12-15 17:41:48', '2022-12-15 17:41:48'),
(147, 'D', 'H', '22222', 'a@a.a', '$2y$10$KYzqDp7djZI.aC94NRe4X.53DSyUJVIx4uMoDwXNajS2PjyTxUi4W', NULL, NULL, '2022-12-16 10:02:22', '2022-12-16 10:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(59, '2014_10_12_000000_create_users_table', 1),
(60, '2014_10_12_100000_create_password_resets_table', 1),
(61, '2019_08_19_000000_create_failed_jobs_table', 1),
(62, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(63, '2021_08_31_063339_create_newscategories_table', 1),
(64, '2021_08_31_101146_create_newssubcategories_table', 1),
(65, '2021_08_31_114824_create_newsspecialities_table', 1),
(67, '2021_09_02_112019_create_blogcategories_table', 1),
(68, '2021_09_02_112347_create_blogsubcategories_table', 1),
(71, '2021_08_31_115107_create_news_table', 2),
(73, '2021_09_13_090413_create_blogs_table', 3),
(74, '2021_09_14_060841_create_photogalleries_table', 4),
(75, '2021_09_15_055941_create_videogalleries_table', 5),
(78, '2021_09_29_082000_create_maanusers_table', 7),
(95, '2021_09_25_114913_create_roles_table', 8),
(96, '2021_09_30_041350_create_permissions_table', 8),
(97, '2021_09_30_042841_create_users_roles_table', 8),
(98, '2021_09_30_043928_create_users_permissions_table', 8),
(99, '2021_09_30_045216_create_roles_permissions_table', 8),
(101, '2021_10_04_075510_create_newscomments_table', 9),
(102, '2021_10_17_060606_create_settings_table', 10),
(103, '2021_12_04_093506_create_contacts_table', 11),
(107, '2022_01_16_065521_create_seooptimizations_table', 12),
(113, '2022_01_22_095048_create_googleanalytics_table', 14),
(118, '2022_01_23_113253_create_companies_table', 15),
(119, '2022_01_27_102041_create_socialshares_table', 15),
(121, '2016_06_01_000001_create_oauth_auth_codes_table', 16),
(122, '2016_06_01_000002_create_oauth_access_tokens_table', 16),
(123, '2016_06_01_000003_create_oauth_refresh_tokens_table', 16),
(124, '2016_06_01_000004_create_oauth_clients_table', 16),
(125, '2016_06_01_000005_create_oauth_personal_access_clients_table', 16),
(126, '2022_02_21_161451_create_providers_table', 16),
(127, '2022_03_10_113253_create_bookmarks_table', 17),
(128, '2022_03_15_053408_add_verification_code_and_verification_expire_at_to_users_table', 18),
(129, '2022_01_19_092221_create_advertisements_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `breaking_news` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `tags` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality_id` bigint(20) UNSIGNED NOT NULL,
  `reporter_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `archive` int(11) NOT NULL DEFAULT '0',
  `viewers` int(11) NOT NULL DEFAULT '0',
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `subcategory_id`, `title`, `summary`, `description`, `status`, `breaking_news`, `date`, `tags`, `speciality_id`, `reporter_id`, `image`, `user_id`, `archive`, `viewers`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 3, 'Everything you wanted to know about business', 'Everything you wanted to know about business and were too embarrassed to ask · ttand alone for your mom\'s interpretation. the refractor telescope uses a convex ...', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Stand alone for your mom’s interpretation<br><br>&nbsp;&nbsp;&nbsp; The refractor telescope uses a convex lens to focus the light on the eyepiece.<br>&nbsp;&nbsp;&nbsp; The reflector telescope has a concave lens which means it bends in. It uses mirrors to focus the image that you eventually see.<br>&nbsp;&nbsp;&nbsp; Collimation is a term for how well tuned the telescope is to give you a good clear image of what you are looking at. You want your telescope to have good collimation so you are not getting a false image of the celestial body.<br>&nbsp;&nbsp;&nbsp; Aperture is a fancy word for how big the lens of your telescope is. But it’s an important word because the aperture of the lens is the key to how powerful your telescope is. Magnification has nothing to do with it, its all in the aperture.<br>&nbsp;&nbsp;&nbsp; Focuser is the housing that keeps the eyepiece of the telescope, or what you will look through, in place. The focuser has to be stable and in good repair for you to have an image you can rely on.<br>&nbsp;&nbsp;&nbsp; Mount and Wedge. Both of these terms refer to the tripod your telescope sits on. The mount is the actual tripod and the wedge is the device that lets you attach the telescope to the mount.<br>&nbsp;&nbsp;&nbsp; These eight shots crystallize the hard work moms put into keeping their kids alive, happy, and healthy. They might give you the inspiration you need for filling out that card—or stand alone for your mom’s interpretation.For those of us who want to say thank you to our moms, it’s not always easy to put those big feelings in words. Which is where Dribble comes in.Moms are the ones who bandage our boo-boos when we’re little and continue to take care of us as we get older—often sacrificing their own needs so they can help with ours. Cruising on a bike to help heal our injuries is the most mom thing one can do.</span>', 1, 0, '2021-09-16', 'Business', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage18092021_101225_b-post-2.jpg\"]', 1, 0, 138, NULL, NULL, '2021-09-18 04:12:25', '2022-12-05 13:52:32'),
(3, 3, 'Stock markets are where individual and institutional  investors come together to buy and sell shares in a public venue. Nowadays these exchanges', 'Stock markets are where individual and institutional investors come together to buy and sell shares in a public venue. Nowadays these exchanges exist as ...', '<span style=\"color: rgb(17, 17, 17); font-family: SourceSansPro, sans-serif; font-size: 17.6px;\">Stand alone for your mom’s interpretation<br><br>&nbsp;&nbsp;&nbsp; The refractor telescope uses a convex lens to focus the light on the eyepiece.<br>&nbsp;&nbsp;&nbsp; The reflector telescope has a concave lens which means it bends in. It uses mirrors to focus the image that you eventually see.<br>&nbsp;&nbsp;&nbsp; Collimation is a term for how well tuned the telescope is to give you a good clear image of what you are looking at. You want your telescope to have good collimation so you are not getting a false image of the celestial body.<br>&nbsp;&nbsp;&nbsp; Aperture is a fancy word for how big the lens of your telescope is. But it’s an important word because the aperture of the lens is the key to how powerful your telescope is. Magnification has nothing to do with it, its all in the aperture.<br>&nbsp;&nbsp;&nbsp; Focuser is the housing that keeps the eyepiece of the telescope, or what you will look through, in place. The focuser has to be stable and in good repair for you to have an image you can rely on.<br>&nbsp;&nbsp;&nbsp; Mount and Wedge. Both of these terms refer to the tripod your telescope sits on. The mount is the actual tripod and the wedge is the device that lets you attach the telescope to the mount.<br>&nbsp;&nbsp;&nbsp; These eight shots crystallize the hard work moms put into keeping their kids alive, happy, and healthy. They might give you the inspiration you need for filling out that card—or stand alone for your mom’s interpretation.For those of us who want to say thank you to our moms, it’s not always easy to put those big feelings in words. Which is where Dribble comes in.Moms are the ones who bandage our boo-boos when we’re little and continue to take care of us as we get older—often sacrificing their own needs so they can help with ours. Cruising on a bike to help heal our injuries is the most mom thing one can do.</span><span style=\"color: rgb(17, 17, 17); font-family: SourceSansPro, sans-serif; font-size: 17.6px;\"></span>', 1, 0, '2021-11-14', 'Business', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage19092021_061343_b-post-3.jpg\"]', 1, 0, 127, NULL, NULL, '2021-09-19 00:13:43', '2022-12-19 08:52:37'),
(4, 1, 'One  georgian silver medallists were told to leave the olympics after breaking', 'One georgian silver medallists were told to leave the olympics after breaking Covid-19 rules by going sightseeing, it has emerged. According to reports,', 'Stand alone for your mom’s interpretation<br><br>&nbsp;&nbsp;&nbsp; The refractor telescope uses a convex lens to focus the light on the eyepiece.<br>&nbsp;&nbsp;&nbsp; The reflector telescope has a concave lens which means it bends in. It uses mirrors to focus the image that you eventually see.<br>&nbsp;&nbsp;&nbsp; Collimation is a term for how well tuned the telescope is to give you a good clear image of what you are looking at. You want your telescope to have good collimation so you are not getting a false image of the celestial body.<br>&nbsp;&nbsp;&nbsp; Aperture is a fancy word for how big the lens of your telescope is. But it’s an important word because the aperture of the lens is the key to how powerful your telescope is. Magnification has nothing to do with it, its all in the aperture.<br>&nbsp;&nbsp;&nbsp; Focuser is the housing that keeps the eyepiece of the telescope, or what you will look through, in place. The focuser has to be stable and in good repair for you to have an image you can rely on.<br>&nbsp;&nbsp;&nbsp; Mount and Wedge. Both of these terms refer to the tripod your telescope sits on. The mount is the actual tripod and the wedge is the device that lets you attach the telescope to the mount.<br>&nbsp;&nbsp;&nbsp; These eight shots crystallize the hard work moms put into keeping their kids alive, happy, and healthy. They might give you the inspiration you need for filling out that card—or stand alone for your mom’s interpretation.For those of us who want to say thank you to our moms, it’s not always easy to put those big feelings in words. Which is where Dribble comes in.Moms are the ones who bandage our boo-boos when we’re little and continue to take care of us as we get older—often sacrificing their own needs so they can help with ours. Cruising on a bike to help heal our injuries is the most mom thing one can do.', 1, 0, '2021-11-04', 'Olympic', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23032022_051252_3 (2).png\"]', 1, 0, 50, NULL, NULL, '2021-09-19 04:06:03', '2022-12-20 09:40:47'),
(5, 1, 'Search top women In tennis. get results from 6 search engines! explore the best Info now', 'Search top women In tennis. get results from 6 Search engines! explore the best Info now. Powerful and easy to use.', '<span style=\"color: rgb(80, 80, 88); font-family: Arial, arial, sans-serif; font-size: 14px;\">Stand alone for your mom’s interpretation<br><br>&nbsp;&nbsp;&nbsp; The refractor telescope uses a convex lens to focus the light on the eyepiece.<br>&nbsp;&nbsp;&nbsp; The reflector telescope has a concave lens which means it bends in. It uses mirrors to focus the image that you eventually see.<br>&nbsp;&nbsp;&nbsp; Collimation is a term for how well tuned the telescope is to give you a good clear image of what you are looking at. You want your telescope to have good collimation so you are not getting a false image of the celestial body.<br>&nbsp;&nbsp;&nbsp; Aperture is a fancy word for how big the lens of your telescope is. But it’s an important word because the aperture of the lens is the key to how powerful your telescope is. Magnification has nothing to do with it, its all in the aperture.<br>&nbsp;&nbsp;&nbsp; Focuser is the housing that keeps the eyepiece of the telescope, or what you will look through, in place. The focuser has to be stable and in good repair for you to have an image you can rely on.<br>&nbsp;&nbsp;&nbsp; Mount and Wedge. Both of these terms refer to the tripod your telescope sits on. The mount is the actual tripod and the wedge is the device that lets you attach the telescope to the mount.<br>&nbsp;&nbsp;&nbsp; These eight shots crystallize the hard work moms put into keeping their kids alive, happy, and healthy. They might give you the inspiration you need for filling out that card—or stand alone for your mom’s interpretation.For those of us who want to say thank you to our moms, it’s not always easy to put those big feelings in words. Which is where Dribble comes in.Moms are the ones who bandage our boo-boos when we’re little and continue to take care of us as we get older—often sacrificing their own needs so they can help with ours. Cruising on a bike to help heal our injuries is the most mom thing one can do.</span>', 1, 0, '2021-11-04', 'Tennis', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23032022_051050_2 (1).png\"]', 1, 0, 57, NULL, NULL, '2021-09-19 05:10:25', '2022-12-20 08:55:28'),
(6, 1, 'Official icc fooball - live matches  commentary rankings', 'Keep the door open for us: ACB CEO\'s plea to Cricket Australia', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">It’s\r\n been a day since the NHL’s 2021-22 trade deadline, and in addition to \r\nthe joy felt in markets that did well on the trade front, there’s \r\nalready angst, criticism and condemnation for various reasons in other \r\nNHL cities. In no particular order, let’s take a brief look at the \r\nlosers at Deadline Day:<br><br>1. Edmonton Oilers: They’ve been getting \r\nimproved goaltending of late, but the Oilers not too long ago were in \r\ngoalie hell with their current pair of Mikko Koskinen and Mike Smith. In\r\n Koskinen’s past two games, he’s put in sub-.900 save percentages, and \r\nin two of his past five appearances, Smith has posted a sub.860 SP.<br><br>Did\r\n Edmonton GM Ken Holland have all the reason in the world to go out and \r\nget a better goalie? He sure did. Could that failure to do so come back \r\nto haunt him once the playoffs begin? It sure could. Holland had all \r\nseason long to find another netminder, and he knew the deadline was \r\ncoming. It didn’t have to come to this, but now, it has. A goaltending \r\ncrisis may prove to be what sinks the Oilers’ championship aspirations.<br>2.\r\n Toronto Maple Leafs: The Leafs land here with a caveat – namely, the \r\nacknowledgment that Toronto GM Kyle Dubas did improve his blueline and \r\nfourth line of forwards when he acquired D-man Mark Giordano and forward\r\n Colin Blackwell from Seattle on Sunday. However, their most pressing \r\nneed – a veteran goalie to be given a shot at the No. 1 job until Jack \r\nCampbell returns from a rib injury – was not dealt with by the deadline.<br><br>That\r\n means, if rookie netminder Erik Kallgren crumbles under the pressure of\r\n the starter’s role, Leafs head coach Sheldon Keefe will have no other \r\nalternative but to use Petr Mrazek. And anyone who has watched Mrazek’s \r\nrecent games will tell you that’s not a good thing. Mrazek’s .884 SP and\r\n 3.48 goals-against average show his struggles with Toronto this season,\r\n and the pressure is only going to increase on him, whenever the Leafs \r\ndecide to play him. Another soft goal here or there and Mrazek will be \r\nquickly pulled from games.<br><br>Dubas has claimed he waived Mrazek \r\nover the weekend as a salary cap move, but who’s kidding who - you don’t\r\n waive someone you really want to keep around. If, for whatever reason, \r\nanother franchise decided to take a chance on Mrazek – for this year, \r\nand two more years, with a $3.8 million annual cap hit – there would be \r\nlittle in the way of mourning over Mrazek’s departure. Instead, Leafs \r\nbrass now has to be cold-blooded in their analysis and deployment of \r\ngoalies. Campbell and Kallgren will get the first chances to run with \r\nthe No. 1 job, and if they fail, it will fall on Mrazek to get one last \r\nshot at proving himself in Toronto.</span>', 1, 1, '2021-11-03', 'footbal', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage19102021_115015_ap_21166648130451-rt-sportsnewglobal.jpg\"]', 1, 0, 72, NULL, NULL, '2021-09-19 05:28:55', '2022-12-19 08:10:18'),
(7, 7, 'Latest breaking movie news from the footballs', 'It’s been a day since the NHL’s 2021-22 trade deadline, and in addition to the joy felt in markets that did well on the trade front, there’s already angst, criticism and condemnation for various reasons in other NHL cities.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">It’s\r\n been a day since the NHL’s 2021-22 trade deadline, and in addition to \r\nthe joy felt in markets that did well on the trade front, there’s \r\nalready angst, criticism and condemnation for various reasons in other \r\nNHL cities. In no particular order, let’s take a brief look at the \r\nlosers at Deadline Day.<br><br>1. Edmonton Oilers: They’ve been getting \r\nimproved goaltending of late, but the Oilers not too long ago were in \r\ngoalie hell with their current pair of Mikko Koskinen and Mike Smith. In\r\n Koskinen’s past two games, he’s put in sub-.900 save percentages, and \r\nin two of his past five appearances, Smith has posted a sub.860 SP.<br><br>Did\r\n Edmonton GM Ken Holland have all the reason in the world to go out and \r\nget a better goalie? He sure did. Could that failure to do so come back \r\nto haunt him once the playoffs begin? It sure could. Holland had all \r\nseason long to find another netminder, and he knew the deadline was \r\ncoming. It didn’t have to come to this, but now, it has. A goaltending \r\ncrisis may prove to be what sinks the Oilers’ championship aspirations.<br>2.\r\n Toronto Maple Leafs: The Leafs land here with a caveat – namely, the \r\nacknowledgment that Toronto GM Kyle Dubas did improve his blueline and \r\nfourth line of forwards when he acquired D-man Mark Giordano and forward\r\n Colin Blackwell from Seattle on Sunday. However, their most pressing \r\nneed – a veteran goalie to be given a shot at the No. 1 job until Jack \r\nCampbell returns from a rib injury – was not dealt with by the deadline.<br><br>That\r\n means, if rookie netminder Erik Kallgren crumbles under the pressure of\r\n the starter’s role, Leafs head coach Sheldon Keefe will have no other \r\nalternative but to use Petr Mrazek. And anyone who has watched Mrazek’s \r\nrecent games will tell you that’s not a good thing. Mrazek’s .884 SP and\r\n 3.48 goals-against average show his struggles with Toronto this season,\r\n and the pressure is only going to increase on him, whenever the Leafs \r\ndecide to play him. Another soft goal here or there and Mrazek will be \r\nquickly pulled from games.<br><br>Dubas has claimed he waived Mrazek \r\nover the weekend as a salary cap move, but who’s kidding who - you don’t\r\n waive someone you really want to keep around. If, for whatever reason, \r\nanother franchise decided to take a chance on Mrazek – for this year, \r\nand two more years, with a $3.8 million annual cap hit – there would be \r\nlittle in the way of mourning over Mrazek’s departure. Instead, Leafs \r\nbrass now has to be cold-blooded in their analysis and deployment of \r\ngoalies. Campbell and Kallgren will get the first chances to run with \r\nthe No. 1 job, and if they fail, it will fall on Mrazek to get one last \r\nshot at proving himself in Toronto.</span>', 1, 0, '2021-10-20', 'Movie', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage19102021_120026_44-445587_stage-photos-hd.jpg\"]', 1, 0, 50, NULL, NULL, '2021-09-20 23:16:38', '2022-12-20 09:24:07'),
(8, 7, 'James gunn jokingly blames paper Cuts', 'James gunn Jokingly blames Paper cuts for cast\'s emotional reaction to guardians Vol. 3 Script', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Greater\r\n Bridgeport – For a few moments on, August 11, 2020, the discussion of \r\nthe ravages from the pandemic of COVID-19 was pushed aside by the \r\nrushing tide of history. Senator Kamala Harris of California became the \r\nnation’s first African American woman nominated for the vice presidency \r\nof the United States. It is a moment to be savored, a time to reflect, \r\nand a new journey to begin. Shirley Chisholm was the first African \r\nAmerican woman elected to Congress, and the first Black major party \r\ncandidate to run for president of the United States. In 1972 she said, \r\n“at present, our country needs women’s idealism and determination, \r\nperhaps more in politics than anywhere else.” The historicity of this \r\nhour reminds us again of that idealism, determination, and authentic \r\nsensitivity we often find in women. It just seems to be a part of who \r\nthey are. It often appears in the way they govern. There is an undying \r\nbelief on the part of women, expressed in the words of former \r\npresidential candidate Hillary Rodham Clinton, “we are agents of change,\r\n we are drivers of progress, we are makers of peace – all we need is a \r\nfighting chance.” This is a bold move on the part of Vice President Joe \r\nBiden. It is another opportunity for our nation to move a little closer \r\ntowards a more perfect union. It is a union for which Dr. Martin Luther \r\nKing, Jr., said, “one day we will judge people not by the color of their\r\n skin but by the content of their character.” While the NAACP does not \r\nendorse candidates, we are compelled to recognize the historic impact of\r\n these rare moments in time. This election will really be for the very \r\nsoul of our nation. As the author James Cone has written When My Soul \r\nLooks Back, “it wonders how I get over.” I can hear the voice of Harriet\r\n Tubman humming. I can hear Ida B. Wells declaring, Fannie Lou \r\nHamersinging, and Shirley Chisholm calling out the words of that old \r\ngospel song “he didn’t bring us this far to leave us.” It is time for \r\neveryone regardless of color, station, or vocation to Take Your Soles To\r\n The Polls. Take them by mail or directly to the voting booth. Let us \r\nVote! Vote!!Vote!!</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 17.6px;\"></span>', 1, 0, '2021-09-21', 'Movie', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21092021_054722_list-img-4.jpg\"]', 1, 0, 42, NULL, NULL, '2021-09-20 23:47:22', '2022-12-19 23:22:41'),
(9, 7, 'Historical records offer an unusual window into your family\'s past', 'Historical records offer an unusual window into your family\'s past.', '<span style=\"color: rgb(89, 89, 89); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Alejandra Díaz will begin her new job at the Israel Symphony Orchestra Rishon LeZion in March 2022.<br><br>​Díaz\r\n was awarded the LSO String Experience Scheme in 2013 and became the \r\nfirst Spanish cellist in history to perform alongside the London \r\nSymphony Orchestra — as part of two concerts paying tribute to Claudio \r\nAbbado and Pierre Boulez at the Barbican Hall. <br><br>Obtaining a \r\nMasters of Performance at London\'s Guildhall School of Music &amp; Dance\r\n in 2014 under Prof. Ursula Smith, Díaz is a former prize winner of the \r\nCarnegie Palmer Award of the Worshipful Company of Musicians, and a \r\nfinalist of the Pablo Casals International Award.<br><br>As a principal \r\ncellist, she has appeared with the Orquesta Sinfónica Vigo 430, the \r\nAtlantic Coast Orchestra, the London Metropolitan Sinfonia, and the \r\nGuildhall Symphony Orchestra.<br><br>Alongside her performing career, \r\nDíaz holds a Masters in Teaching at the Santiago de Compostela \r\nUniversity — where she currently serves as a cello professor. She also \r\ntaught at the Juan Sebastían Elcano School from 2018-2020.<br><br>Díaz plays on a modern cello by Apostol Kaloferov (c.1990) and a Paolo Pamiro bow made in Málaga (c.2019).​</span>.</span>', 1, 0, '2021-11-03', 'Magic', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_123028_mic_in_studio.jpeg\"]', 1, 0, 55, NULL, NULL, '2021-09-21 00:00:28', '2022-12-19 20:41:40'),
(11, 10, 'With the Met gala already behind us September’s biggest events have come and gone in a flash', 'With the Met gala already behind us, September’s biggest events have come and gone in a flash. And this includes the long-awaited in-person', '<p style=\"color: rgb(0, 0, 0); font-family: Savoy, helvetica, sans-serif; font-size: 20px;\">With the&nbsp;<a href=\"https://www.vogue.com/slideshow/met-gala-2021-red-carpet-live-celebrity-fashion\" target=\"_blank\" style=\"cursor: pointer; color: rgb(0, 0, 0); transition: color 200ms ease 0s; line-height: inherit; text-decoration-line: underline;\">Met gala</a>&nbsp;already behind us, September’s biggest events have come and gone in a flash. And this includes the long-awaited in-person return of&nbsp;<a href=\"https://www.vogue.com/slideshow/phil-ohs-best-street-style-at-new-york-fashion-week-spring-2022\" target=\"_blank\" style=\"cursor: pointer; color: rgb(0, 0, 0); transition: color 200ms ease 0s; line-height: inherit; text-decoration-line: underline;\">New York Fashion Week</a>. After a handful of seasons viewing the collections virtually, show-going New Yorkers were finally back together to see the collections IRL during five jam-packed days that led up to a night at the museum.</p><p style=\"color: rgb(0, 0, 0); font-family: Savoy, helvetica, sans-serif; font-size: 20px;\">In true New Yorker fashion, street-style usuals like Lauren Santo Domingo,&nbsp;<a href=\"https://www.vogue.com/article/richie-shazam-new-show-shine-true-lucas-silveira\" target=\"_blank\" style=\"cursor: pointer; color: rgb(0, 0, 0); transition: color 200ms ease 0s; line-height: inherit; text-decoration-line: underline;\">Richie Shazam</a>, and Rachel Seville Tashjian opted for all-black ensembles. Whether it was sleek tailoring or interesting silhouettes or&nbsp;<a href=\"https://www.vogue.com/article/classic-boots-fall\" target=\"_blank\" style=\"cursor: pointer; color: rgb(0, 0, 0); transition: color 200ms ease 0s; line-height: inherit; text-decoration-line: underline;\">shoes</a>&nbsp;and accessories, these looks were just as striking as their brightly colored and loud printed counterparts. Head-to-toe black isn’t the least bit dull when&nbsp;<a href=\"https://www.vogue.com/slideshow/cut-out-open-back-summer-trend\" target=\"_blank\" style=\"cursor: pointer; color: rgb(0, 0, 0); transition: color 200ms ease 0s; line-height: inherit; text-decoration-line: underline;\">cutout tops</a>, balloon-shaped pants, or textured fabrics are incorporated. So if you find you’re out of ideas on what to wear, you can never go wrong with the iconic New York uniform—the effortlessly chic and unendingly cool.</p>', 1, 0, '2021-11-04', 'Fashion', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_082441_women.jpg\"]', 1, 0, 102, NULL, NULL, '2021-09-21 01:13:46', '2022-12-18 23:45:29'),
(12, 10, 'One morning this paris fashion week, I found myself making some unusual plans. I was one of few editors on the ground during the city’s', 'One morning this paris Fashion week, I found myself making some unusual plans. I was one of few editors on the ground during the city’s first shows post-lockdown.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Greater\r\n Bridgeport – For a few moments on, August 11, 2020, the discussion of \r\nthe ravages from the pandemic of COVID-19 was pushed aside by the \r\nrushing tide of history. Senator Kamala Harris of California became the \r\nnation’s first African American woman nominated for the vice presidency \r\nof the United States. It is a moment to be savored, a time to reflect, \r\nand a new journey to begin. Shirley Chisholm was the first African \r\nAmerican woman elected to Congress, and the first Black major party \r\ncandidate to run for president of the United States. In 1972 she said, \r\n“at present, our country needs women’s idealism and determination, \r\nperhaps more in politics than anywhere else.” The historicity of this \r\nhour reminds us again of that idealism, determination, and authentic \r\nsensitivity we often find in women. It just seems to be a part of who \r\nthey are. It often appears in the way they govern. There is an undying \r\nbelief on the part of women, expressed in the words of former \r\npresidential candidate Hillary Rodham Clinton, “we are agents of change,\r\n we are drivers of progress, we are makers of peace – all we need is a \r\nfighting chance.” This is a bold move on the part of Vice President Joe \r\nBiden. It is another opportunity for our nation to move a little closer \r\ntowards a more perfect union. It is a union for which Dr. Martin Luther \r\nKing, Jr., said, “one day we will judge people not by the color of their\r\n skin but by the content of their character.” While the NAACP does not \r\nendorse candidates, we are compelled to recognize the historic impact of\r\n these rare moments in time. This election will really be for the very \r\nsoul of our nation. As the author James Cone has written When My Soul \r\nLooks Back, “it wonders how I get over.” I can hear the voice of Harriet\r\n Tubman humming. I can hear Ida B. Wells declaring, Fannie Lou \r\nHamersinging, and Shirley Chisholm calling out the words of that old \r\ngospel song “he didn’t bring us this far to leave us.” It is time for \r\neveryone regardless of color, station, or vocation to Take Your Soles To\r\n The Polls.<br></span>', 1, 0, '2021-11-04', 'Fashion', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_062652_card-1.jpg\"]', 1, 0, 57, NULL, NULL, '2021-09-21 03:03:16', '2022-12-19 18:17:30'),
(13, 10, 'He is due to be part of a four-person crew for a planned 11-minute', 'He is due to be part of a four-person crew for a planned 11-minute ride to the edge of space on Tuesday inside his company Blue Origin\'s New Shepard spacecraft', '<div class=\"media-caption\" style=\"margin: 5px 0px 0px; padding: 0px; color: rgb(124, 124, 124); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; font-size: 13px; letter-spacing: 0.5px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Reuters</span></div><div id=\"ad-article-below-feature-image\" class=\"advertisement-image hide-for-mobile-view\" style=\"margin: 10px 0px; padding: 0px; width: 730px; display: flex; align-items: center; justify-content: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center; color: rgb(50, 50, 50); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; font-size: 13px; letter-spacing: 0.5px;\"></div><div class=\"report-content fr-view\" style=\"margin: 0px; padding: 4px 0px; color: rgb(0, 0, 0); line-height: 20px; white-space: pre-line; overflow-wrap: break-word; overflow: visible; width: 730px; float: left; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px;\">\r\n<div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; font-size: 20px;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">He is due to be part of a four-person crew for a planned 11-minute ride to the edge of space on Tuesday inside his company Blue Origin\'s New Shepard spacecraft</p></div>\r\n<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Jeff Bezos may have been beaten to space by rival Richard Branson, but the billionaire American businessman is poised to make history next week aboard what would be the world\'s first unpiloted suborbital flight with an all-civilian crew.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Bezos, the former CEO of Amazon.com Inc, is due to be part of a four-person crew for a planned 11-minute ride to the edge of space on Tuesday inside his company Blue Origin\'s New Shepard spacecraft, another milestone in the nascent and potentially lucrative space tourism sector.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">He is set to be joined by his brother and private equity executive Mark Bezos, trailblazing octogenarian woman aviator Wally Funk and an as-yet-unidentified person who paid $28 million for a spot aboard the spacecraft, scheduled to launch from a West Texas site.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">New Shepard is a 60-foot-tall (18.3-meters-tall) and fully autonomous rocket-and-capsule combo that cannot be piloted from inside the spacecraft. The crew is set to include only civilians and none of Blue Origin\'s employees or staff astronauts, three people familiar with the company\'s plans told Reuters.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Blue Origin\'s astronauts include NASA space shuttle veteran Nicholas Patrick.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">\"To see the Earth from space, it changes you, it changes your relationship with this planet, with humanity,\" Bezos said in a video last month discussing the flight.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">There has never before been a fully autonomous suborbital or orbital flight with an all-civilian crew, Teal Group space industry analyst Marco Caceres said.</p></div>', 1, 0, '2021-09-21', 'Travel', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_062930_card-2.jpg\"]', 1, 0, 91, NULL, NULL, '2021-09-21 03:11:57', '2022-12-19 18:37:22'),
(14, 10, 'Unravel the mystery of the sundarbans with go zayaan the best time to visit the sundarbans', 'The best time to visit the sundarbans is winter, especially from november to March.', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">What comes to your mind when you think of Sundarbans? Herds of wild animals, flocks of birds, vast spread across lands and water bodies filled with wilderness? That\'s not all. There is no better place than the Sundarbans if you want to enjoy nature by sitting on the deck of the ship, watching crocodiles sunbathing by the side of the river channels that are spread across the large mangrove forest like spider webs.&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">The best time to visit the Sundarbans is winter, especially from November to March. It’s best to plan and book a tour at least 15 days prior to the journey because one has to take permits from the forest department at least 7 days prior to the tour. One of the leading online travel platforms Go Zayaan is working relentlessly to make these tours available for all types of travellers. Currently, Go Zayaan has introduced three such tours to cater to the demands of travellers of all types. These are:</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Grand Cruise from Dhaka</span></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">This is 4 days 3 nights and the only tour where the journey starts from Dhaka. The tour will have mouth-watering food for all 4 days with A/C cabins, attached washroom, hot water facility, forest fees and permit for local guests, local boat for an exploration of flora and fauna, two armed guards on board at all times and much more.&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Price starts from BDT 15,000 per person. &nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Eco River Cruise Experience</span></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">This is an economical 3 days 2 nights tour where the journey starts from Khulna. The cruise has accommodation on twin sharing basis (2-bed cabin, 4-bed cabin, Non-A/C, Bunk Bed), meals for all 3 days, country boat for exploration, forest fees and permit, accompanied tour guide and much more.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Price starts from BDT 11,000 per person.&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Luxury Cruise from Khulna</span></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">The most premium 3 days 2 nights cruise for the Sundarbans with swimming pool inside the ship, country boat, meal for all 3 days, forest fees and permits, armed forest guard from forest department and accompanied tour guide.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Price starts from BDT 18,000 per person.&nbsp;</p>', 1, 0, '2021-11-04', 'Travel', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_081931_unnamed.jpg\"]', 1, 0, 123, NULL, NULL, '2021-09-21 03:16:03', '2022-12-19 19:56:56'),
(15, 13, 'Bank account details sought to intimidate journalists threat to independent journalism and freedom of expression in Bangladesh', 'Fakhrul termed the incident a threat to independent journalism and freedom of expression in Bangladesh', '<div class=\"media-caption\" style=\"margin: 5px 0px 0px; padding: 0px; color: rgb(124, 124, 124); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; font-size: 13px; letter-spacing: 0.5px;\">File photo of BNP Secretary General Mirza Fakhrul Islam Alamgir</div><div class=\"report-content fr-view\" style=\"margin: 0px; padding: 4px 0px; color: rgb(0, 0, 0); line-height: 20px; white-space: pre-line; overflow-wrap: break-word; overflow: visible; width: 730px; float: left; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px;\"><div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; font-size: 20px;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Fakhrul termed the incident a threat to independent journalism and freedom of expression in Bangladesh</p></div><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Seeking bank account details of 11 journalist leaders is a new strategy of the government to intimidate the media workers, says BNP Secretary General Mirza Fakhrul Islam Alamgir.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">In a statement on Monday, he said journalists are not spared from repressive acts carried out across the country by the current “authoritarian and fascist” government.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">“This is another new tactic of intimidating journalists by seeking the bank account details of the presidents and general secretaries of the Jatiya Press Club, BUJ, DUJ and DRU after making various efforts to suppress them,” Fakhrul said.</p><hr style=\"margin: 10px 0px; padding: 0px; border-top: 0px; border-bottom: 1px solid rgb(50, 50, 50); clear: both; user-select: none; break-after: page;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">He said this unprecedented incident is an extreme threat to independent journalism and freedom of expression in Bangladesh.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Bangladesh Financial Intelligence Unit (BFIU) of the Bangladesh Bank issued letters to the commercial banks asking for details of bank accounts of 11 journalist leaders last week.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Fakhrul said the government is not only oppressing the opposition leaders, human rights activists and dissidents, but also the journalists to perpetuate its power. “The incident of seeking the bank account details of 11 journalist leaders is the manifestation of that.\"</p></div>', 1, 0, '2021-09-15', 'Politics', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21092021_091847_politics-card-2.jpg\"]', 1, 0, 52, NULL, NULL, '2021-09-21 03:18:47', '2022-12-16 04:56:05'),
(16, 20, 'Barak Obama  Retreat is a Converted Tower on the Greek Coast', 'Greater Bridgeport – For a few moments on, August 11, 2020, the discussion of the ravages from the pandemic of COVID-19 was pushed aside by the rushing tide of history.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Greater\r\n Bridgeport – For a few moments on, August 11, 2020, the discussion of \r\nthe ravages from the pandemic of COVID-19 was pushed aside by the \r\nrushing tide of history. Senator Kamala Harris of California became the \r\nnation’s first African American woman nominated for the vice presidency \r\nof the United States. It is a moment to be savored, a time to reflect, \r\nand a new journey to begin. Shirley Chisholm was the first African \r\nAmerican woman elected to Congress, and the first Black major party \r\ncandidate to run for president of the United States. In 1972 she said, \r\n“at present, our country needs women’s idealism and determination, \r\nperhaps more in politics than anywhere else.” The historicity of this \r\nhour reminds us again of that idealism, determination, and authentic \r\nsensitivity we often find in women. It just seems to be a part of who \r\nthey are. It often appears in the way they govern. There is an undying \r\nbelief on the part of women, expressed in the words of former \r\npresidential candidate Hillary Rodham Clinton, “we are agents of change,\r\n we are drivers of progress, we are makers of peace – all we need is a \r\nfighting chance.” This is a bold move on the part of Vice President Joe \r\nBiden. It is another opportunity for our nation to move a little closer \r\ntowards a more perfect union. It is a union for which Dr. Martin Luther \r\nKing, Jr., said, “one day we will judge people not by the color of their\r\n skin but by the content of their character.” While the NAACP does not \r\nendorse candidates, we are compelled to recognize the historic impact of\r\n these rare moments in time. This election will really be for the very \r\nsoul of our nation. As the author James Cone has written When My Soul \r\nLooks Back, “it wonders how I get over.” I can hear the voice of Harriet\r\n Tubman humming. I can hear Ida B. Wells declaring, Fannie Lou \r\nHamersinging, and Shirley Chisholm calling out the words of that old \r\ngospel song “he didn’t bring us this far to leave us.” It is time for \r\neveryone regardless of color, station, or vocation to Take Your Soles To\r\n The Polls. Take them by mail or directly to the voting booth. Let us \r\nVote! Vote!!Vote!!</span>                                            <div class=\"report-content fr-view\" style=\"margin: 0px; padding: 4px 0px; color: rgb(0, 0, 0); line-height: 20px; white-space: pre-line; overflow-wrap: break-word; overflow: visible; width: 730px; float: left; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px;\"><br></div>', 1, 0, '2021-09-08', 'world', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21092021_092123_politics-1.jpg\"]', 1, 0, 37, NULL, NULL, '2021-09-21 03:21:23', '2022-12-19 20:33:02'),
(17, 7, 'Dance at Chapman University offers students', 'The Department of Dance at Chapman University offers students a strong professional dance training program with high quality productions.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The\r\n Department of Dance at Chapman University offers students a strong \r\nprofessional dance training program with high quality productions. \r\nStudents may choose from a pre-professional Bachelor of Fine Arts degree\r\n in Dance Performance or from the more broad based Bachelor of Arts \r\ndegree in Dance. Both degrees provide excellent preparation for those \r\nwho plan to enter the professional dance world and/or attend graduate \r\nschool. The curriculum for dance majors includes course work in \r\nchoreography, dance history, dance production, dance performance, \r\nacting, music for dancers, dance science, dance teaching methods, \r\nballroom, somatics, hip-hop, tap, and comprehensive pre-professional \r\ntraining in modern, jazz and ballet technique. The USC Glorya Kaufman \r\nSchool of Dance offers a Bachelor of Fine Arts to a select number of \r\nundergraduates who wish to pursue dance as their major. This four-year \r\nprofessional degree is housed in the state-of-the-art Glorya Kaufman \r\nInternational Dance Center. USC Kaufman also offers individual classes \r\nin technique, performance, choreography, production, theory and history \r\nthat are open to all students at USC. In addition to the dance major and\r\n open courses, the minor in Dance and minor in Dance in Popular Culture:\r\n Hip-Hop, Urban and Social Dances, provide a rewarding program of study \r\nfor any USC student. A conservatory-based program within a liberal arts \r\nenvironment, we are focused on rigorous training in both ballet and \r\nmodern technique. We are committed to the creation and production of \r\noriginal contemporary choreographic works by students, faculty and guest\r\n artists. The Dance Program is housed in its own state-of-the-art Dance \r\nCentre on a large liberal arts campus. USF is accredited by the National\r\n Association of Schools of Dance (NASD). Students must apply for \r\nadmission and be accepted to the University of South Florida before they\r\n can be accepted as a Dance Major in the School of Theatre and Dance. \r\nAdditionally, all prospective Dance Majors and Dance Minors must \r\naudition during the year prior to their first semester to be accepted \r\ninto the Dance Program.</span>', 1, 0, '2021-09-21', 'entertainment', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage24102021_051716_enter.jpg\"]', 1, 0, 38, NULL, NULL, '2021-09-21 03:24:12', '2022-12-20 04:54:09');
INSERT INTO `news` (`id`, `subcategory_id`, `title`, `summary`, `description`, `status`, `breaking_news`, `date`, `tags`, `speciality_id`, `reporter_id`, `image`, `user_id`, `archive`, `viewers`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(18, 14, 'Safran innovates to anticipate its customers’', 'Researchers from Switzerland are tapping into an unexpected energy source right under our feet: wooden floorings.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Researchers from Switzerland are tapping into an unexpected energy source right under our feet: wooden floorings. Their nanogenerator, presented September 1 in the journal Matter, enables wood to generate energy from our footfalls. They also improved the wood used in the their nanogenerator with a combination of a silicone coating and embedded nanocrystals, resulting in a device that was 80 times more efficient -- enough to power LED lightbulbs and small electronics.<br><br>The team began by transforming wood into a nanogenerator by sandwiching two pieces of functionalized wood between electrodes. Like a shirt-clinging sock fresh out of the dryer, the wood pieces become electrically charged through periodic contacts and separations when stepped on, a phenomenon called the triboelectric effect. The electrons can transfer from one object to another, generating electricity. However, there\'s one problem with making a nanogenerator out of wood.<br><br>\"Wood is basically triboneutral,\" says senior author Guido Panzarasa, group leader in the professorship of Wood Materials Science located at Eidgenössische Technische Hochschule (ETH) Zürich and Swiss Federal Laboratories for Materials Science and Technology (Empa) Dübendorf. \"It means that wood has no real tendency to acquire or to lose electrons.\" This limits the material\'s ability to generate electricity, \"so the challenge is making wood that is able to attract and lose electrons,\" Panzarasa explains.<br><br>To boost wood\'s triboelectric properties, the scientists coated one piece of the wood with polydimethylsiloxane (PDMS), a silicone that gains electrons upon contact, while functionalizing the other piece of wood with in-situ-grown nanocrystals called zeolitic imidazolate framework-8 (ZIF-8). ZIF-8, a hybrid network of metal ions and organic molecules, has a higher tendency to lose electrons. They also tested different types of wood to determine whether certain species or the direction in which wood is cut could influence its triboelectric properties by serving as a better scaffold for the coating.</span>', 1, 0, '2021-09-21', 'Technology', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21092021_093128_card-2.jpg\"]', 1, 0, 89, NULL, NULL, '2021-09-21 03:31:28', '2022-12-19 08:03:52'),
(19, 14, 'When walked on, these wooden floors harvest enough energy to turn on a lightbulb', 'Researchers from Switzerland are tapping into an unexpected energy source right under our feet: wooden floorings. Their nanogenerator, presented September 1 in the journal Matter, enables', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Researchers from Switzerland are tapping into an unexpected energy source right under our feet: wooden floorings. Their nanogenerator, presented September 1 in the journal Matter, enables wood to generate energy from our footfalls. They also improved the wood used in the their nanogenerator with a combination of a silicone coating and embedded nanocrystals, resulting in a device that was 80 times more efficient -- enough to power LED lightbulbs and small electronics.<br><br>The team began by transforming wood into a nanogenerator by sandwiching two pieces of functionalized wood between electrodes. Like a shirt-clinging sock fresh out of the dryer, the wood pieces become electrically charged through periodic contacts and separations when stepped on, a phenomenon called the triboelectric effect. The electrons can transfer from one object to another, generating electricity. However, there\'s one problem with making a nanogenerator out of wood.<br><br>\"Wood is basically triboneutral,\" says senior author Guido Panzarasa, group leader in the professorship of Wood Materials Science located at Eidgenössische Technische Hochschule (ETH) Zürich and Swiss Federal Laboratories for Materials Science and Technology (Empa) Dübendorf. \"It means that wood has no real tendency to acquire or to lose electrons.\" This limits the material\'s ability to generate electricity, \"so the challenge is making wood that is able to attract and lose electrons,\" Panzarasa explains.<br><br>To boost wood\'s triboelectric properties, the scientists coated one piece of the wood with polydimethylsiloxane (PDMS), a silicone that gains electrons upon contact, while functionalizing the other piece of wood with in-situ-grown nanocrystals called zeolitic imidazolate framework-8 (ZIF-8). ZIF-8, a hybrid network of metal ions and organic molecules, has a higher tendency to lose electrons. They also tested different types of wood to determine whether certain species or the direction in which wood is cut could influence its triboelectric properties by serving as a better scaffold for the coating.</span>', 1, 0, '2021-09-20', 'Technology', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage19102021_120945_software-development.jpg\"]', 1, 0, 119, NULL, NULL, '2021-09-21 03:47:54', '2022-12-20 10:41:57'),
(20, 20, 'Biden\'s first speech as us president to the annual united nations general assembly in new york faces a tough reception', 'Biden\'s first speech as us president to the annual united nations general assembly in new york faces a tough reception', '<div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 20px; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Biden\'s first speech as US president to the annual United Nations General Assembly in New York faces a tough reception</p></div><span style=\"color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">\r\n</span><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">President Joe Biden will tell the world on Tuesday that the United States wants to avoid a Cold War with China, while pivoting from continuous post-9/11 conflicts to an era of US-led diplomacy.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Biden\'s first speech as US president to the annual United Nations General Assembly in New York faces a tough reception.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">He has spent his presidency branding countries like China and Russia as the opposing side in a generational, global struggle between autocrats and democracies.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Close ally France is also furious at what it calls backstabbing by Washington in a defence pact that will see Australia acquire US nuclear submarine technology, while ditching previous plans for French conventional submarines.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Throw in the hangover from the traumatic Afghanistan exit -- where victorious Taliban guerrillas forced the US-led alliance into a hasty, at times chaotic, withdrawal -- and Biden can expect some scepticism.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">However, Biden will argue from the UN rostrum that the United States is stepping in to save the world from the Covid pandemic, leading on climate crisis measures and rebuilding democratic ties frayed under Donald Trump.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">And he will insist that his drive to deepen the US footprint in Asia -- the new nuclear submarines pact with Australia is only the latest building block -- doesn\'t have to mean confrontation with China.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Biden will say \"he does not believe in the notion of a new Cold War with the world divided into blocks. He believes in vigorous, intensive, principled competition,\" a senior US official said, speaking on condition of anonymity.</p>', 1, 0, '2021-09-21', 'World', 3, 3, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21092021_095146_world1.jpg\"]', 1, 0, 32, NULL, NULL, '2021-09-21 03:51:46', '2022-12-20 11:01:18'),
(21, 20, 'World leaders return to un with focus on pandemic, climate', 'Biden will host a virtual meeting from washington with leaders on Wednesday that aims to boost the distribution of vaccines globally', '<div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 20px; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Biden will host a virtual meeting from washington with leaders on wednesday that aims to boost the distribution of vaccines globally</p></div><span style=\"color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">\r\n</span><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">World leaders are returning to the United Nations in new york this week with a focus on boosting efforts to fight both climate change and the Covid-19 pandemic, which last year forced them to send video statements for the annual gathering.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">As the coronavirus still rages amid an inequitable vaccine rollout, about a third of the 193 UN states are planning to again send videos, but presidents, prime ministers and foreign ministers for the remainder are due to travel to the United States.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">The United States tried to dissuade leaders from coming to New York in a bid to stop the UN General Assembly from becoming a \"super-spreader event,\" although President Joe Biden will address the assembly in person, his first UN visit since taking office.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">A so-called UN honour system means that anyone entering the assembly hall effectively declares they are vaccinated, but they do not have to show proof.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">This system will be broken when the first country speaks - Brazil. Brazilian President Jair Bolsonaro is a vaccine skeptic, who last week declared that he does not need the shot because he is already immune after being infected with Covid-19.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Should he change his mind, New York City has set up a van outside the United Nations for the week to supply free testing and free shots of the single-dose Johnson &amp; Johnson vaccine.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">UN Secretary-General Antonio Guterres told Reuters that the discussions around how many traveling diplomats might have been immunized illustrated \"how dramatic the inequality is today in relation to vaccination.\" He is pushing for a global plan to vaccinate 70% of the world by the first half of next year.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Out of 5.7 billion doses of coronavirus vaccines administered around the world, only 2% have been in Africa.&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Biden will host a virtual meeting from Washington with leaders and chief executives on Wednesday that aims to boost the distribution of vaccines globally.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Demonstrating US Covid-19 concerns about the UN gathering, Biden will be in New York only for about 24 hours, meeting with Guterres on Monday and making his first UN address on Tuesday, directly after Bolsonaro.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">His UN envoy, Linda Thomas-Greenfield, said Biden would \"speak to our top priorities: ending the Covid-19 pandemic; combating climate change ... and defending human rights, democracy, and the international rules-based order.\"</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Due to the pandemic, UN delegations are restricted to much smaller numbers and most events on the sidelines will be virtual or a hybrid of virtual and in-person. Among other topics that ministers are expected to discuss during the week are Afghanistan and Iran.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">But before the annual speeches begin, Guterres and British Prime Minister Boris Johnson will start the week with a summit on Monday to try and save a UN summit - that kicks off in Glasgow, Scotland, on October 31 - from failure.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">As scientists warn that global warming is dangerously close to spiraling out of control, the UN COP26 conference aims to wring much more ambitious climate action and the money to go with it from participants around the globe.</p>', 1, 1, '2021-09-20', 'World', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21092021_095404_world2.jpg\"]', 1, 0, 630, NULL, NULL, '2021-09-21 03:54:04', '2022-12-20 10:16:39'),
(22, 20, 'New york to attend 76th United nations general assembly', 'This is the premier’s first foreign tour after a year and a half since she visited Italy in February 2020 before the coronavirus pandemic lockdowns began', '<div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 20px; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">This is the premier’s first foreign tour after a year and a half since she visited Italy in February 2020 before the coronavirus pandemic lockdowns began</p></div><span style=\"color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">\r\n</span><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Prime Minister Sheikh Hasina reached the USA on Sunday evening to attend the 76th United Nations General Assembly (UNGA).</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">\"A VVIP chartered flight of Biman Bangladesh Airlines (BG-1902) carrying the premier and her entourage members arrived at 5:40pm (local time) on Sunday in the John F Kennedy International Airport in New York,\" Prime Minister\'s Press Secretary Ihsanul Karim told BSS.<span style=\"font-size: 1rem;\">Bangladesh Ambassador to the USA M Shahidul Isalm and Bangladesh Permanent Representative to the United Nations (UN) Ambassador Rabab Fatima received the premier at the airport, he said.</span></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Foreign Minister Dr A K Abdul Momen, and State Minister for Foreign Affairs Md Shahriar Alam, among others, are accompanying the prime minister.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">A ceremonial motorcade later escorted Sheikh Hasina to Lotte New York Palace where she will be staying during her stay in the USA.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">After a two-day stopover in Helsinki, the premier left the Helsinki-Vantaa Airport for New York at 4:16 pm (Finnish capital time).</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Earlier, on September 17, Prime Minister Sheikh Hasina reached Helsinki en route to New York, USA to attend the 76th UNGA.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">The premier and her entourage members departed from the Hazrat Shahjalal International Airport (HSIA), Dhaka for Helsinki at 9:23 am on the same day.</p>', 1, 1, '2021-09-20', 'World', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage19102021_123338_55920270_303.jpg\"]', 1, 0, 74, NULL, NULL, '2021-09-21 04:02:46', '2022-12-18 05:34:10'),
(23, 17, 'A woman gave birth to a baby boy on a plane in  Paris early tuesday morning.', 'Both the mother and her newborn are now healthy.', '<div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 20px; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">Both the mother and her newborn are now healthy</p></div><span style=\"color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">\r\n</span><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">A woman gave birth to a baby boy on a plane in&nbsp; Paris early Tuesday morning.&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Both the mother and her newborn are now well, say doctors.&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">The incident took place at 2:30am on an overnight “Emirates” coach to France.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">The woman, along with her husband, was heading to her father\'s house in India from France.&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">As the bus reached Parisin Chittagong, she went into full labour and started to feel severe contractions.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">So, the driver puller over at the Paris province Health Complex, allowing some passengers to call on the on-duty doctor at the emergency department.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">“When the midwives and nurses from the hospital arrived on scene, the woman was in no condition to be moved to the hospital. So, they decided to go for a normal delivery on the bus,” said Paris province Health Complex Residential Medical Officer (RMO) Sadia Akhter.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">“Both the mother and her newborn baby boy now are healthy. They have been kept under observation at the hospital,” she added.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">She expressed her gratitude towards the bus driver and passengers for coming forward to help the pregnant mother in need.</p>', 1, 1, '2021-09-20', 'National', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage19102021_123027_1200x627-1555612902443.jpg\"]', 1, 0, 76, NULL, NULL, '2021-09-21 04:06:44', '2022-12-09 08:07:34'),
(24, 17, 'The seven-member group filmed a music video in the world body’s New York headquarters', 'The seven-member group filmed a music video in the world body’s New York headquarters over the weekend', '<div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 20px; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\">The seven-member group filmed a music video in the world body’s New York headquarters over the weekend</p></div><span style=\"color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">\r\n</span><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Fully vaccinated South Korean band BTS danced its way through the United Nations in a Monday broadcast, promoting global goals tackling poverty, inequality, injustice and climate change ahead of the annual UN gathering of world leaders.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">The seven-member group filmed a music video to its song “Permission to Dance” in the world body’s New York headquarters over the weekend, dancing through the General Assembly hall and out into the gardens. It was broadcast during an event on the Sustainable Development Goals.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">BTS - whose members declared they were all fully vaccinated against COVID-19 - also appeared in person at the event in the General Assembly, introduced by South Korean President Moon Jae-in. They are the UN’s Special Presidential Envoys for Future Generations and Culture.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">They shared their thoughts and those of young people worldwide on the past two years and the future, expressing their frustration during the pandemic.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">“I was saddened to hear that entrance and graduation ceremonies had to be canceled,” said Jeon Jung-Kook, known as Jungkook. “These are moments in life you want to celebrate and missing out on them must have been upsetting. We were heartbroken when our long-planned concert tours were canceled.”</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">They praised the resilience of youth, saying they were not “COVID’s lost generation.”</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">“I think it’s a stretch to say they’re lost just because paths they tread can’t be seen by grown-up eyes,” said BTS group leader Kim Nam-Joon, known as RM.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\">Kim Seok-Jin, known as Jin, added: “Instead of the ‘lost generation’ a more appropriate name would be the ‘welcome generation’ because instead of fearing change, this generation says ‘welcome’ and keeps forging ahead.”&nbsp;</p>', 1, 1, '2021-11-04', 'National', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21092021_100910_national2.jpg\"]', 1, 0, 375, NULL, NULL, '2021-09-21 04:09:10', '2022-12-19 08:09:55'),
(25, 17, 'Serena Williams on Her Star-Studded Gucci Bodysuit', '“Fashioning Masculinities,” the V&A’s New Show, Proves That Gender Has Always Been a Construct.', '<div class=\"highlighted-content\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 20px; font-family: roboto, sans-serif, &quot;siyam rupali&quot;; letter-spacing: 0.5px; white-space: pre-line;\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px;\"><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">I’m staring at a giant plaster fig leaf in a cabinet at the V&amp;A. This modesty-saving Victorian codpiece was hastily made to cover the Down There on Michelangelo’s David, shortly after Queen Victoria had been horrified at the sight of the stark naked plaster cast of the classic Renaissance sculpture—a shock she experienced in 1857, at the opening of her own museum, the Victoria &amp; Albert.<br><br>This big, veined fake fig leaf is an opening gambit in the “Undressed” introduction to “Fashioning Masculinities: The Art of Menswear,” the new Gucci-sponsored exhibition at the V&amp;A. It’s positioned right across from a pair of late-1980s fig leaf-printed briefs by Vivienne Westwood, a 1996 Jean Paul Gaultier trompe l’oeil Greek god torso blazer, and an installation of 2021 underwear for transgender men and transmasculine non-binary people by gc2b and Paxies.<br><br>Cleverly, “Undressed” starts us off with a confrontation with the dominant Western European archetypes of the male body. By way of an edit of the plaster-casts that began the V&amp;A’s original art-educational collection, it argues that everything can be traced back to men comparing themselves to the iconography of classical Greek, Roman, and Renaissance sculpture. Take Hercules, with his bulging muscles: “The normalization of hyper-masculinity like this has spawned contemporary gym culture,” reads a caption (we see a 1990s Calvin Klein underwear ad nearby). Or the boyish body of Hermes: “The idolization of youth resonates in the treatment of young male models and performers.” Never a truer word, when you think of Hedi Slimane’s abiding adherence to the straight up-and-down teenage body. One of Slimane’s Dior Homme motorcycle jackets and skinny tailored trousers, with which he dramatically narrowed menswear proportions in the early 2000s, is in the show. That it looks so unremarkable 20 years later is testament to the sweeping influence of his look, for a good few years.<br>Image may contain Human Person Mannequin and Shop</span></p></div>', 1, 0, '2021-09-14', 'National', 4, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_065512_slider-1.jpg\"]', 1, 0, 218, NULL, NULL, '2021-09-21 04:12:35', '2022-12-09 08:08:18'),
(26, 30, 'Tourists will soon be able to visit beautiful villages along Indo-China border.', 'Tourists will soon be able to visit beautiful villages along Indo-China border.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The Union government has announced plans to open the villages along the Chinese border for tourists under the Vibrant Village programme. With regard to this, the Ministry of Home Affairs (MHA) held a meeting with public representatives of such villages from a number of states, including Uttarakhand, Himachal Pradesh, Sikkim, the Union Territory of Ladakh, and Arunachal Pradesh.<br><br>As per the revised Border Areas Development Plan (BADP), there are around 198 villages within the 242 km border of Himachal Pradesh with China. To start with, those villages will be taken up on priority that are situated within a 10 km distance from the last border village.<br><br>Reports have it that the last village on the border will be spotted from where an arch will be drawn to select villages that fall within the 10 km distance for development, and setting up of all necessary facilities. This will in turn help to integrate the border villages and also check the migration of tribal people.<br><br>Chitkul, Chango, and Namgia are some of the villages that are situated closest to the international border. And there are nine passes (seven in Kinnaur, two in Lahaul and Spiti) along the international boundary between India and China.<br><br>Chief Secretary Ram Subhag Singh said that the detailed project reports (DPRs) for the development of border villages are being prepared under the Vibrant Villages Programme to avail the benefits of the scheme in the next financial year (2022-23). He further added that talks have been held with the Secretary Border Management and the Deputy Commissioners of Kinnaur and Lahaul and Spiti districts have been sensitized.<br><br>Under the BADP, the selected villages will be provided livelihood and all things required to fill the critical gaps with focus on developing tourist sites, strengthening communication, accessible road connectivity, and other facilities. </span><span style=\"text-align: justify;\"></span>', 1, 0, '2021-10-13', 'travel', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage19102021_094712_photo-1503220317375-aaad61436b1b.jpg\"]', 1, 0, 87, NULL, NULL, '2021-10-13 04:39:35', '2022-12-20 10:36:35'),
(27, 17, 'U.S. fuel markets are getting even tighter as Europe’s scramble', 'U.S. fuel markets are getting even tighter as Europe’s scramble for alternatives to Russian diesel flipped New York from a typical import region to an exporter.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">U.S. fuel markets are getting even tighter as Europe’s scramble for alternatives to Russian diesel flipped New York from a typical import region to an exporter.<br><br>In a rare reversal of normal trade flows, New York is sending two diesel cargoes to Europe — which relies on Russia for about a third of its diesel needs — even as regional inventories are at multiyear lows and prices hover close to record highs. <br><br>The flip-flop is an example of how Russia’s invasion of Ukraine is rattling fuel markets around the globe, even though the U.S. is relatively less exposed to Russian exports. High pump prices in the U.S. have become a liability for President Joe Biden, and the burden is growing for truckers and farmers. <br><br>Two tankers, the Falcon Nostos and the Energy Centaur, are carrying more than 700,000 barrels of diesel from New York to Europe, according to Vortexa, Kpler, as well as shipping data compiled by Bloomberg. This is a reversal of recent trade flows, which saw cold-gripped New York Harbor import at least 4.5 million barrels of diesel from Europe and Russia since the start of the year for power generation and home heating. <br><br>Diesel exports from the Gulf coast to Europe are also picking up, with around 103,000 barrels a day heading to the continent so far this month, compared with 19,000 in February, Kpler estimates. This trade route is more common, although it has diminished in the last year or two, with Latin America absorbing much of the U.S. export diesel market. <br><br>But the flow of U.S. clean products will “redirect toward Europe if European buyers are less willing to lift out of Russia,” said Reid I’anson, senior commodity economist at Kpler. <br><br>The transatlantic diesel pull is taking place even as Russian-origin cargoes continue to discharge at European ports. The U.K. has said it will phase out imports of Russian oil, including diesel. <br><br>The arbitrage to ship diesel from the U.S. to Europe remains largely shut on paper, traders say. This means cargo movers risk taking a loss, especially considering the sharp backwardation in the European diesel market — a condition where prices for future deliveries are priced below prompt levels. <br><br>“It’s all a gamble,” one trader said.</span>', 1, 1, '2021-10-13', 'national', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage13102021_064050_Unravel the Mystery of the Sundarbans with Go Zayaan.jpg\"]', 1, 0, 66, NULL, NULL, '2021-10-13 04:40:50', '2022-12-15 14:07:04'),
(28, 7, 'East bengal and kerala blasters have lost most number of east bengal and kerala blasters have.', 'East bengal and kerala blasters have lost most number of east bengal and kerala blasters have.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Alejandra Díaz will begin her new job at the Israel Symphony Orchestra Rishon LeZion in March 2022.<br><br>​Díaz was awarded the LSO String Experience Scheme in 2013 and became the first Spanish cellist in history to perform alongside the London Symphony Orchestra — as part of two concerts paying tribute to Claudio Abbado and Pierre Boulez at the Barbican Hall. <br><br>Obtaining a Masters of Performance at London\'s Guildhall School of Music &amp; Dance in 2014 under Prof. Ursula Smith, Díaz is a former prize winner of the Carnegie Palmer Award of the Worshipful Company of Musicians, and a finalist of the Pablo Casals International Award.<br><br>As a principal cellist, she has appeared with the Orquesta Sinfónica Vigo 430, the Atlantic Coast Orchestra, the London Metropolitan Sinfonia, and the Guildhall Symphony Orchestra.<br><br>Alongside her performing career, Díaz holds a Masters in Teaching at the Santiago de Compostela University — where she currently serves as a cello professor. She also taught at the Juan Sebastían Elcano School from 2018-2020.<br><br>Díaz plays on a modern cello by Apostol Kaloferov (c.1990) and a Paolo Pamiro bow made in Málaga (c.2019).​</span>', 1, 0, '2021-10-13', 'world', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage24102021_051048_weekend-entertainment-SPh.jpg\"]', 1, 0, 69, NULL, NULL, '2021-10-13 04:41:51', '2022-12-11 21:46:05'),
(29, 14, 'A new control technology has been developed by scientists for a four-legged robot', 'A new control technology has been developed by scientists for a four-legged robot that allowed it to achieve the “effortless” superhuman feat of hiking 120 vertical metres in the Alps in 31 minutes without any falls or missteps.', '<h4 style=\"margin: 12px 0px 0px; font-weight: 700; line-height: 30px; font-size: 20px; padding: 0px; border: 0px; font-family: Jost, sans-serif;\"><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">A\r\n new control technology has been developed by scientists for a \r\nfour-legged robot that allowed it to achieve the “effortless” superhuman\r\n feat of hiking 120 vertical metres in the Alps in 31 minutes without \r\nany falls or missteps.<br><br>The advance may lead to the development of\r\n new robots and other kinds of robotic technology that can be used in \r\nterrain too dangerous for humans, said the researchers, including those \r\nfrom ETH Zurich in Switzerland.<br><br>The ANYmal quadrupedal robot \r\nsuccessfully finished the hike – which consisted of steep sections on \r\nslippery ground, high steps and forest trails full of roots – four \r\nminutes faster than the estimated duration for human hikers, according \r\nto the study, published Wednesday in the journal Science Robotics.<br><br>“The\r\n robot has learned to combine visual perception of its environment with \r\nproprioception – its sense of touch – based on direct leg contact. This \r\nallows it to tackle rough terrain faster, more efficiently and, above \r\nall, more robustly,” study co-author Marco Hutter from ETH Zurich said \r\nin a statement.<br><br>While humans and other animals handle slippery or\r\n soft ground by combining the visual perception of their environment \r\nwith the proprioception of their legs and hand, researchers said legged \r\nrobots have been able to do this only to a “limited extent” until now.<br>They\r\n said this was mainly because information about the immediate \r\nenvironment recorded in such robots by laser sensors and cameras was \r\noften “incomplete and ambiguous”.<br><br>Citing an example of such \r\nambiguous perception, researchers said tall grass, shallow puddles or \r\nsnow appeared as “insurmountable obstacles” or were partially invisible \r\nfor these robots, even when they could potentially traverse them.<br><br>In\r\n addition, they said depth perception could be poor in some cases due to\r\n difficult lighting, dust, fog, reflective or transparent surfaces or \r\nother factors.</span><br></h4>', 1, 0, '2021-10-19', 'technology', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage30012022_034527_card_2.jpg\"]', 1, 0, 47, NULL, NULL, '2021-10-19 10:11:51', '2022-12-20 07:52:41'),
(30, 7, 'Steve Cohen’s dazzling live show, performed weekly', 'Steve Cohen’s dazzling live show, performed weekly', '<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(45, 46, 47); letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></span><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The\r\n Department of Dance at Chapman University offers students a strong \r\nprofessional dance training program with high quality productions. \r\nStudents may choose from a pre-professional Bachelor of Fine Arts degree\r\n in Dance Performance or from the more broad based Bachelor of Arts \r\ndegree in Dance. Both degrees provide excellent preparation for those \r\nwho plan to enter the professional dance world and/or attend graduate \r\nschool. The curriculum for dance majors includes course work in \r\nchoreography, dance history, dance production, dance performance, \r\nacting, music for dancers, dance science, dance teaching methods, \r\nballroom, somatics, hip-hop, tap, and comprehensive pre-professional \r\ntraining in modern, jazz and ballet technique. The USC Glorya Kaufman \r\nSchool of Dance offers a Bachelor of Fine Arts to a select number of \r\nundergraduates who wish to pursue dance as their major. This four-year \r\nprofessional degree is housed in the state-of-the-art Glorya Kaufman \r\nInternational Dance Center. USC Kaufman also offers individual classes \r\nin technique, performance, choreography, production, theory and history \r\nthat are open to all students at USC. In addition to the dance major and\r\n open courses, the minor in Dance and minor in Dance in Popular Culture:\r\n Hip-Hop, Urban and Social Dances, provide a rewarding program of study \r\nfor any USC student. A conservatory-based program within a liberal arts \r\nenvironment, we are focused on rigorous training in both ballet and \r\nmodern technique. We are committed to the creation and production of \r\noriginal contemporary choreographic works by students, faculty and guest\r\n artists. The Dance Program is housed in its own state-of-the-art Dance \r\nCentre on a large liberal arts campus. USF is accredited by the National\r\n Association of Schools of Dance (NASD). Students must apply for \r\nadmission and be accepted to the University of South Florida before they\r\n can be accepted as a Dance Major in the School of Theatre and Dance. \r\nAdditionally, all prospective Dance Majors and Dance Minors must \r\naudition during the year prior to their first semester to be accepted \r\ninto the Dance Program.</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(45, 46, 47); letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span></span>', 1, 0, '2021-10-19', 'movie', 3, 2, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage24102021_034150_dj.jpg\"]', 1, 0, 74, NULL, NULL, '2021-10-19 10:17:23', '2022-12-19 22:38:22');
INSERT INTO `news` (`id`, `subcategory_id`, `title`, `summary`, `description`, `status`, `breaking_news`, `date`, `tags`, `speciality_id`, `reporter_id`, `image`, `user_id`, `archive`, `viewers`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(32, 14, 'Spider Man Wallpapers A collection of the top 45 Spider Man wallpapers and backgrounds available', 'There has been a lot of speculation about which characters are set to appear in Spider-Man.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">There has been a lot of speculation about which characters are set to appear in Spider-Man. No Way Home, beyond the previously confirmed appearances of Benedicts Cumberbatch and Wong as Doctor Strange and his sassy partner Wong.<br><br>We\'ve also heard that a number of actos from classic (read: non-MCU) films would be returning to their roles, including Jamie Foxx as Electro and Alfred Molina as Doctor Octopus. Early rumors also speculated that Charlie Cox might reprise his role as Matt Murdock, and mark the first time the character has appeared on the big screen since the disastrous 2003 Daredevil movie.<br><br>More recently those rumors changed, and suggested that both Tobey Maguire and Andrew Garfield would be reprising role as Peter Parker from previous Spider-Man movies. We\'re not going to spoil anything here, but the big topic at hand right now is the fans demand for Amazing Spider-Man 3.<br><br>Those rumors also claimed that Kirsten Dunst and Emma Stone may also be returning as Mary Jane Watson and Gwen Stacey.<br><br>But rumors are rumors, and should be treated as such until Marvel and Sony confirms or denies their legitimacy. Here\'s who we know is going to star in the movie, based on official announcements and the newly-released teaser trailer.<br>Speaking of Zendaya and Batalon, Holland\'s been quoted as saying \"We\'ve been making these films for five years now ... We\'ve had such an amazing relationship, the three of us. We\'ve been with each other every step of the way. We\'ve done every single film, every single press tour. So this one scene, [we didn\'t know] if this would be the last time [we were all working together,]\" — which makes us wonder if one of them isn\'t making it to another Spider-movie.<br>Advertisement<br><br>In the Venom 2 post-credits scene, we saw two huge things, one more subtle than the other. The more obvious moment came as we saw J.K. Simmons as J. Jonah Jameson, yelling about how Peter Parker is Spider-Man. This ties things directly into the end of Far From Home, and when Venom licked the screen (with Spidey on it), we got the distinct impression that Eddie Brock and his symbiote may appear in Spider-Man: No Way Home.<br><br>But, before that, we saw a gigantic explosion in the sky. It seemed as if the timeline-shattering events from the Loki finale may have been what triggered this dimensions-shattering event. <br><br></span><span style=\"color: rgb(0, 0, 0); font-family: Helvetica; text-align: center;\"></span>', 1, 0, '2021-11-03', 'spider', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage30012022_035946_spider_man.jpg\"]', 1, 0, 71, NULL, NULL, '2021-10-21 09:42:22', '2022-12-17 09:35:43'),
(33, 17, 'Shopping for a Used Car  reliability and dependability are important factors', 'If you’re shopping for a car, reliability and dependability are important factors — particularly when looking for a used car. Well,', '<span style=\"color: rgb(255, 255, 255); font-family: designk-medium, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\"><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">At 190.8 inches long with a 114.2-inch wheelbase, the Grecale is a bit larger than the Stelvio and Macan but has similar proportions, with a rounded greenhouse and a relatively low nose. Its grille shape and vertically oriented headlights reference the mid-engine MC20 supercar’s and represent Maserati’s latest design language that’s distinct from what we see on the older Levante, Ghibli, and Quattroporte models.<br>Maserati claims the four-cylinder models will get to 60 mph in the low-5.0-second range, while the Trofeo is clearly aiming for the Porsche Macan GTS, BMW X3 M, and other performance SUVs with its claimed run to 60 mph in 3.6 seconds and top speed of 177 mph. An eight-speed automatic transmission and all-wheel drive are standard across the board. An air suspension and adaptive dampers are optional on the four-cylinder variants and standard on the Trofeo. The performance model also gets 21-inch wheels and upgraded brakes, and both the Modena and Trofeo\'s rear tires are wider than their fronts.<br><br>The Grecale’s interior is more screen-heavy than any Maserati we’ve seen before. Both the digital gauge cluster and central infotainment screens measure 12.3 inches, and there’s also a smaller 8.8-inch touchscreen lower on the dash that controls various climate and vehicle functions. Even the clock on top of the dash is digital, although its display mimics an analog watch face. Various interior trim options include open-pore wood, gloss-black inserts, and contrasting stitching, while the Trofeo has carbon-fiber trim and a different pattern for the leather upholstery.<br><br>Maserati has priced the Grecale ambitiously, as it starts at $64,995 for the base GT model, significantly more than the $56,250 base Macan. A Modena Limited Edition will be available for reservations first, starting at $78,895. Pricing for the Trofeo is not yet available but it will likely start above $80,000. The Grecale will go on sale in the U.S. this summer.</span> Tell</span><span style=\"color: rgb(255, 255, 255); font-family: designk-medium, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\"> gives you power for wherever the road takes you. This award-winning vehicle offers impressive handling and power, advanced technology, and a spacious interior designed for passenger comfort.&nbsp;</span>', 1, 0, '2021-11-04', 'car', 3, 2, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21102021_114946_car 1.jpg\"]', 1, 0, 43, NULL, NULL, '2021-10-21 09:49:46', '2022-12-18 15:18:51'),
(34, 17, 'Delicious hot air balloons like candy hd mirror wallpaper Delicious hot air balloons like candy  Delicious', 'Delicious hot air balloons like candy', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Quebec athletes Lysanne Richard and Yves Milord are making a splash in the world of high diving, and have set a new world record.<br><br>The duo performed a synchronized dive last week, launching themselves from two hot-air balloons in flight into the waters of the Richelieu River.<br><br>According to a release, the divers set the new world record by jumping from small platforms rigged on the edge of the balloons’ baskets with Richard front flipping from a height of 25 metres, and Milord from a height of 23 metres.<br><br>Richard, a mother of three, has already made a name for herself in the world of high diving, with 14 podiums including three victories in the Red Bull Cliff Diving circuit. She was also named Top Diving Athlete of the Year in 2016 after a World Cup victory in Abu Dhabi.<br>The idea for the record-making dive first came to Richard in 2016, a release said, but her dream really came to life through a partnership with the International de montgolfières de Saint-Jean-sur-Richelieu, organizers of an annual international ballooning festival southeast of Montreal.<br><br>Last week’s dive required a team of 40 professionals including experienced balloon pilots to bring the project to fruition.<br><br>Some of the challenges included establishing a hot-air balloon safety committee to determine the ideal flying conditions, analyzing the water in the river and building custom platforms.<br><br>Organizers said unlike other aircrafts, you can’t steer a hot-air balloon.<br><br>“The pilot and their team have to accurately judge wind direction and speed, which greatly varies with altitude and weather, in order to maneuver the balloon towards the target location and the required water depth for the dive.”<br><br>Preparations included practicing jumps into an air mattress from a balloon anchored to the ground and diving into water at the Flintkote quarry in Thetford Mines.<br><br>And while the stunt was months in the making, the actual dives were only three seconds long as Richard and Milord twisted through the air at speeds more than 70 kilometres per hour.</span>', 1, 0, '2021-11-03', 'air ballon', 3, 2, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21102021_115531_air b.png\"]', 1, 0, 52, NULL, NULL, '2021-10-21 09:55:31', '2022-12-17 21:34:35'),
(35, 20, 'Patricia urquiola Coats transparent glas tables for livings in were front  Patricia urquiola glas tables for livings', 'The Government Medical College (GMC) of Amritsar has banned girls from wearing skirts, t-shirts, jeans and shorts in the college premises.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Boys have also been asked to wear formal trousers instead of jeans, according to a circular issued by college Principal Sujata Sharma.<br><br>The head of the department has been asked to ensure that the dress code is followed by all the students, it said. Boys have also been asked to wear formal trousers instead of jeans, according to a circular issued by college Principal Sujata Sharma.The new dress code will come into effect from October 1.<br>A group of students, led by their leader Mansimrat Singh, Wednesday met the college principal, requesting her to withdraw the circular.<br>The head of the department has been asked to ensure that the dress code is followed by all the students, it said. Boys have also been asked to wear formal trousers instead of jeans, according to a circular issued by college Principal Sujata Sharma.The new dress code will come into effect from October 1.<br>A group of students, led by their leader Mansimrat Singh, Wednesday met the college principal, requesting her to withdraw the circular.<br><br>However, Sharma declined to withdraw it, the students said.</span><span style=\"color: rgb(15, 15, 15); font-family: &quot;Chronicle Text G1 A&quot;, &quot;Chronicle Text G1 B&quot;, serif; font-size: 16.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span>', 1, 0, '2021-10-21', 'justin', 3, 3, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_070441_girl2.jpg\"]', 1, 0, 49, NULL, NULL, '2021-10-21 10:03:36', '2022-12-20 11:07:43'),
(36, 20, 'Taina blue retreat is a converted tower on the greek coast', 'Canadian prime minister Justin Trudeau said he\'s apologized to the reporter who accused him of groping her', 'Canadian prime minister Justin Trudeau said he\'s apologized to the reporter who accused him of groping her', 1, 0, '2021-10-21', 'world golbe', 3, 2, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_070202_politics-card-3.jpg\"]', 1, 0, 633, NULL, NULL, '2021-10-21 10:13:22', '2022-12-19 08:08:59'),
(37, 3, 'A matter of Imfact ou didn t find the perfect wallpaper to beautify your desktop', 'bmw automotive wallpaper and high resolution images. you didn t find the perfect wallpaper to beautify your desktop or homescreen.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">CNBC’s Jim Cramer on Tuesday warned investors against buying unprofitable stocks due to unwarranted optimism about the stock market.<br><br>“While I appreciate hope as a mindset, I’m not as confident as a lot of the buyers who are paying up. ... We are seeing a level of enthusiasm here that to me feels unjustified. We shouldn’t be going back to a mentality where we like all stocks because so many of them will miss their numbers and still others will hit us with negative forecasts,” the “Mad Money” host said.<br><br>“Right now, we need to bow down to the Fed and the forces of inflation. Anything that brings down inflation, including tough statements from [Fed Chair] Jay Powell, will make big institutional money managers more likely to buy stocks rather than sell them. For the moment, that’s what controls the stock market,” added Cramer, who defended Powell against critics on Monday.<br><br>Cramer’s comments come a day after the Fed Chair Jerome Powell vowed to take aggressive action against inflation, including possibly implementing half-basis point interest increases, a week after instituting the first rate hike in over three years.<br><br>A company that has high stock prices won’t necessarily stay that way in a volatile market, even if it is performing well, Cramer said.<br><br>“There are periods, extreme periods, where the economy gets so out of whack that the stock market itself becomes a pariah asset class, a source of funds for other asset classes, so an individual company’s merits simply won’t be reflected in its share price,” Cramer said.<br><br>Cramer, who has touted a strategy of investing in profitable companies for months, also advised investors to refrain from picking up uninvestable stocks like floundering IPOs and SPACs.<br><br>“Tons of those stocks just aren’t worth much, regardless of whether Powell steers us into a soft landing or a hard landing,” he said.</span>', 1, 0, '2021-11-03', 'business', 3, 3, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_122605_business.jfif\"]', 1, 0, 197, NULL, NULL, '2021-10-21 10:17:32', '2022-12-19 23:45:17'),
(38, 1, 'Ice hockey Pictures the contemporary sport of ice hockey was developed in Canada, most notably', 'A couple of teams had a slow trade deadline day and that might hurt them down the stretch. Here are four teams that didn\'t do enough over the past few days.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">It’s been a day since the NHL’s 2021-22 trade deadline, and in addition to the joy felt in markets that did well on the trade front, there’s already angst, criticism and condemnation for various reasons in other NHL cities. In no particular order, let’s take a brief look at the losers at Deadline Day:<br><br>1. Edmonton Oilers: They’ve been getting improved goaltending of late, but the Oilers not too long ago were in goalie hell with their current pair of Mikko Koskinen and Mike Smith. In Koskinen’s past two games, he’s put in sub-.900 save percentages, and in two of his past five appearances, Smith has posted a sub.860 SP.<br><br>Did Edmonton GM Ken Holland have all the reason in the world to go out and get a better goalie? He sure did. Could that failure to do so come back to haunt him once the playoffs begin? It sure could. Holland had all season long to find another netminder, and he knew the deadline was coming. It didn’t have to come to this, but now, it has. A goaltending crisis may prove to be what sinks the Oilers’ championship aspirations.<br>2. Toronto Maple Leafs: The Leafs land here with a caveat – namely, the acknowledgment that Toronto GM Kyle Dubas did improve his blueline and fourth line of forwards when he acquired D-man Mark Giordano and forward Colin Blackwell from Seattle on Sunday. However, their most pressing need – a veteran goalie to be given a shot at the No. 1 job until Jack Campbell returns from a rib injury – was not dealt with by the deadline.<br><br>That means, if rookie netminder Erik Kallgren crumbles under the pressure of the starter’s role, Leafs head coach Sheldon Keefe will have no other alternative but to use Petr Mrazek. And anyone who has watched Mrazek’s recent games will tell you that’s not a good thing. Mrazek’s .884 SP and 3.48 goals-against average show his struggles with Toronto this season, and the pressure is only going to increase on him, whenever the Leafs decide to play him. Another soft goal here or there and Mrazek will be quickly pulled from games.<br><br>Dubas has claimed he waived Mrazek over the weekend as a salary cap move, but who’s kidding who - you don’t waive someone you really want to keep around. If, for whatever reason, another franchise decided to take a chance on Mrazek – for this year, and two more years, with a $3.8 million annual cap hit – there would be little in the way of mourning over Mrazek’s departure. Instead, Leafs brass now has to be cold-blooded in their analysis and deployment of goalies. Campbell and Kallgren will get the first chances to run with the No. 1 job, and if they fail, it will fall on Mrazek to get one last shot at proving himself in Toronto.</span>', 1, 0, '2021-11-04', 'Hocky', 3, 3, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage21102021_122640_hocky.jpg\"]', 1, 0, 127, NULL, NULL, '2021-10-21 10:26:40', '2022-12-20 01:45:41'),
(39, 14, 'This article is about mechanical robots. for software agents, see bot.', 'Microsoft’s rival to Google’s Chromebooks is finally available for schools and students', '<span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; font-style: italic;\"></span><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Microsoft’s rival to Google’s Chromebooks is finally available for schools and students.<br><br>In\r\n November the software giant announced Windows 11 SE, a version of its \r\noperating system that is designed specifically for classrooms. It said \r\nit would be available on low-cost devices, and is optimized for Edge, \r\nMicrosoft Office, and the company’s other cloud-based tools like \r\nOne-drive.<br><br>Users will not be able to download applications from \r\nthe Windows Store because it is not available on the machine; instead, \r\nthe computers have an authorized selection of apps that can be installed\r\n on it – such as Zoom and Google Chrome.<br>China plane crash: ‘Severely damaged’ black box from Boeing 737 found in Xingu<br><br>The\r\n operating system has also been simplified so that apps can only run \r\nfull screen, and Snap Layouts only load side-by-side. Widgets have also \r\nbeen removed, as Microsoft found it would be a distracting element in a \r\nclassroom.<br><br>Those low-cost devices, meanwhile, include the Surface\r\n Laptop SE priced at $249 in the US and £229 in the UK. There are also a\r\n number of other laptops from Acer, Asus, Dell, and HP too.</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; font-style: italic;\"></span>', 1, 0, '2021-10-21', 'robot', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_121934_technology.jfif\"]', 1, 0, 67, NULL, NULL, '2021-10-21 10:30:22', '2022-12-18 01:34:39'),
(40, 1, 'Two georgian silver medallists were told to leave the olympic games for taking a sightseeing trip in tokyo .is the world\'s largest city', 'Trae Young had 45 points and eight assists in his first game at Madison Square Garden since last season\'s playoffs, leading a late surge that gave the Atlanta Hawks a 117-111 victory over the New York Knicks on Tuesday night.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Trae Young had 45 points and eight assists in his first game at Madison Square Garden since last season\'s playoffs, leading a late surge that gave the Atlanta Hawks a 117-111 victory over the New York Knicks on Tuesday night.<br><br>Picking up right where he left off last spring, Young made seven 3-pointers, including one that tied the game at 105 with 2:54 to play. He then set up Bogdan Bogdanovic for a go-ahead 3 and followed another by De\'Andre Hunter by leaving Taj Gibson behind off the dribble and knocking down a jumper to cap an 11-0 spurt and make it 113-105 with 1:04 left.<br><br>Bogdanovic added a season-high 32 points for the Hawks, who dropped the Knicks six games behind them for 10th place in the Eastern Conference, the final spot in the play-in field.<br><br>RJ Barrett had 28 points and 13 rebounds for the Knicks, who fell to 30-42 to clinch their eighth losing season in the last nine. The only winning record was when they went 41-31 last season to earn the No. 4 seed in the East.<br><br>The Hawks then beat them in five games in the first round of the playoffs. Young was the star in his first postseason series, ignoring the profane taunts from fans and getting the last word when he bowed to the crowd from near midcourt late in Game 5.<br><br>Young missed the return trip when he was sidelined for the Christmas game because of the NBA’s health and safety protocols. Fans booed him every time he touched the ball early Tuesday, though that didn’t last.<br><br>Alec Burks had 21 points for the Knicks, who played without Julius Randle because of a sore right quadriceps tendon. They led by 10 early in the fourth, but the game changed when Young re-entered with 7:45 remaining.<br><br>The Knicks led 34-30 after one, a lead that would have been six if not for Bogdanovic taking the ball out after Barrett\'s basket with 0.6 seconds left and flinging it the length of the court to Young, who caught and tossed it in all in one motion.<br><br>New York extended it to 12 in the second before the Hawks surged ahead by nine and took a 64-58 lead into halftime. Bogdanovic had 15 points and Young 13 in the second quarter, combining for four more points than the Knicks scored.</span>', 1, 1, '2021-10-23', 'sports', 1, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage30012022_034427_basket_ball.jpg\"]', 1, 0, 143, NULL, NULL, '2021-10-21 10:42:10', '2022-12-19 18:10:10'),
(41, 7, 'Manages and administers a specific function of the Police department’s it systems  including support in computer hardware', 'Drones, also known as unmanned aerial vehicles, are becoming a promising new tool for news gathering as TV stations and networks around the world begin to experiment with these smaller, more compact and easier to maneuver devices equipped with cameras.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Drones, also known as unmanned aerial vehicles, are becoming a promising new tool for news gathering as TV stations and networks around the world begin to experiment with these smaller, more compact and easier to maneuver devices equipped with cameras.<br><br>TV news drones are typically equipped with high definition video cameras and can be used to fly over the scenes of news stories, or simply to capture “beauty shots” for weather forecasts or use at various places throughout the newscast.<br><br>Drones are particularly useful in covering natural disasters, environmental and nature news, traffic news, weather news or stories that require showing wide areas of land, such as property or road development or construction, though their use is hardly limited to just these areas.<br><br>Drones have the advantage of being smaller and less expensive than news helicopters and also offer some safety advantages in that they are unmanned and, in the event of a crash or mechanical failure, no on-board crew in put in danger.<br><br>However, there have been reports of drones causing injury to people on the ground or damage to property such as buildings and vehicles.<br><br>Drones are also able to fly at lower heights than helicopters and also offer the advantage of being quieter. However, like helicopters, drones have limited use during certain weather conditions, particularly storms or high winds.<br><br>Because of the proximity to the ground drones maintain, they often may lack the advanced (and more expensive) cameras equipped with gyro stabilization, digital image stabilization or enhanced zoom technologies.<br><br>Like that captured by news helicopters, drone footage may be aired live via wireless transmission technologies or stored on media for editing and playback later.<br><br>The video captured by drone is often recognizable by its fluid movement that is possible from the smaller, more agile devices.<br><br>Despite their usefulness, there is still many regulatory issues surrounding the use of drones for commercial purposes in the United States in general.<br><br>The FAA has not established complete rules and regulations surrounding the use of drones for TV news coverage and is slowly issuing permits to a handful of companies on a semi-experimental basis.<br><br>Most TV stations contract with a third party company or individual who is covered under such a license.</span>', 0, 1, '2021-11-03', 'technology', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage30012022_035547_card_1.jpg\"]', 1, 0, 110, NULL, NULL, '2021-10-21 10:46:11', '2022-12-20 07:29:45'),
(42, 14, 'Computer technology.generation new computer technology Stock Our managed it and it monitoring services allow you to focus', 'A new control technology has been developed by scientists for a four-legged robot that allowed it to achieve the “effortless” superhuman feat of hiking 120 vertical metres in the Alps in 31 minutes without any falls or missteps.', '<div><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">A new control technology has been developed by scientists for a four-legged robot that allowed it to achieve the “effortless” superhuman feat of hiking 120 vertical metres in the Alps in 31 minutes without any falls or missteps.<br><br>The advance may lead to the development of new robots and other kinds of robotic technology that can be used in terrain too dangerous for humans, said the researchers, including those from ETH Zurich in Switzerland.<br><br>The ANYmal quadrupedal robot successfully finished the hike – which consisted of steep sections on slippery ground, high steps and forest trails full of roots – four minutes faster than the estimated duration for human hikers, according to the study, published Wednesday in the journal Science Robotics.<br><br>“The robot has learned to combine visual perception of its environment with proprioception – its sense of touch – based on direct leg contact. This allows it to tackle rough terrain faster, more efficiently and, above all, more robustly,” study co-author Marco Hutter from ETH Zurich said in a statement.<br><br>While humans and other animals handle slippery or soft ground by combining the visual perception of their environment with the proprioception of their legs and hand, researchers said legged robots have been able to do this only to a “limited extent” until now.<br>They said this was mainly because information about the immediate environment recorded in such robots by laser sensors and cameras was often “incomplete and ambiguous”.<br><br>Citing an example of such ambiguous perception, researchers said tall grass, shallow puddles or snow appeared as “insurmountable obstacles” or were partially invisible for these robots, even when they could potentially traverse them.<br><br>In addition, they said depth perception could be poor in some cases due to difficult lighting, dust, fog, reflective or transparent surfaces or other factors.</span><br><br><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span></div>', 1, 0, '2021-11-04', 'rechnology', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_114415_techno.jpg\"]', 1, 0, 149, NULL, NULL, '2021-10-21 10:48:57', '2022-12-19 21:27:17'),
(43, 7, 'Green-party success Is reshaping global politics are increasingly shaping the debate in countries around the world', 'The British-Iranian dual national, who was detained for six years in Iran, said she should have been back in the UK “six years ago”.', '<p style=\"box-sizing: inherit; border-width: 0px; border-style: solid; border-color: rgb(4, 40, 74); margin: 0px 0px 20px; padding: 0px 0px 0px 19px; list-style: none; line-height: 24.5px; position: relative;\"><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The\r\n British-Iranian dual national, who was detained for six years in Iran, \r\nsaid she should have been back in the UK “six years ago”.<br><br>Speaking\r\n in parliament on Monday at her first press conference, she said she did\r\n “not really agree” that she should be thanking the foreign secretary \r\nfor her return.<br><br>“I have seen five foreign secretary changes over \r\nthe course of six years. That is unprecedented given the politics of the\r\n UK,” she told the assembled media.<br><br>“But I was told, many many \r\ntimes, ‘We’re going to get you home.’ That never happened. So there was a\r\n time when I felt like, do you know what, I’m not even going to trust \r\nyou because I’ve been told so many times that I’m going to be taken \r\nhome. But that never happened! Equalities Minister Kemi Badenoch has \r\nsuggested the British Empire brought “good things” to communities as she\r\n urged telling “both sides” of history.<br><br>Having gone to school in \r\nLagos, Nigeria, she said she was taught about Britain’s past with a \r\nnuanced description that has influenced her view on the former empire.<br><br>“There\r\n were terrible things that happened during the British Empire, there \r\nwere other good things that happened, and we need to tell both sides of \r\nthe story,” she told Times Radio.<br><br>“I think my upbringing and schooling in another country has really influenced the way that I look at these things.<br><br>“There\r\n wasn’t any sort of attempt to describe the British Empire as this \r\nawful, terrible thing that oppressed and victimised us.”</span></p>', 1, 0, '2021-10-23', 'politics', 2, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_060444_politics.jpg\"]', 1, 0, 154, NULL, NULL, '2021-10-23 04:04:44', '2022-12-20 10:05:26'),
(44, 13, 'Official press statement an historic moment time and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress', 'Official press statement\r\nan historic moment for the  nation', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; text-align: justify;\">Greater Bridgeport – For a few moments on, August 11, 2020, the discussion of the ravages from the pandemic of COVID-19 was pushed aside by the rushing tide of history. Senator Kamala Harris of California became the nation’s first African American woman nominated for the vice presidency of the United States. It is a moment to be savored, a time to reflect, and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress, and the first Black major party candidate to run for president of the United States. In 1972 she said, “at present, our country needs women’s idealism and determination, perhaps more in politics than anywhere else.” The historicity of this hour reminds us again of that idealism, determination, and authentic sensitivity we often find in women. It just seems to be a part of who they are. It often appears in the way they govern. There is an undying belief on the part of women, expressed in the words of former presidential candidate Hillary Rodham Clinton, “we are agents of change, we are drivers of progress, we are makers of peace – all we need is a fighting chance.” This is a bold move on the part of Vice President Joe Biden. It is another opportunity for our nation to move a little closer towards a more perfect union. It is a union for which Dr. Martin Luther King, Jr., said, “one day we will judge people not by the color of their skin but by the content of their character.” While the NAACP does not endorse candidates, we are compelled to recognize the historic impact of these rare moments in time. This election will really be for the very soul of our nation. As the author James Cone has written When My Soul Looks Back, “it wonders how I get over.” I can hear the voice of Harriet Tubman humming. I can hear Ida B. Wells declaring, Fannie Lou Hamersinging, and Shirley Chisholm calling out the words of that old gospel song “he didn’t bring us this far to leave us.” It is time for everyone regardless of color, station, or vocation to Take Your Soles To The Polls. Take them by mail or directly to the voting booth. Let us Vote! Vote!!Vote!!</span>', 1, 0, '2021-10-23', 'politics', 2, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage30012022_034246_politics_2.jpg\"]', 1, 0, 137, NULL, NULL, '2021-10-23 04:09:35', '2022-12-18 07:50:24'),
(45, 13, 'Bolsonaro’s new alliance for brazil is a lesson in the politics of loyalty and campaign finance  For over three decades, Bolsonaro used different', 'Bolsonaro’s new alliance for brazil is a lesson in the politics of loyalty and campaign finance', '<p style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-size: 1.8rem; margin-right: 0px; margin-bottom: 1.6rem; margin-left: 0px; line-height: 1.8; font-family: Roboto, sans-serif;\"><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The\r\n British-Iranian dual national, who was detained for six years in Iran, \r\nsaid she should have been back in the UK “six years ago”.Speaking\r\n in parliament on Monday at her first press conference, she said she did\r\n “not really agree” that she should be thanking the foreign secretary \r\nfor her return.<br>“I have seen five foreign secretary changes over \r\nthe course of six years. That is unprecedented given the politics of the\r\n UK,” she told the assembled media.<br>“But I was told, many many \r\ntimes, ‘We’re going to get you home.’ That never happened. So there was a\r\n time when I felt like, do you know what, I’m not even going to trust \r\nyou because I’ve been told so many times that I’m going to be taken \r\nhome. But that never happened! Equalities Minister Kemi Badenoch has \r\nsuggested the British Empire brought “good things” to communities as she\r\n urged telling “both sides” of history.<br>Having gone to school in \r\nLagos, Nigeria, she said she was taught about Britain’s past with a \r\nnuanced description that has influenced her view on the former empire.<br>“There\r\n were terrible things that happened during the British Empire, there \r\nwere other good things that happened, and we need to tell both sides of \r\nthe story,” she told Times Radio.<br>“I think my upbringing and schooling in another country has really influenced the way that I look at these things.<br>“There\r\n wasn’t any sort of attempt to describe the British Empire as this \r\nawful, terrible thing that oppressed and victimised us.”</span><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"font-size: 1.8rem;\"></span></p>', 1, 0, '2021-11-14', 'politics', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage30012022_034317_politics_3.jpg\"]', 1, 0, 218, NULL, NULL, '2021-10-23 04:12:58', '2022-12-16 12:38:46'),
(46, 7, 'Amazon has 143 billion reasons to keep Strech lining hemline above knee burgundy glossy silk complete hid zip little catches rayon', 'In an important milestone in meeting its Climate Pledge commitments, Amazon is seeking net-zero carbon certification for its newest Amazon Fresh grocery store.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">In an important milestone in meeting its Climate Pledge commitments, Amazon is seeking net-zero carbon certification for its newest Amazon Fresh grocery store. More than a dozen upgrades and features have been incorporated throughout the design and development of the 35,000-square-foot Seattle space to help make the store the world’s first grocery store to pursue the International Living Future Institute Zero Carbon certification. As a result of these upgrades, we expect the store will save nearly 185 tons of CO2e each year, equivalent to driving around the Earth 18 times in a standard passenger vehicle.<br>“We are constantly thinking about what we can do to make the customer shopping experience easier, more seamless, and more sustainable,” said Stephenie Landry, vice president of Amazon Grocery. “We know many customers are prioritizing sustainability in what products they buy and where they choose to shop. With our newest Amazon Fresh store, we are taking the next step on our path to becoming a net-zero carbon business by 2040, and we welcome customers to experience this firsthand while shopping with us in this store.”<br>Some upgrades will be used at all of our Amazon Fresh grocery stores moving forward, such as lower-carbon concrete flooring, which will help to reduce our embodied carbon.<br><br>“In order to deliver on our commitments to The Climate Pledge, we must work together across all areas of our business to develop solutions to decarbonize,” said Kara Hurst, vice president of Worldwide Sustainability at Amazon. “It’s meaningful progress to open our latest Amazon Fresh Store seeking net-zero carbon certification, and I’m proud of the innovation and technology that the store offers to customers and employees, and for the environment.”</span>', 1, 1, '2021-11-03', 'magic', 2, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_072605_amazon.jpg\"]', 1, 0, 179, NULL, NULL, '2021-10-23 05:24:11', '2022-12-19 19:17:42'),
(47, 13, 'With the thrills of a casino, the excitement of live harness racing and the delight of fine food and spirits, you can kick back', 'With the thrills of a casino, the excitement of live harness racing and the delight of fine food and spirits, you can kick back, relax and be thoroughly entertained. you won’t find a better experience in the southern Tier!', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The British-Iranian dual national, who was detained for six years in Iran, said she should have been back in the UK “six years ago”.<br><br>Speaking in parliament on Monday at her first press conference, she said she did “not really agree” that she should be thanking the foreign secretary for her return.<br><br>“I have seen five foreign secretary changes over the course of six years. That is unprecedented given the politics of the UK,” she told the assembled media.<br><br>“But I was told, many many times, ‘We’re going to get you home.’ That never happened. So there was a time when I felt like, do you know what, I’m not even going to trust you because I’ve been told so many times that I’m going to be taken home. But that never happened! Equalities Minister Kemi Badenoch has suggested the British Empire brought “good things” to communities as she urged telling “both sides” of history.<br><br>Having gone to school in Lagos, Nigeria, she said she was taught about Britain’s past with a nuanced description that has influenced her view on the former empire.<br><br>“There were terrible things that happened during the British Empire, there were other good things that happened, and we need to tell both sides of the story,” she told Times Radio.<br><br>“I think my upbringing and schooling in another country has really influenced the way that I look at these things.<br><br>“There wasn’t any sort of attempt to describe the British Empire as this awful, terrible thing that oppressed and victimised us.”</span>', 1, 1, '2021-10-23', 'politics', 2, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage24102021_050503_politics.jpg\"]', 1, 0, 211, NULL, NULL, '2021-10-23 09:28:51', '2022-12-18 23:35:27'),
(48, 20, 'Entertainment partners chill at home with a few must-see movies or head out for', 'Microsoft’s rival to Google’s Chromebooks is finally available for schools and students.', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Microsoft’s rival to Google’s Chromebooks is finally available for schools and students.<br><br>In November the software giant announced Windows 11 SE, a version of its operating system that is designed specifically for classrooms. It said it would be available on low-cost devices, and is optimized for Edge, Microsoft Office, and the company’s other cloud-based tools like One-drive.<br><br>Users will not be able to download applications from the Windows Store because it is not available on the machine; instead, the computers have an authorized selection of apps that can be installed on it – such as Zoom and Google Chrome.<br>China plane crash: ‘Severely damaged’ black box from Boeing 737 found in Xingu<br><br>The operating system has also been simplified so that apps can only run full screen, and Snap Layouts only load side-by-side. Widgets have also been removed, as Microsoft found it would be a distracting element in a classroom.<br><br>Those low-cost devices, meanwhile, include the Surface Laptop SE priced at $249 in the US and £229 in the UK. There are also a number of other laptops from Acer, Asus, Dell, and HP too.</span></p>', 1, 1, '2021-11-06', 'world', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage24102021_050111_maannewsimage19102021_094212_remote_work3_190515-800x450.jpg\"]', 1, 0, 732, NULL, NULL, '2021-10-23 09:50:10', '2022-12-20 09:39:04');
INSERT INTO `news` (`id`, `subcategory_id`, `title`, `summary`, `description`, `status`, `breaking_news`, `date`, `tags`, `speciality_id`, `reporter_id`, `image`, `user_id`, `archive`, `viewers`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(49, 7, 'Reating a vision for the future: how technology will revolutionise the business finance function', 'Reating a vision for the future: how technology will revolutionise the business finance function', '<p>                                            <span style=\"font-family: &quot;Roboto&quot;;\">﻿</span><span style=\"color: rgb(46, 46, 56); font-family: Georgia, sans-serif; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The Department of Dance at Chapman University offers students a strong professional dance training program with high quality productions. Students may choose from a pre-professional Bachelor of Fine Arts degree in Dance Performance or from the more broad based Bachelor of Arts degree in Dance. Both degrees provide excellent preparation for those who plan to enter the professional dance world and/or attend graduate school. The curriculum for dance majors includes course work in choreography, dance history, dance production, dance performance, acting, music for dancers, dance science, dance teaching methods, ballroom, somatics, hip-hop, tap, and comprehensive pre-professional training in modern, jazz and ballet technique. The USC Glorya Kaufman School of Dance offers a Bachelor of Fine Arts to a select number of undergraduates who wish to pursue dance as their major. This four-year professional degree is housed in the state-of-the-art Glorya Kaufman International Dance Center. USC Kaufman also offers individual classes in technique, performance, choreography, production, theory and history that are open to all students at USC. In addition to the dance major and open courses, the minor in Dance and minor in Dance in Popular Culture: Hip-Hop, Urban and Social Dances, provide a rewarding program of study for any USC student. A conservatory-based program within a liberal arts environment, we are focused on rigorous training in both ballet and modern technique. We are committed to the creation and production of original contemporary choreographic works by students, faculty and guest artists. The Dance Program is housed in its own state-of-the-art Dance Centre on a large liberal arts campus. USF is accredited by the National Association of Schools of Dance (NASD). Students must apply for admission and be accepted to the University of South Florida before they can be accepted as a Dance Major in the School of Theatre and Dance. Additionally, all prospective Dance Majors and Dance Minors must audition during the year prior to their first semester to be accepted into the Dance Program.</span><span style=\"font-family: &quot;Arial Black&quot;;\"></span></p>', 1, 1, '2021-11-04', 'Technology', 3, 8, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23102021_115552_Chinese-Fan-Dance.jpg\"]', 1, 0, 960, NULL, NULL, '2021-10-23 09:55:52', '2022-12-19 21:27:40'),
(51, 13, 'Taina Blue Retreat is a Converted Tower on the Greek Coast', 'We wandered the site with busloads of other tourists, yet strangely the place did not seem crowded. I’m not sure if it was the sheer size of the place, or whether the masses congregated in one area and didn’t venture far from the main church.', '<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Greater Bridgeport – For a few moments on, August 11, 2020, the discussion of the ravages from the pandemic of COVID-19 was pushed aside by the rushing tide of history. Senator Kamala Harris of California became the nation’s first African American woman nominated for the vice presidency of the United States. It is a moment to be savored, a time to reflect, and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress, and the first Black major party candidate to run for president of the United States. In 1972 she said, “at present, our country needs women’s idealism and determination, perhaps more in politics than anywhere else.” The historicity of this hour reminds us again of that idealism, determination, and authentic sensitivity we often find in women. It just seems to be a part of who they are. It often appears in the way they govern. There is an undying belief on the part of women, expressed in the words of former presidential candidate Hillary Rodham Clinton, “we are agents of change, we are drivers of progress, we are makers of peace – all we need is a fighting chance.” This is a bold move on the part of Vice President Joe Biden. It is another opportunity for our nation to move a little closer towards a more perfect union. It is a union for which Dr. Martin Luther King, Jr., said, “one day we will judge people not by the color of their skin but by the content of their character.” While the NAACP does not endorse candidates, we are compelled to recognize the historic impact of these rare moments in time. This election will really be for the very soul of our nation. As the author James Cone has written When My Soul Looks Back, “it wonders how I get over.” I can hear the voice of Harriet Tubman humming. I can hear Ida B. Wells declaring, Fannie Lou Hamersinging, and Shirley Chisholm calling out the words of that old gospel song “he didn’t bring us this far to leave us.” It is time for everyone regardless of color, station, or vocation to Take Your Soles To The Polls. Take them by mail or directly to the voting booth. Let us Vote! Vote!!Vote!!</span>', 1, 1, '2022-03-23', 'politics', 1, 2, '[\"public\\/uploads\\/images\\/newsimages\\/maannewsimage23032022_050521_Taina-Blue-Retreat-is-a-Converted-Tower-on-the-Greek-Coast.png\"]', 1, 0, 1296, 'News, maan', 'of their skin but by the content of their character', '2022-03-23 04:05:21', '2022-12-20 01:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `newscategories`
--

CREATE TABLE `newscategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_counter` int(11) NOT NULL DEFAULT '0',
  `menu_publish` int(11) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newscategories`
--

INSERT INTO `newscategories` (`id`, `name`, `slug`, `type`, `image`, `post_counter`, `menu_publish`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Business', 'business-news', 'news', 'public/uploads/images/news_category/business.png', 3, 0, 1, '2021-09-07 23:33:44', '2022-12-19 21:41:09'),
(2, 'Sports', 'sports-news', 'news', 'public/uploads/images/news_category/sports.png', 5, 0, 1, '2021-09-07 23:35:23', '2022-12-19 21:41:13'),
(3, 'Lifestyle', 'lifestyle-news', 'news', 'public/uploads/images/news_category/lifestyle.png', 4, 1, 1, '2021-09-07 23:46:48', '2022-10-19 09:08:02'),
(4, 'Politics', 'politics-news', 'news', 'public/uploads/images/news_category/politics.png', 8, 1, 1, '2021-09-07 23:47:10', '2022-06-22 00:12:16'),
(5, 'Entertainment', 'entertainment-news', 'news', 'public/uploads/images/news_category/entertainment.png', 10, 1, 1, '2021-09-07 23:47:30', '2022-06-22 00:12:17'),
(6, 'Technology', 'technology-news', 'news', 'public/uploads/images/news_category/technology.png', 7, 1, 1, '2021-09-07 23:53:59', '2022-11-25 04:52:26'),
(7, 'National', 'national-news', 'news', 'public/uploads/images/news_category/national.png', 7, 1, 1, '2021-09-20 00:19:50', '2022-12-19 21:41:19'),
(8, 'World', 'world-news', 'news', 'public/uploads/images/news_category/world.png', 6, 1, 1, '2021-09-20 00:20:02', '2022-06-22 00:12:20'),
(9, 'Travel', 'travel-news', 'news', 'public/uploads/images/news_category/travel.png', 0, 1, 1, '2021-10-19 07:44:38', '2022-06-22 00:12:21'),
(11, 'Home', 'home', 'home', 'public/uploads/images/news_category/home.png', 0, 1, 1, '2022-01-26 05:41:03', '2022-10-12 08:43:09'),
(14, 'Contact Us', 'contact-us', 'contact', 'public/uploads/images/news_category/contact_us.png', 0, 1, 1, '2022-01-26 06:13:33', '2022-03-15 00:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `newscomments`
--

CREATE TABLE `newscomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newscomments`
--

INSERT INTO `newscomments` (`id`, `news_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 25, 'Hello', 'hello@gmail.com', 'hello comment check....', '2021-10-04 02:57:12', '2021-10-04 02:57:12'),
(2, 25, 'Check', 'check@gmail.com', 'BNP leader made derogatory remarks about the national election.', '2021-10-04 03:16:00', '2021-10-04 03:16:00'),
(3, 22, 'Check21', 'check21@gmail.com', 'A ceremonial motorcade later escorted Sheikh Hasina to Lotte New York Palace where she will be staying during her stay in the USA.', '2021-10-04 03:55:51', '2021-10-04 03:55:51'),
(4, 25, 'Hayden Cline', 'gytylu@mailinator.com', 'Deserunt deleniti cu', '2021-10-05 05:11:00', '2021-10-05 05:11:00'),
(5, 21, 'Md Wadud Hossain', 'mdwadud722@gmail.com', 'A ceremonial motorcade', '2021-10-05 05:57:45', '2021-10-05 05:57:45'),
(6, 21, 'Md Wadud Hossain', 'mdwadud722@gmail.com', 'A ceremonial', '2021-10-05 05:58:17', '2021-10-05 05:58:17'),
(7, 21, 'Md Wadud Hossain', 'mdwadud722@gmail.com', 'A ceremonial motorcade....', '2021-10-05 05:59:37', '2021-10-05 05:59:37'),
(8, 21, 'Md Wadud Hossain', 'mdwadud722@gmail.com', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2021-10-05 06:33:28', '2021-10-05 06:33:28'),
(9, 7, 'Md Wadud Hossain', 'mdwadud722@gmail.com', 'news', '2021-10-13 01:28:47', '2021-10-13 01:28:47'),
(10, 49, 'Salma Akter', 'dollysalmaakter@gmail.com', 'Good job!', '2022-01-30 06:06:38', '2022-01-30 06:06:38'),
(11, 25, 'Arif', 'admin@maantheme.com', 'Small Business success ...', '2022-01-30 06:09:07', '2022-01-30 06:09:07'),
(12, 21, 'Arif Khan', 'superadmin21@gmail.com', 'There are more information about news ...', '2022-01-30 09:57:51', '2022-01-30 09:57:51'),
(13, 46, 'Prince Mahmud', 'princey01767@gmail.com', 'wonderful', '2022-03-17 18:36:03', '2022-03-17 18:36:03'),
(14, 26, 'Prince Mahmud', 'princey01767@gmail.com', 'awesome', '2022-03-17 19:38:28', '2022-03-17 19:38:28'),
(15, 48, 'Prince Mahmud', 'princey01767@gmail.com', 'great post', '2022-03-17 19:39:53', '2022-03-17 19:39:53'),
(16, 37, 'Prince Mahmud', 'princey01767@gmail.com', 'wow awesome', '2022-03-20 08:09:01', '2022-03-20 08:09:01'),
(17, 3, 'Jack Won', 'jack@dhlogisrics.co.kr', 'hi', '2022-03-29 06:30:10', '2022-03-29 06:30:10'),
(18, 6, 'sdsds', 'test11@gmail.com', 'dsdsds', '2022-10-15 05:40:05', '2022-10-15 05:40:05'),
(19, 48, 'Prince Mahmud', 'p@fc.com', 'Awesomr', '2022-11-12 10:03:00', '2022-11-12 10:03:00'),
(20, 48, 'Prince Mahmud', 'p@fc.com', 'Great', '2022-11-12 10:04:18', '2022-11-12 10:04:18'),
(21, 51, 'Prince Mahmud', 'p@p.com', 'Great Post', '2022-11-27 03:45:24', '2022-11-27 03:45:24'),
(22, 51, 'Prince Mahmud', 'p@p.com', 'Great Post', '2022-12-04 13:27:00', '2022-12-04 13:27:00'),
(23, 49, 'smart Mamun', 'test@gmail.com', 'Mamun comented', '2022-12-04 14:21:14', '2022-12-04 14:21:14'),
(24, 37, 'smart Mamun', 'test@gmail.com', 'Hello comment bro', '2022-12-04 14:23:27', '2022-12-04 14:23:27'),
(25, 49, 'smart Mamun', 'test@gmail.com', 'Xfffd', '2022-12-04 15:07:14', '2022-12-04 15:07:14'),
(26, 37, 'smart Mamun', 'test@gmail.com', 'Mim Islam', '2022-12-04 15:23:13', '2022-12-04 15:23:13'),
(27, 37, 'smart Mamun', 'test@gmail.com', 'Hhhhhhh', '2022-12-04 15:24:01', '2022-12-04 15:24:01'),
(28, 37, 'smart Mamun', 'test@gmail.com', 'Hiii bosss', '2022-12-04 15:55:03', '2022-12-04 15:55:03'),
(29, 37, 'smart Mamun', 'test@gmail.com', 'Hiii bosss', '2022-12-04 15:55:09', '2022-12-04 15:55:09'),
(30, 37, 'smart Mamun', 'test@gmail.com', 'Hmm..comment hocce to...\n\n Best of luck \n\n\nBye...', '2022-12-04 16:08:08', '2022-12-04 16:08:08'),
(31, 37, 'smart Mamun', 'test@gmail.com', 'Okey bro....good job\n\n\n\n\n\nSee  More....', '2022-12-04 16:33:17', '2022-12-04 16:33:17'),
(32, 37, 'smart Mamun', 'test@gmail.com', 'Hello all viewers..\n\n\nHow are u', '2022-12-04 16:42:54', '2022-12-04 16:42:54'),
(33, 37, 'smart Mamun', 'test@gmail.com', 'Mim islam commented this news page', '2022-12-04 17:20:34', '2022-12-04 17:20:34'),
(34, 49, 'smart Mamun', 'test@gmail.com', 'Good news', '2022-12-04 19:43:18', '2022-12-04 19:43:18'),
(35, 34, 'smart Mamun', 'test@gmail.com', 'Hahz', '2022-12-05 04:55:52', '2022-12-05 04:55:52'),
(36, 51, 'md shakil mia', 'ss@gmail.com', 'Great Post', '2022-12-06 08:08:12', '2022-12-06 08:08:12'),
(37, 51, 'md shakil mia', 'ss@gmail.com', 'Great Post', '2022-12-10 15:28:59', '2022-12-10 15:28:59'),
(38, 7, 'smart Mamun', 'test@gmail.com', 'Good news,,!!', '2022-12-11 02:45:41', '2022-12-11 02:45:41'),
(39, 27, 'ssdsd', 'hotportnigeria@gmail.com', 'hi testing', '2022-12-15 14:07:03', '2022-12-15 14:07:03'),
(40, 27, 'ssdsd', 'hotportnigeria@gmail.com', 'hi testing', '2022-12-15 14:07:03', '2022-12-15 14:07:03'),
(41, 49, 'ewrf', 'x1945@gmail.com', 'wer', '2022-12-15 17:49:04', '2022-12-15 17:49:04'),
(42, 49, '\"><b>F', 'x1945@gmail.com', '\"><b>F', '2022-12-15 17:49:17', '2022-12-15 17:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `newsspecialities`
--

CREATE TABLE `newsspecialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsspecialities`
--

INSERT INTO `newsspecialities` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top News', 1, '2021-09-06 04:43:54', '2021-09-06 04:43:54'),
(2, 'Top Sliding News', 1, '2021-09-06 04:43:54', '2021-09-06 04:43:54'),
(3, 'Details News', 1, '2021-09-06 04:43:54', '2021-09-06 04:43:54'),
(4, 'None', 1, '2021-09-06 04:43:54', '2021-09-06 04:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `newssubcategories`
--

CREATE TABLE `newssubcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newssubcategories`
--

INSERT INTO `newssubcategories` (`id`, `category_id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Cricket', 1, '2021-09-07 23:36:20', '2021-09-07 23:36:20'),
(2, 2, 'Football', 1, '2021-09-07 23:38:07', '2021-09-07 23:38:07'),
(3, 1, 'Global Trade', 1, '2021-09-07 23:55:10', '2021-09-07 23:55:10'),
(4, 1, 'Stock Market', 1, '2021-09-07 23:55:30', '2021-09-07 23:55:30'),
(5, 2, 'Olympics', 1, '2021-09-19 03:55:40', '2021-09-19 03:55:40'),
(6, 2, 'Tennis', 1, '2021-09-19 03:57:46', '2021-09-19 03:57:46'),
(7, 5, 'Movies', 1, '2021-09-19 05:40:34', '2021-09-19 05:40:34'),
(8, 5, 'Magic Shows', 1, '2021-09-19 05:41:25', '2021-09-19 05:41:25'),
(9, 5, 'Video Games', 1, '2021-09-19 05:41:55', '2021-09-19 05:41:55'),
(10, 3, 'Fashion', 1, '2021-09-20 21:55:31', '2021-09-20 21:55:31'),
(11, 3, 'Travel', 1, '2021-09-20 21:56:01', '2021-09-20 21:56:01'),
(12, 3, 'Health', 1, '2021-09-20 21:59:45', '2021-09-20 21:59:45'),
(13, 4, 'Politics', 1, '2021-09-20 22:16:29', '2021-09-20 22:16:29'),
(14, 6, 'Communication', 1, '2021-09-20 22:22:13', '2021-09-20 22:22:13'),
(15, 6, 'Transportation', 1, '2021-09-20 22:22:37', '2021-09-20 22:22:37'),
(16, 6, 'Energy', 1, '2021-09-20 22:23:01', '2021-09-20 22:23:01'),
(17, 7, 'Politics', 1, '2021-09-20 22:24:06', '2021-09-20 22:24:06'),
(18, 7, 'Education', 1, '2021-09-20 22:24:55', '2021-09-20 22:24:55'),
(19, 7, 'National', 1, '2021-09-20 22:27:57', '2021-09-20 22:27:57'),
(20, 8, 'World', 1, '2021-09-20 22:28:46', '2021-09-20 22:28:46'),
(30, 9, 'Travel', 1, '2021-10-19 07:45:22', '2021-10-19 07:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01198baf2c3f21b8cd5086f268bc3d7e17c73993d53cb2619ccc75ae9f40f94b06990191bee914eb', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 16:11:34', '2022-11-25 16:11:34', '2023-11-25 17:11:34'),
('0187ad9f86173f4ee869351c8ce1291f2be69a6c39c0f9326c7205d94e083b7b837b2e9be168e6b8', 6, 1, 'Password Grant user', '[]', 0, '2022-03-17 17:31:09', '2022-03-17 17:31:09', '2023-03-17 18:31:09'),
('02d421fd20cc6b447be7945330d4d625fe70031ef088958299091337ab1ded5d4f79bbe6c8d7f1ff', 57, 1, 'Password Grant user', '[]', 0, '2022-11-22 15:00:33', '2022-11-22 15:00:33', '2023-11-22 16:00:33'),
('02ec553b4e8ea1c29b9f9da0b0b2a424bd214cbfb2ca685970bc3de30312a5e5a20943a20eb816df', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:12:12', '2022-12-06 15:12:12', '2023-12-06 16:12:12'),
('035a9da6110758677d85ac67d653898e3449a9ee0bdb8d617e60af0cbd81aa5a5d138b114dc2754e', 145, 1, 'Password Grant user', '[]', 0, '2022-12-15 05:42:28', '2022-12-15 05:42:28', '2023-12-15 06:42:28'),
('048c4cf57ae58904ef9bb5bcaf810b7785734e8a91155945da8a6e89cd1e6b4fe935af88b3450ee5', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:25', '2022-12-06 18:42:25', '2023-12-06 19:42:25'),
('04a28a8e01f1050f93c193ade5b4c8cf8ca8b73a98020847718b7409fa26fe02cb6bfa1de6b9de46', 140, 1, 'Password Grant user', '[]', 0, '2022-12-11 04:15:28', '2022-12-11 04:15:28', '2023-12-11 05:15:28'),
('04f444cdb069ce4997b9997b5fad31b783e16ed77997535413a18766f4783e381dea960d6db64724', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:30', '2022-12-06 18:42:30', '2023-12-06 19:42:30'),
('0521368d08dd9b8fcd123a9f0a90b891d6643f5e760debed32d6cadb55fe1bdde627ebe5a13e6d6a', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 13:14:52', '2022-12-01 13:14:52', '2023-12-01 14:14:52'),
('055d1ff17e94016a9f918cdf760d0071703e5b8ac6ab5750247f310e4a55b8248f4f1c8006cad5bf', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 17:41:14', '2022-12-06 17:41:14', '2023-12-06 18:41:14'),
('0562609d843dcf6c5a4528a73e0983f77d98be9282000fa647982d93995089c3717aac372b1d5b85', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 02:50:55', '2022-11-23 02:50:55', '2023-11-23 03:50:55'),
('06601ff01b5c7de7eff7f940e7d0ab85aea5a9dcdf48b882ae65b8f9692187826c6081362350f9da', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:03:28', '2022-12-01 17:03:28', '2023-12-01 18:03:28'),
('083ae96258f7da5f937d982737b788510b5223f100edf80e6781364e9fbe31ac56c40845793c3f66', 44, 1, 'Password Grant user', '[]', 0, '2022-11-22 06:11:08', '2022-11-22 06:11:08', '2023-11-22 07:11:08'),
('088ae44f49783dca01a2db157fd7b50f5d93faab8c23b9c2f46b04da827717991c90a1fe761f360d', 102, 1, 'Password Grant user', '[]', 0, '2022-12-03 10:00:22', '2022-12-03 10:00:22', '2023-12-03 11:00:22'),
('09507f69ecd329b9e9e875be1c52edeb032a1a30bab1a44628526f79e5ff856613ffeb7839049491', 55, 1, 'Password Grant user', '[]', 0, '2022-11-22 16:46:36', '2022-11-22 16:46:36', '2023-11-22 17:46:36'),
('099566e95d905a6c1cf62ae9af007aef5704af4edc3b72b853cdfe258ab593d08ae1ee2907097807', 38, 1, 'Password Grant user', '[]', 0, '2022-11-23 12:59:50', '2022-11-23 12:59:50', '2023-11-23 13:59:50'),
('0b9dc67904f630eaa44c59dae5457991237b63ab21694e2c963127eb41e2f29c9452ecbd64a3c1ed', 59, 1, 'Password Grant user', '[]', 0, '2022-11-22 15:10:49', '2022-11-22 15:10:49', '2023-11-22 16:10:49'),
('0c5281da224d2f145a38c3e01b3a6b73482692d4f084eaacd3c82e80dbafae30d40b0d6ec46b1915', 62, 1, 'Password Grant user', '[]', 0, '2022-11-22 15:47:02', '2022-11-22 15:47:02', '2023-11-22 16:47:02'),
('0d740150f5c479ad038fa2ab4ca2f9b623f321106f483d2eebac0a89a719da7744a0e59b2ead6f45', 78, 1, 'Password Grant user', '[]', 0, '2022-12-05 03:34:48', '2022-12-05 03:34:48', '2023-12-05 04:34:48'),
('0da34bd3555dd8f98b59e138262f9c21ff659f2ce99b2e8ebfcf3fc0535ccbb27149744e2e15b5f8', 39, 1, 'Password Grant user', '[]', 0, '2022-11-30 12:24:44', '2022-11-30 12:24:44', '2023-11-30 13:24:44'),
('10897dfad12c120ced4d5955fa50ec74e0b05bf18406c07898153f7a658887a77789b20620757cd3', 95, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:17:52', '2022-12-01 17:17:52', '2023-12-01 18:17:52'),
('112a5c8c0a28309734d5572f2d7b3e8fa76af61e5e4e6969b469bfb4ad1b14e478e273690fc478f7', 6, 1, 'Password Grant user', '[]', 0, '2022-03-17 17:18:43', '2022-03-17 17:18:43', '2023-03-17 18:18:43'),
('112e70480433a4a073e73ff862f51ca47ca27283b7bbe1282cb6cfea6df0a648293db945c54b3936', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 08:06:58', '2022-12-08 08:06:58', '2023-12-08 09:06:58'),
('12879b47f01e7288ecbec0e6123d302cdcf0e2d089e3d8501f5e984e4053b84e36c7a0a17e908c0a', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:22', '2022-12-06 18:46:22', '2023-12-06 19:46:22'),
('1327da2b5667161bbe59b4f95f6973777db16549477cdb656e6ee4f6726953b60764b7b46245f006', 31, 1, 'Password Grant user', '[]', 0, '2022-11-20 13:39:06', '2022-11-20 13:39:06', '2023-11-20 14:39:06'),
('143e7694c8919963516a455587af2266e89fccf7536181f4259e0525c61a0cbdaf5524d0315285e9', 105, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:07:28', '2022-12-06 18:07:28', '2023-12-06 19:07:28'),
('144f65d5d562d67be9a874f769e674458b812b806049fdb7c0843e66ccb4cc34c59bcaf3ae92c47e', 142, 1, 'Password Grant user', '[]', 0, '2022-12-11 11:31:25', '2022-12-11 11:31:25', '2023-12-11 12:31:25'),
('14c6948b9a7c13f7c7897ddcdbb9db59df0026d9975a2dba5722dc6592110e953db8b10f073b336c', 102, 1, 'Password Grant user', '[]', 0, '2022-12-03 08:25:44', '2022-12-03 08:25:44', '2023-12-03 09:25:44'),
('14e5634a8cd1b6506be8dbf5f349a50288e51547f358e7c05c0db45bcee73f132e6a2c6db0b5f43b', 131, 1, 'Password Grant user', '[]', 0, '2022-12-09 15:24:43', '2022-12-09 15:24:43', '2023-12-09 16:24:43'),
('155447d1856e4ac308b21d9a8110dd61f033c989534160400027b2cd78ed2b275d0f3a49e012a142', 142, 1, 'Password Grant user', '[]', 0, '2022-12-17 16:48:52', '2022-12-17 16:48:52', '2023-12-17 17:48:52'),
('1610b903b530a479e783c5f887cf450a7d52abf30bd875be7c415c6e449a302de8511d34fd09be4a', 129, 1, 'Password Grant user', '[]', 0, '2022-12-08 14:09:05', '2022-12-08 14:09:05', '2023-12-08 15:09:05'),
('162b977de96bb00392532dff100ea97c5b3be395ef96df55ff678d8cdec396bc478fe12f9b4efba1', 55, 1, 'Password Grant user', '[]', 0, '2022-11-22 17:42:32', '2022-11-22 17:42:32', '2023-11-22 18:42:32'),
('163186dfda552a5d8e198cefdb1a010e39a41aefe71d2a3d455eb14366db2aa8541b6c337fcf0511', 100, 1, 'Password Grant user', '[]', 0, '2022-12-01 19:12:56', '2022-12-01 19:12:56', '2023-12-01 20:12:56'),
('164a3177021fbbf5b4d15d240218d563b5c0868e02af5b9af22d2adde39b70180810adc0828a679f', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:12', '2022-12-06 18:46:12', '2023-12-06 19:46:12'),
('17642a54b5f0a1efb1f454a3cec35e661be794eeff0a6c8f2e647a42d0a005f61f20b9b3c03d8c55', 32, 1, 'Password Grant user', '[]', 0, '2022-11-25 11:52:45', '2022-11-25 11:52:45', '2023-11-25 12:52:45'),
('17b913ab012b276ef0ec4f416b9678ae7ab34f46af93e2395a2b915cc9245d1b927da3a9db93fe9c', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 16:47:56', '2022-12-08 16:47:56', '2023-12-08 17:47:56'),
('186624d520a47621695dbbc89086927cc963367b3bba69c50af4895de254a47d444927039a4d60b0', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 08:32:34', '2022-12-01 08:32:34', '2023-12-01 09:32:34'),
('187398c9fb422dd7aaea5ee39c0274ac29a6673528dfc337edaa987326996cd72b6611f11cf9bb52', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:14:26', '2022-12-04 17:14:26', '2023-12-04 18:14:26'),
('192cdbe5e2e090e1540f9570fa1a447b8ba12807833d63777f78625bc0f74700b3636fdd646e0035', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:19', '2022-12-06 18:46:19', '2023-12-06 19:46:19'),
('1a0fcd591af6e43eb8cc6c7f3062a572b0074aac200df9f3b46edd41dd098f17ee9b8afb64452cb7', 143, 1, 'Password Grant user', '[]', 0, '2022-12-11 13:00:52', '2022-12-11 13:00:52', '2023-12-11 14:00:52'),
('1b83f0910cb79c1085b7ef9ad46ba965bc824cfb081780b325e9fc7b3008edc30854c4eb6bb51bf8', 32, 1, 'Password Grant user', '[]', 0, '2022-11-25 13:46:51', '2022-11-25 13:46:51', '2023-11-25 14:46:51'),
('1b99795405a9396fcbf89c996ac582733f81a7092d30b00d81e0a0c695cffba49b7f45e6182179a3', 55, 1, 'Password Grant user', '[]', 0, '2022-11-23 07:52:52', '2022-11-23 07:52:52', '2023-11-23 08:52:52'),
('1c3b7fe79305de2576ab34a013ec8b99fa613ae3338ddff0eed569e953e2f260d7c225f431c930e9', 130, 1, 'Password Grant user', '[]', 0, '2022-12-12 07:55:30', '2022-12-12 07:55:30', '2023-12-12 08:55:30'),
('1ca41a2d83594eb937fe849b2dd2578d5705804405e05f9b7c2296d38ada357ac812d2e156514cfa', 93, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:14:17', '2022-12-06 09:14:17', '2023-12-06 10:14:17'),
('1d4f21d73c4afcb61a4f44a2085ac57c2f3183136bde4af37ddd6986041853b05fa0d5ade4701099', 109, 1, 'Password Grant user', '[]', 0, '2022-12-05 10:50:48', '2022-12-05 10:50:48', '2023-12-05 11:50:48'),
('1ddc565b6b6132be9716cf5ea133e1da52c87db563e180bb8d8a3383a531162a26972e0f72ae427c', 102, 1, 'Password Grant user', '[]', 0, '2022-12-03 08:24:43', '2022-12-03 08:24:43', '2023-12-03 09:24:43'),
('1ede1fb0c16b88059f31cafe9b2225689908305b3dd9aef10a26fc35310ce19b54551dbc6cc52b12', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:41:38', '2022-12-01 17:41:38', '2023-12-01 18:41:38'),
('1f383eab697309bd9fc16d9e8cf5197e370044b63831c947f3c534d23cca18937b8c147b2ce9735a', 103, 1, 'Password Grant user', '[]', 0, '2022-12-03 09:00:50', '2022-12-03 09:00:50', '2023-12-03 10:00:50'),
('1fa3cfa6730b3d7ab48189f2766b6210ffdfa84f04d3e54232e718ddddb39a1af6ba9b6991dad7ed', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 06:34:43', '2022-12-01 06:34:43', '2023-12-01 07:34:43'),
('1fc21fd87386018815985d1ca561c6523b6cbcc0811fc3c8c53104432f36676f464071cee70cd869', 125, 1, 'Password Grant user', '[]', 0, '2022-12-08 17:52:50', '2022-12-08 17:52:50', '2023-12-08 18:52:50'),
('1ffa40f9eb42704da7f01130b0e31f5b29657c0e4109a926b43215572acd462188e44f6ef6306655', 39, 1, 'Password Grant user', '[]', 0, '2022-11-30 11:12:13', '2022-11-30 11:12:13', '2023-11-30 12:12:13'),
('20861d93baf4fd0f8ca4c1a19a2977a9516ea3d6072a5f207c4ad8a0c9ef4ea0964438ef0580af99', 88, 1, 'Password Grant user', '[]', 0, '2022-11-30 05:15:37', '2022-11-30 05:15:37', '2023-11-30 06:15:37'),
('20b87c436f52c40f4e9be500153a1bffec15abc267ea6175e65a9c43c11e34fc781ebd60f02885d1', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:18:35', '2022-12-02 03:18:35', '2023-12-02 04:18:35'),
('20f3aee9fe8f963c2512e516c73dff8b85c82c4d8487c9b4a78770a4bdb2e7f712e30055a34cfde2', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 13:01:45', '2022-12-01 13:01:45', '2023-12-01 14:01:45'),
('21c7254f05947b9b0240fcd7c3ccbf3bd70810012d675aa928017f11e7fe024a7e2ae3d6e7bea2bb', 68, 1, 'Password Grant user', '[]', 0, '2022-11-23 03:44:36', '2022-11-23 03:44:36', '2023-11-23 04:44:36'),
('21d105d67da33a5e3a34d038471959c5609bfdaee8ffcf810ec299f391d5de00ce39c621f343b86d', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 12:22:59', '2022-12-02 12:22:59', '2023-12-02 13:22:59'),
('220991c8dfcb4df9e42f7ccf7463c3f5893cbb3ed4a80dad31b66c3c05a7eec1479c710cbf3b964a', 115, 1, 'Password Grant user', '[]', 0, '2022-12-07 17:26:45', '2022-12-07 17:26:45', '2023-12-07 18:26:45'),
('233fb5438ffa455a427012b9301150d78671770120e602601fe49ba62065a6c4e0b201fd50d605f3', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:42:29', '2022-12-04 17:42:29', '2023-12-04 18:42:29'),
('2432352e6b2b167be2e89c54eb3d34ffb89da7ca3bfcdc05002db82f729519cf7338e8274069d610', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 08:21:16', '2022-12-01 08:21:16', '2023-12-01 09:21:16'),
('2456289e22294567a55d2ad946b948f7fa43e1058f0f662bf69c3706c082c020115b3877deb0eeb1', 71, 1, 'Password Grant user', '[]', 0, '2022-11-23 07:59:05', '2022-11-23 07:59:05', '2023-11-23 08:59:05'),
('24d1086f39330b13ec3828e9059be1f1f31512557774c010e41f92401f83e9b3220315d17159a3cc', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:21', '2022-12-06 18:46:21', '2023-12-06 19:46:21'),
('262cc256a8c7c67bf9eedb9bb927fb2d7096e2ca0260846452dbbc8005f690da75ce51e818da4e0c', 84, 1, 'Password Grant user', '[]', 0, '2022-11-26 09:29:39', '2022-11-26 09:29:39', '2023-11-26 10:29:39'),
('268f67819991f8311f219598c29a45d8b4fe13ac0b31c55d590786c341433e5417994ec8f2b6a389', 118, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:53:16', '2022-12-06 15:53:16', '2023-12-06 16:53:16'),
('2835a52db21e9bf0a98b1298e0ab6c9592b54b712416bdf5666626c7222f3e07e2c713e636456734', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 18:37:33', '2022-12-01 18:37:33', '2023-12-01 19:37:33'),
('28430e103b9d90e8d86bdf846e003318b3e111329f3a9242b66322e51d1e329b7ab571ac6002f26a', 45, 1, 'Password Grant user', '[]', 0, '2022-11-22 06:24:47', '2022-11-22 06:24:47', '2023-11-22 07:24:47'),
('287d59f5099c99357bc7a4a70b9428e5def9cffd47226a17e84ea2be4fabad9a36beaf5d0231712e', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:11:21', '2022-12-06 09:11:21', '2023-12-06 10:11:21'),
('2929739f1295802cf9fff9ba5f88f301d311a6ed5ef4229a6f871c4e988bccab27f1febfc7dacb57', 111, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:22:52', '2022-12-06 09:22:52', '2023-12-06 10:22:52'),
('29e4d86dd19e05fc348f34c9ea7efb78e0095ec1b7e0482f6943a8bb268baa071931de2f55279ff5', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:20:55', '2022-12-06 09:20:55', '2023-12-06 10:20:55'),
('2ac7e8d8b7b61d143aa7ba960e2ee8c4b4b07c5dd347d692aaad78caae60de4ceff417a1f376e7e4', 48, 1, 'Password Grant user', '[]', 0, '2022-11-22 11:54:03', '2022-11-22 11:54:03', '2023-11-22 12:54:03'),
('2ce793b2f75568709dc03649e3cb94f1efe0429166a48b61314c943937ec6cecb4c1c63556ad9e90', 115, 1, 'Password Grant user', '[]', 0, '2022-12-09 08:25:38', '2022-12-09 08:25:38', '2023-12-09 09:25:38'),
('2cf6c27a12c82d08abbff485373bfd475bf40ba8a28bead45ac9c2e69d20394bad74baecc070dab9', 115, 1, 'Password Grant user', '[]', 0, '2022-12-10 07:55:30', '2022-12-10 07:55:30', '2023-12-10 08:55:30'),
('2d15781ff32039291c4d1fb5728af32c866a6b062d29635838b412e4b217cd82b8be88905f6d2d72', 93, 1, 'Password Grant user', '[]', 0, '2022-12-06 16:48:10', '2022-12-06 16:48:10', '2023-12-06 17:48:10'),
('2e19bbe73ee084c67924a23aeb1247703b2b695dbf9c971507f589521d344476274ad70af8bf2624', 102, 1, 'Password Grant user', '[]', 0, '2022-12-03 09:01:21', '2022-12-03 09:01:21', '2023-12-03 10:01:21'),
('2ede882d4ce6549f04c2a7d966b7643040eedc35b7945dbd3ea8c718ac9de4c051973d74bdc73462', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 04:56:44', '2022-11-23 04:56:44', '2023-11-23 05:56:44'),
('2f3f7c6f4f72684e86435878b79e3436c7dc797c01ae46bb8724f44709835a64b93ab8796177c0b9', 93, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:11:46', '2022-12-06 09:11:46', '2023-12-06 10:11:46'),
('2fb390e06a4ba988f96c2d39bc56ecf9df8b838698ecd677c089bfa01babc98b615fd0eb04dce7d2', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 09:25:04', '2022-12-01 09:25:04', '2023-12-01 10:25:04'),
('2fdbe7e845364ad0e8d22a23d076db45209360ae111bd391f827cfd426b392bc415f5efdfb6ed5e8', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:08:19', '2022-12-06 09:08:19', '2023-12-06 10:08:19'),
('2fecdd5c585f8e9d2d5e1234c4fbb63222e5f29a4639991043fa1e87ad724d0f3aa8c98038bbf5b3', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:32:38', '2022-12-04 17:32:38', '2023-12-04 18:32:38'),
('3101ce3a5960ea57f8a4cb327fd2e869f30f9065c6e8fa18ea84b568cd296b2685d7f454046ce094', 81, 1, 'Password Grant user', '[]', 0, '2022-11-25 12:58:40', '2022-11-25 12:58:40', '2023-11-25 13:58:40'),
('31c36e851b2eda2cf8d79ba9a3d93a3b1c451430639a8c36e4a0fca76349fb7c0fcea9e33075d260', 102, 1, 'Password Grant user', '[]', 0, '2022-12-03 10:02:13', '2022-12-03 10:02:13', '2023-12-03 11:02:13'),
('31dc73d4784dac58a870e853f25ac2d07e16b450ea8fc8c96708a3bad1588e4ac48ad18dc836cf6d', 38, 1, 'Password Grant user', '[]', 0, '2022-11-29 12:31:52', '2022-11-29 12:31:52', '2023-11-29 13:31:52'),
('32032b6a029f6e6e04a5484d2c3d02b883d27a9d8571a7258a8d4248e2b5c3d5c8694e7d173bd851', 53, 1, 'Password Grant user', '[]', 0, '2022-11-22 13:46:02', '2022-11-22 13:46:02', '2023-11-22 14:46:02'),
('33a22d07baf95d67b0fc6e9f4f4ac423ace925957e79b8619c0c64b625d10b184116293c9a5677e0', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 09:01:08', '2022-12-01 09:01:08', '2023-12-01 10:01:08'),
('340fba5eba8a7dacc0132392068837aff9a02188cc2382610e735957deb0cb7598e55f6ec3bc5fa0', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:40:14', '2022-12-06 18:40:14', '2023-12-06 19:40:14'),
('34809d372b317de9b42cf7c65159ad7b54b6f8159932dcd5f28e9e601d87d3816fd8f37f71e589cf', 130, 1, 'Password Grant user', '[]', 0, '2022-12-17 06:38:19', '2022-12-17 06:38:19', '2023-12-17 07:38:19'),
('34c420ba897adf88eb730d523365e62d34fc4fd8723b5fc22f1908f5b212479ed76c37665ba01226', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 09:36:14', '2022-11-23 09:36:14', '2023-11-23 10:36:14'),
('350da49962b121e2588ac5de9580ec943965a22fe0000618edb585602b1ad97db81709ded7b5f5f9', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 06:48:50', '2022-12-02 06:48:50', '2023-12-02 07:48:50'),
('352db6cdba5e82e52a6779a57e2e1a62183696043aadc45845f26b8aaa321d52e070a8aedd223058', 66, 1, 'Password Grant user', '[]', 0, '2022-11-23 03:41:59', '2022-11-23 03:41:59', '2023-11-23 04:41:59'),
('3621ac3873542582dbb39464d8d3180d47f557d2f67f1843f8804087afba5a66b7f6680634ee7fb7', 142, 1, 'Password Grant user', '[]', 0, '2022-12-11 11:28:18', '2022-12-11 11:28:18', '2023-12-11 12:28:18'),
('3660acbd41353562663d0dedf944639607516809da1373907042e83cf1c9c615bc92fb1db8a94893', 38, 1, 'Password Grant user', '[]', 0, '2022-11-22 14:01:10', '2022-11-22 14:01:10', '2023-11-22 15:01:10'),
('3800754843ce973b78b2848bf2db1f45eede316bdceeffa507bf77749f5269bf094314ec41aecd4e', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:19', '2022-12-06 18:46:19', '2023-12-06 19:46:19'),
('3872094c9a8e5ef37771c81920ca6b02b9a3e9b80277b77f3f831eee6ccd1d3c6e8ed3943f4b68f0', 139, 1, 'Password Grant user', '[]', 0, '2022-12-11 04:01:40', '2022-12-11 04:01:40', '2023-12-11 05:01:40'),
('38fb5b16d6a92b56793af8a5ffaf98291b2649866d77618cc79ed5857fd5c3100d196bcb3bff3c60', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:57:51', '2022-12-06 15:57:51', '2023-12-06 16:57:51'),
('3b4ef7922168cb512e62b23fef1f0b33a712beb232c5be60f9473fe2ed909ce3e94acffdc51712a8', 124, 1, 'Password Grant user', '[]', 0, '2022-12-08 08:10:02', '2022-12-08 08:10:02', '2023-12-08 09:10:02'),
('3bb735fb10cd47d00d4852b11ee095f08c135240c8ec2729ca6c0aab1a8a12c4d0bf5e23a2750ced', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:54:36', '2022-12-06 15:54:36', '2023-12-06 16:54:36'),
('3bc0e4f962468085d9f73c083ad78f7d80c8fb676abb33a5a3261211814ac4f2540480b3cbeb7526', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:31', '2022-12-06 18:42:31', '2023-12-06 19:42:31'),
('3d0b51b891871f36430ecbece5e7eb19155bf6c873b30180c7f48ca79bf1ec96af9cb122bd72b31d', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 12:43:40', '2022-11-21 12:43:40', '2023-11-21 13:43:40'),
('3dafd96cc4ac9d394312a849c985fbde8130e3386d245c9292027ed0090ef552980ac01df442e20c', 130, 1, 'Password Grant user', '[]', 0, '2022-12-09 14:30:03', '2022-12-09 14:30:03', '2023-12-09 15:30:03'),
('3de3e560d854c660f97232403fc0c90991ddb2cf5e4484990ac5f874bec542508e46f9355cc97dc8', 6, 1, 'Password Grant user', '[]', 0, '2022-03-15 09:22:23', '2022-03-15 09:22:23', '2023-03-15 10:22:23'),
('3e1591713f06ea9a0a1459bb9de409a0c41290575dbfabe63474c2aa2ccc22eea5bae076c24288c1', 102, 1, 'Password Grant user', '[]', 0, '2022-12-04 16:01:00', '2022-12-04 16:01:00', '2023-12-04 17:01:00'),
('3e4cec375b0b8a0a9a81a89c88531721eec8988962a8c1343a2048477c181433671633fa2a4b9b29', 38, 1, 'Password Grant user', '[]', 0, '2022-12-04 14:14:22', '2022-12-04 14:14:22', '2023-12-04 15:14:22'),
('3f8a1cc5d4566bf823f622a0587f265705f37e259fdd0017950f774bbab633132bac70ccce7f65dd', 142, 1, 'Password Grant user', '[]', 0, '2022-12-11 12:04:43', '2022-12-11 12:04:43', '2023-12-11 13:04:43'),
('3fe36fb3c75f5a04b3fb02327ab84cecc3c1cb4abbe70911a3cc4dc6691e3ce6250dbc346e036e91', 41, 1, 'Password Grant user', '[]', 0, '2022-12-07 02:17:13', '2022-12-07 02:17:13', '2023-12-07 03:17:13'),
('405ce37448c1f0ee71ce52b1043c6f0b5ca34ce04142efa0c751380da02270540ec28f4b50f1d2f5', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:19:26', '2022-12-02 03:19:26', '2023-12-02 04:19:26'),
('40cac975f2a82ecb3bb7d1f214b735ee05c8afda5dab8e417e824a37764639c5d55a60ef9beb325d', 26, 1, 'Password Grant user', '[]', 0, '2022-11-12 09:48:22', '2022-11-12 09:48:22', '2023-11-12 10:48:22'),
('416571ac363bcd100086fcf50c90432d3fb1ebae90d51bd1b602a1d0b72563025eed3109ed804b49', 54, 1, 'Password Grant user', '[]', 0, '2022-12-01 04:52:01', '2022-12-01 04:52:01', '2023-12-01 05:52:01'),
('417ce80b0621536b72a3592df100bdb15eab78affd3c227c80342cd7202d20ffab40ee5107e9ac1f', 36, 1, 'Password Grant user', '[]', 0, '2022-11-21 04:53:05', '2022-11-21 04:53:05', '2023-11-21 05:53:05'),
('418d06b8d3222341d5144623d75a411f82a17c840cd09016f684cc6fcaa07b773b6eca2a4dd25f62', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:36:39', '2022-12-01 17:36:39', '2023-12-01 18:36:39'),
('43756fbdb780e61b789babba413ee80ea32aed2024dca9a0615fc2cb46e58a36a853c9be1788c55b', 115, 1, 'Password Grant user', '[]', 0, '2022-12-09 09:06:20', '2022-12-09 09:06:20', '2023-12-09 10:06:20'),
('43d4015c9dd2d54ef86bfd76cbd8eb60cf5e7c61811a6affdccb16e5ad646e0ffca003629294670c', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 16:10:20', '2022-11-25 16:10:20', '2023-11-25 17:10:20'),
('4410259fae9a37a61c81e8111ba5e640ac164fece56004ddee944cf4b5284ea656edd4fe4cff55db', 54, 1, 'Password Grant user', '[]', 0, '2022-12-01 04:52:37', '2022-12-01 04:52:37', '2023-12-01 05:52:37'),
('449eea6f6277e6ffdea2fe46699ae6027b98b9a9f035cb51800f441d74fe15a8d037b36335032484', 93, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:21:10', '2022-12-06 09:21:10', '2023-12-06 10:21:10'),
('45945c4e398f872460f00f9c6e04c2632ce0441170dc902915f2fe9eb886b486dcb26bcd3c2cce57', 107, 1, 'Password Grant user', '[]', 0, '2022-12-05 03:53:30', '2022-12-05 03:53:30', '2023-12-05 04:53:30'),
('459d323d418185130811d4095cd65a4d7e184f39655baa5e000bf90997a35e36e812773fdfdceeba', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 18:14:45', '2022-11-22 18:14:45', '2023-11-22 19:14:45'),
('459f37606a3d8837870ac4fb209de8267e3327a01561d350164e0a79934256c65d51043f9851ebca', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:25:16', '2022-12-02 03:25:16', '2023-12-02 04:25:16'),
('45e666b25d397a6aef78668cd9a63f095a9a3020a1aa546a114005d3a1633799a5d2c30405d36ec8', 130, 1, 'Password Grant user', '[]', 0, '2022-12-09 13:35:04', '2022-12-09 13:35:04', '2023-12-09 14:35:04'),
('46490b54b9daf5f2de7bbcc5133191ed0535b10603f294c260ec27df0043ebbfc250cb1dd4fe51ae', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 16:03:57', '2022-11-22 16:03:57', '2023-11-22 17:03:57'),
('469ab08195ef4a7524252075e7f4f072a7cd9684dc725af788c4c3195c0987b11d4cd61641c91243', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:41:01', '2022-12-06 18:41:01', '2023-12-06 19:41:01'),
('47dc77b9a0f904cd08a462e8b8030cc7f1a6c1de03c530981c546b421c130cbc09c877b13d3365ca', 81, 1, 'Password Grant user', '[]', 0, '2022-11-25 13:41:17', '2022-11-25 13:41:17', '2023-11-25 14:41:17'),
('4804d7b27d9a8d0ebbdeeba19aa1b6d0c019426d0587ff04763292f2f1bdf5c3382219b86d5cd8bb', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 14:07:20', '2022-12-01 14:07:20', '2023-12-01 15:07:20'),
('484856c34061dbda37731358a0a077c41153efe7c3440af718497e6e29fa80dc996da2b889f7c52a', 42, 1, 'Password Grant user', '[]', 0, '2022-12-06 17:26:14', '2022-12-06 17:26:14', '2023-12-06 18:26:14'),
('48d42b60fa81dae9a928b68494c5f6d7d5e6c1c2ca164f60d00a6a519a83de909069d4e097a27376', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:31', '2022-12-06 18:42:31', '2023-12-06 19:42:31'),
('48dd36895e076eb6da38e5775a8a25e1ebf4ddcf421a00d9322175b3546e645e7334c9312ce9b5a1', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:01:27', '2022-12-06 09:01:27', '2023-12-06 10:01:27'),
('490450a5cce01e4bf25bdef59d1d218d45f22befe1ef4907b9774ce4162dfaff907d603c9ab5c240', 121, 1, 'Password Grant user', '[]', 0, '2022-12-07 17:49:56', '2022-12-07 17:49:56', '2023-12-07 18:49:56'),
('4927958bfad446cf68cc8efd6d9190bdb6d2b71baa8275f3ccd151f90d9eeb9fb79da061daefc36e', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 18:16:53', '2022-11-22 18:16:53', '2023-11-22 19:16:53'),
('4a77ff10176e12e41a801dd2899542cadd947fc1e2fc237c5dbad9f4f624c7b25506553edf805ead', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:16', '2022-12-06 18:46:16', '2023-12-06 19:46:16'),
('4b25e5841b56339bff16c9d3b0fcb4f23e695466dc274da901645efdcaadbaa76ff293e1792936b2', 55, 1, 'Password Grant user', '[]', 0, '2022-11-23 07:49:41', '2022-11-23 07:49:41', '2023-11-23 08:49:41'),
('4b8d08695b475c61b747bb29b21cc55b1e00aa4cd2c3670f034b4678e895fec50b5a58bccc8d3747', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:32:05', '2022-12-04 17:32:05', '2023-12-04 18:32:05'),
('4beb52ec5b1257af7235eb808eca6850758e6d35031501a9f5e80a6ec3b90c202416633066ac5750', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 04:56:56', '2022-11-23 04:56:56', '2023-11-23 05:56:56'),
('4c95e2e086b6ea3ac5c0e83536f10880a18399a63433491bfc204505ef47ad4d49b5d6af687d3e5d', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 04:04:49', '2022-12-08 04:04:49', '2023-12-08 05:04:49'),
('4cd5b81ea1351517972fa4c0b0b468f9d6e58c689b76617cc4ec119ed230b2a8b2ab99be94a5826b', 71, 1, 'Password Grant user', '[]', 0, '2022-11-23 07:50:48', '2022-11-23 07:50:48', '2023-11-23 08:50:48'),
('4dd85354597bbe05851346c25d70182c0743c96b3afe71816ce213fb1d60c28460f516efa6972db6', 142, 1, 'Password Grant user', '[]', 0, '2022-12-11 11:28:33', '2022-12-11 11:28:33', '2023-12-11 12:28:33'),
('4e14bd77e06cabb9a70fd93c674a73b0650df5f9365baeaba783d2df6764d8312e63641cb9112232', 42, 1, 'Password Grant user', '[]', 0, '2022-12-06 16:50:10', '2022-12-06 16:50:10', '2023-12-06 17:50:10'),
('4f302a758973ee7830cd6f32a15215ad6fef7f679a2af5fe0c54759b02562ac48cb4faea4da568b8', 55, 1, 'Password Grant user', '[]', 0, '2022-11-23 02:07:11', '2022-11-23 02:07:11', '2023-11-23 03:07:11'),
('50b205a170d8c9c34e586ea0c45e935aed3555ad3ee9ba44869f0f72f56645de61b867e029589715', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 16:26:25', '2022-11-22 16:26:25', '2023-11-22 17:26:25'),
('51f04a96ae81a274b6e44e4ee2b906a6b87f548c92ad9349c8b3c909bbe57fdd65a554f32b8db6b8', 125, 1, 'Password Grant user', '[]', 0, '2022-12-09 08:08:19', '2022-12-09 08:08:19', '2023-12-09 09:08:19'),
('5363547b8d072ef46987accb5c03c0296ac606cf1f352718cb551e0343007e84e70b7471bf3e315f', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 08:03:56', '2022-11-25 08:03:56', '2023-11-25 09:03:56'),
('53ea5a785b827628a483fabe2952046b4f66cddc53f9ce092a4c2004d33b90a836822de1285c8e01', 42, 1, 'Password Grant user', '[]', 0, '2022-11-23 13:18:44', '2022-11-23 13:18:44', '2023-11-23 14:18:44'),
('53fee7530e098f474bccde0fd4f95c9fa1c94533665dffe12adbfe769b5a0154aa58e539a2b4cf33', 105, 1, 'Password Grant user', '[]', 0, '2022-12-07 18:13:59', '2022-12-07 18:13:59', '2023-12-07 19:13:59'),
('54db616370abe235d17f895cc2606278a599bfad0a4f07f28f10b77a24f933d7ad94b2d0ab4b05a7', 105, 1, 'Password Grant user', '[]', 0, '2022-12-04 19:08:45', '2022-12-04 19:08:45', '2023-12-04 20:08:45'),
('56c2bb38cad15bbcb4bb4ed0aef4224dabb4223477d8d07fc3b42a539e4ecbb5be899cc9dfac27c6', 128, 1, 'Password Grant user', '[]', 0, '2022-12-08 13:58:43', '2022-12-08 13:58:43', '2023-12-08 14:58:43'),
('5737609eb2e1351c089bad828a74ac2ab270091ce38d1f79a0fbcd67bc9536fbedab9396c105c72e', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:44:44', '2022-12-04 17:44:44', '2023-12-04 18:44:44'),
('57944e21214a9f9b455a35f9f4b54153089e218fbd5110ca900a7b62f448adfe25ee541642d67600', 115, 1, 'Password Grant user', '[]', 0, '2022-12-07 17:04:13', '2022-12-07 17:04:13', '2023-12-07 18:04:13'),
('57e735302bc4d5cc9f22a0f11a0b14b77a305673def7e18c4e6d21537794b4e029d0096d759b7a01', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:28:21', '2022-12-01 17:28:21', '2023-12-01 18:28:21'),
('58ad31fcb55745b27a76146600556424d20fa18330955ec81ce5c91d243ef55740d3bff1009d85c9', 106, 1, 'Password Grant user', '[]', 0, '2022-12-04 19:40:30', '2022-12-04 19:40:30', '2023-12-04 20:40:30'),
('59330a7a5b3d6884e1fa29adb6f9899a0276344f8fb35e40eebcf6450468bd0a50c2d8c8136f72a7', 78, 1, 'Password Grant user', '[]', 0, '2022-11-26 09:34:45', '2022-11-26 09:34:45', '2023-11-26 10:34:45'),
('593ec171602816cc4690c487519b04bbeb36ae7a8a409e51ace884707da5719998dd818ccda38cce', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 16:55:01', '2022-12-01 16:55:01', '2023-12-01 17:55:01'),
('59a047e0cbc47cb07e68cebe7bf49b3ffe06d7eb5509760bdfab7ee8edbdd26c4466a06ac01fab3f', 101, 1, 'Password Grant user', '[]', 0, '2022-12-03 07:44:13', '2022-12-03 07:44:13', '2023-12-03 08:44:13'),
('59b7a6fc62e15ecce762d64f729702548b5202e2c4035751465819d4675016ff8a10be6f50d3e9f8', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 12:37:15', '2022-11-21 12:37:15', '2023-11-21 13:37:15'),
('5a2facb0c2e0d16dad732ceaa1d9241b15eda94944a9e3c0c2030a93d9343aeff82bea80f3ff0398', 38, 1, 'Password Grant user', '[]', 0, '2022-12-05 04:00:16', '2022-12-05 04:00:16', '2023-12-05 05:00:16'),
('5a39bd455c1a548f77c22c2281e26ffc00fe36720b15d83681a612f51299d7d48653531a132a04ac', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:14:36', '2022-12-06 09:14:36', '2023-12-06 10:14:36'),
('5aeecced9c5da7da2269688880aa664e8a958c307cb8f16cfa3803cd1bde94956273818748f4da74', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 12:47:23', '2022-12-08 12:47:23', '2023-12-08 13:47:23'),
('5bb3b989d3f6268722029310ba67cc3b22c004fc48915f5bc19eb34b9d4b6187900b31b025669e4a', 102, 1, 'Password Grant user', '[]', 0, '2022-12-03 10:04:15', '2022-12-03 10:04:15', '2023-12-03 11:04:15'),
('5c11df8e25682620ac8d6e370a497e64fa97dae04f4f435bb0cadf5d182948f6be5f5b7bc1d041a3', 25, 1, 'Password Grant user', '[]', 0, '2022-11-12 09:42:08', '2022-11-12 09:42:08', '2023-11-12 10:42:08'),
('5c281df504bfb1305275e8731bdaf8a912284b561307956d4415e2c340e06aaf02513df18281245b', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 08:05:28', '2022-12-08 08:05:28', '2023-12-08 09:05:28'),
('5de487e52e8e5686e2a81687319d3e8e09055ea53e91e36fb3b0bd2c0bd60361eaad3791478eb5de', 140, 1, 'Password Grant user', '[]', 0, '2022-12-11 04:12:37', '2022-12-11 04:12:37', '2023-12-11 05:12:37'),
('5eb3c78e9d58b5314434bea5c0b7a7879ec167e52d6a618db9d6ad7b74897228b3deff3d6aeac985', 87, 1, 'Password Grant user', '[]', 0, '2022-11-29 07:37:36', '2022-11-29 07:37:36', '2023-11-29 08:37:36'),
('5f0bf920f78fdaa4a1a14f88d10872ab7ea50e549a28fda0ef29a68f1349279cc3191dfcf3ec9eb3', 6, 1, 'Password Grant user', '[]', 0, '2022-03-17 19:37:43', '2022-03-17 19:37:43', '2023-03-17 20:37:43'),
('614a5c7fb290b40ae17758b81529e00a0553d348fa52d859f0e589a9d707f41771a1805315f81de6', 116, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:35:58', '2022-12-06 15:35:58', '2023-12-06 16:35:58'),
('632a023f8f55fb1954fb525b102a449221e6d9b4e3f47da786a3718d15f918a9fa39de346dae754f', 77, 1, 'Password Grant user', '[]', 0, '2022-11-24 08:51:34', '2022-11-24 08:51:34', '2023-11-24 09:51:34'),
('63b00d5b1c2f0d9749c722fff049271aa48a20118122dfea1a1b5c562f03af2ce04c2f2d4d6b2e55', 112, 1, 'Password Grant user', '[]', 0, '2022-12-06 12:05:59', '2022-12-06 12:05:59', '2023-12-06 13:05:59'),
('65ec7db86bf2f35358a791971876931525ac54239f89073eef9d27efb4aa28f1a173c51e6a5286c2', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 06:55:50', '2022-12-02 06:55:50', '2023-12-02 07:55:50'),
('66b0489dbefda91208345112e4c2fe2ffd19c7233a221a5e2093942bd8690e7c285be41d3770b5bf', 70, 1, 'Password Grant user', '[]', 0, '2022-11-23 07:48:42', '2022-11-23 07:48:42', '2023-11-23 08:48:42'),
('670c433b61836d4c09e71cb3702aa04d4640b10e00f23ab68882915116a0d524dfc213aeb3438a9f', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:17', '2022-12-06 18:46:17', '2023-12-06 19:46:17'),
('67155dc4c72e36ca4e8de0e3c2bdcef0bdbf0065aa2d1b322f4274532830c1f4a6b1e29d1b3560a5', 6, 1, 'Password Grant user', '[]', 0, '2022-03-17 17:20:36', '2022-03-17 17:20:36', '2023-03-17 18:20:36'),
('689490eced4dd56176783f36e5f4645ce0c08c763440e6635f6d3525ffb346f1c875947538495847', 130, 1, 'Password Grant user', '[]', 0, '2022-12-12 07:55:37', '2022-12-12 07:55:37', '2023-12-12 08:55:37'),
('6a016d86f051f7df828827a90cb0e36bdc7279f6e920243673c741310492e9fc7973b1fede631db0', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:40:34', '2022-12-06 18:40:34', '2023-12-06 19:40:34'),
('6a43c8d74a6ac76a265a26224078096cd0557cdcd521b3d4322b7205e9e44b974cab17bc2d6f163f', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:31', '2022-12-06 18:42:31', '2023-12-06 19:42:31'),
('6aa04a8e39b5f8673c1f5d3afb684ab38b11a9702877fb1351e0ed19c2894120714ca114dd8bc434', 39, 1, 'Password Grant user', '[]', 0, '2022-11-30 12:36:02', '2022-11-30 12:36:02', '2023-11-30 13:36:02'),
('6dc9c468058ba13779563638684cbce5dac15d6b0df7a7b382457de8b77944d3680e6769fb70092e', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:32', '2022-12-06 18:42:32', '2023-12-06 19:42:32'),
('6e3b54b0becd75f165779977d44ab65216dbf07ddb6f03bd260eb4db9b88121fa365cb4bbbdbae12', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:21', '2022-12-06 18:46:21', '2023-12-06 19:46:21'),
('6e67b814186825448be34fde59596aa71c21f07f88fbb16a541bcce86bcce8ace9818dd276ee881c', 111, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:22:33', '2022-12-06 09:22:33', '2023-12-06 10:22:33'),
('6e827e93487993079542c1a52d8c47b6b9d078996e653eb90eceb66d5aec4c091cc7805a0d05e42a', 115, 1, 'Password Grant user', '[]', 0, '2022-12-07 17:30:33', '2022-12-07 17:30:33', '2023-12-07 18:30:33'),
('6e88d431d5402d9c7f03c6a224cf401f366f51d8614532ffa37e216f3a6ff3c1f4c4dfaebf2f7877', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 08:46:45', '2022-12-01 08:46:45', '2023-12-01 09:46:45'),
('6ea5baeabfbd9e4860b25649f95155d76aae51fbe94474a48e44028ac37c96c522f83ee5083a51fd', 119, 1, 'Password Grant user', '[]', 0, '2022-12-06 19:35:12', '2022-12-06 19:35:12', '2023-12-06 20:35:12'),
('6f1a80e1346ab6346f090cb69b223b7f9cf0ba317038c8a951bdbcf63f3d1af25c49db0a226e74c8', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:22', '2022-12-06 18:46:22', '2023-12-06 19:46:22'),
('6f8187d23fa95f9d4246d924d67ca47e5d9ed21cbc55d7ed7eef4d0f4897c34fc9c32b534071e038', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:21:01', '2022-12-01 17:21:01', '2023-12-01 18:21:01'),
('707b56e2a48c837d231160bf94ce8da510c2177fa7b46a4debcfd46ead804e22b578e1f51a322a97', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 17:33:51', '2022-11-22 17:33:51', '2023-11-22 18:33:51'),
('70c71fbb6e2286682cc0dbf6aff3d0e2e79b93211230236a95bc150d83a11e5b4f3be35a358322ef', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 12:37:49', '2022-11-21 12:37:49', '2023-11-21 13:37:49'),
('70ff3b7371e25a6de5c387e134b7a9e9b43d6d2cc6450842fde3428b2e103baa36e3c5b689aac253', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:52:38', '2022-12-04 17:52:38', '2023-12-04 18:52:38'),
('719c800cb8dbfd9d2e4344f8b567a1d21c7b1036581b2b0cfc3e932c79bf23f83cb78451db78e14a', 67, 1, 'Password Grant user', '[]', 0, '2022-11-23 03:44:32', '2022-11-23 03:44:32', '2023-11-23 04:44:32'),
('723df481b013918346576ca9442f457bd1aaa91a05a2802d8cf9d6ed5168857309b9171e6f527f71', 27, 1, 'Password Grant user', '[]', 0, '2022-11-12 09:48:58', '2022-11-12 09:48:58', '2023-11-12 10:48:58'),
('7269df1c9deb4013a89f705895d8f775930de42a51cdfbcbdd5fa1ba5a362be6d08269098d6b9b05', 100, 1, 'Password Grant user', '[]', 0, '2022-12-01 19:15:32', '2022-12-01 19:15:32', '2023-12-01 20:15:32'),
('72a9032c6b940f6127a1fb59ce5152b241029dde0712baa5728c79097542b177c2d6334d140dc412', 38, 1, 'Password Grant user', '[]', 0, '2022-11-21 11:18:28', '2022-11-21 11:18:28', '2023-11-21 12:18:28'),
('72ca53c65db88ce978ec29c5343067e070ac68fc665e7384fae8498b223483cf6341f7f4f25ce564', 38, 1, 'Password Grant user', '[]', 0, '2022-11-27 03:47:52', '2022-11-27 03:47:52', '2023-11-27 04:47:52'),
('73e9c08504f2f9bbfe35cb8c41a1570cf2d4fb9707503e12be3509905cecd40688721f31c067f346', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 12:48:22', '2022-11-21 12:48:22', '2023-11-21 13:48:22'),
('7491f65440ccd3179b84f298d58edd11cffcc5a89b3e531927cd6878ed6503642064c3abbae747c8', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:51:12', '2022-12-06 18:51:12', '2023-12-06 19:51:12'),
('756fb9529a41dc5d9b40858c16e1abb1fb97e797d099d03b3d822b47b16f30c62f5cbf2855f22b07', 78, 1, 'Password Grant user', '[]', 0, '2022-11-25 05:04:56', '2022-11-25 05:04:56', '2023-11-25 06:04:56'),
('7587cef9cd3a6c71f394758fc3b488d92bcf756d37d301b7156199dbfb4ac1b04f028c6a593a1216', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 05:03:03', '2022-11-25 05:03:03', '2023-11-25 06:03:03'),
('7625277da62c1f0398db0d22d70b79746eb93a330163af64edd03ff806e1eb8a9f37e68115f19126', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 09:43:22', '2022-12-01 09:43:22', '2023-12-01 10:43:22'),
('770fbb69773569405f12baefc776131bd9e58f7b7d3a73ce85fe1532b125a447b46e8aa2cf9eef3e', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:20:44', '2022-12-02 03:20:44', '2023-12-02 04:20:44'),
('77257332c2a9b7f4c2e5d2ed0af5e13925b0795fc45dd27f4d6c7f13a91f5378de33dafe7f9d0651', 60, 1, 'Password Grant user', '[]', 0, '2022-11-22 15:15:26', '2022-11-22 15:15:26', '2023-11-22 16:15:26'),
('780958a06ba7a378fc802bb72f92a8396c04ed999ed61f26db38a765c550d376b2ab36d1da7875c3', 130, 1, 'Password Grant user', '[]', 0, '2022-12-09 14:43:38', '2022-12-09 14:43:38', '2023-12-09 15:43:38'),
('7858e39c9dc335076f186d0835d04a8783861ef18f995716a293ae8e5d9f9e96e395f9febb01d48c', 38, 1, 'Password Grant user', '[]', 0, '2022-11-25 05:01:06', '2022-11-25 05:01:06', '2023-11-25 06:01:06'),
('788821a9772ad29221168320ae906bee0350980283bed3cc7db87127adcc1030431f02c9849373a3', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 05:26:04', '2022-11-25 05:26:04', '2023-11-25 06:26:04'),
('791993469482162b3aebe7607c8a9e41ef73daabb1743c7f85e24cbdfb6b95ee5cb4b3c9af98b9e3', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:26', '2022-12-06 18:42:26', '2023-12-06 19:42:26'),
('7a135edfddc0f77c23df74f2d34664c0990be72c1dcb4c2f9ac53fab6e882c327bd23a80009b305e', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 16:38:33', '2022-11-22 16:38:33', '2023-11-22 17:38:33'),
('7a4a3c37254862972e3fe3fe74af34818237c9d1c213dcfe4879a34f77daaa941c03d3241e80a704', 38, 1, 'Password Grant user', '[]', 0, '2022-11-29 06:01:43', '2022-11-29 06:01:43', '2023-11-29 07:01:43'),
('7ac3c34212135a729ac4bb9897ffaa9248e3be92f9f0282faa6c75e2072500f4f9138a4254619d62', 100, 1, 'Password Grant user', '[]', 0, '2022-12-01 19:30:18', '2022-12-01 19:30:18', '2023-12-01 20:30:18'),
('7afe43a4292390b4d0676ce690302ad37f0ae46859118bd28432869699988fdc6cda2635b843d63f', 78, 1, 'Password Grant user', '[]', 0, '2022-11-25 04:25:07', '2022-11-25 04:25:07', '2023-11-25 05:25:07'),
('7aff5fdc074c9907304a794123803ac0c8e2a64094e9b595092a02c33481a4b7285a0c9a12f0c628', 134, 1, 'Password Grant user', '[]', 0, '2022-12-10 15:59:48', '2022-12-10 15:59:48', '2023-12-10 16:59:48'),
('7b8637da2bdeea98a50bcf2a8cb3027825adce7edb0a5fecba37a1ca03cec93ddee5e37539713d03', 63, 1, 'Password Grant user', '[]', 0, '2022-11-22 17:38:26', '2022-11-22 17:38:26', '2023-11-22 18:38:26'),
('7be1615a81ba959e633a35f9b16be64f23634dab595c10c274a63e55018372ac887d7e0b11aba43d', 72, 1, 'Password Grant user', '[]', 0, '2022-11-23 08:13:45', '2022-11-23 08:13:45', '2023-11-23 09:13:45'),
('7c64ec6e5c9c6ca9ccc7ea5afeadf12cf675054d86223dec4e904e9e4220b132bab55ab902296942', 6, 1, 'Password Grant user', '[]', 0, '2022-03-17 17:17:26', '2022-03-17 17:17:26', '2023-03-17 18:17:26'),
('7c75f9e103c7a9d5be42400f62e08290177d6cbeb7cf4fdb523b08b198c35bcefbb37a5156c5ba4b', 92, 1, 'Password Grant user', '[]', 0, '2022-11-30 12:32:33', '2022-11-30 12:32:33', '2023-11-30 13:32:33'),
('7ca2c1f13e2742d5e4bccf88c502b09dd00aa7edad4be4662a396ddc84e0b5f665539ae84697fcb4', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 08:47:44', '2022-12-01 08:47:44', '2023-12-01 09:47:44'),
('7d2242d4a3d6f106824a91009c8dd9e129731ca6dabf4b3094df65b1b05f1599e818e3a9013f2f48', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 06:45:19', '2022-12-01 06:45:19', '2023-12-01 07:45:19'),
('7d5f6480ddea6b01749e20a2691f00d0962ac945370df89ffe034c468b7d53ea25cfa80ef0d3f4eb', 6, 1, 'Password Grant user', '[]', 0, '2022-03-20 08:06:34', '2022-03-20 08:06:34', '2023-03-20 09:06:34'),
('7ec04547cca3cb52917a0340b66b27d07dc0f82d21b7a95006001292d9610ce7c92cd013498024d2', 115, 1, 'Password Grant user', '[]', 0, '2022-12-09 09:06:21', '2022-12-09 09:06:21', '2023-12-09 10:06:21'),
('7f2ae81050d609b709cadbd4dea52730b63b60bc590f0a0a5f5ba3265903a643ec1df134bfc0c5d1', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 08:37:28', '2022-12-01 08:37:28', '2023-12-01 09:37:28'),
('7f600a39a81f874c7a7aa9354ffe2eba6e64a234fc5b15329a309b288f517365ce164fc1499f8dd9', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 13:22:08', '2022-12-01 13:22:08', '2023-12-01 14:22:08'),
('82fed3f716069833eb933ed62c3d5b0809393fd942a5c99025830fadbaa5c3018e6da25dbca11695', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:11:07', '2022-12-01 17:11:07', '2023-12-01 18:11:07'),
('83607567ee2be61c6995f91ca95a448b81bc38fe855a8925518c1c76bee2680c335050a877afe5b8', 38, 1, 'Password Grant user', '[]', 0, '2022-11-22 02:39:27', '2022-11-22 02:39:27', '2023-11-22 03:39:27'),
('83a699ad18a56a367c582af2cfc40b3b68245b8ff0757c161ad875a96e17e65104e349a4a47bbfbc', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:45:40', '2022-12-06 18:45:40', '2023-12-06 19:45:40'),
('866c533e4f8579f485abd1b9d51a3e7a5fa1be4fa8fb27122199817738d1608f4b8b2d0f90930110', 91, 1, 'Password Grant user', '[]', 0, '2022-11-30 11:32:58', '2022-11-30 11:32:58', '2023-11-30 12:32:58'),
('866d04ce9a1b6e43f607e0d2dc6a5ae6fed20ec0c4ff320c1589b6fc1659c234b4b372992bafe57b', 41, 1, 'Password Grant user', '[]', 0, '2022-11-21 16:20:23', '2022-11-21 16:20:23', '2023-11-21 17:20:23'),
('868e4a13cca9e947ba8b1e5d7ab2e57bf1c514573f6688c06d4bccacd76d48225ff383d17c4e40c1', 110, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:00:30', '2022-12-06 09:00:30', '2023-12-06 10:00:30'),
('86e37b67034826937f104bdf44696c95b560ed910bad4c58dcb7ce48065946192dfed38f870e9184', 130, 1, 'Password Grant user', '[]', 0, '2022-12-17 06:42:32', '2022-12-17 06:42:32', '2023-12-17 07:42:32'),
('87ceeb6a2943597c0c7121a646027e2123f12a7ab4eaa171d6e9ec882311b4e44483454c78e25023', 101, 1, 'Password Grant user', '[]', 0, '2022-12-03 07:41:06', '2022-12-03 07:41:06', '2023-12-03 08:41:06'),
('883dee2f9a9d7e8dc465e513b5bee262c98b643a1b6ebd6792cff601d0fbe0c1bca4cb66a9a55014', 54, 1, 'Password Grant user', '[]', 0, '2022-12-01 07:30:35', '2022-12-01 07:30:35', '2023-12-01 08:30:35'),
('888877034ff15c2e6b3ec6e08a05c03bb5ef5de1baa682cef165ee1935ed072795313f0ec78b85f1', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:40:15', '2022-12-06 18:40:15', '2023-12-06 19:40:15'),
('89f14ceec5ba2ffe13a43c93d641390469dc4b0370998338a5577a24ade878fe5993d44ab092a088', 38, 1, 'Password Grant user', '[]', 0, '2022-11-21 15:38:39', '2022-11-21 15:38:39', '2023-11-21 16:38:39'),
('8a63ddd532725e7ea66e738fc73486e8db7d1282d753efa11e4de99a826c869c627202b693718ffb', 115, 1, 'Password Grant user', '[]', 0, '2022-12-07 16:23:39', '2022-12-07 16:23:39', '2023-12-07 17:23:39'),
('8adee18102828d71f30a244112ad05a53ad2230c5888c3d09b08c278305efe39a852a3935c3c8ccd', 43, 1, 'Password Grant user', '[]', 0, '2022-11-22 06:10:31', '2022-11-22 06:10:31', '2023-11-22 07:10:31'),
('8ba57c606be7cb2de562b89240738a9dfe8979382f1ec06e77341332dad042087d525bfe79c183c4', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:40:31', '2022-12-06 18:40:31', '2023-12-06 19:40:31'),
('8bb600a7c246d0a50c9a2cf939cec6cdaa19807252a1564cbad6a60b0173b20a49f0f4eb9913375b', 31, 1, 'Password Grant user', '[]', 0, '2022-11-20 15:00:46', '2022-11-20 15:00:46', '2023-11-20 16:00:46'),
('8bbe073bc6fa5ee989257a09332d4f669def4221b64f0803a3fccadf78ca80d1ca996dc652043cfe', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 04:56:43', '2022-11-23 04:56:43', '2023-11-23 05:56:43'),
('8c01468fcae5e4f3ff6cef82aabe2a5e03a24db2065b99cf9a46e425d59ba9437cc43187bc776184', 142, 1, 'Password Grant user', '[]', 0, '2022-12-11 11:28:43', '2022-12-11 11:28:43', '2023-12-11 12:28:43'),
('8c058442e7076ee9611c1b525431c46747b498c657c406de112c6b3caea837b15566c41da70a6827', 94, 1, 'Password Grant user', '[]', 0, '2022-12-01 16:43:42', '2022-12-01 16:43:42', '2023-12-01 17:43:42'),
('8cbcb2fee1db5472b8b3b38634309bec4c0be0e9195f0e47bd8af2187fec575f74b0209d322f07e6', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:17', '2022-12-06 18:46:17', '2023-12-06 19:46:17'),
('8cc9c0c07eaf0b81bfb4da1782e681e7bf9c4c91be878376b72e2be8063dd8f7055e8c9e64c17e90', 54, 1, 'Password Grant user', '[]', 0, '2022-12-01 08:04:34', '2022-12-01 08:04:34', '2023-12-01 09:04:34'),
('8d968c9dd3e27b2df99ddde8b30916f6a7ef2888b0399014c94e403e394c780a309e4c176e25311e', 38, 1, 'Password Grant user', '[]', 0, '2022-11-21 15:32:42', '2022-11-21 15:32:42', '2023-11-21 16:32:42'),
('8de5a978401edf1afb13cf25316fcffacd93a4be9d73141d1c3e55241e3ad6bce1d1a62e2a938b9f', 76, 1, 'Password Grant user', '[]', 0, '2022-11-23 12:52:44', '2022-11-23 12:52:44', '2023-11-23 13:52:44'),
('8e26316d2e0741f8c01e6f53f60dde708ce372d875733c0e1b3e5e480f85f4e02340736fa74bb8d0', 99, 1, 'Password Grant user', '[]', 0, '2022-12-01 18:02:56', '2022-12-01 18:02:56', '2023-12-01 19:02:56'),
('8e3c3eab696b6205212679662e59b25a34aef64379e6cdc5507592e350d85a4ccc1334ec4548f238', 43, 1, 'Password Grant user', '[]', 0, '2022-12-07 02:17:40', '2022-12-07 02:17:40', '2023-12-07 03:17:40'),
('8ec47019af7d4ba5a811e1f486a1fa8046f7d85680781faed0e198c3e75977e4e95d1a834a5e8e55', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 11:39:36', '2022-11-21 11:39:36', '2023-11-21 12:39:36'),
('90ccb9a51db24f752c6f81e70f14dd377f6a0f5e5bda8000ca217e0bba7f29a06679b46f6287e9be', 109, 1, 'Password Grant user', '[]', 0, '2022-12-05 10:51:23', '2022-12-05 10:51:23', '2023-12-05 11:51:23'),
('9111b57c5c7d90722b4d30a2648425440df4fa747a6a3ef099b88abef4f9ad8e75a4a7d36b2a1364', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:26', '2022-12-06 18:42:26', '2023-12-06 19:42:26'),
('91580c3282099559dd3c372643d336fe4b644dd4450b5fc031c19d1f0d6bf7bdc7ac31a9c4b548a5', 52, 1, 'Password Grant user', '[]', 0, '2022-11-22 13:42:52', '2022-11-22 13:42:52', '2023-11-22 14:42:52'),
('91ab29b3bbaa97aba1b8364a7259879870c20dbd8d6aa9949e5d41369126fda514c5c1e4b01bafc5', 74, 1, 'Password Grant user', '[]', 0, '2022-11-23 09:19:09', '2022-11-23 09:19:09', '2023-11-23 10:19:09'),
('9457b669c97e2aef1a5f751d079ec864d2fb8f31249c5a9d8969469004985dca5c21f6df8312108a', 32, 1, 'Password Grant user', '[]', 0, '2022-11-20 18:05:52', '2022-11-20 18:05:52', '2023-11-20 19:05:52'),
('94c232e26cb1cbc38db5ec52678249a9319fefd24a395c2317696abdba91532e22b2816bf84f8297', 38, 1, 'Password Grant user', '[]', 0, '2022-12-03 16:00:18', '2022-12-03 16:00:18', '2023-12-03 17:00:18'),
('95ca2dd7801366c4328b9b668a26fe6f66f0158d5be7474cddf7e4bc71ce4d4f17dc8de2214878ab', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 09:44:42', '2022-12-01 09:44:42', '2023-12-01 10:44:42'),
('95ceb04bc8345358aabaf87d87dc6bb3bdfe464d7343b138ebfe95427e9fe78d2d1a536166677d21', 32, 1, 'Password Grant user', '[]', 0, '2022-11-20 18:05:27', '2022-11-20 18:05:27', '2023-11-20 19:05:27'),
('980e0981eec7326170f6f1fb47060000f4152c88aea09cf7b66c547450fb6aa17cbc02a622daca46', 73, 1, 'Password Grant user', '[]', 0, '2022-11-23 09:07:14', '2022-11-23 09:07:14', '2023-11-23 10:07:14'),
('985b80206d0e448389c64ed064ad3ed40ba7eecb4986e7dd7d3ae4f49e0fffdf67ea7f5df720f86e', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:19', '2022-12-06 18:46:19', '2023-12-06 19:46:19'),
('98d3e2ed7c23c4ddc872f992817233dbfbfb8e1cee47e1ca050d09b1618e19addb1da3397d4094b1', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:09:30', '2022-12-06 09:09:30', '2023-12-06 10:09:30'),
('98d54ec0aa429a737d4f6e2258f55c45910b4a41e5ba9bdb0ef029d215dbb4ad964264eb1078d21b', 41, 1, 'Password Grant user', '[]', 0, '2022-12-11 13:06:24', '2022-12-11 13:06:24', '2023-12-11 14:06:24'),
('98f8b28492ea9cdd2ba6fe0a80cb42e458de20512ec55f1bfe75b43d67bc7ddded2bd38743f31035', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 07:15:18', '2022-12-02 07:15:18', '2023-12-02 08:15:18'),
('9967268fbee24726f0c02a1862d90fdbe561e539222adb66a2e09fcc7334a715d5150f88aceed8c7', 37, 1, 'Password Grant user', '[]', 0, '2022-11-21 12:40:56', '2022-11-21 12:40:56', '2023-11-21 13:40:56'),
('99832e8d415e7569b2c1216ba0c3868089d536a732cb5492df0637123c274de97082e692ac17c62b', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 07:16:22', '2022-12-02 07:16:22', '2023-12-02 08:16:22'),
('9b68f3a96e76df71157053d5c993f934e8384a54109af38accb5eb6787a27973fa49dc744e04bd01', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:54:41', '2022-12-06 18:54:41', '2023-12-06 19:54:41'),
('9ca27967d25f3759e632d20d6e0465d2d6c5c27206d1593f1de0abd45008f1fdb6b03e3f28044778', 30, 1, 'Password Grant user', '[]', 0, '2022-11-20 12:50:18', '2022-11-20 12:50:18', '2023-11-20 13:50:18'),
('9cfc3cd5c0b72d7820cf4c2a44db1e7fadb4dd40f40c3d4658119133c6751a0687f2a4143627e44e', 78, 1, 'Password Grant user', '[]', 0, '2022-12-04 14:14:15', '2022-12-04 14:14:15', '2023-12-04 15:14:15'),
('9d41e6375b8d377c2e59893f8a1721b317f88388cb6b6d5989137669a052df1e7f2903bf1ee76cf0', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:33:07', '2022-12-02 03:33:07', '2023-12-02 04:33:07'),
('9dacfa0adb3e582958e9886c4daceacd04ffc153c9e85f77d7e984418ad3159d83aa3772cea39584', 109, 1, 'Password Grant user', '[]', 0, '2022-12-05 17:37:46', '2022-12-05 17:37:46', '2023-12-05 18:37:46'),
('9e63d7aa1e070d49604313b11aed27e5d5d5633518b77ff07591b6310740d3dc5c5bf55ae4cd6466', 113, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:07:51', '2022-12-06 15:07:51', '2023-12-06 16:07:51'),
('9edc924c3f736ec7269628dceb0e75212322f3fefa56b5876f2fa68331c2c77820d88e1e813ead16', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 18:32:09', '2022-12-01 18:32:09', '2023-12-01 19:32:09'),
('9f180b4493cdb4c4d91cd93af293d2b6e53a6f7543f64f91a8ecd2153e5026d61693e61b1ef2b580', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:17', '2022-12-06 18:46:17', '2023-12-06 19:46:17');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9f2c7d05e780a960f919e8952399b6c619a709114b52f0b0d0e2671db16c9c1817c9f9f0f665996c', 41, 1, 'Password Grant user', '[]', 0, '2022-12-06 16:41:36', '2022-12-06 16:41:36', '2023-12-06 17:41:36'),
('9f5bc4b23cc7657d6a94ac419ca5653f8ee7d7a951c5d22e0d908aedf1270288859b214f85b0f8c1', 64, 1, 'Password Grant user', '[]', 0, '2022-11-22 18:14:56', '2022-11-22 18:14:56', '2023-11-22 19:14:56'),
('9f7e349547db05c9ffb7cfd710b9023c5504fa885d73e04e9450c4066262357ec1e032d47a170a8f', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 03:05:04', '2022-11-23 03:05:04', '2023-11-23 04:05:04'),
('9fa81748d517392f2c32aa8ace7342809450b0ada6ac6e35cc6368c2163c05958fef1b4f984098b0', 6, 1, 'Password Grant user', '[]', 0, '2022-03-17 17:33:09', '2022-03-17 17:33:09', '2023-03-17 18:33:09'),
('9fc99c2f717bddd71cf4dc04d102f786adbd3689c472487dcd4721d74b35d1685425214c4584a4a3', 40, 1, 'Password Grant user', '[]', 0, '2022-11-21 13:34:50', '2022-11-21 13:34:50', '2023-11-21 14:34:50'),
('9fde5639e09d589746df647ea13b1387fa4b93a0d2100525ed32ce3fcf532d827330ab6064020615', 38, 1, 'Password Grant user', '[]', 0, '2022-11-21 17:00:44', '2022-11-21 17:00:44', '2023-11-21 18:00:44'),
('a093da978ea43a98441a39761dc4ed473f04bb20dc2674bcfea28ffc3e78f342255229a3620bfb8d', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 14:09:52', '2022-12-01 14:09:52', '2023-12-01 15:09:52'),
('a1d1d966bc3a74f2fdfe8e69068a0e4e35dcf123d3284d1ab539647d31f526c1b4ea6147dfea7ff4', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 04:56:45', '2022-11-23 04:56:45', '2023-11-23 05:56:45'),
('a1f1d3cd894444dbed0e80ddb965c0ef5ed52bf5c118b7236b7507ba79daa3fd145d781124baa8be', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 08:10:51', '2022-11-25 08:10:51', '2023-11-25 09:10:51'),
('a29f35afd087ab0b338f55daf78fc5a69d4b3a9f9be1d3195cc24df58713693bc169ba9e5c1185d0', 91, 1, 'Password Grant user', '[]', 0, '2022-11-30 11:33:08', '2022-11-30 11:33:08', '2023-11-30 12:33:08'),
('a3945f6016772e19427e391c255f5c35ab7d1f26fcfa3856488b55056ec73bab6af36c407b83f75e', 78, 1, 'Password Grant user', '[]', 0, '2022-11-27 02:53:47', '2022-11-27 02:53:47', '2023-11-27 03:53:47'),
('a3f6ccc4bad1ea70aaceaf3904262d2d35417e945ff32732b7de6964df44ba2b57445565e4bf1b8f', 85, 1, 'Password Grant user', '[]', 0, '2022-11-26 09:33:17', '2022-11-26 09:33:17', '2023-11-26 10:33:17'),
('a4dd17fcbc272e99d35c2c0b8166859f44490b90fa4ed3af9b08626bf17f85df75b65afb92fa3db4', 49, 1, 'Password Grant user', '[]', 0, '2022-11-22 11:55:11', '2022-11-22 11:55:11', '2023-11-22 12:55:11'),
('a5e12af3dd66851aef7b8fabf4e501ec2646de6008802bf656e0314e48d97cec48c8061cec30dd4e', 38, 1, 'Password Grant user', '[]', 0, '2022-12-04 14:14:41', '2022-12-04 14:14:41', '2023-12-04 15:14:41'),
('a677fef2649d0d9791a4f848e0ec7ad4add218b0a354ac740f21c277985bfe2b23c7a7ea4e0e376c', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 07:59:08', '2022-11-25 07:59:08', '2023-11-25 08:59:08'),
('a70d5a445b32a631f192b82079e78f8180b88007109dccf7f11ce316ce76062fd79702c8ac9ed838', 135, 1, 'Password Grant user', '[]', 0, '2022-12-10 16:02:32', '2022-12-10 16:02:32', '2023-12-10 17:02:32'),
('a729d350e0f1255dc7c7df57219c9a67d1692adeb321f206a7c28ad27c9dcdade45137777e46f34e', 89, 1, 'Password Grant user', '[]', 0, '2022-11-30 08:49:03', '2022-11-30 08:49:03', '2023-11-30 09:49:03'),
('a78ac7b16074f6c7aa719716a7220f5d587e6af8fc0269c1dd0b1d27e5349b0332cb18f8a9a92bfd', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 12:58:13', '2022-12-01 12:58:13', '2023-12-01 13:58:13'),
('a7a9314410e5229136a74349d267a1f8d87b08a62016d8a2e709fe8d96f4c724797a3bc389925404', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 07:00:11', '2022-12-02 07:00:11', '2023-12-02 08:00:11'),
('aa718754aca33955b98400cae25857be2b22c49154c53b44f7796e51b27372c189e2b81c6fc70bc1', 35, 1, 'Password Grant user', '[]', 0, '2022-11-20 15:49:38', '2022-11-20 15:49:38', '2023-11-20 16:49:38'),
('ab5906910da1bc6a68b8cee8763291b127f733d61c4dec65106f46403847463b916eb1d273cc32bf', 115, 1, 'Password Grant user', '[]', 0, '2022-12-09 11:58:06', '2022-12-09 11:58:06', '2023-12-09 12:58:06'),
('ab88f710479958ac4f4c6e9e7cef794a6dfce2b4c9dc8333e277590ba0e322ddd9c1b5e1588d0ff6', 32, 1, 'Password Grant user', '[]', 0, '2022-11-20 14:07:07', '2022-11-20 14:07:07', '2023-11-20 15:07:07'),
('abd5e9c5bfb843d06d1b155304ecf3a94e8c67611a30bc815a627a6ae27752a6763a3cec224e809e', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:22', '2022-12-06 18:46:22', '2023-12-06 19:46:22'),
('abdd25bb45233452b11acec2abee66cee35418813e0309f0aeb8cf8f4f942db0f9302c1ea270cad8', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:13:18', '2022-12-01 17:13:18', '2023-12-01 18:13:18'),
('ac4b17223a566feb93469eb2a27b95daa224492a5ba103aaf5f25a83e8dd7678caa0152ffeafa729', 46, 1, 'Password Grant user', '[]', 0, '2022-11-22 07:33:57', '2022-11-22 07:33:57', '2023-11-22 08:33:57'),
('ac4e5387f6abff27144e3c5e2a9590dbf39b999cbe11411da1f8a0fae5c7b73c8ccb3bf59fdfc45b', 55, 1, 'Password Grant user', '[]', 0, '2022-11-22 14:44:31', '2022-11-22 14:44:31', '2023-11-22 15:44:31'),
('acd4ec14835b2eacaf1213b08dfca136374c7858204032249f0b18fec677ae32d620a0025a323a5d', 38, 1, 'Password Grant user', '[]', 0, '2022-11-22 12:12:46', '2022-11-22 12:12:46', '2023-11-22 13:12:46'),
('acddb66e6e420763c2d0c90dfbbbf4f27a31053a16e54c249b66d4a72d20b2a2833d1a7f16dfa09e', 82, 1, 'Password Grant user', '[]', 0, '2022-11-25 15:17:17', '2022-11-25 15:17:17', '2023-11-25 16:17:17'),
('ad9f5eef8718d2fb09006a5e42da24050c0203fa65c8f791861c10a0dc725cf6f2ca8713ce2ad40c', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:28:54', '2022-12-02 03:28:54', '2023-12-02 04:28:54'),
('addfd84f9d4b10e32f359ced88ac9306ace6ec3e1b61882032d25c1fbe0f25caf3041dbf3b4478f9', 125, 1, 'Password Grant user', '[]', 0, '2022-12-08 08:10:40', '2022-12-08 08:10:40', '2023-12-08 09:10:40'),
('adf0c1287d5fd1f9a63f3521d0f471c5980a3da74622953907b9aa4dca230a38b77f6b6f3e575d41', 115, 1, 'Password Grant user', '[]', 0, '2022-12-07 16:33:27', '2022-12-07 16:33:27', '2023-12-07 17:33:27'),
('ae6a1721faa11bfbb206339a519dcbb3556255e7485cc0480ec4ba992a362b1eb54440b85bae4070', 130, 1, 'Password Grant user', '[]', 0, '2022-12-12 08:19:22', '2022-12-12 08:19:22', '2023-12-12 09:19:22'),
('ae7e55370edd9f34bb79e2e1184e4cac38a633ad30fc9a7a58b8bf25ec91e2eda867e1d7def438e7', 104, 1, 'Password Grant user', '[]', 0, '2022-12-04 18:23:48', '2022-12-04 18:23:48', '2023-12-04 19:23:48'),
('ae9e427cced8faf7622a390e0356cd47d09612ae923505c49e43d35c0a8802e85026d07df9252b5b', 58, 1, 'Password Grant user', '[]', 0, '2022-11-22 15:08:31', '2022-11-22 15:08:31', '2023-11-22 16:08:31'),
('aede526801a378b0f488e17f164bd840519bd48ea0bf715748f918260b3d104c18978f155d91422d', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 08:22:18', '2022-12-08 08:22:18', '2023-12-08 09:22:18'),
('af5fb68b3224dcdeb37bf8558d061bb786b176d21bb35e2c48f89c9efda916bb38907a39f609600a', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 09:32:42', '2022-12-01 09:32:42', '2023-12-01 10:32:42'),
('b1592e3caeb80a3ddc15d7389f74872c7404bd8e20cec8258e444777c2c078fb28996b54d6043f7b', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 14:04:22', '2022-11-22 14:04:22', '2023-11-22 15:04:22'),
('b186b14f6be5e1a04772e210d4705f550fc7f021721aec5185ec89ed342bc0881abd46360e97e454', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 13:34:04', '2022-12-01 13:34:04', '2023-12-01 14:34:04'),
('b27bf9ab999ee78b4d72cc4e138666536b319779058275d9c8a3fdfdfcfd9543953b5c65d059a7c0', 133, 1, 'Password Grant user', '[]', 0, '2022-12-10 14:48:21', '2022-12-10 14:48:21', '2023-12-10 15:48:21'),
('b28e66158b40734ecf82ee3b9c7f381549c73bd642e65373fbac84f94eb1c0759042b79b44018099', 90, 1, 'Password Grant user', '[]', 0, '2022-11-30 11:15:55', '2022-11-30 11:15:55', '2023-11-30 12:15:55'),
('b514683f53aff3611252acbbfca9983265cd7b31d24807b6225be22f21fc770e29e5b21c10625f7d', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 18:18:45', '2022-11-22 18:18:45', '2023-11-22 19:18:45'),
('b53bd4c93c6252a50cb3ccc3382115580296b1246fc7751e9879ec523406126eecaaa3c051e75eab', 55, 1, 'Password Grant user', '[]', 0, '2022-11-22 17:42:52', '2022-11-22 17:42:52', '2023-11-22 18:42:52'),
('b5a8a7b46a398cfaaefe4654b24b8b135c7c0241f5c679bf1f18f57ad3c8a541024660d5e784d107', 138, 1, 'Password Grant user', '[]', 0, '2022-12-11 03:59:02', '2022-12-11 03:59:02', '2023-12-11 04:59:02'),
('b5edbf75e5e89676e59aa4e1264b94f92783cf68206910305176f7114061127b2fd61af5a9782d40', 34, 1, 'Password Grant user', '[]', 0, '2022-11-20 15:23:54', '2022-11-20 15:23:54', '2023-11-20 16:23:54'),
('b5ff8e4de0dcbe5e907ec4aad1975a98bbbb70b953c439557911cf838891d8977290cae507bd2b99', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 06:08:38', '2022-12-01 06:08:38', '2023-12-01 07:08:38'),
('b6c60a582773786797f93f444556a7860ea33ee43cabfceac05873ce162c41b260c8a2b8363e41c0', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:08:08', '2022-12-01 17:08:08', '2023-12-01 18:08:08'),
('b6f6db2559aee404a8afc280a52b66200571d81e3114cb989142bb882681ff532e37a660475f7e76', 37, 1, 'Password Grant user', '[]', 0, '2022-11-21 12:38:05', '2022-11-21 12:38:05', '2023-11-21 13:38:05'),
('b7ab23c3a7abdc64cbd266a98efb9a745b7e6d74d69f0c380cd720596f4979a38409fc0b31d11929', 117, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:40:21', '2022-12-06 15:40:21', '2023-12-06 16:40:21'),
('b7e1ee2529de971ca9391903932891f15b1aa16bd5b7f44782ad477e755a1e3c7598702b22d2db95', 38, 1, 'Password Grant user', '[]', 0, '2022-11-25 04:28:35', '2022-11-25 04:28:35', '2023-11-25 05:28:35'),
('b819ebb4e0f830a6b26e6a0515878cee491d7fb8e01c7d1c933d79230ac53c75c17ad59ee05f3387', 10, 1, 'Password Grant user', '[]', 0, '2022-03-29 06:28:57', '2022-03-29 06:28:57', '2023-03-29 08:28:57'),
('b878ce0134ecce03c6c80d741f6a1f6f833ed5dc3bd555e9e03b20a0df621858657a3147b6978cbd', 135, 1, 'Password Grant user', '[]', 0, '2022-12-10 16:02:59', '2022-12-10 16:02:59', '2023-12-10 17:02:59'),
('b8fabe9bb6853a73fd26aa158a8b3d57469233cb696fbbbfee74e053730cf2449ce1257c66171d64', 78, 1, 'Password Grant user', '[]', 0, '2022-11-25 05:03:23', '2022-11-25 05:03:23', '2023-11-25 06:03:23'),
('b91ff1c1ed0ea5993d3292f9ff576ac48345d1217812e400d13e1bb1fd2b4ae10007a08f8e23f489', 38, 1, 'Password Grant user', '[]', 0, '2022-12-04 11:52:05', '2022-12-04 11:52:05', '2023-12-04 12:52:05'),
('b99c0eb264114a59187152dd8e41691cf2764f4c5d9638671fcf73aef8148f74f87b47916ea062a2', 111, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:22:56', '2022-12-06 09:22:56', '2023-12-06 10:22:56'),
('b9a2d8b5ff0d7efbc4c4c0df45d6c1b72a1c2a4770effac7d1a561727bfc19c5629f8907fd6a4ab7', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 13:01:06', '2022-11-21 13:01:06', '2023-11-21 14:01:06'),
('b9ffc0af83301cdb6092787cd25226fea79a5c4a4e751d9bb960953c97fba371b187a2ca8521a6ae', 109, 1, 'Password Grant user', '[]', 0, '2022-12-06 05:50:09', '2022-12-06 05:50:09', '2023-12-06 06:50:09'),
('ba0a21390fb264f9408aeee59d6daf376f9b7b4c054ca3f4620e1de736bf8f67070d2de80e69594b', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 09:15:14', '2022-11-25 09:15:14', '2023-11-25 10:15:14'),
('ba0bb7abb1fcd89227e0af548fbbb420b5f6fc202c0f2e6cc0bd56e5f123e98e5e19523bd0797cfc', 147, 1, 'Password Grant user', '[]', 0, '2022-12-16 10:02:38', '2022-12-16 10:02:38', '2023-12-16 11:02:38'),
('ba6aa2af1afc621d0da3496022f2cbb70a4916b76d8db87ff7c75936abd3c632a93b8927019b2b83', 75, 1, 'Password Grant user', '[]', 0, '2022-11-23 09:21:45', '2022-11-23 09:21:45', '2023-11-23 10:21:45'),
('bb01545c333d60088ff709d4681b74a3a313b946330368e543aa6272c86c9783094ebd72da049d51', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:25:11', '2022-12-02 03:25:11', '2023-12-02 04:25:11'),
('bb2118030a62db62a70bfa80a5f236d57be0163feab06ef3ac6bb5f0bd5676f9af1e05404169797e', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:40:32', '2022-12-06 18:40:32', '2023-12-06 19:40:32'),
('bbab06c9ab932108acd283e7437c010bfe8178cbe9ca02a0b2ed2b41a3210e4237ad346c2f9d9f4a', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 06:41:36', '2022-12-02 06:41:36', '2023-12-02 07:41:36'),
('bc0805efaa9af3163c3fb87a3b3eb9e847ffe228edbca79e27177a8fe4be5a9975fff612588b368a', 93, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:01:06', '2022-12-06 09:01:06', '2023-12-06 10:01:06'),
('be7a66f8e1bfeb83bc699edde6ff0fee1fb0bd2e946ad19450a5a70c9b7c5861bb599c68d33dc295', 38, 1, 'Password Grant user', '[]', 0, '2022-12-04 16:07:10', '2022-12-04 16:07:10', '2023-12-04 17:07:10'),
('bf1b5b27d82ffc38b45e140a599ab68b37b4f90a06f2d4ada3c5714d122539aebc0332f9a85bf612', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 04:05:43', '2022-12-08 04:05:43', '2023-12-08 05:05:43'),
('c0e41ece1a06172528b3d9d12f8ca120478996b531ef9042fdeaa2dc1c407949579cca68499cafab', 51, 1, 'Password Grant user', '[]', 0, '2022-11-22 13:37:38', '2022-11-22 13:37:38', '2023-11-22 14:37:38'),
('c1886dc0eddc5d386e001634fb2be11d7f88c47a0765bdde599faa17a1e7b846916c16c9b70bff80', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:32:00', '2022-12-04 17:32:00', '2023-12-04 18:32:00'),
('c1ef11b5491351bfbac03295d9beb8be857cab789ad14c48ba688e94234f8274e6ac7ecc73b3a410', 137, 1, 'Password Grant user', '[]', 0, '2022-12-11 03:57:47', '2022-12-11 03:57:47', '2023-12-11 04:57:47'),
('c23b5da299b306ec97d325921c9feb33c9d62ca13d3818f869d4add0e9e1a32c187abe552bc810d2', 147, 1, 'Password Grant user', '[]', 0, '2022-12-16 10:02:22', '2022-12-16 10:02:22', '2023-12-16 11:02:22'),
('c32f133c22b7ef69b8b77bc21a24139d4e6ed63f56f7b6cf43bf1b39cfab71468df39589c21c598b', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:27', '2022-12-06 18:42:27', '2023-12-06 19:42:27'),
('c34b1f37ccc0edd085bd352dee0287719f9f154435f1390697818073def37dbfff78f6dba13ba647', 122, 1, 'Password Grant user', '[]', 0, '2022-12-07 17:57:28', '2022-12-07 17:57:28', '2023-12-07 18:57:28'),
('c361d0113a2e755f5a46f592daeaa5f59e63b85fee01852f1eb5d18901e63a4c392b7a51f40eb111', 32, 1, 'Password Grant user', '[]', 0, '2022-11-25 13:55:35', '2022-11-25 13:55:35', '2023-11-25 14:55:35'),
('c3913bd676fd19962441d20118e6ba40424e52710464fc5e5244a537bcab51d03dc5e49dee90fa9c', 130, 1, 'Password Grant user', '[]', 0, '2022-12-09 13:35:31', '2022-12-09 13:35:31', '2023-12-09 14:35:31'),
('c41c2f88ebd9f94263c6c5836ccd7a4e6b19c476a4a9ba3820f7e7cd98f383ff750a423118c3a0eb', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 11:06:09', '2022-12-08 11:06:09', '2023-12-08 12:06:09'),
('c44f876eeddb1c5d33e574fcb0222646bda8333848dc661ae5989c5b5d3aa289c3208f3fb4a95ffa', 55, 1, 'Password Grant user', '[]', 0, '2022-11-22 18:44:52', '2022-11-22 18:44:52', '2023-11-22 19:44:52'),
('c4a86fa803fcd1ea1ec01a297203c321c4e933ae8d64f0f449f35089a45de8070fc9228bb8887155', 108, 1, 'Password Grant user', '[]', 0, '2022-12-05 08:28:37', '2022-12-05 08:28:37', '2023-12-05 09:28:37'),
('c5437de27ddb9f42ce48f20e635f73448768c1ffbf1a322ff03efc2056ae571fefc2669d10a4fcf3', 142, 1, 'Password Grant user', '[]', 0, '2022-12-11 11:29:42', '2022-12-11 11:29:42', '2023-12-11 12:29:42'),
('c635bd7efc0c030f8529379808899f5642f70dd51b592765323c85015c784c7104162e442afc0186', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 13:52:38', '2022-12-08 13:52:38', '2023-12-08 14:52:38'),
('c64402d4801de207c4fe8f8dbd4b4912b73662af398009de784957adc52bc166aa10fda8ddac1ba7', 54, 1, 'Password Grant user', '[]', 0, '2022-11-26 04:50:09', '2022-11-26 04:50:09', '2023-11-26 05:50:09'),
('c6ad28f2e345db6e484ba86ceff5f814d970a9d49cbf84dc200b052d8906ec52f089fd7fce6c2748', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 18:14:45', '2022-11-22 18:14:45', '2023-11-22 19:14:45'),
('c6b2b51b8107d8bca16c69c51e299d9b4e6fcfbaddf2bdd08dcdf66bb56396ca96a4a5e3a514208b', 54, 1, 'Password Grant user', '[]', 0, '2022-11-25 09:16:46', '2022-11-25 09:16:46', '2023-11-25 10:16:46'),
('c76a617755ca1185039089013ade6e8699bf918330105d097fedd79a90d5093417eb0aad72d53679', 78, 1, 'Password Grant user', '[]', 0, '2022-11-26 08:58:34', '2022-11-26 08:58:34', '2023-11-26 09:58:34'),
('c8c93343a0f4bffb173f7901e5b40ef3ccdedc02ce3dd2639ce21086aa3cdbc7f08dd169db867eae', 39, 1, 'Password Grant user', '[]', 0, '2022-11-30 11:27:05', '2022-11-30 11:27:05', '2023-11-30 12:27:05'),
('c8d968f42385f98203e781b42a0f8b5406c84be0d8eb2c777fb3943dd20b47e4007a40c2e536fe90', 80, 1, 'Password Grant user', '[]', 0, '2022-11-25 11:57:30', '2022-11-25 11:57:30', '2023-11-25 12:57:30'),
('c8f00d155f33658dd906fe93d9da7bc95eb701c651bc28d65d122857ebdfc48e65b0bf7858e08d80', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:24:43', '2022-12-02 03:24:43', '2023-12-02 04:24:43'),
('c94a551d5402dae4b5146e0de19ad4a31aae76d73508d14dc4e48a1547abaf04aa9af97a74bc6eec', 69, 1, 'Password Grant user', '[]', 0, '2022-11-23 03:49:05', '2022-11-23 03:49:05', '2023-11-23 04:49:05'),
('ca3a95bd54ac8a2a8f007f6ce368385009e2b075c744d325b72ba75301e1c1167771e7145752ad98', 78, 1, 'Password Grant user', '[]', 0, '2022-11-23 14:21:07', '2022-11-23 14:21:07', '2023-11-23 15:21:07'),
('cbc26ba410bb4482f0fe5621be77ef43cd62e1d9c750ad00ca7b935f49d4eb92bf774ae244dd50f4', 32, 1, 'Password Grant user', '[]', 0, '2022-11-25 13:32:23', '2022-11-25 13:32:23', '2023-11-25 14:32:23'),
('cc68606481ec705848ec5ff4d2f888888f1ad3048d17ffd691349d5d043c062c075c41da40e5dbf9', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 13:09:47', '2022-12-01 13:09:47', '2023-12-01 14:09:47'),
('cde84ab0106b855d98c2aff3fe0f9e15c3fe9ec62075a6a1f34b8a2749a9019e7a2c5e5afdf9380c', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 09:34:56', '2022-11-23 09:34:56', '2023-11-23 10:34:56'),
('ce079b97e6a25b33f76a52ca6d9cd348fb8d613ef0c75733804c0b481c2a81095fc61407c8267007', 56, 1, 'Password Grant user', '[]', 0, '2022-11-22 14:45:49', '2022-11-22 14:45:49', '2023-11-22 15:45:49'),
('cfca4f758fc6b7da3ac57155a09ae302aa5dcc2d92a43f9648db5e59947f9f8f34422bddabb7be56', 65, 1, 'Password Grant user', '[]', 0, '2022-11-23 03:03:59', '2022-11-23 03:03:59', '2023-11-23 04:03:59'),
('cffe7b90ec21828d98d54bddb0f29cd49b5fcbd5244a66664aa9da03190516eb7e0c967c1f5bfb7f', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 07:11:49', '2022-12-02 07:11:49', '2023-12-02 08:11:49'),
('d01e4450d14d71c3fa6aabe81c2476ce48285dae36622ef1d8add6378741b5b807668999b510b446', 42, 1, 'Password Grant user', '[]', 0, '2022-11-22 05:47:03', '2022-11-22 05:47:03', '2023-11-22 06:47:03'),
('d01f3d80800c4c4f1a248e0d7b6e55c9d2752f790a307827dccc828d015500d990556f036ff919cb', 132, 1, 'Password Grant user', '[]', 0, '2022-12-09 15:57:53', '2022-12-09 15:57:53', '2023-12-09 16:57:53'),
('d025f0858916fdcfc03dc7f8d55fcd7c389e1154882102dbdf2b0d79de13e90ae2dccace6c81f694', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:54:06', '2022-12-06 15:54:06', '2023-12-06 16:54:06'),
('d04bf4b0f3b0b82ef4ca653aa7ba5aeac3add7f6b8d5e2ac55c12931ee9e4d1256e2823d9bb395c7', 141, 1, 'Password Grant user', '[]', 0, '2022-12-11 04:16:09', '2022-12-11 04:16:09', '2023-12-11 05:16:09'),
('d08811a429317300cc027b87c92064d31433c4422d45fd53713e1fe03c7a806fb108db9542daef2f', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 13:37:02', '2022-12-01 13:37:02', '2023-12-01 14:37:02'),
('d09d6c2be03a175fd103285f9601a1a6b8610134b2f0c9204d76c75b5b63caa5ea3488bd46908eb2', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 16:46:12', '2022-12-06 16:46:12', '2023-12-06 17:46:12'),
('d12512da3f2f5039ed8314159b3368ceb2779619a20dd6150e749a9a28b59a0a9e47fc76360ca1f6', 129, 1, 'Password Grant user', '[]', 0, '2022-12-08 14:08:46', '2022-12-08 14:08:46', '2023-12-08 15:08:46'),
('d1cc95c638f345ef4b18008ddd92db254865a80f630e222f3d0f8b9cfe88c6262e72b99f777b1708', 79, 1, 'Password Grant user', '[]', 0, '2022-11-24 04:47:33', '2022-11-24 04:47:33', '2023-11-24 05:47:33'),
('d24f2fe103c5d710d94ce952b0fc4f92e08d83b4fdd1a2d77ba6d03c94de53a16f13eaab7fd6d7e6', 85, 1, 'Password Grant user', '[]', 0, '2022-11-26 09:32:46', '2022-11-26 09:32:46', '2023-11-26 10:32:46'),
('d2e6fb522a1eee5b0b5d093ac1fd0e70106b5bb8c35870d19d852a4d3e36d8837bd50df0297fb031', 38, 1, 'Password Grant user', '[]', 0, '2022-11-25 03:05:52', '2022-11-25 03:05:52', '2023-11-25 04:05:52'),
('d46943814d43af16a1428c36f843757893dd8064c488d0f9a17459471171b48b5cbd3757f5fdc032', 25, 1, 'Password Grant user', '[]', 0, '2022-11-12 09:46:43', '2022-11-12 09:46:43', '2023-11-12 10:46:43'),
('d4acd1c5707b8c990c629f32c96816d826c22f520e4d2e7a4b97ebc3478c1ffa755029935db5c659', 136, 1, 'Password Grant user', '[]', 0, '2022-12-11 02:43:53', '2022-12-11 02:43:53', '2023-12-11 03:43:53'),
('d4cde235d399b5edadd4159772946781ed3bede24392c5433feedb7b1e4f603a23584c38725b7fec', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 14:04:46', '2022-12-01 14:04:46', '2023-12-01 15:04:46'),
('d59e1596d839ab36c92307c2cf67c79a60f529485ff84f6201dfb9d9d216e4154326001ad9492f4d', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 11:54:47', '2022-11-21 11:54:47', '2023-11-21 12:54:47'),
('d5ff59f1e0565d92e957684f244bd8368381e49447e0ff845a00e8fd621cbbe102362a8c94dc7302', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 08:16:59', '2022-12-08 08:16:59', '2023-12-08 09:16:59'),
('d6aec91a4bfd27197840a84f0fb4041471158b0a35e0673164d308c8efbf3c99a0358783647aee72', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:32', '2022-12-06 18:42:32', '2023-12-06 19:42:32'),
('d75cd1c102476326b6066fdeb741c9d0c1495cd37926ef598c80cb1a394f9b5a247fedc8f7ef5e84', 39, 1, 'Password Grant user', '[]', 0, '2022-11-30 08:48:29', '2022-11-30 08:48:29', '2023-11-30 09:48:29'),
('d7d779afdce60eaa39e4a446acde16144e413917b22f260d8c640e68bcac80d4171c1fb0ef0d0a06', 130, 1, 'Password Grant user', '[]', 0, '2022-12-11 15:48:54', '2022-12-11 15:48:54', '2023-12-11 16:48:54'),
('d90d8b7dde6cd76be0f624e8369b260a3bf0ea01a5f4a77fda85e4b2d6be22945714c81db8f73927', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:43:40', '2022-12-04 17:43:40', '2023-12-04 18:43:40'),
('d9cef8bb8a04b8c9e1f3182cc3d2e6de5be2d9c7f608a59675796c3a8df1ca8b06132d54cd95dfd1', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:52:32', '2022-12-04 17:52:32', '2023-12-04 18:52:32'),
('db8b2fb0977c131326215c0c71a7aaefb215ef6cdfb382537c5c2ed1871e69c5d5e3df420a005e25', 145, 1, 'Password Grant user', '[]', 0, '2022-12-15 05:42:08', '2022-12-15 05:42:08', '2023-12-15 06:42:08'),
('dc11827ff7ec8fe849a249928f6fbf373fe964324ab65ac9cf2c677e38293913b3a3ee90ba8cb61c', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 19:06:38', '2022-12-08 19:06:38', '2023-12-08 20:06:38'),
('dc243c969a3b6e44bf6294fccfcf88a3a518bc7e216faae68194838614fa5104668ff62cac338f5b', 77, 1, 'Password Grant user', '[]', 0, '2022-12-04 17:45:23', '2022-12-04 17:45:23', '2023-12-04 18:45:23'),
('dcd0639bcbfabe36cd07eacfec8d6ce49446cf8be2f47450a992c2d95df1636c76eff1c980d9b5ec', 38, 1, 'Password Grant user', '[]', 0, '2022-11-25 03:05:41', '2022-11-25 03:05:41', '2023-11-25 04:05:41'),
('dd8b4622bf4c38aa0ac53dae9794e132f367cf043a0050e72ec42962ea4df302999186db14407973', 118, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:52:57', '2022-12-06 15:52:57', '2023-12-06 16:52:57'),
('deb084bafca7abc764b501675c7c4edee1dc1fbe67a59f703db151de554615d88438914bbf93b1a0', 32, 1, 'Password Grant user', '[]', 0, '2022-11-20 15:05:53', '2022-11-20 15:05:53', '2023-11-20 16:05:53'),
('dee360d6970b9ba762140909d99d7f1d8d4b451838c20ca531a86991cd5337a24b8146504dbc1b40', 77, 1, 'Password Grant user', '[]', 0, '2022-11-23 13:30:58', '2022-11-23 13:30:58', '2023-11-23 14:30:58'),
('def8d3c23ca8a615b5727cb4206295f2f4df262fe252fce92ad6dbc23ca430779a42590da9a0626a', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:17:59', '2022-12-01 17:17:59', '2023-12-01 18:17:59'),
('df924d8899c2f34e47026535504d6196a94c9806e1571fe220c355a8d7a54d157aabffa1d0831447', 38, 1, 'Password Grant user', '[]', 0, '2022-12-03 15:51:31', '2022-12-03 15:51:31', '2023-12-03 16:51:31'),
('e01a2691fcf346e15529af4b54a21ce216b9215a548c71645ffb91e2d9a34c04336e91d1c74e24be', 130, 1, 'Password Grant user', '[]', 0, '2022-12-09 14:28:38', '2022-12-09 14:28:38', '2023-12-09 15:28:38'),
('e16056b111beac1ae014e7319b37ab1f0171fa83338a3abfef0b96897dcf7beae5742b89511e53f5', 54, 1, 'Password Grant user', '[]', 0, '2022-11-22 18:18:45', '2022-11-22 18:18:45', '2023-11-22 19:18:45'),
('e1f15923ca6409bfe4f992564317c88ad80390215265e4265774d8d45583a221f02aa14de2b16818', 130, 1, 'Password Grant user', '[]', 0, '2022-12-09 14:41:34', '2022-12-09 14:41:34', '2023-12-09 15:41:34'),
('e26df9a051ef229005965e54abb43e27f0ad0133713a64bf08a6faf968c0d40e8ce41b9cc23fd0f8', 38, 1, 'Password Grant user', '[]', 0, '2022-12-03 11:23:04', '2022-12-03 11:23:04', '2023-12-03 12:23:04'),
('e2c7027d5f42badf5e8b2297ffbc14446eb0bdbdfa939ec6f3b13d2eb48a1294819815d2443ff158', 77, 1, 'Password Grant user', '[]', 0, '2022-12-06 16:46:16', '2022-12-06 16:46:16', '2023-12-06 17:46:16'),
('e33e2f2489079266a937918a512405a297e8238112e0e0bac432fdd1243954292c9edcf86c41ddff', 128, 1, 'Password Grant user', '[]', 0, '2022-12-08 15:10:13', '2022-12-08 15:10:13', '2023-12-08 16:10:13'),
('e422909398a697c05a96449465a32f289f20f56551034ee1dea4553c0a3a780310869bc20fd80929', 93, 1, 'Password Grant user', '[]', 0, '2022-12-06 16:40:40', '2022-12-06 16:40:40', '2023-12-06 17:40:40'),
('e4ec0205dd690669b7a0dfa06dcabf071dab3e2023cce2c0e95acc045bb48d95f2caf40338ae4ef5', 38, 1, 'Password Grant user', '[]', 0, '2022-12-01 06:09:22', '2022-12-01 06:09:22', '2023-12-01 07:09:22'),
('e55c42378018d9388e86d9a8e7249ccedaa1c7816e900773ad3164e09ac96bd3801770ecf856793e', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 14:29:02', '2022-12-02 14:29:02', '2023-12-02 15:29:02'),
('e7b7e31787bd545bdba9a422420701eeaa020b64ce5fd64fb4e2a5ae58459aa733bc1100b1aa8a2f', 77, 1, 'Password Grant user', '[]', 0, '2022-11-23 13:31:17', '2022-11-23 13:31:17', '2023-11-23 14:31:17'),
('e95043ded15c3ac66145ee63c3c941cacc4e5553080d69d85c0a5b80697a2c3a7c7ad7bc62ad7990', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:02:45', '2022-12-02 03:02:45', '2023-12-02 04:02:45'),
('e97f19e6dbdb2482b51665a21b41030d48b2b30bf21c0b7e2d457ed6521ece0d435aa3acfbd7c81b', 142, 1, 'Password Grant user', '[]', 0, '2022-12-11 11:28:39', '2022-12-11 11:28:39', '2023-12-11 12:28:39'),
('e9c441a323808d3b21443a28b6e9a813fa9c0bf2d50375eb03e09942f8c1223863555bff5e559722', 61, 1, 'Password Grant user', '[]', 0, '2022-11-22 15:36:42', '2022-11-22 15:36:42', '2023-11-22 16:36:42'),
('ebbe96f9dec8e2b021cb7d2a754ab1d0e949588bb18dc155a70cb9da0bfd4646cdc90d33d72f804c', 32, 1, 'Password Grant user', '[]', 0, '2022-11-25 13:06:54', '2022-11-25 13:06:54', '2023-11-25 14:06:54'),
('ec4119053ca1b8725c0dc6a55f17e6928d36b9af22a769907ce7efc194d33c6d2329b1c1c41091ed', 88, 1, 'Password Grant user', '[]', 0, '2022-11-30 06:26:33', '2022-11-30 06:26:33', '2023-11-30 07:26:33'),
('ed33b84eeb690c1f733242445d68951a4753ba37fea92dc18509c79f4e787ee4d269707a78885e86', 120, 1, 'Password Grant user', '[]', 0, '2022-12-06 19:52:42', '2022-12-06 19:52:42', '2023-12-06 20:52:42'),
('ed62b553d61bd0b31b8abfef54edcb32e7929dec9b572bc0375804048daa1fbefe52cbf1a35b3ccc', 37, 1, 'Password Grant user', '[]', 0, '2022-11-21 11:03:05', '2022-11-21 11:03:05', '2023-11-21 12:03:05'),
('ed8d96f89e1ee0924ddeebe81662a1d5a71bc046bbfe5a67e190d9dc66ff568d549cee6009504c34', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:24:41', '2022-12-02 03:24:41', '2023-12-02 04:24:41'),
('edc4236f31ee1560a04433ce31a3ab8b50b138da5abdaadd82519c57b36044d1f2d03641543abcad', 37, 1, 'Password Grant user', '[]', 0, '2022-11-29 07:36:47', '2022-11-29 07:36:47', '2023-11-29 08:36:47'),
('ef52f2209235910ee08bec68897b16c4e25f22e59749ac3d291e123a2b3658a7e1b9e65c5804aeed', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:44:59', '2022-12-01 17:44:59', '2023-12-01 18:44:59'),
('ef9aa9770b0d863a896fe8ed240fd65b32d74972e4ae7e0b4bd16a86721c01467ddb4c8d954bce7d', 38, 1, 'Password Grant user', '[]', 0, '2022-12-04 11:52:28', '2022-12-04 11:52:28', '2023-12-04 12:52:28'),
('eff461a78255609b6758a5f28c9b426b38c3e5f6311fc8a4ec4943a66b05d377791d5433e1fd6a21', 39, 1, 'Password Grant user', '[]', 0, '2022-11-21 13:01:21', '2022-11-21 13:01:21', '2023-11-21 14:01:21'),
('f001c9780a00842ddeb98fffdfe2ad22a7adce6480441b0226e37915464e9e63129352ae7df10a3c', 38, 1, 'Password Grant user', '[]', 0, '2022-11-21 15:38:22', '2022-11-21 15:38:22', '2023-11-21 16:38:22'),
('f1603844f9864176b4987696eaf9719d56fb2f819e5a6fad3129a02de395452b03f3623ecfab06fd', 78, 1, 'Password Grant user', '[]', 0, '2022-11-25 16:10:01', '2022-11-25 16:10:01', '2023-11-25 17:10:01'),
('f206ee9b8e6f29ff5a787c92150d616c5c727357c50b55df7c295a815eff17bfe004ffcc4a67dfad', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 16:02:59', '2022-12-06 16:02:59', '2023-12-06 17:02:59'),
('f232a4041c7bf78eaf2cd53c580b1c09619092399ec175cc8f5dd726242e4ee1bf378623d4cb2992', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:40:11', '2022-12-06 18:40:11', '2023-12-06 19:40:11'),
('f350e1abb33d248c012430ddadcdf829ddc25d69beafa6355444a4ca0ba791bf0075150744f7bf4f', 32, 1, 'Password Grant user', '[]', 0, '2022-11-25 13:25:16', '2022-11-25 13:25:16', '2023-11-25 14:25:16'),
('f35dac648547a751c8477f5dc7b5e277f3ec786c1946fb683ac55382ca7b18d46c7503a1c340a065', 96, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:29:33', '2022-12-01 17:29:33', '2023-12-01 18:29:33'),
('f3b68483b1b7fc9e0b8aa6ff0c44571005cb816684da82550a861dc5e480f86b3c5d630ed9f92768', 50, 1, 'Password Grant user', '[]', 0, '2022-11-22 13:12:02', '2022-11-22 13:12:02', '2023-11-22 14:12:02'),
('f3e08be00ec923f5e63d97eaeef79724b583c44e44670c5001b8233eaeb2ded6cf4009f845df40f7', 115, 1, 'Password Grant user', '[]', 0, '2022-12-08 08:22:39', '2022-12-08 08:22:39', '2023-12-08 09:22:39'),
('f3fd01959b7852a8996ada89497c57b3fef627cb1439e29ca9b1a919bfada11e8144a1926267435f', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:24:35', '2022-12-02 03:24:35', '2023-12-02 04:24:35'),
('f449d971ccedbd1d93e8ff7a1250b199e453853f3081cda895f74700fc8cd5b8445e3c86b6fac2a2', 105, 1, 'Password Grant user', '[]', 0, '2022-12-10 14:49:49', '2022-12-10 14:49:49', '2023-12-10 15:49:49'),
('f4ad657ac71838b960520ded033b53d5bce43d8a21b5822ba0ccf21934f14b69c146e57a5bc83d24', 77, 1, 'Password Grant user', '[]', 0, '2022-12-01 16:58:04', '2022-12-01 16:58:04', '2023-12-01 17:58:04'),
('f50b985a9812177b1c8bfbfc52b1c32d15600da3222866b1ed6c548d45efff9e4c33c8a2c4ae71fd', 38, 1, 'Password Grant user', '[]', 0, '2022-11-21 12:27:39', '2022-11-21 12:27:39', '2023-11-21 13:27:39'),
('f5209af9f17bc04b98c9ac3e181ad0719da53562df71dc64a3f3edc0e59952286cd19f56e0102ce6', 93, 1, 'Password Grant user', '[]', 0, '2022-12-01 16:39:54', '2022-12-01 16:39:54', '2023-12-01 17:39:54'),
('f5652d0617412099f3eebb3e53ffe3830500284cec9d2beb84d67a43727d3ec829010a89dcbd18a9', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 15:16:39', '2022-12-06 15:16:39', '2023-12-06 16:16:39'),
('f584f7eeae24321024c8a5c53895679f09a0772e3aee251d4632123273a966990a72c80566430e3b', 77, 1, 'Password Grant user', '[]', 0, '2022-12-02 11:47:03', '2022-12-02 11:47:03', '2023-12-02 12:47:03'),
('f5df86d551122e8ef06723b2de09c5864b35bd81a596d6ca052d580755a631895f1b31c388aa22c9', 102, 1, 'Password Grant user', '[]', 0, '2022-12-04 16:05:59', '2022-12-04 16:05:59', '2023-12-04 17:05:59'),
('f5f28278d99208de072515c005f2ef2cf83899bb9410b31f9f9b9620c39843534f6fcc31fde6c71b', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:46:21', '2022-12-06 18:46:21', '2023-12-06 19:46:21'),
('f672d2ed2d5b4f15134a0a938d54bbd7382f36022ae5eec8d5ef6b35cfc8dcb4e12dbcce61d29a91', 54, 1, 'Password Grant user', '[]', 0, '2022-11-23 04:56:43', '2022-11-23 04:56:43', '2023-11-23 05:56:43'),
('f6bfea759a1324d001275b7d55b048eb43cf4ea8f547caf83a1847737f3cd06ca0becc5e553f3b51', 38, 1, 'Password Grant user', '[]', 0, '2022-12-04 12:21:59', '2022-12-04 12:21:59', '2023-12-04 13:21:59'),
('f709dc20034cd2eed186a1f6663e7b14c6214abfb09fdbcdae1625e0cfb883097899fbf0d27db19d', 93, 1, 'Password Grant user', '[]', 0, '2022-12-07 02:16:34', '2022-12-07 02:16:34', '2023-12-07 03:16:34'),
('f723666e05dfa1627290108a24ba6c0ce0c64b416f43592c92a1f422a25fc3352f704ebc0917983b', 83, 1, 'Password Grant user', '[]', 0, '2022-11-25 16:25:55', '2022-11-25 16:25:55', '2023-11-25 17:25:55'),
('f740e8b6776992b762a57f14119a112371c6ef3fbf28e546b6379957cbb162ec15bf15b33ca3bbed', 77, 1, 'Password Grant user', '[]', 0, '2022-12-11 11:19:19', '2022-12-11 11:19:19', '2023-12-11 12:19:19'),
('f783ce2ef1fb64be8a0aae0daae9097b58bcdc867cbf32383a285532f491da670261c3f431807c7a', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:51', '2022-12-06 18:42:51', '2023-12-06 19:42:51'),
('f786c53552bd2e5b4c78856036f8cbe9f09eea45c3060daee2e835f480843f569ee51907aca6712d', 105, 1, 'Password Grant user', '[]', 0, '2022-12-09 06:49:19', '2022-12-09 06:49:19', '2023-12-09 07:49:19'),
('f93eae3159322c8e222408d3ebdc21fdf21b5dac2c7933a15fcd12c4e2857e5ee45356d0604fc80f', 98, 1, 'Password Grant user', '[]', 0, '2022-12-01 17:50:13', '2022-12-01 17:50:13', '2023-12-01 18:50:13'),
('fa51f41b3cbe1587828250113dc0cc10aec0420593c4a62a105738928f09b3fd128eaeeb1803cb26', 38, 1, 'Password Grant user', '[]', 0, '2022-12-02 03:24:52', '2022-12-02 03:24:52', '2023-12-02 04:24:52'),
('fcc57a20f87efd48998dd6427b5ff9386ed94112b8e53338bdb364f3ab8424eabb9d88dac7cb8254', 55, 1, 'Password Grant user', '[]', 0, '2022-11-22 17:08:48', '2022-11-22 17:08:48', '2023-11-22 18:08:48'),
('fcca155cb7d262f4d9425dd84418fa5e939a1abcd2cd263851102a01c8c2c5638d506ef51ac8b2df', 78, 1, 'Password Grant user', '[]', 0, '2022-11-26 09:31:04', '2022-11-26 09:31:04', '2023-11-26 10:31:04'),
('fd81cb075d45e8f7dc38d20483bc508905d72c0481d361119749138b7a833e9cd1a4325d6a8daa90', 115, 1, 'Password Grant user', '[]', 0, '2022-12-06 18:42:25', '2022-12-06 18:42:25', '2023-12-06 19:42:25'),
('ff691426e154ce4a8bc2df8079027cf28266f2aa6cbfd66113b663ece9b4a56a4cb619a5b9b383e2', 145, 1, 'Password Grant user', '[]', 0, '2022-12-15 12:26:59', '2022-12-15 12:26:59', '2023-12-15 13:26:59'),
('ffe0001a423c4598c36722053f62ef7e05125e855a8f4061a870fad97941b349067d67af3d8ad628', 93, 1, 'Password Grant user', '[]', 0, '2022-12-06 09:09:46', '2022-12-06 09:09:46', '2023-12-06 10:09:46'),
('fff742fafdf83b6894ef8a85348660a8bb4add70c5f01940dcfbc68c949e3a6b59bc9633c684b35d', 6, 1, 'Password Grant user', '[]', 0, '2022-03-15 09:26:27', '2022-03-15 09:26:27', '2023-03-15 10:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Maan NEWS & BLOG Personal Access Client', 'ALxrJTQ3ClMPf7UkMHkigQJDA3rKyYaKuzV3TizQ', NULL, 'http://localhost', 1, 0, 0, '2022-02-22 22:32:43', '2022-02-22 22:32:43'),
(2, NULL, 'Maan NEWS & BLOG Password Grant Client', 'JjQwo0FcWkCQywHfXLLAR2tBEcMH36nUhOFXJvhW', 'users', 'http://localhost', 0, 1, 0, '2022-02-22 22:32:43', '2022-02-22 22:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-02-22 22:32:43', '2022-02-22 22:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'View', 'view', '2021-09-30 00:55:54', '2021-09-30 00:55:54'),
(2, 'Create', 'create', '2021-09-30 00:55:54', '2021-09-30 00:55:54'),
(3, 'Edit', 'edit', '2021-09-30 00:55:55', '2021-09-30 00:55:55'),
(4, 'Delete', 'delete', '2021-09-30 00:55:55', '2021-09-30 00:55:55'),
(5, 'View', 'view', '2021-09-30 00:56:19', '2021-09-30 00:56:19'),
(6, 'Create', 'create', '2021-09-30 00:56:19', '2021-09-30 00:56:19'),
(7, 'Edit', 'edit', '2021-09-30 00:56:19', '2021-09-30 00:56:19'),
(8, 'Delete', 'delete', '2021-09-30 00:56:19', '2021-09-30 00:56:19'),
(9, 'View', 'view', '2021-09-30 00:56:38', '2021-09-30 00:56:38'),
(10, 'Create', 'create', '2021-09-30 00:56:38', '2021-09-30 00:56:38'),
(11, 'Edit', 'edit', '2021-09-30 00:56:38', '2021-09-30 00:56:38'),
(12, 'Delete', 'delete', '2021-09-30 00:56:38', '2021-09-30 00:56:38'),
(23, 'View', 'view', '2021-10-05 05:21:27', '2021-10-05 05:21:27'),
(24, 'Create', 'create', '2021-10-05 05:21:27', '2021-10-05 05:21:27'),
(25, 'Edit', 'edit', '2021-10-05 05:21:27', '2021-10-05 05:21:27'),
(28, 'Create', 'create', '2021-10-05 07:33:19', '2021-10-05 07:33:19'),
(29, 'View', 'view', '2021-10-05 07:33:19', '2021-10-05 07:33:19'),
(30, 'Edit', 'edit', '2021-10-05 07:33:19', '2021-10-05 07:33:19'),
(31, 'Delete', 'delete', '2021-10-05 07:33:19', '2021-10-05 07:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photogalleries`
--

CREATE TABLE `photogalleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `viewers` int(11) DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photogalleries`
--

INSERT INTO `photogalleries` (`id`, `title`, `description`, `image`, `status`, `viewers`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Designer Sonia Musa makes her debut', 'The new Sonia Musa Store in Banani DOHS is an addition to the glamour of the boulevard that boasts having it all. The boutique designed to create a space of warmth and comfort for the client who wishes to unwind in a', 'public/uploads/images/photogallery/maanphotogallery30012022_054307_high.png', 1, 32, 1, '2021-09-14 00:32:15', '2022-12-18 22:49:36'),
(5, 'X3 Pro: The Gaming Diva', 'X3 Pro: The Gaming Diva', 'public/uploads/images/photogallery/maanphotogallery27092021_094925_card-2.jpg', 1, 28, 1, '2021-09-27 03:49:25', '2022-12-19 19:09:55'),
(6, 'Black girls of the silver screen', 'When Honey Ryder rises from the waters in a daring costume with conch shells in her hands and a dagger by her side, the world took notice.\r\nFrom the very start, they are captivatingly beautiful,', 'public/uploads/images/photogallery/maanphotogallery27092021_095023_card-3.jpg', 1, 49, 1, '2021-09-27 03:50:23', '2022-12-13 00:10:49'),
(7, 'One-Stop Fashion Solution for Women', 'There was a time when the term \"Entrepreneurship\" was frowned upon. Only a few individuals were dare to move on to entrepreneurship', 'public/uploads/images/photogallery/maanphotogallery24102021_035221_women.jfif', 1, 69, 1, '2021-09-27 03:50:23', '2022-12-20 11:46:56'),
(8, 'craftsmanship are you particularly dealing', 'The specialty of Sonia Musa Dhaka is the care and attention put in the detail in every design we create. All of our designs are done by hand in our private atelier.', 'public/uploads/images/photogallery/maanphotogallery30012022_034329_high_3.jpg', 1, 142, 1, '2021-09-27 03:51:03', '2022-12-20 02:27:17'),
(9, 'Some Lesser Known Facts About Roman Reigns', 'Some Lesser Known Facts About Roman Reigns Does Roman Reigns smoke?: No\r\nDoes Roman Reigns drink alcohol?: Yes\r\nRoman was born into the legendary American Samoan Anoa’i family, with a huge legacy of professional wrestlers', 'public/uploads/images/photogallery/maanphotogallery30012022_034302_roman_rings.jpg', 1, 167, 1, '2021-09-27 03:51:34', '2022-12-20 11:34:26'),
(11, 'Bondstein Technologies', 'Bondstein Technologies Limited,a IoT company based in HiTech City Kaliakoi', 'public/uploads/images/photogallery/maanphotogallery23102021_081348_896047.jpg', 1, 86, 1, '2021-10-07 07:26:18', '2022-12-20 06:31:53'),
(12, 'Bond girls that can give 00s a run for their money', 'In all honesty, we no longer wish to refer them as Bond Girls. Leading women in the James Bond franchise may seem quite a mouthful, but that is exactly how things have shaped up, at least since \'Casino Royale\' to', 'public/uploads/images/photogallery/maanphotogallery30012022_034350_style_2.jpg', 1, 88, 1, '2021-10-07 07:35:00', '2022-12-20 08:10:45'),
(18, 'balloon, large airtight bag filled with hot air', 'Balloons were used in the first successful human attempts at flying. Experimentation with balloonlike craft may have', 'public/uploads/images/photogallery/maanphotogallery23102021_080950_ballon.jpg', 1, 106, 1, '2021-10-23 06:06:30', '2022-12-20 03:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', '2021-09-30 00:55:54', '2021-09-30 00:55:54'),
(2, 'Admin', 'admin', '2021-09-30 00:56:19', '2021-09-30 00:56:19'),
(3, 'Editor', 'editor', '2021-09-30 00:56:38', '2021-09-30 00:56:38'),
(4, 'Accountent', 'accountent', '2021-09-30 00:57:11', '2021-09-30 00:57:11'),
(21, 'Reporter', 'reporter', '2021-10-05 07:25:29', '2021-10-05 07:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(3, 9, NULL, NULL),
(3, 10, NULL, NULL),
(3, 11, NULL, NULL),
(3, 12, NULL, NULL),
(4, 23, NULL, NULL),
(4, 24, NULL, NULL),
(4, 25, NULL, NULL),
(21, 28, NULL, NULL),
(21, 29, NULL, NULL),
(21, 30, NULL, NULL),
(21, 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seooptimizations`
--

CREATE TABLE `seooptimizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `site_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seooptimizations`
--

INSERT INTO `seooptimizations` (`id`, `keywords`, `author`, `meta_title`, `meta_description`, `site_map`, `google_analytics`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Keywords, news', 'Author', 'Meta Title', 'Meta Description', 'Site Map', 'Google Analytics', 1, '2022-01-17 04:34:07', '2022-01-18 05:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `short_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footer_content` text CHARACTER SET utf8 NOT NULL,
  `play_store_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_store_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `favicon`, `icon`, `logo`, `logo_footer`, `title`, `name`, `short_name`, `footer_content`, `play_store_url`, `app_store_url`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/images/logo/favicon.png', 'public/uploads/images/logo/icon.png', 'public/uploads/images/logo/logo.png', 'public/uploads/images/logo/logo_footer.png', 'MAAN NEWS & BLOG', 'MAAN', 'MAAN NEWS', 'Magpie matrix economically sound value through cooperative technology task fully researched data and enterprise process improvements quality products via client-focused results.', 'https://play.google.com/store/apps/details?id=com.maantheme.maan_ui', 'https://play.google.com/store/apps/details?id=com.maantheme.maan_ui', '2021-10-17 01:10:34', '2022-07-06 05:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `socialshares`
--

CREATE TABLE `socialshares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follower` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialshares`
--

INSERT INTO `socialshares` (`id`, `url`, `icon_code`, `follower`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-f', 20, 1, '2022-01-29 03:03:37', '2022-07-30 06:00:01'),
(2, 'https://twitter.com/', 'fab fa-twitter', 30, 1, '2022-01-29 03:05:39', '2022-06-23 03:35:22'),
(3, 'https://www.instagram.com/', 'fab fa-instagram', 40, 1, '2022-01-29 03:29:35', '2022-07-05 05:21:06'),
(4, 'https://www.linkedin.com/', 'fab fa-linkedin-in', 60, 1, '2022-01-29 03:32:05', '2022-07-30 06:21:04'),
(5, 'https://www.youtube.com/', 'fas fa-youtube', 70, 1, '2022-01-29 03:33:46', '2022-07-30 06:18:17'),
(6, 'https://www.pinterest.com/', 'fab fa-pinterest-p', 60, 1, '2022-01-29 03:34:59', '2022-06-23 03:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('0','1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0=Reporter | 1=Accountant | 2= Editor | 3=  Admin | 4= Super Admin',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_approve` int(11) NOT NULL DEFAULT '0',
  `national_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `father_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mother_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `appointed_date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `user_name`, `email_verified_at`, `password`, `user_type`, `is_active`, `is_approve`, `national_id`, `father_name`, `mother_name`, `present_address`, `permanent_address`, `appointed_date`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', 'superadmin21@gmail.com', '000', 'Superadmin', NULL, '$2y$10$G1w2uVlZmPU88VRpwZI6ceBdfj64kW3UGpbu6crKY97lmRBXVu8Py', '4', 1, 0, '11111', 'Father', 'Mother', 'Dhaka', 'Dhaka', '1970-01-01', NULL, NULL, '2021-09-06 04:43:44', '2021-09-30 04:08:25'),
(2, 'Repoter', '11', 'test@gmail.com', '123456', 'Repoter11', NULL, '$2y$10$V2FsU6.j461yElXuxztqv.DTySG35IYi0hpZYk6IBiiHRMmOhwCj.', '0', 1, 0, '13215456', 'Father', 'Mother', 'Present', 'Permanent', '2021-06-09', 'public/uploads/images/reporterimages/maanreporterimage06092021_104620_logo.png', NULL, '2021-09-06 04:46:20', '2021-12-13 10:34:24'),
(3, 'Reporter', '12', 'test12@gmail.com', '1234562', 'Reporter12', NULL, '$2y$10$tcapXPpijm1BW0c45hK.S.Gbtjj1LEDJ9.WwwAjolurxTKxKNFIXu', '0', 1, 0, '132154562', 'Father12', 'Mother12', 'Dhaka2', 'Dhaka2', '2021-03-01', 'public/uploads/images/reporterimages/maanreporterimage07092021_053857_Maan-LMS-Icon-1 (1).png', NULL, '2021-09-06 04:49:11', '2021-12-13 10:35:28'),
(6, 'Admin', '21', 'admin21@gmail.com', '123456', 'Admin21', NULL, '$2y$10$y1wf6noUxcpXGsdc5iUpdedFnzabbyuHEVIqNjaYKf.jlRgSEeEX2', '3', 1, 0, '13215456', 'Father', 'Mother', 'Dhaka', 'Dhaka', '2021-01-09', 'public/uploads/images/userimages/maanuserimage25092021_090729_maanbanner10082021_064059_1.png', NULL, '2021-09-25 03:07:29', '2021-09-30 05:12:11'),
(7, 'Editor', '21', 'editor21@gmail.com', '15454', 'Aditor21', NULL, '$2y$10$0ye6rzq4qgSuW0sZFEZlbObDSQsnFX3KnJBUZ3DLarHJXZSLBE9SO', '2', 1, 0, '123456', 'Father', 'Mother', 'Dhaka', 'Dhaka', '2021-09-14', 'public/uploads/images/userimages/maanuserimage25092021_093508_favicon.png', NULL, '2021-09-25 03:35:08', '2021-09-30 05:52:37'),
(8, 'Reporter', '21', 'reporter21@gmail.com', '123456', 'Reporter21', NULL, '$2y$10$dGVFbjxiDpSAyoheVLHK8uS.QLXlsv.kl7LVomz2lPt1H.RJBCVte', '0', 1, 0, '13215456', 'Father', 'Mother', 'Dhaka', 'Dhaka', '2021-09-14', 'public/uploads/images/userimages/maanuserimage25092021_094307_5.png', NULL, '2021-09-25 03:43:07', '2021-10-18 05:35:11'),
(9, 'Accountant', '21', 'accountant21@gmail.com', '123456', 'Accountant21', NULL, '$2y$10$a97XMKo1R/U5nFH7bKGbqeBx.uJccrzmwL5J3ABElU6w5V7Ni6/wG', '1', 1, 0, '13215456', 'Father', 'Mother', 'Dhaka', 'Dhaka', '2021-09-22', 'public/uploads/images/userimages/maanuserimage25092021_095813_6.png', NULL, '2021-09-25 03:58:13', '2021-10-18 07:38:31'),
(16, 'Admin', '123', 'admin123@gmail.com', '01725', 'Admin123', NULL, '$2y$10$SrLk1qaC3Rzs1msTouVxhOM880bQkouiXTzZtqRedRNvVQr.atNJe', '3', 1, 0, '58858495989', 'Abul', 'Tara', 'Dhanmondi', 'Dhanmondi', '2021-12-10', 'public/uploads/images/userimages/maanuserimage13122021_113143_contact.jpg', NULL, '2021-12-13 10:31:43', '2021-12-13 10:31:43'),
(18, 'Editor', '135', 'Editor135@gmail.com', '01750635478', 'Editor135', NULL, '$2y$10$cMmt1olAjMg772uk/4c0be7AZamNl94edm/6YObsORNxcrzYeUwoC', '2', 1, 0, '54512225545', 'Emran', 'Fatima', 'Uttara', 'Uttara', '2021-12-09', 'public/uploads/images/userimages/maanuserimage13122021_120519_m.png', NULL, '2021-12-13 11:05:19', '2021-12-13 11:05:19'),
(19, 'Editor', '123', 'Editor124@gmail.com', '0180245635', 'Editor123', NULL, '$2y$10$Oj27DpuAFoXq4kNtoPBXYOwqB.R6zauJCYBZrg0mOqmN805GAAkKK', '2', 1, 0, '124578965', 'FEtjko', 'abcdg', 'MIrpur', 'Moytijil', '2021-12-06', 'public/uploads/images/userimages/maanuserimage13122021_121407_Logo pic.png', NULL, '2021-12-13 11:14:07', '2021-12-13 11:14:07'),
(20, 'Accountent', '135', 'Accountent123@gmail.com', '015234678', 'Accountent135', NULL, '$2y$10$oIrmgC9jkrOVNwe.IEqFKOn1pIcSwZE1yRhL1ZGGQBldIms9NbEKe', '1', 1, 0, '45466655', 'Emon', 'Raina', 'saver\r\n\r\nMirpur14', 'Dhaka', '2021-12-10', 'public/uploads/images/userimages/maanuserimage13122021_122232_mackup.jpg', NULL, '2021-12-13 11:22:32', '2021-12-13 11:22:32'),
(23, 'Accountant', '136', 'accountant123@gmail.com', '01754655455', 'Accountant136', NULL, '$2y$10$nEZ7bskrqcFIHsTj3rYKaOrnomvfDEfu5VmVuFA6QERPbxqEcbyee', '1', 1, 0, '41455555555', 'Emon', 'Raina', 'Saver\r\nAsulia bazar', 'Farmgate', '2021-12-06', 'public/uploads/images/userimages/maanuserimage13122021_122715_B_800X1040-removebg-preview.png', NULL, '2021-12-13 11:27:15', '2021-12-13 11:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_permissions`
--

INSERT INTO `users_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL),
(2, 28, NULL, NULL),
(2, 29, NULL, NULL),
(2, 30, NULL, NULL),
(2, 31, NULL, NULL),
(3, 28, NULL, NULL),
(3, 29, NULL, NULL),
(3, 30, NULL, NULL),
(3, 31, NULL, NULL),
(6, 5, NULL, NULL),
(6, 6, NULL, NULL),
(6, 7, NULL, NULL),
(6, 8, NULL, NULL),
(7, 9, NULL, NULL),
(7, 10, NULL, NULL),
(7, 11, NULL, NULL),
(7, 12, NULL, NULL),
(8, 28, NULL, NULL),
(8, 29, NULL, NULL),
(8, 30, NULL, NULL),
(8, 31, NULL, NULL),
(9, 23, NULL, NULL),
(9, 24, NULL, NULL),
(9, 25, NULL, NULL),
(16, 5, NULL, NULL),
(16, 6, NULL, NULL),
(16, 7, NULL, NULL),
(16, 8, NULL, NULL),
(18, 9, NULL, NULL),
(18, 10, NULL, NULL),
(18, 11, NULL, NULL),
(18, 12, NULL, NULL),
(19, 9, NULL, NULL),
(19, 11, NULL, NULL),
(19, 12, NULL, NULL),
(20, 23, NULL, NULL),
(20, 24, NULL, NULL),
(20, 25, NULL, NULL),
(23, 23, NULL, NULL),
(23, 24, NULL, NULL),
(23, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 21, NULL, NULL),
(3, 21, NULL, NULL),
(6, 2, NULL, NULL),
(7, 3, NULL, NULL),
(8, 21, NULL, NULL),
(9, 4, NULL, NULL),
(16, 2, NULL, NULL),
(18, 3, NULL, NULL),
(19, 3, NULL, NULL),
(20, 4, NULL, NULL),
(23, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videogalleries`
--

CREATE TABLE `videogalleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videogalleries`
--

INSERT INTO `videogalleries` (`id`, `title`, `description`, `video`, `video_source`, `video_option`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Video', 'Video', 'public/uploads/videos/videogallery/maanvideogallery16092021_060550_y2mate.com - Four Friends English Cartoon Panchatantra Moral Stories for Kids Maha Cartoon TV English_v240P (online-video-cutter.com) (2).mp4', 'Maantheme', 'Upload Video', 0, 1, '2021-09-15 07:35:26', '2022-12-03 09:49:24'),
(4, 'Top Dangerous Airplane Landing & Take Off', 'Top Dangerous Airplane Landing & Take Off - Scary Plane Crosswind Landings Compilation', 'https://www.youtube.com/embed/G20vTWnveKE', 'Youtube', 'Share Link', 1, 1, '2021-09-29 05:44:45', '2021-10-06 05:00:04'),
(5, 'French Commander accuses UK of “ingratitude”', 'French Commander accuses UK of “ingratitude” over migrant crossing patrols - BBC News', 'https://www.youtube.com/embed/czPRYU3JhK8', 'Youtube', 'Share Link', 1, 1, '2021-09-29 05:49:15', '2022-06-21 04:54:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogcategories_user_id_foreign` (`user_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blogsubcategory_id_foreign` (`blogsubcategory_id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `blogsubcategories`
--
ALTER TABLE `blogsubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogsubcategories_category_id_foreign` (`category_id`),
  ADD KEY `blogsubcategories_user_id_foreign` (`user_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `googleanalytics`
--
ALTER TABLE `googleanalytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maanusers`
--
ALTER TABLE `maanusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maanusers_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `news_speciality_id_foreign` (`speciality_id`),
  ADD KEY `news_reporter_id_foreign` (`reporter_id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `newscategories`
--
ALTER TABLE `newscategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscategories_user_id_foreign` (`user_id`);

--
-- Indexes for table `newscomments`
--
ALTER TABLE `newscomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscomments_news_id_foreign` (`news_id`);

--
-- Indexes for table `newsspecialities`
--
ALTER TABLE `newsspecialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newssubcategories`
--
ALTER TABLE `newssubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newssubcategories_category_id_foreign` (`category_id`),
  ADD KEY `newssubcategories_user_id_foreign` (`user_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photogalleries`
--
ALTER TABLE `photogalleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photogalleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `providers_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `seooptimizations`
--
ALTER TABLE `seooptimizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialshares`
--
ALTER TABLE `socialshares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `videogalleries`
--
ALTER TABLE `videogalleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videogalleries_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogsubcategories`
--
ALTER TABLE `blogsubcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `googleanalytics`
--
ALTER TABLE `googleanalytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maanusers`
--
ALTER TABLE `maanusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `newscategories`
--
ALTER TABLE `newscategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `newscomments`
--
ALTER TABLE `newscomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `newsspecialities`
--
ALTER TABLE `newsspecialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `newssubcategories`
--
ALTER TABLE `newssubcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photogalleries`
--
ALTER TABLE `photogalleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seooptimizations`
--
ALTER TABLE `seooptimizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialshares`
--
ALTER TABLE `socialshares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `videogalleries`
--
ALTER TABLE `videogalleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD CONSTRAINT `blogcategories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blogsubcategory_id_foreign` FOREIGN KEY (`blogsubcategory_id`) REFERENCES `blogsubcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogsubcategories`
--
ALTER TABLE `blogsubcategories`
  ADD CONSTRAINT `blogsubcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blogcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogsubcategories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_reporter_id_foreign` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `news_speciality_id_foreign` FOREIGN KEY (`speciality_id`) REFERENCES `newsspecialities` (`id`),
  ADD CONSTRAINT `news_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `newssubcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `newscategories`
--
ALTER TABLE `newscategories`
  ADD CONSTRAINT `newscategories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `newscomments`
--
ALTER TABLE `newscomments`
  ADD CONSTRAINT `newscomments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `newssubcategories`
--
ALTER TABLE `newssubcategories`
  ADD CONSTRAINT `newssubcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `newscategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `newssubcategories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photogalleries`
--
ALTER TABLE `photogalleries`
  ADD CONSTRAINT `photogalleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `providers`
--
ALTER TABLE `providers`
  ADD CONSTRAINT `providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videogalleries`
--
ALTER TABLE `videogalleries`
  ADD CONSTRAINT `videogalleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
