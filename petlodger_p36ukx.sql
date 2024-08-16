-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 07:52 PM
-- Server version: 8.0.36
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petlodger_p36ukx`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `country`, `city`, `post_code`, `street`, `created_at`, `updated_at`, `user_id`) VALUES
(23, 'United Kingdom', 'London', '123321', 'London', '2024-01-08 05:37:11', '2024-01-23 22:58:48', 33),
(24, 'United Kingdom', 'London', 'ws2514', 'ABC Street House no.123', '2024-01-08 05:44:41', '2024-01-08 05:44:41', 35),
(25, 'United Kingdom', 'London', 'WSN116', 'Oxford Street', '2024-01-08 05:51:47', '2024-01-08 05:51:47', 36),
(26, 'United Kingdom', 'London', '123321', 'london', '2024-01-08 19:59:51', '2024-01-08 19:59:51', 37),
(27, 'United Kingdom', 'London', '123321', '12th Street', '2024-01-08 23:18:50', '2024-01-08 23:18:50', 38),
(28, 'United Kingdom', 'London', 'WSN115', 'Oxford Street', '2024-01-09 23:05:06', '2024-01-09 23:05:06', 39),
(29, 'United Kingdom', 'London', '123321', 'London', '2024-01-15 21:45:31', '2024-01-15 21:45:31', 40),
(30, 'United Kingdom', 'London', '123321', 'london', '2024-01-17 12:35:25', '2024-01-17 12:35:25', 41),
(31, 'United Kingdom', 'london', '123321', 'london', '2024-01-22 15:43:47', '2024-01-22 15:43:47', 42),
(32, 'United Kingdom', 'London', '123321', 'London', '2024-01-22 15:56:51', '2024-01-22 15:56:51', 44),
(33, 'United Kingdom', 'London', '123321', 'London', '2024-01-23 22:15:25', '2024-01-23 22:15:25', 45),
(34, 'United Kingdom', 'London', '123212', 'London', '2024-01-24 18:23:29', '2024-01-24 18:23:29', 46);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `req_date` date NOT NULL,
  `duration` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `pet_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `ref`, `title`, `req_date`, `duration`, `active`, `about`, `created_at`, `updated_at`, `user_id`, `service_id`, `pet_id`) VALUES
(48, '6TxN0mlE', 'I want someone take care of my pet like for 5days.', '2024-01-14', 10, 0, 'Test', '2024-01-14 21:34:23', '2024-01-17 12:39:56', 39, 3, 8),
(50, 'TF2BXUj4', 'testing purpose', '2024-01-23', 1, 0, 'need to feed water after every 15 mins.', '2024-01-22 16:17:56', '2024-01-23 22:43:54', 43, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ad_responses`
--

CREATE TABLE `ad_responses` (
  `id` bigint UNSIGNED NOT NULL,
  `ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `responses_count` int UNSIGNED NOT NULL DEFAULT '0',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sitter_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ad_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_responses`
--

INSERT INTO `ad_responses` (`id`, `ref`, `responses_count`, `token`, `created_at`, `updated_at`, `sitter_id`, `user_id`, `ad_id`) VALUES
(51, 'AqyCR3sO', 1, 'cff02a74da64d145a4aed3a577a106ab', '2024-01-14 21:39:03', '2024-01-14 21:39:03', 19, 39, 48),
(52, 'AqyCR3sO', 1, 'aaaccd2766ec67aecbe26459bb828d81', '2024-01-14 21:41:53', '2024-01-14 21:41:53', 20, 39, 48),
(53, '6TxN0mlE', 1, '810dfbbebb17302018ae903e9cb7a483', '2024-01-17 12:39:56', '2024-01-17 12:39:56', 23, 39, 48),
(56, 'TF2BXUj4', 1, '45cef8e5b9570959bd9feaacae2bf38d', '2024-01-23 17:55:12', '2024-01-23 17:55:12', 19, 43, 50),
(57, 'TF2BXUj4', 1, '62021a18331216014fee6916d6ee9584', '2024-01-23 22:43:54', '2024-01-23 22:43:54', 26, 43, 50);

-- --------------------------------------------------------

--
-- Table structure for table `ad_views`
--

CREATE TABLE `ad_views` (
  `id` bigint UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views_count` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ad_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` bigint UNSIGNED NOT NULL,
  `balance` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `balance`, `created_at`, `updated_at`, `user_id`) VALUES
(8, 360, '2024-01-08 05:57:07', '2024-01-23 17:55:12', 36),
(9, 140, '2024-01-08 20:07:46', '2024-01-14 21:41:53', 37),
(10, 180, '2024-01-17 12:38:36', '2024-01-17 12:54:06', 41),
(11, 200, '2024-01-22 15:46:24', '2024-01-22 15:46:24', 42),
(12, 200, '2024-01-22 15:59:12', '2024-01-23 22:41:22', 44),
(13, 200, '2024-01-23 22:43:39', '2024-01-24 16:25:17', 45);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` enum('Registration','Login','Lead','Subscriber','Password Reset','Order') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_to_find_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_11_1_000000_create_failed_jobs_table', 1),
(3, '2023_11_1_160601_create_roles_table', 1),
(4, '2023_11_1_160602_create_permissions_table', 1),
(5, '2023_11_1_160603_create_role_has_permissions_table', 1),
(6, '2023_11_1_160604_create_users_table', 1),
(7, '2023_11_1_160605_create_password_reset_tokens_table', 1),
(8, '2023_11_1_160606_create_addresses_table', 1),
(9, '2023_11_1_160607_create_payments_table', 1),
(10, '2023_11_1_160608_create_sitter_experiences_table', 1),
(11, '2023_11_1_160609_create_pet_types_table', 1),
(12, '2023_11_1_160610_create_sitters_table', 1),
(13, '2023_11_1_160611_create_user_images_table', 1),
(14, '2023_11_1_160612_create_pet_ages_table', 1),
(15, '2023_11_1_160613_create_pet_sizes_table', 1),
(16, '2023_11_1_160614_create_pet_medications_table', 1),
(17, '2023_11_1_160615_create_pets_table', 1),
(18, '2023_11_1_160616_create_pet_images_table', 1),
(19, '2023_11_1_160617_create_services_table', 1),
(20, '2023_11_1_160618_create_ads_table', 1),
(21, '2023_11_1_160619_create_ad_views_table', 1),
(26, '2023_11_1_160624_create_orders_table', 1),
(27, '2023_11_1_160625_create_credits_table', 1),
(28, '2023_11_1_160626_create_purchase_credits_table', 1),
(29, '2023_11_1_160627_create_used_credits_table', 1),
(32, '2023_11_1_160630_create_leads_table', 1),
(33, '2023_11_1_160631_create_subscriber_table', 1),
(34, '2023_11_1_160632_create_emails_table', 1),
(36, '2023_11_1_160620_create_ad_responses_table', 2),
(37, '2023_11_1_160628_create_sitter_reviews_table', 3),
(38, '2023_11_1_160629_create_pet_owner_reviews_table', 3),
(39, '2023_11_17_084515_update_package', 4),
(40, '2023_11_1_160623_create_packages_table', 4),
(41, '2023_11_18_140341_create_user_files_table', 5),
(42, '2023_11_18_140822_ph', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `credits` int NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `package_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `credits` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `credits`, `created_at`, `updated_at`) VALUES
(12, 'Basic', 10.00, 9, '2024-03-20 17:01:59', '2024-03-20 17:01:59'),
(13, 'Standard', 43.00, 39, '2024-03-20 17:03:07', '2024-03-20 17:03:07'),
(14, 'Professional', 107.00, 117, '2024-03-20 17:04:02', '2024-03-20 17:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('nomanahmedkhan.net@gmail.com', '3809', '2024-01-14 21:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `cvc` smallint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `breed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Unknown',
  `behavior` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Friendly with kids and cat',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pet_type_id` bigint UNSIGNED NOT NULL,
  `pet_size_id` bigint UNSIGNED NOT NULL,
  `pet_age_id` bigint UNSIGNED NOT NULL,
  `pet_medication_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `name`, `breed`, `behavior`, `status`, `about`, `created_at`, `updated_at`, `user_id`, `pet_type_id`, `pet_size_id`, `pet_age_id`, `pet_medication_id`) VALUES
(6, 'Hulk', 'German Shephard', 'Freindly', 1, 'No Additional Details', '2024-01-08 05:46:56', '2024-01-08 05:49:03', 35, 1, 1, 1, 1),
(7, 'John', 'Mix', 'Calm', 1, 'He is a one kind of a wold dog', '2024-01-08 23:21:13', '2024-01-08 23:21:13', 38, 1, 1, 1, 1),
(8, 'Tomy', 'German Shephard', 'Freindly', 1, 'Test', '2024-01-14 21:34:23', '2024-01-14 21:34:23', 39, 1, 3, 3, 3),
(9, 'John', 'German Shepard', 'cool', 1, 'Please make sure to give water after every 30 mins', '2024-01-22 15:52:04', '2024-01-22 15:52:04', 43, 1, 1, 1, 1),
(10, 'jason', 'german Shaperd', 'Cool', 1, 'need to feed water after every 15 mins.', '2024-01-22 16:17:56', '2024-01-22 16:17:56', 43, 3, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pet_ages`
--

CREATE TABLE `pet_ages` (
  `id` bigint UNSIGNED NOT NULL,
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_ages`
--

INSERT INTO `pet_ages` (`id`, `age`) VALUES
(1, 'Puppies (1< year)'),
(2, 'Young (1-3 years)\n'),
(3, 'Adult (3-8 years)'),
(4, 'Senior (8 + years)');

-- --------------------------------------------------------

--
-- Table structure for table `pet_images`
--

CREATE TABLE `pet_images` (
  `id` bigint UNSIGNED NOT NULL,
  `image_type` enum('profile_image','gallery_image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile_image',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pet_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_images`
--

INSERT INTO `pet_images` (`id`, `image_type`, `title`, `image_path`, `created_at`, `updated_at`, `pet_id`) VALUES
(10, 'profile_image', '1704696416.png', 'images/1704696416.png', '2024-01-08 05:46:56', '2024-01-08 05:46:56', 6),
(11, 'profile_image', '1704759673.jpeg', 'images/1704759673.jpeg', '2024-01-08 23:21:13', '2024-01-08 23:21:13', 7),
(12, 'profile_image', '1705271663.png', 'images/1705271663.png', '2024-01-14 21:34:23', '2024-01-14 21:34:23', 8),
(13, 'profile_image', '1705942324.jpg', 'images/1705942324.jpg', '2024-01-22 15:52:04', '2024-01-22 15:52:04', 9),
(14, 'profile_image', '1705943876.jpeg', 'images/1705943876.jpeg', '2024-01-22 16:17:56', '2024-01-22 16:17:56', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pet_medications`
--

CREATE TABLE `pet_medications` (
  `id` bigint UNSIGNED NOT NULL,
  `medication` enum('Medication1','Medication2','Medication3','Medication4','Medication5') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Medication1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_medications`
--

INSERT INTO `pet_medications` (`id`, `medication`) VALUES
(1, 'Medication1'),
(2, 'Medication2'),
(3, 'Medication3'),
(4, 'Medication4'),
(5, 'Medication5');

-- --------------------------------------------------------

--
-- Table structure for table `pet_owner_reviews`
--

CREATE TABLE `pet_owner_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ad_id` bigint UNSIGNED NOT NULL,
  `sitter_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_owner_reviews`
--

INSERT INTO `pet_owner_reviews` (`id`, `rating`, `comment`, `created_at`, `updated_at`, `user_id`, `ad_id`, `sitter_id`) VALUES
(7, 5, 'it was great', '2024-01-17 12:49:48', '2024-01-17 12:49:48', 39, 48, 23),
(8, 4, 'good pet', '2024-01-23 17:56:27', '2024-01-23 17:56:27', 43, 50, 19),
(9, 5, 'bad pet', '2024-01-23 17:56:53', '2024-01-23 17:56:53', 43, 50, 19);

-- --------------------------------------------------------

--
-- Table structure for table `pet_sizes`
--

CREATE TABLE `pet_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_sizes`
--

INSERT INTO `pet_sizes` (`id`, `size`) VALUES
(1, 'Extra Small'),
(2, 'Small'),
(3, 'Medium'),
(4, 'Large'),
(5, 'Giant');

-- --------------------------------------------------------

--
-- Table structure for table `pet_types`
--

CREATE TABLE `pet_types` (
  `id` bigint UNSIGNED NOT NULL,
  `species` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Dog'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_types`
--

INSERT INTO `pet_types` (`id`, `species`) VALUES
(1, 'Dogs'),
(2, 'Cats'),
(3, 'Fish'),
(4, 'Birds'),
(5, 'Horse'),
(6, 'Rabbit'),
(7, 'Reptiles'),
(8, 'Ferrets'),
(9, 'Guinea pigs'),
(10, 'Hamster'),
(11, 'Pet rodents'),
(12, 'Turtles');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_credits`
--

CREATE TABLE `purchase_credits` (
  `id` bigint UNSIGNED NOT NULL,
  `credit` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` enum('Super Admin','Sub Admin','Editor','Pet Owner','Sitter') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pet Owner',
  `guard_name` enum('super-admin','sub-admin','editor','pet-owner','sitter') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pet-owner'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`) VALUES
(1, 'Super Admin', 'super-admin'),
(2, 'Sub Admin', 'sub-admin'),
(3, 'Editor', 'editor'),
(4, 'Pet Owner', 'pet-owner'),
(5, 'Sitter', 'sitter');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(3, 'At Own House', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem\r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab ill\r\ninventore veritatis et quasi architecto beatae vitae dicta sunt\r\nexplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit\r\naut fugit, sed quia consequuntur magni dolores eos qui ratione\r\nvoluptatem sequi nesciunt. Neque porro quisquam est.', '2023-11-16 18:00:58', '2023-11-16 18:00:58'),
(5, 'At Carer House', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', '2023-11-16 18:07:21', '2023-11-16 18:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `sitters`
--

CREATE TABLE `sitters` (
  `id` bigint UNSIGNED NOT NULL,
  `sit_type` enum('House Sitter','Pet Sitter','Combine') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_species` decimal(8,2) NOT NULL DEFAULT '0.00',
  `availability` tinyint(1) NOT NULL DEFAULT '1',
  `charging_mode` enum('Hourly','Daily') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hourly',
  `insurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sitter_experience_id` bigint UNSIGNED NOT NULL,
  `pet_type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitters`
--

INSERT INTO `sitters` (`id`, `sit_type`, `other_species`, `availability`, `charging_mode`, `insurance`, `title`, `created_at`, `updated_at`, `sitter_experience_id`, `pet_type_id`, `user_id`) VALUES
(19, 'House Sitter', 12.00, 1, 'Hourly', NULL, NULL, '2024-01-08 05:51:47', '2024-01-23 22:58:48', 1, '1', 36),
(20, 'Combine', 12.00, 1, 'Hourly', NULL, NULL, '2024-01-08 19:59:51', '2024-01-08 20:15:33', 1, '1', 37),
(21, 'Combine', 15.00, 1, 'Hourly', NULL, NULL, '2024-01-09 23:05:06', '2024-01-09 23:24:34', 4, '12', 39),
(22, 'Combine', 12.00, 1, 'Hourly', NULL, NULL, '2024-01-15 21:45:31', '2024-01-15 21:45:31', 3, '4', 40),
(23, 'Combine', 12.00, 0, 'Hourly', NULL, NULL, '2024-01-17 12:35:25', '2024-01-17 12:52:56', 2, '2', 41),
(24, 'House Sitter', 12.00, 1, 'Hourly', NULL, NULL, '2024-01-22 15:43:47', '2024-01-22 15:43:47', 1, '1', 42),
(25, 'Combine', 12.00, 1, 'Hourly', NULL, NULL, '2024-01-22 15:56:51', '2024-01-22 15:56:51', 2, '2', 44),
(26, 'Combine', 12.00, 1, 'Hourly', NULL, NULL, '2024-01-23 22:15:25', '2024-01-23 22:18:28', 2, '1', 45),
(27, 'House Sitter', 12.00, 1, 'Hourly', NULL, NULL, '2024-01-24 18:23:29', '2024-01-24 18:23:29', 1, '3,4,5', 46);

-- --------------------------------------------------------

--
-- Table structure for table `sitter_experiences`
--

CREATE TABLE `sitter_experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `experience` enum('Less than one','Less than 5','More than 5','More than 10') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Less than one'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitter_experiences`
--

INSERT INTO `sitter_experiences` (`id`, `experience`) VALUES
(1, 'Less than one'),
(2, 'Less than 5'),
(3, 'More than 5'),
(4, 'More than 10');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_reviews`
--

CREATE TABLE `sitter_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ad_id` bigint UNSIGNED NOT NULL,
  `sitter_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'firstsubscriber@email.com', '2023-11-28 16:37:37', NULL),
(2, 'superadmin@gmail.com', '2024-01-08 06:04:43', '2024-01-08 06:04:43'),
(3, 'anas@gmail.com', '2024-01-08 06:04:52', '2024-01-08 06:04:52'),
(4, 'sandyaand397@outlook.com', '2024-01-09 16:26:56', '2024-01-09 16:26:56'),
(5, 'lepasnjqzl@outlook.com', '2024-01-22 11:49:43', '2024-01-22 11:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `used_credits`
--

CREATE TABLE `used_credits` (
  `id` bigint UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ad_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `used_credits`
--

INSERT INTO `used_credits` (`id`, `token`, `credit`, `created_at`, `updated_at`, `user_id`, `ad_id`) VALUES
(47, 'cff02a74da64d145a4aed3a577a106ab', 10, '2024-01-14 21:39:03', '2024-01-14 21:39:03', 36, 48),
(48, 'aaaccd2766ec67aecbe26459bb828d81', 10, '2024-01-14 21:41:53', '2024-01-14 21:41:53', 37, 48),
(49, '810dfbbebb17302018ae903e9cb7a483', 10, '2024-01-17 12:39:56', '2024-01-17 12:39:56', 41, 48),
(52, '45cef8e5b9570959bd9feaacae2bf38d', 10, '2024-01-23 17:55:12', '2024-01-23 17:55:12', 36, 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `insurance_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `email_verified_at`, `password`, `image`, `active`, `mobile`, `mobile_verified_at`, `created_at`, `updated_at`, `role_id`, `about`, `notes`, `insurance_number`) VALUES
(33, 'Super Admin', 'superadmin@email.com', '2024-01-08 05:39:17', '$2y$10$mLS09J7ysDGTCofeQL26lOiOxpNi9PsaM2JydIyGsvxZARx9O4ji6', '1706282113.abt-5.png', 1, '03162032469', NULL, '2024-01-08 05:33:49', '2024-01-26 14:15:13', 1, 'This is a Admin Account to manage all users.', NULL, NULL),
(34, 'Admin', 'admin@email.com', '2024-01-08 05:41:50', '$2y$10$bMAk3mQtLmwxCXl6O0YVrOwN.aBlrx5L2G4ogaROze6nObRJRsbKq', NULL, 1, '03162032469', NULL, '2024-01-08 05:41:37', '2024-01-24 13:56:55', 1, NULL, NULL, NULL),
(35, 'Pet Owner', 'petowner@email.com', '2024-01-08 05:43:05', '$2y$10$mLS09J7ysDGTCofeQL26lOiOxpNi9PsaM2JydIyGsvxZARx9O4ji6', NULL, 1, '03162032469', NULL, '2024-01-08 05:42:54', '2024-01-08 05:44:41', 4, 'This is a Test Owner Bio', NULL, NULL),
(36, 'Pet Sitter', 'sitter@email.com', '2024-01-08 05:54:09', '$2y$10$mLS09J7ysDGTCofeQL26lOiOxpNi9PsaM2JydIyGsvxZARx9O4ji6', NULL, 1, '03162032469', NULL, '2024-01-08 05:51:47', '2024-01-31 12:11:02', 5, 'This is a Pet Sitter Bio', 'asdasdas', NULL),
(37, 'Jack', 'sikol26424@taobudao.com', '2024-01-08 20:00:42', '$2y$10$rIQ7vgIgqrCDXn8Ip0b6p.82yW/iVKREGV0PqyHzs2X1YZk2X98Xa', NULL, 1, '12142731859', NULL, '2024-01-08 19:59:51', '2024-01-08 20:00:42', 5, 'This is for testing', NULL, NULL),
(38, 'jason for Testing', 'kirewed494@ziragold.com', '2024-01-08 23:17:46', '$2y$10$oYgtXCCNM7dNedJkEZhW3eIVE2QG9qvzqEyF9twUt.yBEFnAmRSzq', NULL, 1, '12142731859', NULL, '2024-01-08 23:17:26', '2024-01-09 00:07:45', 4, 'This is for testing purpose', NULL, NULL),
(39, 'Noman', 'nomanahmedkhan.net@gmail.com', '2024-01-14 21:07:41', '$2y$10$rIQ7vgIgqrCDXn8Ip0b6p.82yW/iVKREGV0PqyHzs2X1YZk2X98Xa', NULL, 1, '03162032469', NULL, '2024-01-09 23:05:06', '2024-01-14 21:32:06', 4, 'test', NULL, 'NI123455C'),
(40, 'Jason tack', 'bomey77305@trackden.com', '2024-01-15 21:46:07', '$2y$10$WrKgS32yRWP0XqHelKkgbumDrfG8E7Hhjxrwc1egoybzU4p2Cxhfu', NULL, 1, '12142731859', NULL, '2024-01-15 21:45:31', '2024-01-15 21:46:07', 5, 'This is for testing', NULL, NULL),
(41, 'Jason', 'wefoso7425@wuzak.com', '2024-01-17 12:36:09', '$2y$10$llA./sEebUaOJDX3dp1zqOOtfyA3I8.wlOkd8elDBVg6jBCjA/zcG', NULL, 1, '12142731859', NULL, '2024-01-17 12:35:25', '2024-01-17 12:36:09', 5, 'testing', NULL, NULL),
(42, 'Jason', 'helini5497@konican.com', '2024-01-22 15:44:28', '$2y$10$Ar4frn5p124mKb1g1EV4yOLx04hKZ0Ao.Jq7xzLxinSKjZYP6Myfy', NULL, 1, '12142731859', NULL, '2024-01-22 15:43:47', '2024-01-22 15:44:28', 5, 'This is for testing purpose', NULL, NULL),
(43, 'Looker', 'wofogeh908@ikuromi.com', '2024-01-22 15:48:54', '$2y$10$UtiNZktrfzxghwy0fLKADuAOsi4BHWXNqITlfg.Nqsub0RzuD1BuO', NULL, 1, '12142731859', NULL, '2024-01-22 15:48:36', '2024-01-22 15:48:54', 4, NULL, NULL, NULL),
(44, 'Jason', 'lefana3853@konican.com', '2024-01-22 15:57:10', '$2y$10$5H42QEM7zQUY2wGd/TbG/OvOkdzcM.epCbN.xvUauOrYI8c7OG3ZS', NULL, 1, '12142731859', NULL, '2024-01-22 15:56:51', '2024-01-22 15:57:10', 5, 'This is for testing purpose', NULL, NULL),
(45, 'Jason', 'ali.qaiser.farooqui@gmail.com', '2024-01-23 22:15:56', '$2y$10$ybZkg6LppXEuGfCpZ5IsiuMp.36jsrEYeadyx3oJ3YoAqbqWItwRa', NULL, 0, '12142731859', NULL, '2024-01-23 22:15:25', '2024-01-23 22:58:48', 5, 'this is for testing purpose', NULL, '123456789'),
(46, 'Jason', 'yibaf27336@ikuromi.com', '2024-01-24 18:23:47', '$2y$10$Ys2ut4wEzz5j2aVEt76kKuiBHvc6IRtRzAlR62pUiPu23xw8R2Un2', NULL, 1, '12142731859', NULL, '2024-01-24 18:23:29', '2024-01-24 18:23:47', 5, 'this is for testing purpose', NULL, NULL),
(47, 'Jason', 'cirob49040@ikuromi.com', '2024-01-24 18:39:27', '$2y$10$f6Ubnl4OV/ImJV9KmblT9uwNA1l6d41f7o7EQTSRWSSqRLC3HN.oe', NULL, 1, '12142731859', NULL, '2024-01-24 18:38:52', '2024-01-24 18:39:27', 4, NULL, NULL, NULL),
(48, 'lff', 's.i.n.cla.irt.homas.19.6@gmail.com', NULL, '$2y$10$SnDahyzI10Qgqm0COYUZeeGxu7FOlmZXwTp2tAmMjRjGiME81WJ6W', NULL, 1, '86471177835', NULL, '2024-01-27 03:22:19', '2024-01-27 03:22:19', 4, NULL, NULL, NULL),
(49, 'Test user sk', 'xoxav69182@evvgo.com', '2024-02-04 17:51:30', '$2y$10$rrs4StMPivhA5PGp4d/0I.cOzA.zL7y1cEfLGqcWFobIrDBtfgkuy', NULL, 1, '12345678912', NULL, '2024-02-04 17:50:55', '2024-02-04 17:51:30', 4, NULL, NULL, NULL),
(50, 'Muhaamad', 'faiqm8166@gmail.com', '2024-03-20 09:44:01', '$2y$10$wrxFnlqHQncy0YQwFNqCcerpKyt4.ALk951e.tV56l9qHJYEACezS', NULL, 1, '84657904832', NULL, '2024-03-20 09:43:39', '2024-03-20 09:44:01', 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_files`
--

CREATE TABLE `user_files` (
  `id` bigint UNSIGNED NOT NULL,
  `image_type` enum('sitter_files','petowner_files') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_files`
--

INSERT INTO `user_files` (`id`, `image_type`, `title`, `image_path`, `created_at`, `updated_at`, `user_id`) VALUES
(20, 'sitter_files', '1704696707.jpeg', 'images/1704696707.jpeg', '2024-01-08 05:51:47', '2024-01-08 05:51:47', 36),
(21, 'sitter_files', '1704747591.png', 'images/1704747591.png', '2024-01-08 19:59:51', '2024-01-08 19:59:51', 37),
(22, 'sitter_files', '1704845106.png', 'images/1704845106.png', '2024-01-09 23:05:06', '2024-01-09 23:05:06', 39),
(23, 'petowner_files', '1705358521.jpg', 'images/1705358521.jpg', '2024-01-15 21:42:02', '2024-01-15 21:42:02', 38),
(24, 'sitter_files', '1705358731.jpg', 'images/1705358731.jpg', '2024-01-15 21:45:31', '2024-01-15 21:45:31', 40),
(25, 'sitter_files', '1705498525.jpg', 'images/1705498525.jpg', '2024-01-17 12:35:25', '2024-01-17 12:35:25', 41),
(26, 'sitter_files', '1705941827.jpg', 'images/1705941827.jpg', '2024-01-22 15:43:47', '2024-01-22 15:43:47', 42),
(27, 'sitter_files', '1705942611.jpeg', 'images/1705942611.jpeg', '2024-01-22 15:56:51', '2024-01-22 15:56:51', 44),
(28, 'petowner_files', '1705943735.jpg', 'images/1705943735.jpg', '2024-01-22 16:15:35', '2024-01-22 16:15:35', 43),
(29, 'sitter_files', '1706051725.jpg', 'images/1706051725.jpg', '2024-01-23 22:15:25', '2024-01-23 22:15:25', 45),
(30, 'sitter_files', '1706124209.jpg', 'images/1706124209.jpg', '2024-01-24 18:23:29', '2024-01-24 18:23:29', 46);

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` bigint UNSIGNED NOT NULL,
  `image_type` enum('profile_image','gallery_image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile_image',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`id`, `image_type`, `title`, `image_path`, `created_at`, `updated_at`, `user_id`) VALUES
(11, 'profile_image', '1704695881.png', 'images/1704695881.png', '2024-01-08 05:37:11', '2024-01-08 05:38:01', 33),
(12, 'profile_image', '1704696281.png', 'images/1704696281.png', '2024-01-08 05:44:41', '2024-01-08 05:44:41', 35),
(13, 'profile_image', '1706108977.png', 'images/1706108977.png', '2024-01-08 05:56:25', '2024-01-24 14:09:37', 36),
(14, 'profile_image', '1704748533.jpg', 'images/1704748533.jpg', '2024-01-08 20:15:33', '2024-01-08 20:15:33', 37),
(15, 'profile_image', '1704759530.jpg', 'images/1704759530.jpg', '2024-01-08 23:18:50', '2024-01-08 23:18:50', 38),
(16, 'profile_image', '1705271526.png', 'images/1705271526.png', '2024-01-14 21:32:06', '2024-01-14 21:32:06', 39),
(17, 'profile_image', '1705498612.jpg', 'images/1705498612.jpg', '2024-01-17 12:36:52', '2024-01-17 12:36:52', 41),
(18, 'profile_image', '1706051908.jpg', 'images/1706051908.jpg', '2024-01-23 22:18:28', '2024-01-23 22:18:28', 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_user_id_foreign` (`user_id`),
  ADD KEY `ads_service_id_foreign` (`service_id`),
  ADD KEY `ads_pet_id_foreign` (`pet_id`);

--
-- Indexes for table `ad_responses`
--
ALTER TABLE `ad_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_responses_sitter_id_foreign` (`sitter_id`),
  ADD KEY `ad_responses_user_id_foreign` (`user_id`),
  ADD KEY `ad_responses_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `ad_views`
--
ALTER TABLE `ad_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_views_user_id_foreign` (`user_id`),
  ADD KEY `ad_views_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credits_user_id_foreign` (`user_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_package_id_foreign` (`package_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

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
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pets_user_id_foreign` (`user_id`),
  ADD KEY `pets_pet_type_id_foreign` (`pet_type_id`),
  ADD KEY `pets_pet_size_id_foreign` (`pet_size_id`),
  ADD KEY `pets_pet_age_id_foreign` (`pet_age_id`),
  ADD KEY `pets_pet_medication_id_foreign` (`pet_medication_id`);

--
-- Indexes for table `pet_ages`
--
ALTER TABLE `pet_ages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_images`
--
ALTER TABLE `pet_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_images_pet_id_foreign` (`pet_id`);

--
-- Indexes for table `pet_medications`
--
ALTER TABLE `pet_medications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_owner_reviews`
--
ALTER TABLE `pet_owner_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_owner_reviews_user_id_foreign` (`user_id`),
  ADD KEY `pet_owner_reviews_ad_id_foreign` (`ad_id`),
  ADD KEY `pet_owner_reviews_sitter_id_foreign` (`sitter_id`);

--
-- Indexes for table `pet_sizes`
--
ALTER TABLE `pet_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_types`
--
ALTER TABLE `pet_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_credits`
--
ALTER TABLE `purchase_credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_credits_user_id_foreign` (`user_id`),
  ADD KEY `purchase_credits_order_id_foreign` (`order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitters`
--
ALTER TABLE `sitters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sitters_sitter_experience_id_foreign` (`sitter_experience_id`),
  ADD KEY `sitters_pet_type_id_foreign` (`pet_type_id`),
  ADD KEY `sitters_user_id_foreign` (`user_id`);

--
-- Indexes for table `sitter_experiences`
--
ALTER TABLE `sitter_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_reviews`
--
ALTER TABLE `sitter_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sitter_reviews_user_id_foreign` (`user_id`),
  ADD KEY `sitter_reviews_ad_id_foreign` (`ad_id`),
  ADD KEY `sitter_reviews_sitter_id_foreign` (`sitter_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `used_credits`
--
ALTER TABLE `used_credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `used_credits_user_id_foreign` (`user_id`),
  ADD KEY `used_credits_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_files`
--
ALTER TABLE `user_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_files_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_images_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ad_responses`
--
ALTER TABLE `ad_responses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ad_views`
--
ALTER TABLE `ad_views`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pet_ages`
--
ALTER TABLE `pet_ages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pet_images`
--
ALTER TABLE `pet_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pet_medications`
--
ALTER TABLE `pet_medications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pet_owner_reviews`
--
ALTER TABLE `pet_owner_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pet_sizes`
--
ALTER TABLE `pet_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pet_types`
--
ALTER TABLE `pet_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `purchase_credits`
--
ALTER TABLE `purchase_credits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sitters`
--
ALTER TABLE `sitters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sitter_experiences`
--
ALTER TABLE `sitter_experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sitter_reviews`
--
ALTER TABLE `sitter_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `used_credits`
--
ALTER TABLE `used_credits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_files`
--
ALTER TABLE `user_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ads_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ad_responses`
--
ALTER TABLE `ad_responses`
  ADD CONSTRAINT `ad_responses_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ad_responses_sitter_id_foreign` FOREIGN KEY (`sitter_id`) REFERENCES `sitters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ad_responses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ad_views`
--
ALTER TABLE `ad_views`
  ADD CONSTRAINT `ad_views_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ad_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `credits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_pet_age_id_foreign` FOREIGN KEY (`pet_age_id`) REFERENCES `pet_ages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pets_pet_medication_id_foreign` FOREIGN KEY (`pet_medication_id`) REFERENCES `pet_medications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pets_pet_size_id_foreign` FOREIGN KEY (`pet_size_id`) REFERENCES `pet_sizes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pets_pet_type_id_foreign` FOREIGN KEY (`pet_type_id`) REFERENCES `pet_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pet_images`
--
ALTER TABLE `pet_images`
  ADD CONSTRAINT `pet_images_pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pet_owner_reviews`
--
ALTER TABLE `pet_owner_reviews`
  ADD CONSTRAINT `pet_owner_reviews_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pet_owner_reviews_sitter_id_foreign` FOREIGN KEY (`sitter_id`) REFERENCES `sitters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pet_owner_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_credits`
--
ALTER TABLE `purchase_credits`
  ADD CONSTRAINT `purchase_credits_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_credits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sitters`
--
ALTER TABLE `sitters`
  ADD CONSTRAINT `sitters_sitter_experience_id_foreign` FOREIGN KEY (`sitter_experience_id`) REFERENCES `sitter_experiences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sitters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sitter_reviews`
--
ALTER TABLE `sitter_reviews`
  ADD CONSTRAINT `sitter_reviews_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sitter_reviews_sitter_id_foreign` FOREIGN KEY (`sitter_id`) REFERENCES `sitters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sitter_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `used_credits`
--
ALTER TABLE `used_credits`
  ADD CONSTRAINT `used_credits_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `used_credits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_files`
--
ALTER TABLE `user_files`
  ADD CONSTRAINT `user_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_images`
--
ALTER TABLE `user_images`
  ADD CONSTRAINT `user_images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
