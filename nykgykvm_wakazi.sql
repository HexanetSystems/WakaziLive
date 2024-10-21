-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2024 at 02:21 PM
-- Server version: 8.0.35
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nykgykvm_wakazi`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-13 03:57:09', '2024-06-13 03:57:09'),
(2, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-13 03:57:17', '2024-06-13 03:57:17'),
(3, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-13 03:57:23', '2024-06-13 03:57:23'),
(4, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-13 03:58:02', '2024-06-13 03:58:02'),
(5, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-13 03:58:43', '2024-06-13 03:58:43'),
(6, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-13 04:10:47', '2024-06-13 04:10:47'),
(7, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-16 05:33:33', '2024-06-16 05:33:33'),
(8, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-16 05:38:02', '2024-06-16 05:38:02'),
(9, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-17 14:39:10', '2024-06-17 14:39:10'),
(10, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-17 14:39:49', '2024-06-17 14:39:49'),
(11, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:42:20', '2024-06-17 14:42:20'),
(12, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:42:36', '2024-06-17 14:42:36'),
(13, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:43:01', '2024-06-17 14:43:01'),
(14, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:43:29', '2024-06-17 14:43:29'),
(15, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:00', '2024-06-17 14:44:00'),
(16, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:01', '2024-06-17 14:44:01'),
(17, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:16', '2024-06-17 14:44:16'),
(18, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:16', '2024-06-17 14:44:16'),
(19, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:31', '2024-06-17 14:44:31'),
(20, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:31', '2024-06-17 14:44:31'),
(21, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:48', '2024-06-17 14:44:48'),
(22, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:48', '2024-06-17 14:44:48'),
(23, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:44:59', '2024-06-17 14:44:59'),
(24, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:45:00', '2024-06-17 14:45:00'),
(25, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:45:15', '2024-06-17 14:45:15'),
(26, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:45:15', '2024-06-17 14:45:15'),
(27, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:45:29', '2024-06-17 14:45:29'),
(28, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:45:30', '2024-06-17 14:45:30'),
(29, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:45:45', '2024-06-17 14:45:45'),
(30, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:45:46', '2024-06-17 14:45:46'),
(31, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:46:00', '2024-06-17 14:46:00'),
(32, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:46:00', '2024-06-17 14:46:00'),
(33, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:46:15', '2024-06-17 14:46:15'),
(34, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:46:15', '2024-06-17 14:46:15'),
(35, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:46:32', '2024-06-17 14:46:32'),
(36, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 14:46:32', '2024-06-17 14:46:32'),
(37, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-17 15:09:45', '2024-06-17 15:09:45'),
(38, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:11:31', '2024-06-17 15:11:31'),
(39, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:11:53', '2024-06-17 15:11:53'),
(40, 'default', 'Approved Product ID: 9', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:12:04', '2024-06-17 15:12:04'),
(41, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:12:05', '2024-06-17 15:12:05'),
(42, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:13:15', '2024-06-17 15:13:15'),
(43, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:13:41', '2024-06-17 15:13:41'),
(44, 'default', 'Access Edit Product ID number 3 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:14:15', '2024-06-17 15:14:15'),
(45, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-17 15:38:17', '2024-06-17 15:38:17'),
(46, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:55:10', '2024-06-18 11:55:10'),
(47, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:55:31', '2024-06-18 11:55:31'),
(48, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:55:53', '2024-06-18 11:55:53'),
(49, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:03', '2024-06-18 11:56:03'),
(50, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:11', '2024-06-18 11:56:11'),
(51, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:15', '2024-06-18 11:56:15'),
(52, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:23', '2024-06-18 11:56:23'),
(53, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:26', '2024-06-18 11:56:26'),
(54, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:31', '2024-06-18 11:56:31'),
(55, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:34', '2024-06-18 11:56:34'),
(56, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:39', '2024-06-18 11:56:39'),
(57, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 11:56:42', '2024-06-18 11:56:42'),
(58, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 12:11:35', '2024-06-18 12:11:35'),
(59, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 12:30:39', '2024-06-18 12:30:39'),
(60, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 12:33:00', '2024-06-18 12:33:00'),
(61, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 12:55:43', '2024-06-18 12:55:43'),
(62, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:03:19', '2024-06-18 13:03:19'),
(63, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:03:30', '2024-06-18 13:03:30'),
(64, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:05:32', '2024-06-18 13:05:32'),
(65, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:07:19', '2024-06-18 13:07:19'),
(66, 'default', 'Approved Product ID: 10', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:07:39', '2024-06-18 13:07:39'),
(67, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:07:40', '2024-06-18 13:07:40'),
(68, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 13:20:10', '2024-06-18 13:20:10'),
(69, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 13:22:24', '2024-06-18 13:22:24'),
(70, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:22:40', '2024-06-18 13:22:40'),
(71, 'default', 'Approved Product ID: 11', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:22:47', '2024-06-18 13:22:47'),
(72, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 13:22:48', '2024-06-18 13:22:48'),
(73, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 14:46:21', '2024-06-18 14:46:21'),
(74, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 14:56:24', '2024-06-18 14:56:24'),
(75, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 14:56:44', '2024-06-18 14:56:44'),
(76, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 14:56:53', '2024-06-18 14:56:53'),
(77, 'default', 'Approved Product ID: 13', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 14:57:00', '2024-06-18 14:57:00'),
(78, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 14:57:00', '2024-06-18 14:57:00'),
(79, 'default', 'Approved Product ID: 12', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 14:57:03', '2024-06-18 14:57:03'),
(80, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 14:57:03', '2024-06-18 14:57:03'),
(81, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:16:40', '2024-06-18 15:16:40'),
(82, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:21:00', '2024-06-18 15:21:00'),
(83, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:22:16', '2024-06-18 15:22:16'),
(84, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:22:27', '2024-06-18 15:22:27'),
(85, 'default', 'Approved Product ID: 14', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:22:33', '2024-06-18 15:22:33'),
(86, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:22:34', '2024-06-18 15:22:34'),
(87, 'default', 'Approved Product ID: 15', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:22:36', '2024-06-18 15:22:36'),
(88, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:22:37', '2024-06-18 15:22:37'),
(89, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:29:36', '2024-06-18 15:29:36'),
(90, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:35:28', '2024-06-18 15:35:28'),
(91, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:35:40', '2024-06-18 15:35:40'),
(92, 'default', 'Approved Product ID: 16', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:35:52', '2024-06-18 15:35:52'),
(93, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:35:53', '2024-06-18 15:35:53'),
(94, 'default', 'Approved Product ID: 17', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:35:53', '2024-06-18 15:35:53'),
(95, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-18 15:35:55', '2024-06-18 15:35:55'),
(96, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:43:28', '2024-06-18 15:43:28'),
(97, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:47:42', '2024-06-18 15:47:42'),
(98, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-18 15:59:34', '2024-06-18 15:59:34'),
(99, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:40:35', '2024-06-19 07:40:35'),
(100, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:55:21', '2024-06-19 07:55:21'),
(101, 'default', 'Access All users Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:55:43', '2024-06-19 07:55:43'),
(102, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:56:14', '2024-06-19 07:56:14'),
(103, 'default', 'Access Edit Category ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:57:09', '2024-06-19 07:57:09'),
(104, 'default', 'Evoked Edit Category For Category ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:58:58', '2024-06-19 07:58:58'),
(105, 'default', 'Access Edit Category ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:59:00', '2024-06-19 07:59:00'),
(106, 'default', 'Accessed All SubCategories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:59:21', '2024-06-19 07:59:21'),
(107, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 07:59:50', '2024-06-19 07:59:50'),
(108, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 08:38:24', '2024-06-19 08:38:24'),
(109, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 08:43:40', '2024-06-19 08:43:40'),
(110, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 10:14:26', '2024-06-19 10:14:26'),
(111, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 10:14:47', '2024-06-19 10:14:47'),
(112, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:39:35', '2024-06-19 14:39:35'),
(113, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:39:44', '2024-06-19 14:39:44'),
(114, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:40:17', '2024-06-19 14:40:17'),
(115, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:46:18', '2024-06-19 14:46:18'),
(116, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:46:19', '2024-06-19 14:46:19'),
(117, 'default', 'Accessed All SubCategories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:46:39', '2024-06-19 14:46:39'),
(118, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:46:58', '2024-06-19 14:46:58'),
(119, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:47:38', '2024-06-19 14:47:38'),
(120, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:48:24', '2024-06-19 14:48:24'),
(121, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:50:23', '2024-06-19 14:50:23'),
(122, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:50:25', '2024-06-19 14:50:25'),
(123, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:50:44', '2024-06-19 14:50:44'),
(124, 'default', 'Access Edit Category ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:50:51', '2024-06-19 14:50:51'),
(125, 'default', 'Evoked Edit Category For Category ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:51:09', '2024-06-19 14:51:09'),
(126, 'default', 'Access Edit Category ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-19 14:51:10', '2024-06-19 14:51:10'),
(127, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:14', '2024-06-20 05:18:14'),
(128, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:25', '2024-06-20 05:18:25'),
(129, 'default', 'Approved Product ID: 18', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:38', '2024-06-20 05:18:38'),
(130, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:38', '2024-06-20 05:18:38'),
(131, 'default', 'Approved Product ID: 19', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:41', '2024-06-20 05:18:41'),
(132, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:42', '2024-06-20 05:18:42'),
(133, 'default', 'Approved Product ID: 20', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:47', '2024-06-20 05:18:47'),
(134, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:48', '2024-06-20 05:18:48'),
(135, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:18:59', '2024-06-20 05:18:59'),
(136, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:19:03', '2024-06-20 05:19:03'),
(137, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:35:47', '2024-06-20 05:35:47'),
(138, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:36:05', '2024-06-20 05:36:05'),
(139, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:36:21', '2024-06-20 05:36:21'),
(140, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:36:44', '2024-06-20 05:36:44'),
(141, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:41:27', '2024-06-20 05:41:27'),
(142, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:42:56', '2024-06-20 05:42:56'),
(143, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:42:58', '2024-06-20 05:42:58'),
(144, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:43:04', '2024-06-20 05:43:04'),
(145, 'default', 'Approved Product ID: 22', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:43:10', '2024-06-20 05:43:10'),
(146, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:43:12', '2024-06-20 05:43:12'),
(147, 'default', 'Accessed All SubCategories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:47:09', '2024-06-20 05:47:09'),
(148, 'default', 'Access Edit Category ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:51:29', '2024-06-20 05:51:29'),
(149, 'default', 'Evoked Edit Category For Category ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:52:47', '2024-06-20 05:52:47'),
(150, 'default', 'Access Edit Category ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:52:49', '2024-06-20 05:52:49'),
(151, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:56:21', '2024-06-20 05:56:21'),
(152, 'default', 'Access Edit Product ID number 22 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:56:32', '2024-06-20 05:56:32'),
(153, 'default', 'Evoked Edit Product For Product ID number 22 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 05:59:22', '2024-06-20 05:59:22'),
(154, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:01:19', '2024-06-20 06:01:19'),
(155, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:01:38', '2024-06-20 06:01:38'),
(156, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:02:21', '2024-06-20 06:02:21'),
(157, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:02:25', '2024-06-20 06:02:25'),
(158, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:02:36', '2024-06-20 06:02:36'),
(159, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:02:49', '2024-06-20 06:02:49'),
(160, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:04:16', '2024-06-20 06:04:16'),
(161, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:04:19', '2024-06-20 06:04:19'),
(162, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:06:20', '2024-06-20 06:06:20'),
(163, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:06:38', '2024-06-20 06:06:38'),
(164, 'default', 'Approved Product ID: 23', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:06:46', '2024-06-20 06:06:46'),
(165, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:06:48', '2024-06-20 06:06:48'),
(166, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:07:33', '2024-06-20 06:07:33'),
(167, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:07:57', '2024-06-20 06:07:57'),
(168, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:09:03', '2024-06-20 06:09:03'),
(169, 'default', 'Accessed All SubCategories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:09:19', '2024-06-20 06:09:19'),
(170, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:09:39', '2024-06-20 06:09:39'),
(171, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:09:52', '2024-06-20 06:09:52'),
(172, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:10:57', '2024-06-20 06:10:57'),
(173, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:10:58', '2024-06-20 06:10:58'),
(174, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:12:05', '2024-06-20 06:12:05'),
(175, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:14:08', '2024-06-20 06:14:08'),
(176, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:14:12', '2024-06-20 06:14:12'),
(177, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:14:57', '2024-06-20 06:14:57'),
(178, 'default', 'Approved Product ID: 24', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:15:42', '2024-06-20 06:15:42'),
(179, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 06:15:47', '2024-06-20 06:15:47'),
(180, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 12:01:02', '2024-06-20 12:01:02'),
(181, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 12:01:18', '2024-06-20 12:01:18'),
(182, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 12:01:23', '2024-06-20 12:01:23'),
(183, 'default', 'Evoked Edit Product For Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 12:02:21', '2024-06-20 12:02:21'),
(184, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 12:03:32', '2024-06-20 12:03:32'),
(185, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 14:24:42', '2024-06-20 14:24:42'),
(186, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 14:24:49', '2024-06-20 14:24:49'),
(187, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-20 14:35:13', '2024-06-20 14:35:13'),
(188, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-20 15:18:52', '2024-06-20 15:18:52'),
(189, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-20 17:00:01', '2024-06-20 17:00:01'),
(190, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 05:21:47', '2024-06-21 05:21:47'),
(191, 'default', 'User Accessed Logo & Favicon Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 05:22:00', '2024-06-21 05:22:00'),
(192, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 05:22:07', '2024-06-21 05:22:07'),
(193, 'default', 'User Accessed Site Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 05:27:16', '2024-06-21 05:27:16'),
(194, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 05:39:18', '2024-06-21 05:39:18'),
(195, 'default', 'User Accessed Site Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 06:09:27', '2024-06-21 06:09:27'),
(196, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:11:15', '2024-06-22 15:11:15'),
(197, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:12:08', '2024-06-22 15:12:08'),
(198, 'default', 'Access Edit Main ID number 4 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:12:21', '2024-06-22 15:12:21'),
(199, 'default', 'Access Edit Main ID number 4 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:17:55', '2024-06-22 15:17:55'),
(200, 'default', 'Evoked Edit Main For Main ID number 4 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:18:09', '2024-06-22 15:18:09'),
(201, 'default', 'Access Edit Main ID number 4 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:18:11', '2024-06-22 15:18:11'),
(202, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:22:48', '2024-06-22 15:22:48'),
(203, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:23:47', '2024-06-22 15:23:47'),
(204, 'default', 'Access Edit Main ID number 4 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:23:51', '2024-06-22 15:23:51'),
(205, 'default', 'Evoked Edit Main For Main ID number 4 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:24:04', '2024-06-22 15:24:04'),
(206, 'default', 'Access Edit Main ID number 4 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 15:24:05', '2024-06-22 15:24:05'),
(207, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 16:16:50', '2024-06-22 16:16:50'),
(208, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 16:16:55', '2024-06-22 16:16:55'),
(209, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-22 16:17:02', '2024-06-22 16:17:02'),
(210, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 06:44:12', '2024-06-23 06:44:12'),
(211, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 06:44:31', '2024-06-23 06:44:31'),
(212, 'default', 'Access Edit Main ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 06:44:34', '2024-06-23 06:44:34'),
(213, 'default', 'Evoked Edit Main For Main ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 06:45:25', '2024-06-23 06:45:25'),
(214, 'default', 'Access Edit Main ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 06:45:25', '2024-06-23 06:45:25'),
(215, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:39:53', '2024-06-23 13:39:53'),
(216, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:42:05', '2024-06-23 13:42:05'),
(217, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:42:13', '2024-06-23 13:42:13'),
(218, 'default', 'Evoked Edit Product For Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:43:26', '2024-06-23 13:43:26'),
(219, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:43:27', '2024-06-23 13:43:27'),
(220, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:45:06', '2024-06-23 13:45:06'),
(221, 'default', 'Access Edit Main ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:45:11', '2024-06-23 13:45:11'),
(222, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:46:20', '2024-06-23 13:46:20'),
(223, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:46:29', '2024-06-23 13:46:29'),
(224, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:53:51', '2024-06-23 13:53:51'),
(225, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:54:01', '2024-06-23 13:54:01'),
(226, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:56:25', '2024-06-23 13:56:25'),
(227, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:56:32', '2024-06-23 13:56:32'),
(228, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:56:46', '2024-06-23 13:56:46'),
(229, 'default', 'Evoked Edit Product For Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:57:29', '2024-06-23 13:57:29'),
(230, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:57:29', '2024-06-23 13:57:29'),
(231, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:57:38', '2024-06-23 13:57:38'),
(232, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:57:50', '2024-06-23 13:57:50'),
(233, 'default', 'Evoked Edit Product For Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:59:05', '2024-06-23 13:59:05'),
(234, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:59:06', '2024-06-23 13:59:06'),
(235, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:59:13', '2024-06-23 13:59:13'),
(236, 'default', 'Access Edit Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:59:23', '2024-06-23 13:59:23'),
(237, 'default', 'Access Edit Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:59:37', '2024-06-23 13:59:37'),
(238, 'default', 'Access Edit Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 13:59:44', '2024-06-23 13:59:44'),
(239, 'default', 'Evoked Edit Product For Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:00:11', '2024-06-23 14:00:11'),
(240, 'default', 'Access Edit Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:00:12', '2024-06-23 14:00:12'),
(241, 'default', 'Evoked Edit Product For Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:00:41', '2024-06-23 14:00:41'),
(242, 'default', 'Access Edit Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:00:41', '2024-06-23 14:00:41'),
(243, 'default', 'Evoked Edit Product For Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:02:03', '2024-06-23 14:02:03'),
(244, 'default', 'Access Edit Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:02:04', '2024-06-23 14:02:04'),
(245, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:02:37', '2024-06-23 14:02:37'),
(246, 'default', 'Evoked Edit Product For Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:02:55', '2024-06-23 14:02:55'),
(247, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:02:56', '2024-06-23 14:02:56'),
(248, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:03:54', '2024-06-23 14:03:54'),
(249, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:05:48', '2024-06-23 14:05:48'),
(250, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:07:38', '2024-06-23 14:07:38'),
(251, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:08:21', '2024-06-23 14:08:21'),
(252, 'default', 'Access Edit Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:09:29', '2024-06-23 14:09:29'),
(253, 'default', 'Access Edit Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:09:33', '2024-06-23 14:09:33'),
(254, 'default', 'Access Edit Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:09:39', '2024-06-23 14:09:39'),
(255, 'default', 'Evoked Edit Product For Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:10:42', '2024-06-23 14:10:42'),
(256, 'default', 'Access Edit Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:10:43', '2024-06-23 14:10:43'),
(257, 'default', 'Evoked Edit Product For Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:11:36', '2024-06-23 14:11:36'),
(258, 'default', 'Access Edit Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:11:36', '2024-06-23 14:11:36'),
(259, 'default', 'Evoked Edit Product For Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:12:20', '2024-06-23 14:12:20'),
(260, 'default', 'Access Edit Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:12:20', '2024-06-23 14:12:20'),
(261, 'default', 'Access Edit Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:12:36', '2024-06-23 14:12:36'),
(262, 'default', 'Access Edit Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:12:43', '2024-06-23 14:12:43'),
(263, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:12:49', '2024-06-23 14:12:49'),
(264, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:12:56', '2024-06-23 14:12:56'),
(265, 'default', 'Access Edit Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:13:01', '2024-06-23 14:13:01'),
(266, 'default', 'Evoked Edit Product For Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:13:22', '2024-06-23 14:13:22'),
(267, 'default', 'Access Edit Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:13:23', '2024-06-23 14:13:23'),
(268, 'default', 'Evoked Edit Product For Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:14:28', '2024-06-23 14:14:28'),
(269, 'default', 'Access Edit Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:14:28', '2024-06-23 14:14:28'),
(270, 'default', 'Evoked Edit Product For Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:15:11', '2024-06-23 14:15:11'),
(271, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:15:11', '2024-06-23 14:15:11'),
(272, 'default', 'Evoked Edit Product For Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:15:50', '2024-06-23 14:15:50'),
(273, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:15:50', '2024-06-23 14:15:50'),
(274, 'default', 'Evoked Edit Product For Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:19:20', '2024-06-23 14:19:20'),
(275, 'default', 'Access Edit Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-23 14:19:20', '2024-06-23 14:19:20'),
(276, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:32:09', '2024-06-26 17:32:09'),
(277, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:33:08', '2024-06-26 17:33:08'),
(278, 'default', 'User Accessed Site Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:33:22', '2024-06-26 17:33:22'),
(279, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:35:05', '2024-06-26 17:35:05'),
(280, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:35:35', '2024-06-26 17:35:35'),
(281, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:37:56', '2024-06-26 17:37:56'),
(282, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:37:56', '2024-06-26 17:37:56'),
(283, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:38:41', '2024-06-26 17:38:41'),
(284, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:38:42', '2024-06-26 17:38:42'),
(285, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:40:32', '2024-06-26 17:40:32'),
(286, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:40:32', '2024-06-26 17:40:32'),
(287, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:43:28', '2024-06-26 17:43:28'),
(288, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:44:47', '2024-06-26 17:44:47'),
(289, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:44:48', '2024-06-26 17:44:48'),
(290, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:45:46', '2024-06-26 17:45:46'),
(291, 'default', 'Approved Product ID: 25', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:46:16', '2024-06-26 17:46:16'),
(292, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:46:16', '2024-06-26 17:46:16'),
(293, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:47:19', '2024-06-26 17:47:19'),
(294, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:47:25', '2024-06-26 17:47:25'),
(295, 'default', 'Evoked Edit Product For Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:48:12', '2024-06-26 17:48:12'),
(296, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:48:12', '2024-06-26 17:48:12'),
(297, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:54:10', '2024-06-26 17:54:10'),
(298, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:58:16', '2024-06-26 17:58:16'),
(299, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 17:58:17', '2024-06-26 17:58:17'),
(300, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:02:34', '2024-06-26 18:02:34'),
(301, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:02:34', '2024-06-26 18:02:34'),
(302, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:16:26', '2024-06-26 18:16:26'),
(303, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:16:31', '2024-06-26 18:16:31'),
(304, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:17:01', '2024-06-26 18:17:01'),
(305, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:17:02', '2024-06-26 18:17:02'),
(306, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:17:28', '2024-06-26 18:17:28'),
(307, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:17:28', '2024-06-26 18:17:28'),
(308, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:18:08', '2024-06-26 18:18:08'),
(309, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:18:09', '2024-06-26 18:18:09'),
(310, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:19', '2024-06-26 18:23:19'),
(311, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:20', '2024-06-26 18:23:20'),
(312, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:30', '2024-06-26 18:23:30'),
(313, 'default', 'Approved Product ID: 28', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:36', '2024-06-26 18:23:36'),
(314, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:37', '2024-06-26 18:23:37'),
(315, 'default', 'Approved Product ID: 26', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:39', '2024-06-26 18:23:39'),
(316, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:40', '2024-06-26 18:23:40'),
(317, 'default', 'Approved Product ID: 27', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:43', '2024-06-26 18:23:43'),
(318, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:23:44', '2024-06-26 18:23:44'),
(319, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:30:03', '2024-06-26 18:30:03'),
(320, 'default', 'Access Edit Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:30:09', '2024-06-26 18:30:09'),
(321, 'default', 'Evoked Edit Product For Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:30:27', '2024-06-26 18:30:27'),
(322, 'default', 'Access Edit Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:30:28', '2024-06-26 18:30:28'),
(323, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:32:27', '2024-06-26 18:32:27'),
(324, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:32:31', '2024-06-26 18:32:31'),
(325, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 07:37:57', '2024-06-27 07:37:57'),
(326, 'default', 'User Accessed Site Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 07:38:35', '2024-06-27 07:38:35'),
(327, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:39:48', '2024-06-27 14:39:48'),
(328, 'default', 'Accessed All SubCategories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:40:01', '2024-06-27 14:40:01'),
(329, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:40:13', '2024-06-27 14:40:13'),
(330, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:40:51', '2024-06-27 14:40:51'),
(331, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:40:52', '2024-06-27 14:40:52'),
(332, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:51:11', '2024-06-27 14:51:11'),
(333, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:51:11', '2024-06-27 14:51:11'),
(334, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:57:23', '2024-06-27 14:57:23'),
(335, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 14:57:24', '2024-06-27 14:57:24'),
(336, 'default', 'Evoked add Category Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:00:01', '2024-06-27 15:00:01');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(337, 'default', 'Accessed Add Category Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:00:01', '2024-06-27 15:00:01'),
(338, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:00:17', '2024-06-27 15:00:17'),
(339, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:02:36', '2024-06-27 15:02:36'),
(340, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:02:36', '2024-06-27 15:02:36'),
(341, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:03:20', '2024-06-27 15:03:20'),
(342, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:03:21', '2024-06-27 15:03:21'),
(343, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:18:29', '2024-06-27 15:18:29'),
(344, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:18:29', '2024-06-27 15:18:29'),
(345, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:18:43', '2024-06-27 15:18:43'),
(346, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:19:06', '2024-06-27 15:19:06'),
(347, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:19:23', '2024-06-27 15:19:23'),
(348, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:19:27', '2024-06-27 15:19:27'),
(349, 'default', 'Approved Product ID: 30', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:19:32', '2024-06-27 15:19:32'),
(350, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:19:33', '2024-06-27 15:19:33'),
(351, 'default', 'Approved Product ID: 29', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:19:35', '2024-06-27 15:19:35'),
(352, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:19:35', '2024-06-27 15:19:35'),
(353, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:20:11', '2024-06-27 15:20:11'),
(354, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:20:21', '2024-06-27 15:20:21'),
(355, 'default', 'Evoked Edit Product For Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:20:48', '2024-06-27 15:20:48'),
(356, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:20:48', '2024-06-27 15:20:48'),
(357, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:20:58', '2024-06-27 15:20:58'),
(358, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:21:07', '2024-06-27 15:21:07'),
(359, 'default', 'Evoked Edit Product For Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:21:29', '2024-06-27 15:21:29'),
(360, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:21:30', '2024-06-27 15:21:30'),
(361, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:21:44', '2024-06-27 15:21:44'),
(362, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:24:18', '2024-06-27 15:24:18'),
(363, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:24:19', '2024-06-27 15:24:19'),
(364, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:24:36', '2024-06-27 15:24:36'),
(365, 'default', 'Approved Product ID: 32', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:24:41', '2024-06-27 15:24:41'),
(366, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:24:41', '2024-06-27 15:24:41'),
(367, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:27:18', '2024-06-27 15:27:18'),
(368, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:27:22', '2024-06-27 15:27:22'),
(369, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:28:54', '2024-06-27 15:28:54'),
(370, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:28:55', '2024-06-27 15:28:55'),
(371, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:31:10', '2024-06-27 15:31:10'),
(372, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:31:10', '2024-06-27 15:31:10'),
(373, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:34:27', '2024-06-27 15:34:27'),
(374, 'default', 'Approved Product ID: 33', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:34:36', '2024-06-27 15:34:36'),
(375, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:34:37', '2024-06-27 15:34:37'),
(376, 'default', 'Approved Product ID: 34', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:34:40', '2024-06-27 15:34:40'),
(377, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:34:40', '2024-06-27 15:34:40'),
(378, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 15:52:33', '2024-06-27 15:52:33'),
(379, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:23:43', '2024-06-27 17:23:43'),
(380, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:24:27', '2024-06-27 17:24:27'),
(381, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:24:54', '2024-06-27 17:24:54'),
(382, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:29:46', '2024-06-27 17:29:46'),
(383, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:29:47', '2024-06-27 17:29:47'),
(384, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:31:28', '2024-06-27 17:31:28'),
(385, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:31:28', '2024-06-27 17:31:28'),
(386, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:33:11', '2024-06-27 17:33:11'),
(387, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:33:11', '2024-06-27 17:33:11'),
(388, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:34:10', '2024-06-27 17:34:10'),
(389, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:34:10', '2024-06-27 17:34:10'),
(390, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:34:52', '2024-06-27 17:34:52'),
(391, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:34:52', '2024-06-27 17:34:52'),
(392, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:35:32', '2024-06-27 17:35:32'),
(393, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:35:33', '2024-06-27 17:35:33'),
(394, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:36:23', '2024-06-27 17:36:23'),
(395, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:36:23', '2024-06-27 17:36:23'),
(396, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:37:26', '2024-06-27 17:37:26'),
(397, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:37:27', '2024-06-27 17:37:27'),
(398, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:40:41', '2024-06-27 17:40:41'),
(399, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:40:42', '2024-06-27 17:40:42'),
(400, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:40:53', '2024-06-27 17:40:53'),
(401, 'default', 'Approved Product ID: 35', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:40:57', '2024-06-27 17:40:57'),
(402, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:40:57', '2024-06-27 17:40:57'),
(403, 'default', 'Approved Product ID: 36', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:40:59', '2024-06-27 17:40:59'),
(404, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:40:59', '2024-06-27 17:40:59'),
(405, 'default', 'Approved Product ID: 37', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:00', '2024-06-27 17:41:00'),
(406, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:01', '2024-06-27 17:41:01'),
(407, 'default', 'Approved Product ID: 38', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:03', '2024-06-27 17:41:03'),
(408, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:03', '2024-06-27 17:41:03'),
(409, 'default', 'Approved Product ID: 39', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:05', '2024-06-27 17:41:05'),
(410, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:05', '2024-06-27 17:41:05'),
(411, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:18', '2024-06-27 17:41:18'),
(412, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:21', '2024-06-27 17:41:21'),
(413, 'default', 'Approved Product ID: 41', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:24', '2024-06-27 17:41:24'),
(414, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:24', '2024-06-27 17:41:24'),
(415, 'default', 'Approved Product ID: 42', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:26', '2024-06-27 17:41:26'),
(416, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:26', '2024-06-27 17:41:26'),
(417, 'default', 'Approved Product ID: 43', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:28', '2024-06-27 17:41:28'),
(418, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:41:28', '2024-06-27 17:41:28'),
(419, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:03', '2024-06-27 17:43:03'),
(420, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:03', '2024-06-27 17:43:03'),
(421, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:22', '2024-06-27 17:43:22'),
(422, 'default', 'Evoked Edit Product For Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:30', '2024-06-27 17:43:30'),
(423, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:30', '2024-06-27 17:43:30'),
(424, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:34', '2024-06-27 17:43:34'),
(425, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:41', '2024-06-27 17:43:41'),
(426, 'default', 'Evoked Edit Product For Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:50', '2024-06-27 17:43:50'),
(427, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:50', '2024-06-27 17:43:50'),
(428, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:54', '2024-06-27 17:43:54'),
(429, 'default', 'Access Edit Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:43:58', '2024-06-27 17:43:58'),
(430, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:44:07', '2024-06-27 17:44:07'),
(431, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:44:17', '2024-06-27 17:44:17'),
(432, 'default', 'Evoked Edit Product For Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:44:46', '2024-06-27 17:44:46'),
(433, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:44:46', '2024-06-27 17:44:46'),
(434, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 17:59:37', '2024-06-27 17:59:37'),
(435, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:01:10', '2024-06-27 18:01:10'),
(436, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:01:11', '2024-06-27 18:01:11'),
(437, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:05:49', '2024-06-27 18:05:49'),
(438, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:05:50', '2024-06-27 18:05:50'),
(439, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:11:42', '2024-06-27 18:11:42'),
(440, 'default', 'Approved Product ID: 45', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:11:49', '2024-06-27 18:11:49'),
(441, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:11:49', '2024-06-27 18:11:49'),
(442, 'default', 'Approved Product ID: 44', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:11:51', '2024-06-27 18:11:51'),
(443, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:11:51', '2024-06-27 18:11:51'),
(444, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:11:55', '2024-06-27 18:11:55'),
(445, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 18:11:59', '2024-06-27 18:11:59'),
(446, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-01 12:31:23', '2024-07-01 12:31:23'),
(447, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-01 12:32:26', '2024-07-01 12:32:26'),
(448, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-01 12:34:21', '2024-07-01 12:34:21'),
(449, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-01 13:10:29', '2024-07-01 13:10:29'),
(450, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-01 13:12:32', '2024-07-01 13:12:32'),
(451, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-01 13:13:50', '2024-07-01 13:13:50'),
(452, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-01 13:14:09', '2024-07-01 13:14:09'),
(453, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 7, '[]', NULL, '2024-07-01 14:29:37', '2024-07-01 14:29:37'),
(454, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-01 14:32:30', '2024-07-01 14:32:30'),
(455, 'default', 'Access All users Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-01 14:32:48', '2024-07-01 14:32:48'),
(456, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 7, '[]', NULL, '2024-07-01 15:04:22', '2024-07-01 15:04:22'),
(457, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-01 15:15:46', '2024-07-01 15:15:46'),
(458, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-01 15:17:57', '2024-07-01 15:17:57'),
(459, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-01 15:18:41', '2024-07-01 15:18:41'),
(460, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-01 15:20:11', '2024-07-01 15:20:11'),
(461, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-01 15:27:21', '2024-07-01 15:27:21'),
(462, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-01 15:27:26', '2024-07-01 15:27:26'),
(463, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-01 15:27:46', '2024-07-01 15:27:46'),
(464, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 18:01:56', '2024-07-02 18:01:56'),
(465, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 18:02:13', '2024-07-02 18:02:13'),
(466, 'default', 'Access All users Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 18:03:10', '2024-07-02 18:03:10'),
(467, 'default', 'Evoked a delete User Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 18:04:26', '2024-07-02 18:04:26'),
(468, 'default', 'Access All users Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 18:04:32', '2024-07-02 18:04:32'),
(469, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 18:08:36', '2024-07-02 18:08:36'),
(470, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 18:09:35', '2024-07-02 18:09:35'),
(471, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-03 15:22:23', '2024-07-03 15:22:23'),
(472, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-03 15:24:18', '2024-07-03 15:24:18'),
(473, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-03 15:29:13', '2024-07-03 15:29:13'),
(474, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-03 15:52:45', '2024-07-03 15:52:45'),
(475, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-03 16:00:16', '2024-07-03 16:00:16'),
(476, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-03 16:00:48', '2024-07-03 16:00:48'),
(477, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-03 16:10:39', '2024-07-03 16:10:39'),
(478, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-03 16:11:38', '2024-07-03 16:11:38'),
(479, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-03 16:12:29', '2024-07-03 16:12:29'),
(480, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-03 16:46:58', '2024-07-03 16:46:58'),
(481, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-03 16:50:59', '2024-07-03 16:50:59'),
(482, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-04 11:26:09', '2024-07-04 11:26:09'),
(483, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:31:10', '2024-07-04 13:31:10'),
(484, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:34:10', '2024-07-04 13:34:10'),
(485, 'default', 'Approved Product ID: 54', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:34:31', '2024-07-04 13:34:31'),
(486, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:34:32', '2024-07-04 13:34:32'),
(487, 'default', 'Approved Product ID: 53', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:34:44', '2024-07-04 13:34:44'),
(488, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:34:44', '2024-07-04 13:34:44'),
(489, 'default', 'Approved Product ID: 52', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:34:54', '2024-07-04 13:34:54'),
(490, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:34:55', '2024-07-04 13:34:55'),
(491, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:35:03', '2024-07-04 13:35:03'),
(492, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:35:07', '2024-07-04 13:35:07'),
(493, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:35:16', '2024-07-04 13:35:16'),
(494, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:35:20', '2024-07-04 13:35:20'),
(495, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:35:25', '2024-07-04 13:35:25'),
(496, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 13:35:28', '2024-07-04 13:35:28'),
(497, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 14:14:54', '2024-07-04 14:14:54'),
(498, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 14:16:50', '2024-07-04 14:16:50'),
(499, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 14:16:53', '2024-07-04 14:16:53'),
(500, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-05 14:00:18', '2024-07-05 14:00:18'),
(501, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-05 14:00:30', '2024-07-05 14:00:30'),
(502, 'default', 'User Accessed Site Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-05 14:01:03', '2024-07-05 14:01:03'),
(503, 'default', 'Accessed All SubCategories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-05 14:10:59', '2024-07-05 14:10:59'),
(504, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-05 14:11:04', '2024-07-05 14:11:04'),
(505, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 10:05:44', '2024-07-06 10:05:44'),
(506, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 10:11:32', '2024-07-06 10:11:32'),
(507, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 10:12:12', '2024-07-06 10:12:12'),
(508, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 10:16:20', '2024-07-06 10:16:20'),
(509, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 10:16:43', '2024-07-06 10:16:43'),
(510, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 10:20:18', '2024-07-06 10:20:18'),
(511, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 11:41:51', '2024-07-06 11:41:51'),
(512, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 11:43:50', '2024-07-06 11:43:50'),
(513, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 11:46:54', '2024-07-06 11:46:54'),
(514, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 12:16:28', '2024-07-06 12:16:28'),
(515, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 12:19:25', '2024-07-06 12:19:25'),
(516, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-06 12:26:16', '2024-07-06 12:26:16'),
(517, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-07 05:12:33', '2024-07-07 05:12:33'),
(518, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-07 05:13:43', '2024-07-07 05:13:43'),
(519, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-07 08:01:26', '2024-07-07 08:01:26'),
(520, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-07 08:05:37', '2024-07-07 08:05:37'),
(521, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-07 08:09:38', '2024-07-07 08:09:38'),
(522, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-07 08:11:26', '2024-07-07 08:11:26'),
(523, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-07-07 08:16:07', '2024-07-07 08:16:07'),
(524, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-07 15:35:10', '2024-07-07 15:35:10'),
(525, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-07 15:35:19', '2024-07-07 15:35:19'),
(526, 'default', 'Update County Bounty', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-07 15:36:00', '2024-07-07 15:36:00'),
(527, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-07 15:36:01', '2024-07-07 15:36:01'),
(528, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:43:57', '2024-07-08 14:43:57'),
(529, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:06', '2024-07-08 14:44:06'),
(530, 'default', 'Approved Product ID: 55', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:16', '2024-07-08 14:44:16'),
(531, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:17', '2024-07-08 14:44:17'),
(532, 'default', 'Approved Product ID: 56', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:22', '2024-07-08 14:44:22'),
(533, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:22', '2024-07-08 14:44:22'),
(534, 'default', 'Approved Product ID: 57', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:25', '2024-07-08 14:44:25'),
(535, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:25', '2024-07-08 14:44:25'),
(536, 'default', 'Approved Product ID: 59', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:31', '2024-07-08 14:44:31'),
(537, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:32', '2024-07-08 14:44:32'),
(538, 'default', 'Approved Product ID: 60', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:37', '2024-07-08 14:44:37'),
(539, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:38', '2024-07-08 14:44:38'),
(540, 'default', 'Approved Product ID: 61', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:45', '2024-07-08 14:44:45'),
(541, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:46', '2024-07-08 14:44:46'),
(542, 'default', 'Approved Product ID: 62', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:51', '2024-07-08 14:44:51'),
(543, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:52', '2024-07-08 14:44:52'),
(544, 'default', 'Approved Product ID: 63', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:56', '2024-07-08 14:44:56'),
(545, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:44:56', '2024-07-08 14:44:56'),
(546, 'default', 'Approved Product ID: 65', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:45:02', '2024-07-08 14:45:02'),
(547, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 14:45:03', '2024-07-08 14:45:03'),
(548, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 15:08:16', '2024-07-08 15:08:16'),
(549, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 15:08:51', '2024-07-08 15:08:51'),
(550, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 15:10:09', '2024-07-08 15:10:09'),
(551, 'default', 'Evoked an add Blog Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 15:11:15', '2024-07-08 15:11:15'),
(552, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 15:11:15', '2024-07-08 15:11:15'),
(553, 'default', 'User Accessed Site Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 15:15:13', '2024-07-08 15:15:13'),
(554, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:26:55', '2024-07-08 17:26:55'),
(555, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:27:25', '2024-07-08 17:27:25'),
(556, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:27:36', '2024-07-08 17:27:36'),
(557, 'default', 'Accessed Edit Blog For Blog ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:31:16', '2024-07-08 17:31:16'),
(558, 'default', 'Accessed Edit Blog For Blog ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:41:37', '2024-07-08 17:41:37'),
(559, 'default', 'Evoked a delete Blog Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:41:54', '2024-07-08 17:41:54'),
(560, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:41:58', '2024-07-08 17:41:58'),
(561, 'default', 'Accessed Edit Blog For Blog ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:42:09', '2024-07-08 17:42:09'),
(562, 'default', 'Accessed Edit Blog For Blog ID number 1 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:43:11', '2024-07-08 17:43:11'),
(563, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:45:25', '2024-07-08 17:45:25'),
(564, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:48:35', '2024-07-08 17:48:35'),
(565, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:53:57', '2024-07-08 17:53:57'),
(566, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-08 17:55:47', '2024-07-08 17:55:47'),
(567, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:01', '2024-07-09 09:19:01'),
(568, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:14', '2024-07-09 09:19:14'),
(569, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:28', '2024-07-09 09:19:28'),
(570, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:32', '2024-07-09 09:19:32'),
(571, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:40', '2024-07-09 09:19:40'),
(572, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:44', '2024-07-09 09:19:44'),
(573, 'default', 'Approved Product ID: 51', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:52', '2024-07-09 09:19:52'),
(574, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:19:53', '2024-07-09 09:19:53'),
(575, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:21:22', '2024-07-09 09:21:22'),
(576, 'default', 'Access Edit Product ID number 50 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:21:37', '2024-07-09 09:21:37'),
(577, 'default', 'Evoked Edit Product For Product ID number 50 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:22:08', '2024-07-09 09:22:08'),
(578, 'default', 'Access Edit Product ID number 50 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 09:22:09', '2024-07-09 09:22:09'),
(579, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:15:29', '2024-07-09 10:15:29'),
(580, 'default', 'Approved Product ID: 50', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:15:35', '2024-07-09 10:15:35'),
(581, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:15:35', '2024-07-09 10:15:35'),
(582, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:22:17', '2024-07-09 10:22:17'),
(583, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:43:57', '2024-07-09 10:43:57'),
(584, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:46:14', '2024-07-09 10:46:14'),
(585, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:46:40', '2024-07-09 10:46:40'),
(586, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-09 10:46:41', '2024-07-09 10:46:41'),
(587, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-09 14:52:17', '2024-07-09 14:52:17'),
(588, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 07:58:11', '2024-07-10 07:58:11'),
(589, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 07:58:19', '2024-07-10 07:58:19'),
(590, 'default', 'Approved Product ID: 66', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 07:58:30', '2024-07-10 07:58:30'),
(591, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 07:58:30', '2024-07-10 07:58:30'),
(592, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 09:01:39', '2024-07-10 09:01:39'),
(593, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 09:06:55', '2024-07-10 09:06:55'),
(594, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 09:07:13', '2024-07-10 09:07:13'),
(595, 'default', 'Evoked an add Blog Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 09:07:47', '2024-07-10 09:07:47'),
(596, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 09:07:48', '2024-07-10 09:07:48'),
(597, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:09:53', '2024-07-10 14:09:53'),
(598, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:19:55', '2024-07-10 14:19:55'),
(599, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:20:06', '2024-07-10 14:20:06'),
(600, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:25:25', '2024-07-10 14:25:25'),
(601, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:25:41', '2024-07-10 14:25:41'),
(602, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:25:48', '2024-07-10 14:25:48'),
(603, 'default', 'Evoked an add Blog Operation', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:27:00', '2024-07-10 14:27:00'),
(604, 'default', 'Accessed Add Blog Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:27:01', '2024-07-10 14:27:01'),
(605, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:27:53', '2024-07-10 14:27:53'),
(606, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:28:02', '2024-07-10 14:28:02'),
(607, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:28:46', '2024-07-10 14:28:46'),
(608, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:28:46', '2024-07-10 14:28:46'),
(609, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:34:19', '2024-07-10 14:34:19'),
(610, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:34:34', '2024-07-10 14:34:34'),
(611, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:34:34', '2024-07-10 14:34:34'),
(612, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:36:40', '2024-07-10 14:36:40'),
(613, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:38:55', '2024-07-10 14:38:55'),
(614, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:38:55', '2024-07-10 14:38:55'),
(615, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:40:29', '2024-07-10 14:40:29'),
(616, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:42:58', '2024-07-10 14:42:58'),
(617, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:43:54', '2024-07-10 14:43:54'),
(618, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:44:08', '2024-07-10 14:44:08'),
(619, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:44:09', '2024-07-10 14:44:09'),
(620, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:44:55', '2024-07-10 14:44:55'),
(621, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:45:04', '2024-07-10 14:45:04'),
(622, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:45:05', '2024-07-10 14:45:05'),
(623, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:45:27', '2024-07-10 14:45:27'),
(624, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:45:28', '2024-07-10 14:45:28'),
(625, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:45:53', '2024-07-10 14:45:53'),
(626, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:45:54', '2024-07-10 14:45:54'),
(627, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:46:17', '2024-07-10 14:46:17'),
(628, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:46:18', '2024-07-10 14:46:18'),
(629, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:47:23', '2024-07-10 14:47:23'),
(630, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:48:54', '2024-07-10 14:48:54'),
(631, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:50:45', '2024-07-10 14:50:45'),
(632, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:53:26', '2024-07-10 14:53:26'),
(633, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:53:36', '2024-07-10 14:53:36'),
(634, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:53:42', '2024-07-10 14:53:42'),
(635, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:54:43', '2024-07-10 14:54:43'),
(636, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:55:16', '2024-07-10 14:55:16'),
(637, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:55:19', '2024-07-10 14:55:19'),
(638, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:55:57', '2024-07-10 14:55:57'),
(639, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:55:57', '2024-07-10 14:55:57'),
(640, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:57:58', '2024-07-10 14:57:58'),
(641, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:57:59', '2024-07-10 14:57:59'),
(642, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:59:09', '2024-07-10 14:59:09'),
(643, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:59:10', '2024-07-10 14:59:10'),
(644, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:59:51', '2024-07-10 14:59:51'),
(645, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 14:59:51', '2024-07-10 14:59:51'),
(646, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:00:14', '2024-07-10 15:00:14'),
(647, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:00:17', '2024-07-10 15:00:17'),
(648, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:01:23', '2024-07-10 15:01:23'),
(649, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:01:23', '2024-07-10 15:01:23'),
(650, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:02:39', '2024-07-10 15:02:39'),
(651, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:02:41', '2024-07-10 15:02:41'),
(652, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:04:37', '2024-07-10 15:04:37'),
(653, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:05:47', '2024-07-10 15:05:47'),
(654, 'default', 'Accessed Edit Blog For Blog ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:05:54', '2024-07-10 15:05:54'),
(655, 'default', 'Evoked an Edit Blog Operation For Blog ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:10:05', '2024-07-10 15:10:05'),
(656, 'default', 'Accessed Edit Blog For Blog ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:10:09', '2024-07-10 15:10:09'),
(657, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:16:17', '2024-07-10 15:16:17'),
(658, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:16:45', '2024-07-10 15:16:45'),
(659, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:16:46', '2024-07-10 15:16:46'),
(660, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:18:43', '2024-07-10 15:18:43'),
(661, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:18:55', '2024-07-10 15:18:55'),
(662, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:19:18', '2024-07-10 15:19:18'),
(663, 'default', 'Access Edit Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:19:34', '2024-07-10 15:19:34'),
(664, 'default', 'Access Edit Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:19:46', '2024-07-10 15:19:46'),
(665, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:21:23', '2024-07-10 15:21:23'),
(666, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:22:06', '2024-07-10 15:22:06'),
(667, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:23:12', '2024-07-10 15:23:12'),
(668, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:23:18', '2024-07-10 15:23:18');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(669, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:27:09', '2024-07-10 15:27:09'),
(670, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:27:19', '2024-07-10 15:27:19'),
(671, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:27:34', '2024-07-10 15:27:34'),
(672, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:27:43', '2024-07-10 15:27:43'),
(673, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 15:33:43', '2024-07-10 15:33:43'),
(674, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:30:40', '2024-07-10 18:30:40'),
(675, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:31:29', '2024-07-10 18:31:29'),
(676, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:32:36', '2024-07-10 18:32:36'),
(677, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:35:40', '2024-07-10 18:35:40'),
(678, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:35:43', '2024-07-10 18:35:43'),
(679, 'default', 'Evoked an Edit Blog Operation For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:38:54', '2024-07-10 18:38:54'),
(680, 'default', 'Accessed Edit Blog For Blog ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:38:54', '2024-07-10 18:38:54'),
(681, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:39:55', '2024-07-10 18:39:55'),
(682, 'default', 'Access All users Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:40:32', '2024-07-10 18:40:32'),
(683, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-10 18:41:03', '2024-07-10 18:41:03'),
(684, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 7, '[]', NULL, '2024-07-11 02:29:52', '2024-07-11 02:29:52'),
(685, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 7, '[]', NULL, '2024-07-11 02:30:22', '2024-07-11 02:30:22'),
(686, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 02:39:25', '2024-07-11 02:39:25'),
(687, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 02:39:36', '2024-07-11 02:39:36'),
(688, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 7, '[]', NULL, '2024-07-11 02:52:49', '2024-07-11 02:52:49'),
(689, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 7, '[]', NULL, '2024-07-11 03:03:49', '2024-07-11 03:03:49'),
(690, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 07:33:28', '2024-07-11 07:33:28'),
(691, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 07:34:02', '2024-07-11 07:34:02'),
(692, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 07:34:16', '2024-07-11 07:34:16'),
(693, 'default', 'Approved Product ID: 67', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 07:35:08', '2024-07-11 07:35:08'),
(694, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 07:35:10', '2024-07-11 07:35:10'),
(695, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-11 07:35:22', '2024-07-11 07:35:22'),
(696, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:08:37', '2024-07-12 20:08:37'),
(697, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:08:46', '2024-07-12 20:08:46'),
(698, 'default', 'Accessed All Categories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:08:55', '2024-07-12 20:08:55'),
(699, 'default', 'Accessed All SubCategories', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:09:04', '2024-07-12 20:09:04'),
(700, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:09:48', '2024-07-12 20:09:48'),
(701, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:10:07', '2024-07-12 20:10:07'),
(702, 'default', 'Access Edit Product ID number 66 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:10:45', '2024-07-12 20:10:45'),
(703, 'default', 'Access Edit Product ID number 66 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:10:52', '2024-07-12 20:10:52'),
(704, 'default', 'Access Edit Product ID number 65 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:11:03', '2024-07-12 20:11:03'),
(705, 'default', 'Access Edit Product ID number 65 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:11:10', '2024-07-12 20:11:10'),
(706, 'default', 'Access Edit Product ID number 63 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:11:17', '2024-07-12 20:11:17'),
(707, 'default', 'Access Edit Product ID number 62 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:11:25', '2024-07-12 20:11:25'),
(708, 'default', 'Access Edit Product ID number 57 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:11:36', '2024-07-12 20:11:36'),
(709, 'default', 'Access Edit Product ID number 51 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:11:49', '2024-07-12 20:11:49'),
(710, 'default', 'Access Edit Product ID number 45 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:11:58', '2024-07-12 20:11:58'),
(711, 'default', 'Access Edit Product ID number 45 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:12:04', '2024-07-12 20:12:04'),
(712, 'default', 'Access Edit Product ID number 44 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:12:14', '2024-07-12 20:12:14'),
(713, 'default', 'Access Edit Product ID number 44 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:12:19', '2024-07-12 20:12:19'),
(714, 'default', 'Access Edit Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:12:30', '2024-07-12 20:12:30'),
(715, 'default', 'Access Edit Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:12:42', '2024-07-12 20:12:42'),
(716, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:12:48', '2024-07-12 20:12:48'),
(717, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:12:55', '2024-07-12 20:12:55'),
(718, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:13:02', '2024-07-12 20:13:02'),
(719, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:13:10', '2024-07-12 20:13:10'),
(720, 'default', 'Access Edit Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:13:19', '2024-07-12 20:13:19'),
(721, 'default', 'Access Edit Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:13:26', '2024-07-12 20:13:26'),
(722, 'default', 'Access Edit Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:13:37', '2024-07-12 20:13:37'),
(723, 'default', 'Access Edit Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:13:47', '2024-07-12 20:13:47'),
(724, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:13:57', '2024-07-12 20:13:57'),
(725, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:14:28', '2024-07-12 20:14:28'),
(726, 'default', 'Access Edit Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:14:37', '2024-07-12 20:14:37'),
(727, 'default', 'Access Edit Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:14:49', '2024-07-12 20:14:49'),
(728, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:14:57', '2024-07-12 20:14:57'),
(729, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:15:10', '2024-07-12 20:15:10'),
(730, 'default', 'Access Edit Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:15:18', '2024-07-12 20:15:18'),
(731, 'default', 'Access Edit Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:15:24', '2024-07-12 20:15:24'),
(732, 'default', 'Access Edit Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:15:31', '2024-07-12 20:15:31'),
(733, 'default', 'Access Edit Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:15:36', '2024-07-12 20:15:36'),
(734, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:15:44', '2024-07-12 20:15:44'),
(735, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:15:54', '2024-07-12 20:15:54'),
(736, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:06', '2024-07-12 20:16:06'),
(737, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:12', '2024-07-12 20:16:12'),
(738, 'default', 'Access Edit Product ID number 28 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:17', '2024-07-12 20:16:17'),
(739, 'default', 'Access Edit Product ID number 28 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:21', '2024-07-12 20:16:21'),
(740, 'default', 'Access Edit Product ID number 28 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:23', '2024-07-12 20:16:23'),
(741, 'default', 'Access Edit Product ID number 27 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:32', '2024-07-12 20:16:32'),
(742, 'default', 'Access Edit Product ID number 27 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:43', '2024-07-12 20:16:43'),
(743, 'default', 'Access Edit Product ID number 27 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:16:53', '2024-07-12 20:16:53'),
(744, 'default', 'Access Edit Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:17:02', '2024-07-12 20:17:02'),
(745, 'default', 'Access Edit Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:17:10', '2024-07-12 20:17:10'),
(746, 'default', 'Access Edit Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:17:25', '2024-07-12 20:17:25'),
(747, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:17:31', '2024-07-12 20:17:31'),
(748, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:17:41', '2024-07-12 20:17:41'),
(749, 'default', 'Access Edit Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:17:51', '2024-07-12 20:17:51'),
(750, 'default', 'Access Edit Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:18:06', '2024-07-12 20:18:06'),
(751, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:18:33', '2024-07-12 20:18:33'),
(752, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:18:50', '2024-07-12 20:18:50'),
(753, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:18:57', '2024-07-12 20:18:57'),
(754, 'default', 'Access All users Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:19:44', '2024-07-12 20:19:44'),
(755, 'default', 'Edited User ID number 7 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:20:15', '2024-07-12 20:20:15'),
(756, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-12 20:21:41', '2024-07-12 20:21:41'),
(757, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-15 03:08:24', '2024-07-15 03:08:24'),
(758, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-15 03:09:06', '2024-07-15 03:09:06'),
(759, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-15 03:09:52', '2024-07-15 03:09:52'),
(760, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-15 03:10:49', '2024-07-15 03:10:49'),
(761, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:04:34', '2024-07-15 08:04:34'),
(762, 'default', 'Accessed Add Product Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:04:49', '2024-07-15 08:04:49'),
(763, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:05:09', '2024-07-15 08:05:09'),
(764, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:05:28', '2024-07-15 08:05:28'),
(765, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:05:42', '2024-07-15 08:05:42'),
(766, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:06:00', '2024-07-15 08:06:00'),
(767, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:06:07', '2024-07-15 08:06:07'),
(768, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:06:45', '2024-07-15 08:06:45'),
(769, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:06:53', '2024-07-15 08:06:53'),
(770, 'default', 'Access Edit Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:07:07', '2024-07-15 08:07:07'),
(771, 'default', 'Access Edit Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:07:14', '2024-07-15 08:07:14'),
(772, 'default', 'Access Edit Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:07:35', '2024-07-15 08:07:35'),
(773, 'default', 'Access Edit Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:07:42', '2024-07-15 08:07:42'),
(774, 'default', 'Access Edit Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:07:45', '2024-07-15 08:07:45'),
(775, 'default', 'Access Edit Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:08:02', '2024-07-15 08:08:02'),
(776, 'default', 'Access Edit Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:08:09', '2024-07-15 08:08:09'),
(777, 'default', 'Access Edit Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:08:45', '2024-07-15 08:08:45'),
(778, 'default', 'Access Edit Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:08:56', '2024-07-15 08:08:56'),
(779, 'default', 'Access Edit Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:09:05', '2024-07-15 08:09:05'),
(780, 'default', 'Access Edit Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:09:12', '2024-07-15 08:09:12'),
(781, 'default', 'Access Edit Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:09:26', '2024-07-15 08:09:26'),
(782, 'default', 'Access Edit Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:09:33', '2024-07-15 08:09:33'),
(783, 'default', 'Access Edit Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:09:41', '2024-07-15 08:09:41'),
(784, 'default', 'Access Edit Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:09:55', '2024-07-15 08:09:55'),
(785, 'default', 'Access Edit Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:10:00', '2024-07-15 08:10:00'),
(786, 'default', 'Access Edit Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:10:09', '2024-07-15 08:10:09'),
(787, 'default', 'Access Edit Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:10:19', '2024-07-15 08:10:19'),
(788, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:10:37', '2024-07-15 08:10:37'),
(789, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:10:45', '2024-07-15 08:10:45'),
(790, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 08:11:05', '2024-07-15 08:11:05'),
(791, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:04:34', '2024-07-15 14:04:34'),
(792, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:04:42', '2024-07-15 14:04:42'),
(793, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:04:47', '2024-07-15 14:04:47'),
(794, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:05:13', '2024-07-15 14:05:13'),
(795, 'default', 'Evoked Edit Product For Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:05:26', '2024-07-15 14:05:26'),
(796, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:05:26', '2024-07-15 14:05:26'),
(797, 'default', 'Evoked Edit Product For Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:05:50', '2024-07-15 14:05:50'),
(798, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:05:50', '2024-07-15 14:05:50'),
(799, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:06:31', '2024-07-15 14:06:31'),
(800, 'default', 'Evoked Edit Product For Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:06:46', '2024-07-15 14:06:46'),
(801, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:06:46', '2024-07-15 14:06:46'),
(802, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:10:47', '2024-07-15 14:10:47'),
(803, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:10:52', '2024-07-15 14:10:52'),
(804, 'default', 'Evoked Edit Product For Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:11:04', '2024-07-15 14:11:04'),
(805, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:11:04', '2024-07-15 14:11:04'),
(806, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:11:59', '2024-07-15 14:11:59'),
(807, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:17:33', '2024-07-15 14:17:33'),
(808, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:17:37', '2024-07-15 14:17:37'),
(809, 'default', 'Evoked Edit Product For Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:17:51', '2024-07-15 14:17:51'),
(810, 'default', 'Access Edit Product ID number 9 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:17:52', '2024-07-15 14:17:52'),
(811, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:18:09', '2024-07-15 14:18:09'),
(812, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:18:16', '2024-07-15 14:18:16'),
(813, 'default', 'Evoked Edit Product For Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:18:37', '2024-07-15 14:18:37'),
(814, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:18:37', '2024-07-15 14:18:37'),
(815, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:38:37', '2024-07-15 14:38:37'),
(816, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:38:40', '2024-07-15 14:38:40'),
(817, 'default', 'Evoked Edit Product For Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:38:52', '2024-07-15 14:38:52'),
(818, 'default', 'Access Edit Product ID number 10 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:38:53', '2024-07-15 14:38:53'),
(819, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:39:55', '2024-07-15 14:39:55'),
(820, 'default', 'Evoked Edit Product For Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:01', '2024-07-15 14:40:01'),
(821, 'default', 'Access Edit Product ID number 11 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:02', '2024-07-15 14:40:02'),
(822, 'default', 'Access Edit Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:11', '2024-07-15 14:40:11'),
(823, 'default', 'Evoked Edit Product For Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:18', '2024-07-15 14:40:18'),
(824, 'default', 'Access Edit Product ID number 12 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:19', '2024-07-15 14:40:19'),
(825, 'default', 'Access Edit Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:25', '2024-07-15 14:40:25'),
(826, 'default', 'Evoked Edit Product For Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:39', '2024-07-15 14:40:39'),
(827, 'default', 'Access Edit Product ID number 13 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:40:40', '2024-07-15 14:40:40'),
(828, 'default', 'Access Edit Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:43:13', '2024-07-15 14:43:13'),
(829, 'default', 'Evoked Edit Product For Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:43:30', '2024-07-15 14:43:30'),
(830, 'default', 'Access Edit Product ID number 14 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:43:31', '2024-07-15 14:43:31'),
(831, 'default', 'Access Edit Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:45:47', '2024-07-15 14:45:47'),
(832, 'default', 'Evoked Edit Product For Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:46:14', '2024-07-15 14:46:14'),
(833, 'default', 'Access Edit Product ID number 15 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:46:15', '2024-07-15 14:46:15'),
(834, 'default', 'Access Edit Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:46:25', '2024-07-15 14:46:25'),
(835, 'default', 'Evoked Edit Product For Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:46:43', '2024-07-15 14:46:43'),
(836, 'default', 'Access Edit Product ID number 16 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:46:43', '2024-07-15 14:46:43'),
(837, 'default', 'Access Edit Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:46:52', '2024-07-15 14:46:52'),
(838, 'default', 'Evoked Edit Product For Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:47:00', '2024-07-15 14:47:00'),
(839, 'default', 'Access Edit Product ID number 17 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:47:00', '2024-07-15 14:47:00'),
(840, 'default', 'Access Edit Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:47:08', '2024-07-15 14:47:08'),
(841, 'default', 'Evoked Edit Product For Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:47:25', '2024-07-15 14:47:25'),
(842, 'default', 'Access Edit Product ID number 18 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:47:25', '2024-07-15 14:47:25'),
(843, 'default', 'Access Edit Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:49:52', '2024-07-15 14:49:52'),
(844, 'default', 'Evoked Edit Product For Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:49:59', '2024-07-15 14:49:59'),
(845, 'default', 'Access Edit Product ID number 19 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:49:59', '2024-07-15 14:49:59'),
(846, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:50:13', '2024-07-15 14:50:13'),
(847, 'default', 'Evoked Edit Product For Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:50:21', '2024-07-15 14:50:21'),
(848, 'default', 'Access Edit Product ID number 20 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:50:21', '2024-07-15 14:50:21'),
(849, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:50:29', '2024-07-15 14:50:29'),
(850, 'default', 'Evoked Edit Product For Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:50:49', '2024-07-15 14:50:49'),
(851, 'default', 'Access Edit Product ID number 23 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:50:49', '2024-07-15 14:50:49'),
(852, 'default', 'Access Edit Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:50:58', '2024-07-15 14:50:58'),
(853, 'default', 'Evoked Edit Product For Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:16', '2024-07-15 14:51:16'),
(854, 'default', 'Access Edit Product ID number 24 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:16', '2024-07-15 14:51:16'),
(855, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:24', '2024-07-15 14:51:24'),
(856, 'default', 'Evoked Edit Product For Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:33', '2024-07-15 14:51:33'),
(857, 'default', 'Access Edit Product ID number 25 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:33', '2024-07-15 14:51:33'),
(858, 'default', 'Access Edit Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:43', '2024-07-15 14:51:43'),
(859, 'default', 'Evoked Edit Product For Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:58', '2024-07-15 14:51:58'),
(860, 'default', 'Access Edit Product ID number 26 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:51:58', '2024-07-15 14:51:58'),
(861, 'default', 'Access Edit Product ID number 27 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:52:07', '2024-07-15 14:52:07'),
(862, 'default', 'Evoked Edit Product For Product ID number 27 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:52:17', '2024-07-15 14:52:17'),
(863, 'default', 'Access Edit Product ID number 27 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:52:18', '2024-07-15 14:52:18'),
(864, 'default', 'Access Edit Product ID number 28 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:52:26', '2024-07-15 14:52:26'),
(865, 'default', 'Evoked Edit Product For Product ID number 28 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:53:08', '2024-07-15 14:53:08'),
(866, 'default', 'Access Edit Product ID number 28 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:53:08', '2024-07-15 14:53:08'),
(867, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:53:41', '2024-07-15 14:53:41'),
(868, 'default', 'Evoked Edit Product For Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:53:52', '2024-07-15 14:53:52'),
(869, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:53:53', '2024-07-15 14:53:53'),
(870, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:09', '2024-07-15 14:54:09'),
(871, 'default', 'Evoked Edit Product For Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:20', '2024-07-15 14:54:20'),
(872, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:20', '2024-07-15 14:54:20'),
(873, 'default', 'Access Edit Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:28', '2024-07-15 14:54:28'),
(874, 'default', 'Evoked Edit Product For Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:37', '2024-07-15 14:54:37'),
(875, 'default', 'Access Edit Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:37', '2024-07-15 14:54:37'),
(876, 'default', 'Access Edit Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:47', '2024-07-15 14:54:47'),
(877, 'default', 'Evoked Edit Product For Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:56', '2024-07-15 14:54:56'),
(878, 'default', 'Access Edit Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:54:57', '2024-07-15 14:54:57'),
(879, 'default', 'Access Edit Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:55:05', '2024-07-15 14:55:05'),
(880, 'default', 'Evoked Edit Product For Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:55:21', '2024-07-15 14:55:21'),
(881, 'default', 'Access Edit Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:55:21', '2024-07-15 14:55:21'),
(882, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:55:30', '2024-07-15 14:55:30'),
(883, 'default', 'Evoked Edit Product For Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:55:47', '2024-07-15 14:55:47'),
(884, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:55:47', '2024-07-15 14:55:47'),
(885, 'default', 'Access Edit Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:55:58', '2024-07-15 14:55:58'),
(886, 'default', 'Evoked Edit Product For Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:56:13', '2024-07-15 14:56:13'),
(887, 'default', 'Access Edit Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:56:13', '2024-07-15 14:56:13'),
(888, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:56:21', '2024-07-15 14:56:21'),
(889, 'default', 'Evoked Edit Product For Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:56:44', '2024-07-15 14:56:44'),
(890, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:56:45', '2024-07-15 14:56:45'),
(891, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:00', '2024-07-15 14:57:00'),
(892, 'default', 'Access Edit Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:09', '2024-07-15 14:57:09'),
(893, 'default', 'Evoked Edit Product For Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:18', '2024-07-15 14:57:18'),
(894, 'default', 'Access Edit Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:18', '2024-07-15 14:57:18'),
(895, 'default', 'Access Edit Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:32', '2024-07-15 14:57:32'),
(896, 'default', 'Evoked Edit Product For Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:42', '2024-07-15 14:57:42'),
(897, 'default', 'Access Edit Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:42', '2024-07-15 14:57:42'),
(898, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:57:53', '2024-07-15 14:57:53'),
(899, 'default', 'Evoked Edit Product For Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:00', '2024-07-15 14:58:00'),
(900, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:01', '2024-07-15 14:58:01'),
(901, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:10', '2024-07-15 14:58:10'),
(902, 'default', 'Evoked Edit Product For Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:33', '2024-07-15 14:58:33'),
(903, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:33', '2024-07-15 14:58:33'),
(904, 'default', 'Access Edit Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:41', '2024-07-15 14:58:41'),
(905, 'default', 'Evoked Edit Product For Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:53', '2024-07-15 14:58:53'),
(906, 'default', 'Access Edit Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:58:54', '2024-07-15 14:58:54'),
(907, 'default', 'Access Edit Product ID number 44 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:59:06', '2024-07-15 14:59:06'),
(908, 'default', 'Evoked Edit Product For Product ID number 44 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:59:16', '2024-07-15 14:59:16'),
(909, 'default', 'Access Edit Product ID number 44 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:59:16', '2024-07-15 14:59:16'),
(910, 'default', 'Access Edit Product ID number 45 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:59:38', '2024-07-15 14:59:38'),
(911, 'default', 'Evoked Edit Product For Product ID number 45 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:59:50', '2024-07-15 14:59:50'),
(912, 'default', 'Access Edit Product ID number 45 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 14:59:51', '2024-07-15 14:59:51'),
(913, 'default', 'Access Edit Product ID number 50 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:00:01', '2024-07-15 15:00:01'),
(914, 'default', 'Evoked Edit Product For Product ID number 50 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:00:08', '2024-07-15 15:00:08'),
(915, 'default', 'Access Edit Product ID number 50 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:00:09', '2024-07-15 15:00:09'),
(916, 'default', 'Access Edit Product ID number 51 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:00:38', '2024-07-15 15:00:38'),
(917, 'default', 'Evoked Edit Product For Product ID number 51 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:00:58', '2024-07-15 15:00:58'),
(918, 'default', 'Access Edit Product ID number 51 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:00:58', '2024-07-15 15:00:58'),
(919, 'default', 'Access Edit Product ID number 52 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:01:15', '2024-07-15 15:01:15'),
(920, 'default', 'Evoked Edit Product For Product ID number 52 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:01:39', '2024-07-15 15:01:39'),
(921, 'default', 'Access Edit Product ID number 52 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:01:39', '2024-07-15 15:01:39'),
(922, 'default', 'Access Edit Product ID number 53 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:01:48', '2024-07-15 15:01:48'),
(923, 'default', 'Evoked Edit Product For Product ID number 53 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:01:56', '2024-07-15 15:01:56'),
(924, 'default', 'Access Edit Product ID number 53 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:01:57', '2024-07-15 15:01:57'),
(925, 'default', 'Access Edit Product ID number 54 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:02:07', '2024-07-15 15:02:07'),
(926, 'default', 'Evoked Edit Product For Product ID number 54 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:03:39', '2024-07-15 15:03:39'),
(927, 'default', 'Access Edit Product ID number 54 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:03:39', '2024-07-15 15:03:39'),
(928, 'default', 'Access Edit Product ID number 55 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:03:46', '2024-07-15 15:03:46'),
(929, 'default', 'Evoked Edit Product For Product ID number 55 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:04:05', '2024-07-15 15:04:05'),
(930, 'default', 'Access Edit Product ID number 55 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:04:05', '2024-07-15 15:04:05'),
(931, 'default', 'Access Edit Product ID number 56 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:04:12', '2024-07-15 15:04:12'),
(932, 'default', 'Evoked Edit Product For Product ID number 56 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:04:36', '2024-07-15 15:04:36'),
(933, 'default', 'Access Edit Product ID number 56 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:04:37', '2024-07-15 15:04:37'),
(934, 'default', 'Access Edit Product ID number 57 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:06:23', '2024-07-15 15:06:23'),
(935, 'default', 'Evoked Edit Product For Product ID number 57 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:06:36', '2024-07-15 15:06:36'),
(936, 'default', 'Access Edit Product ID number 57 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:06:36', '2024-07-15 15:06:36'),
(937, 'default', 'Access Edit Product ID number 59 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:06:45', '2024-07-15 15:06:45'),
(938, 'default', 'Evoked Edit Product For Product ID number 59 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:07:13', '2024-07-15 15:07:13'),
(939, 'default', 'Access Edit Product ID number 59 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:07:14', '2024-07-15 15:07:14'),
(940, 'default', 'Access Edit Product ID number 60 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:07:30', '2024-07-15 15:07:30'),
(941, 'default', 'Evoked Edit Product For Product ID number 60 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:08:09', '2024-07-15 15:08:09'),
(942, 'default', 'Access Edit Product ID number 60 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:08:09', '2024-07-15 15:08:09'),
(943, 'default', 'Access Edit Product ID number 61 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:08:16', '2024-07-15 15:08:16'),
(944, 'default', 'Evoked Edit Product For Product ID number 61 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:08:51', '2024-07-15 15:08:51'),
(945, 'default', 'Access Edit Product ID number 61 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:08:51', '2024-07-15 15:08:51'),
(946, 'default', 'Access Edit Product ID number 62 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:08:59', '2024-07-15 15:08:59'),
(947, 'default', 'Evoked Edit Product For Product ID number 62 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:09:47', '2024-07-15 15:09:47'),
(948, 'default', 'Access Edit Product ID number 62 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:09:47', '2024-07-15 15:09:47'),
(949, 'default', 'Evoked Edit Product For Product ID number 62 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:10:14', '2024-07-15 15:10:14'),
(950, 'default', 'Access Edit Product ID number 62 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:10:14', '2024-07-15 15:10:14'),
(951, 'default', 'Access Edit Product ID number 63 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:10:27', '2024-07-15 15:10:27'),
(952, 'default', 'Evoked Edit Product For Product ID number 63 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:11:13', '2024-07-15 15:11:13'),
(953, 'default', 'Access Edit Product ID number 63 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:11:14', '2024-07-15 15:11:14'),
(954, 'default', 'Access Edit Product ID number 65 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:11:22', '2024-07-15 15:11:22'),
(955, 'default', 'Evoked Edit Product For Product ID number 65 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:11:55', '2024-07-15 15:11:55'),
(956, 'default', 'Access Edit Product ID number 65 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:11:55', '2024-07-15 15:11:55'),
(957, 'default', 'Access Edit Product ID number 63 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:12:02', '2024-07-15 15:12:02'),
(958, 'default', 'Access Edit Product ID number 62 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:12:08', '2024-07-15 15:12:08'),
(959, 'default', 'Access Edit Product ID number 66 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:12:15', '2024-07-15 15:12:15'),
(960, 'default', 'Evoked Edit Product For Product ID number 66 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:12:52', '2024-07-15 15:12:52'),
(961, 'default', 'Access Edit Product ID number 66 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:12:52', '2024-07-15 15:12:52'),
(962, 'default', 'Access Edit Product ID number 67 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:13:07', '2024-07-15 15:13:07'),
(963, 'default', 'Evoked Edit Product For Product ID number 67 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:13:30', '2024-07-15 15:13:30'),
(964, 'default', 'Access Edit Product ID number 67 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:13:30', '2024-07-15 15:13:30'),
(965, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-15 15:13:33', '2024-07-15 15:13:33'),
(966, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-18 17:47:14', '2024-07-18 17:47:14'),
(967, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-18 17:47:42', '2024-07-18 17:47:42'),
(968, 'default', 'Evoked a delete Blog Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-18 17:47:57', '2024-07-18 17:47:57'),
(969, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-18 17:48:00', '2024-07-18 17:48:00'),
(970, 'default', 'Evoked a delete Blog Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-18 17:48:07', '2024-07-18 17:48:07'),
(971, 'default', 'Accessed the all blogs page ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-18 17:48:11', '2024-07-18 17:48:11'),
(972, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-24 17:05:57', '2024-07-24 17:05:57'),
(973, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-24 17:06:36', '2024-07-24 17:06:36'),
(974, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-24 17:06:48', '2024-07-24 17:06:48'),
(975, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 14:07:49', '2024-07-25 14:07:49'),
(976, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 14:08:15', '2024-07-25 14:08:15'),
(977, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 14:08:25', '2024-07-25 14:08:25'),
(978, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 14:08:37', '2024-07-25 14:08:37'),
(979, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 14:08:37', '2024-07-25 14:08:37'),
(980, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-07-25 15:29:35', '2024-07-25 15:29:35'),
(981, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-25 15:29:52', '2024-07-25 15:29:52'),
(982, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-07-25 15:32:45', '2024-07-25 15:32:45'),
(983, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 15:33:40', '2024-07-25 15:33:40'),
(984, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 15:33:49', '2024-07-25 15:33:49'),
(985, 'default', 'Approved Product ID: 69', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 15:34:28', '2024-07-25 15:34:28'),
(986, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 15:34:28', '2024-07-25 15:34:28'),
(987, 'default', 'Approved Product ID: 68', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 15:34:36', '2024-07-25 15:34:36'),
(988, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-25 15:34:36', '2024-07-25 15:34:36'),
(989, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-07-25 16:30:23', '2024-07-25 16:30:23'),
(990, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-07-25 16:31:08', '2024-07-25 16:31:08'),
(991, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-25 16:34:14', '2024-07-25 16:34:14');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(992, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-07-25 16:36:56', '2024-07-25 16:36:56'),
(993, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-07-25 16:41:50', '2024-07-25 16:41:50'),
(994, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-07-25 16:59:17', '2024-07-25 16:59:17'),
(995, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 20, '[]', NULL, '2024-07-26 08:58:54', '2024-07-26 08:58:54'),
(996, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-27 07:29:50', '2024-07-27 07:29:50'),
(997, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-27 07:41:17', '2024-07-27 07:41:17'),
(998, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-27 07:42:29', '2024-07-27 07:42:29'),
(999, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-27 10:51:11', '2024-07-27 10:51:11'),
(1000, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-27 10:51:40', '2024-07-27 10:51:40'),
(1001, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-27 10:59:51', '2024-07-27 10:59:51'),
(1002, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-28 05:15:06', '2024-07-28 05:15:06'),
(1003, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-28 12:34:23', '2024-07-28 12:34:23'),
(1004, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-28 12:37:16', '2024-07-28 12:37:16'),
(1005, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:21', '2024-07-29 09:32:21'),
(1006, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:31', '2024-07-29 09:32:31'),
(1007, 'default', 'Approved Product ID: 75', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:47', '2024-07-29 09:32:47'),
(1008, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:48', '2024-07-29 09:32:48'),
(1009, 'default', 'Approved Product ID: 76', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:52', '2024-07-29 09:32:52'),
(1010, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:52', '2024-07-29 09:32:52'),
(1011, 'default', 'Approved Product ID: 78', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:58', '2024-07-29 09:32:58'),
(1012, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:32:58', '2024-07-29 09:32:58'),
(1013, 'default', 'Approved Product ID: 74', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:03', '2024-07-29 09:33:03'),
(1014, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:04', '2024-07-29 09:33:04'),
(1015, 'default', 'Approved Product ID: 79', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:14', '2024-07-29 09:33:14'),
(1016, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:14', '2024-07-29 09:33:14'),
(1017, 'default', 'Approved Product ID: 80', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:18', '2024-07-29 09:33:18'),
(1018, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:18', '2024-07-29 09:33:18'),
(1019, 'default', 'Approved Product ID: 81', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:22', '2024-07-29 09:33:22'),
(1020, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:33:23', '2024-07-29 09:33:23'),
(1021, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:35:24', '2024-07-29 09:35:24'),
(1022, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:35:54', '2024-07-29 09:35:54'),
(1023, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:35:57', '2024-07-29 09:35:57'),
(1024, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 09:40:34', '2024-07-29 09:40:34'),
(1025, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 14:59:51', '2024-07-29 14:59:51'),
(1026, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-29 14:59:59', '2024-07-29 14:59:59'),
(1027, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-07-29 16:33:47', '2024-07-29 16:33:47'),
(1028, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-07-29 16:47:03', '2024-07-29 16:47:03'),
(1029, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-07-29 16:54:12', '2024-07-29 16:54:12'),
(1030, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-29 17:01:08', '2024-07-29 17:01:08'),
(1031, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-29 17:05:37', '2024-07-29 17:05:37'),
(1032, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-29 17:14:46', '2024-07-29 17:14:46'),
(1033, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-29 17:15:35', '2024-07-29 17:15:35'),
(1034, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-07-29 18:09:49', '2024-07-29 18:09:49'),
(1035, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-07-29 18:32:10', '2024-07-29 18:32:10'),
(1036, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-29 20:04:13', '2024-07-29 20:04:13'),
(1037, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-29 20:16:47', '2024-07-29 20:16:47'),
(1038, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-30 03:45:45', '2024-07-30 03:45:45'),
(1039, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-07-30 04:16:41', '2024-07-30 04:16:41'),
(1040, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 22, '[]', NULL, '2024-07-31 02:27:15', '2024-07-31 02:27:15'),
(1041, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:32:55', '2024-07-31 02:32:55'),
(1042, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:04', '2024-07-31 02:33:04'),
(1043, 'default', 'Approved Product ID: 82', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:22', '2024-07-31 02:33:22'),
(1044, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:22', '2024-07-31 02:33:22'),
(1045, 'default', 'Approved Product ID: 83', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:26', '2024-07-31 02:33:26'),
(1046, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:27', '2024-07-31 02:33:27'),
(1047, 'default', 'Approved Product ID: 84', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:37', '2024-07-31 02:33:37'),
(1048, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:37', '2024-07-31 02:33:37'),
(1049, 'default', 'Approved Product ID: 85', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:45', '2024-07-31 02:33:45'),
(1050, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:45', '2024-07-31 02:33:45'),
(1051, 'default', 'Approved Product ID: 86', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:49', '2024-07-31 02:33:49'),
(1052, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:49', '2024-07-31 02:33:49'),
(1053, 'default', 'Approved Product ID: 88', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:54', '2024-07-31 02:33:54'),
(1054, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:33:54', '2024-07-31 02:33:54'),
(1055, 'default', 'Approved Product ID: 89', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:00', '2024-07-31 02:34:00'),
(1056, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:00', '2024-07-31 02:34:00'),
(1057, 'default', 'Approved Product ID: 90', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:15', '2024-07-31 02:34:15'),
(1058, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:15', '2024-07-31 02:34:15'),
(1059, 'default', 'Approved Product ID: 91', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:21', '2024-07-31 02:34:21'),
(1060, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:21', '2024-07-31 02:34:21'),
(1061, 'default', 'Approved Product ID: 92', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:26', '2024-07-31 02:34:26'),
(1062, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:26', '2024-07-31 02:34:26'),
(1063, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:50', '2024-07-31 02:34:50'),
(1064, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:34:54', '2024-07-31 02:34:54'),
(1065, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:35:00', '2024-07-31 02:35:00'),
(1066, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:35:03', '2024-07-31 02:35:03'),
(1067, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:35:07', '2024-07-31 02:35:07'),
(1068, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:35:11', '2024-07-31 02:35:11'),
(1069, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:35:17', '2024-07-31 02:35:17'),
(1070, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:35:21', '2024-07-31 02:35:21'),
(1071, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 02:50:35', '2024-07-31 02:50:35'),
(1072, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-31 07:02:34', '2024-07-31 07:02:34'),
(1073, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 23, '[]', NULL, '2024-08-01 05:57:28', '2024-08-01 05:57:28'),
(1074, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 23, '[]', NULL, '2024-08-01 06:00:26', '2024-08-01 06:00:26'),
(1075, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:04:06', '2024-08-01 06:04:06'),
(1076, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:04:27', '2024-08-01 06:04:27'),
(1077, 'default', 'Approved Product ID: 94', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:04:42', '2024-08-01 06:04:42'),
(1078, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:04:45', '2024-08-01 06:04:45'),
(1079, 'default', 'Approved Product ID: 93', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:04:49', '2024-08-01 06:04:49'),
(1080, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:04:50', '2024-08-01 06:04:50'),
(1081, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:08:37', '2024-08-01 06:08:37'),
(1082, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:08:51', '2024-08-01 06:08:51'),
(1083, 'default', 'Access Edit Product ID number 92 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:09:21', '2024-08-01 06:09:21'),
(1084, 'default', 'Evoked Edit Product For Product ID number 92 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:10:31', '2024-08-01 06:10:31'),
(1085, 'default', 'Access Edit Product ID number 92 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 06:10:34', '2024-08-01 06:10:34'),
(1086, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 23, '[]', NULL, '2024-08-01 15:12:12', '2024-08-01 15:12:12'),
(1087, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 23, '[]', NULL, '2024-08-01 15:15:52', '2024-08-01 15:15:52'),
(1088, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 15:17:26', '2024-08-01 15:17:26'),
(1089, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 15:17:42', '2024-08-01 15:17:42'),
(1090, 'default', 'Approved Product ID: 95', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 15:17:52', '2024-08-01 15:17:52'),
(1091, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 15:17:54', '2024-08-01 15:17:54'),
(1092, 'default', 'Approved Product ID: 96', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 15:17:59', '2024-08-01 15:17:59'),
(1093, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-01 15:18:06', '2024-08-01 15:18:06'),
(1094, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 15:07:54', '2024-08-02 15:07:54'),
(1095, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 15:36:49', '2024-08-02 15:36:49'),
(1096, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 15:43:51', '2024-08-02 15:43:51'),
(1097, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 15:50:11', '2024-08-02 15:50:11'),
(1098, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 15:56:18', '2024-08-02 15:56:18'),
(1099, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 16:04:00', '2024-08-02 16:04:00'),
(1100, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 16:31:06', '2024-08-02 16:31:06'),
(1101, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 16:41:46', '2024-08-02 16:41:46'),
(1102, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 16:43:18', '2024-08-02 16:43:18'),
(1103, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-02 16:52:08', '2024-08-02 16:52:08'),
(1104, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-08-05 04:31:19', '2024-08-05 04:31:19'),
(1105, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-08-05 04:32:09', '2024-08-05 04:32:09'),
(1106, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 20, '[]', NULL, '2024-08-06 15:37:45', '2024-08-06 15:37:45'),
(1107, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 20, '[]', NULL, '2024-08-06 15:40:21', '2024-08-06 15:40:21'),
(1108, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 20, '[]', NULL, '2024-08-06 15:42:52', '2024-08-06 15:42:52'),
(1109, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:44:12', '2024-08-06 15:44:12'),
(1110, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:44:36', '2024-08-06 15:44:36'),
(1111, 'default', 'Approved Product ID: 110', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:13', '2024-08-06 15:45:13'),
(1112, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:15', '2024-08-06 15:45:15'),
(1113, 'default', 'Approved Product ID: 77', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:22', '2024-08-06 15:45:22'),
(1114, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:22', '2024-08-06 15:45:22'),
(1115, 'default', 'Approved Product ID: 97', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:27', '2024-08-06 15:45:27'),
(1116, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:29', '2024-08-06 15:45:29'),
(1117, 'default', 'Approved Product ID: 98', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:33', '2024-08-06 15:45:33'),
(1118, 'default', 'Approved Product ID: 98', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:33', '2024-08-06 15:45:33'),
(1119, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:33', '2024-08-06 15:45:33'),
(1120, 'default', 'Approved Product ID: 98', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:40', '2024-08-06 15:45:40'),
(1121, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:41', '2024-08-06 15:45:41'),
(1122, 'default', 'Approved Product ID: 99', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:44', '2024-08-06 15:45:44'),
(1123, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:45', '2024-08-06 15:45:45'),
(1124, 'default', 'Approved Product ID: 100', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:47', '2024-08-06 15:45:47'),
(1125, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:49', '2024-08-06 15:45:49'),
(1126, 'default', 'Approved Product ID: 101', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:53', '2024-08-06 15:45:53'),
(1127, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:45:53', '2024-08-06 15:45:53'),
(1128, 'default', 'Approved Product ID: 102', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:00', '2024-08-06 15:46:00'),
(1129, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:01', '2024-08-06 15:46:01'),
(1130, 'default', 'Approved Product ID: 103', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:05', '2024-08-06 15:46:05'),
(1131, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:07', '2024-08-06 15:46:07'),
(1132, 'default', 'Approved Product ID: 104', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:10', '2024-08-06 15:46:10'),
(1133, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:10', '2024-08-06 15:46:10'),
(1134, 'default', 'Approved Product ID: 105', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:17', '2024-08-06 15:46:17'),
(1135, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:18', '2024-08-06 15:46:18'),
(1136, 'default', 'Approved Product ID: 106', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:27', '2024-08-06 15:46:27'),
(1137, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:28', '2024-08-06 15:46:28'),
(1138, 'default', 'Approved Product ID: 107', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:32', '2024-08-06 15:46:32'),
(1139, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:33', '2024-08-06 15:46:33'),
(1140, 'default', 'Approved Product ID: 108', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:35', '2024-08-06 15:46:35'),
(1141, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:36', '2024-08-06 15:46:36'),
(1142, 'default', 'Approved Product ID: 109', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:39', '2024-08-06 15:46:39'),
(1143, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:46:39', '2024-08-06 15:46:39'),
(1144, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:54:45', '2024-08-06 15:54:45'),
(1145, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:54:55', '2024-08-06 15:54:55'),
(1146, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:54:56', '2024-08-06 15:54:56'),
(1147, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:55:24', '2024-08-06 15:55:24'),
(1148, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:55:43', '2024-08-06 15:55:43'),
(1149, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:55:48', '2024-08-06 15:55:48'),
(1150, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:56:25', '2024-08-06 15:56:25'),
(1151, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:56:57', '2024-08-06 15:56:57'),
(1152, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:57:22', '2024-08-06 15:57:22'),
(1153, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:57:49', '2024-08-06 15:57:49'),
(1154, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:58:18', '2024-08-06 15:58:18'),
(1155, 'default', 'Access Edit Product ID number 100 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 15:59:42', '2024-08-06 15:59:42'),
(1156, 'default', 'Evoked Edit Product For Product ID number 100 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:00:07', '2024-08-06 16:00:07'),
(1157, 'default', 'Access Edit Product ID number 100 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:00:09', '2024-08-06 16:00:09'),
(1158, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:01:43', '2024-08-06 16:01:43'),
(1159, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:02:51', '2024-08-06 16:02:51'),
(1160, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:02:53', '2024-08-06 16:02:53'),
(1161, 'default', 'Access Edit Product ID number 109 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:04:29', '2024-08-06 16:04:29'),
(1162, 'default', 'Evoked Edit Product For Product ID number 109 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:04:50', '2024-08-06 16:04:50'),
(1163, 'default', 'Access Edit Product ID number 109 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-06 16:04:51', '2024-08-06 16:04:51'),
(1164, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 23, '[]', NULL, '2024-08-07 12:29:21', '2024-08-07 12:29:21'),
(1165, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 20, '[]', NULL, '2024-08-07 12:30:28', '2024-08-07 12:30:28'),
(1166, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 23, '[]', NULL, '2024-08-07 12:31:15', '2024-08-07 12:31:15'),
(1167, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 20, '[]', NULL, '2024-08-07 16:59:25', '2024-08-07 16:59:25'),
(1168, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 29, '[]', NULL, '2024-08-08 16:27:41', '2024-08-08 16:27:41'),
(1169, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 29, '[]', NULL, '2024-08-09 07:11:07', '2024-08-09 07:11:07'),
(1170, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 29, '[]', NULL, '2024-08-09 07:18:54', '2024-08-09 07:18:54'),
(1171, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-09 14:53:38', '2024-08-09 14:53:38'),
(1172, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-09 15:01:46', '2024-08-09 15:01:46'),
(1173, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-09 15:13:30', '2024-08-09 15:13:30'),
(1174, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 16, '[]', NULL, '2024-08-09 15:23:07', '2024-08-09 15:23:07'),
(1175, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:26:38', '2024-08-09 15:26:38'),
(1176, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:26:49', '2024-08-09 15:26:49'),
(1177, 'default', 'Approved Product ID: 117', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:29:05', '2024-08-09 15:29:05'),
(1178, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:29:10', '2024-08-09 15:29:10'),
(1179, 'default', 'Approved Product ID: 113', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:29:25', '2024-08-09 15:29:25'),
(1180, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:29:29', '2024-08-09 15:29:29'),
(1181, 'default', 'Approved Product ID: 118', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:29:54', '2024-08-09 15:29:54'),
(1182, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:29:58', '2024-08-09 15:29:58'),
(1183, 'default', 'Approved Product ID: 119', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:30:14', '2024-08-09 15:30:14'),
(1184, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:30:16', '2024-08-09 15:30:16'),
(1185, 'default', 'Approved Product ID: 120', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:30:27', '2024-08-09 15:30:27'),
(1186, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:30:28', '2024-08-09 15:30:28'),
(1187, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:03', '2024-08-09 15:40:03'),
(1188, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:06', '2024-08-09 15:40:06'),
(1189, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:19', '2024-08-09 15:40:19'),
(1190, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:24', '2024-08-09 15:40:24'),
(1191, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:33', '2024-08-09 15:40:33'),
(1192, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:37', '2024-08-09 15:40:37'),
(1193, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:43', '2024-08-09 15:40:43'),
(1194, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:40:47', '2024-08-09 15:40:47'),
(1195, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:43:26', '2024-08-09 15:43:26'),
(1196, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-09 15:43:29', '2024-08-09 15:43:29'),
(1197, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-08-09 15:56:08', '2024-08-09 15:56:08'),
(1198, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-08-09 16:04:52', '2024-08-09 16:04:52'),
(1199, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 29, '[]', NULL, '2024-08-10 06:13:56', '2024-08-10 06:13:56'),
(1200, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 29, '[]', NULL, '2024-08-10 06:18:35', '2024-08-10 06:18:35'),
(1201, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 29, '[]', NULL, '2024-08-10 06:21:51', '2024-08-10 06:21:51'),
(1202, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-10 09:32:38', '2024-08-10 09:32:38'),
(1203, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-10 09:32:51', '2024-08-10 09:32:51'),
(1204, 'default', 'Approved Product ID: 122', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-10 09:33:41', '2024-08-10 09:33:41'),
(1205, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-10 09:33:42', '2024-08-10 09:33:42'),
(1206, 'default', 'Approved Product ID: 121', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-10 09:33:47', '2024-08-10 09:33:47'),
(1207, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-10 09:33:48', '2024-08-10 09:33:48'),
(1208, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 18:33:17', '2024-08-11 18:33:17'),
(1209, 'default', 'Evoked a delete User Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:20:58', '2024-08-11 19:20:58'),
(1210, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:02', '2024-08-11 19:21:02'),
(1211, 'default', 'Evoked a delete User Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:07', '2024-08-11 19:21:07'),
(1212, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:11', '2024-08-11 19:21:11'),
(1213, 'default', 'Evoked a delete User Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:30', '2024-08-11 19:21:30'),
(1214, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:34', '2024-08-11 19:21:34'),
(1215, 'default', 'Evoked a delete User Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:43', '2024-08-11 19:21:43'),
(1216, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:47', '2024-08-11 19:21:47'),
(1217, 'default', 'Evoked a delete User Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:53', '2024-08-11 19:21:53'),
(1218, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:21:57', '2024-08-11 19:21:57'),
(1219, 'default', 'Evoked a delete User Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:22:08', '2024-08-11 19:22:08'),
(1220, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:22:11', '2024-08-11 19:22:11'),
(1221, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:28:28', '2024-08-11 19:28:28'),
(1222, 'default', 'Access Edit Main ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:28:38', '2024-08-11 19:28:38'),
(1223, 'default', 'Evoked Edit Main For Main ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:29:35', '2024-08-11 19:29:35'),
(1224, 'default', 'Access Edit Main ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:29:36', '2024-08-11 19:29:36'),
(1225, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:29:43', '2024-08-11 19:29:43'),
(1226, 'default', 'Access Edit Main ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:33:39', '2024-08-11 19:33:39'),
(1227, 'default', 'Evoked Edit Main For Main ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:33:57', '2024-08-11 19:33:57'),
(1228, 'default', 'Access Edit Main ID number 2 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:33:58', '2024-08-11 19:33:58'),
(1229, 'default', 'Accessed All Mains', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:37:19', '2024-08-11 19:37:19'),
(1230, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:38:46', '2024-08-11 19:38:46'),
(1231, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:38:54', '2024-08-11 19:38:54'),
(1232, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:39:03', '2024-08-11 19:39:03'),
(1233, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:39:30', '2024-08-11 19:39:30'),
(1234, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:40:30', '2024-08-11 19:40:30'),
(1235, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:41:55', '2024-08-11 19:41:55'),
(1236, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:42:01', '2024-08-11 19:42:01'),
(1237, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:42:37', '2024-08-11 19:42:37'),
(1238, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:43:03', '2024-08-11 19:43:03'),
(1239, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:43:03', '2024-08-11 19:43:03'),
(1240, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:43:08', '2024-08-11 19:43:08'),
(1241, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:46:44', '2024-08-11 19:46:44'),
(1242, 'default', 'Access Edit Product ID number 57 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:48:20', '2024-08-11 19:48:20'),
(1243, 'default', 'Evoked Edit Product For Product ID number 57 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:48:56', '2024-08-11 19:48:56'),
(1244, 'default', 'Access Edit Product ID number 57 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:48:58', '2024-08-11 19:48:58'),
(1245, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:49:26', '2024-08-11 19:49:26'),
(1246, 'default', 'Access Edit Product ID number 28 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:49:56', '2024-08-11 19:49:56'),
(1247, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:50:24', '2024-08-11 19:50:24'),
(1248, 'default', 'Evoked Edit Product For Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:50:38', '2024-08-11 19:50:38'),
(1249, 'default', 'Access Edit Product ID number 29 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:50:39', '2024-08-11 19:50:39'),
(1250, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:50:49', '2024-08-11 19:50:49'),
(1251, 'default', 'Evoked Edit Product For Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:05', '2024-08-11 19:51:05'),
(1252, 'default', 'Access Edit Product ID number 30 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:06', '2024-08-11 19:51:06'),
(1253, 'default', 'Access Edit Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:16', '2024-08-11 19:51:16'),
(1254, 'default', 'Evoked Edit Product For Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:25', '2024-08-11 19:51:25'),
(1255, 'default', 'Access Edit Product ID number 32 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:26', '2024-08-11 19:51:26'),
(1256, 'default', 'Access Edit Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:32', '2024-08-11 19:51:32'),
(1257, 'default', 'Evoked Edit Product For Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:46', '2024-08-11 19:51:46'),
(1258, 'default', 'Access Edit Product ID number 33 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:47', '2024-08-11 19:51:47'),
(1259, 'default', 'Access Edit Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:51:56', '2024-08-11 19:51:56'),
(1260, 'default', 'Evoked Edit Product For Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:52:09', '2024-08-11 19:52:09'),
(1261, 'default', 'Access Edit Product ID number 34 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:52:09', '2024-08-11 19:52:09'),
(1262, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:52:21', '2024-08-11 19:52:21'),
(1263, 'default', 'Evoked Edit Product For Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:52:32', '2024-08-11 19:52:32'),
(1264, 'default', 'Access Edit Product ID number 35 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:52:34', '2024-08-11 19:52:34'),
(1265, 'default', 'Access Edit Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:00', '2024-08-11 19:53:00'),
(1266, 'default', 'Evoked Edit Product For Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:12', '2024-08-11 19:53:12'),
(1267, 'default', 'Access Edit Product ID number 36 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:14', '2024-08-11 19:53:14'),
(1268, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:24', '2024-08-11 19:53:24'),
(1269, 'default', 'Evoked Edit Product For Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:35', '2024-08-11 19:53:35'),
(1270, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:36', '2024-08-11 19:53:36'),
(1271, 'default', 'Evoked Edit Product For Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:50', '2024-08-11 19:53:50'),
(1272, 'default', 'Access Edit Product ID number 37 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:53:51', '2024-08-11 19:53:51'),
(1273, 'default', 'Access Edit Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:54:11', '2024-08-11 19:54:11'),
(1274, 'default', 'Evoked Edit Product For Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:54:23', '2024-08-11 19:54:23'),
(1275, 'default', 'Access Edit Product ID number 38 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:54:25', '2024-08-11 19:54:25'),
(1276, 'default', 'Access Edit Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:54:35', '2024-08-11 19:54:35'),
(1277, 'default', 'Evoked Edit Product For Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:54:48', '2024-08-11 19:54:48'),
(1278, 'default', 'Access Edit Product ID number 39 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:54:49', '2024-08-11 19:54:49'),
(1279, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:54:57', '2024-08-11 19:54:57'),
(1280, 'default', 'Evoked Edit Product For Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:08', '2024-08-11 19:55:08'),
(1281, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:12', '2024-08-11 19:55:12'),
(1282, 'default', 'Evoked Edit Product For Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:22', '2024-08-11 19:55:22'),
(1283, 'default', 'Access Edit Product ID number 41 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:24', '2024-08-11 19:55:24'),
(1284, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:36', '2024-08-11 19:55:36'),
(1285, 'default', 'Evoked Edit Product For Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:46', '2024-08-11 19:55:46'),
(1286, 'default', 'Access Edit Product ID number 42 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:47', '2024-08-11 19:55:47'),
(1287, 'default', 'Access Edit Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:55:59', '2024-08-11 19:55:59'),
(1288, 'default', 'Evoked Edit Product For Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:56:10', '2024-08-11 19:56:10'),
(1289, 'default', 'Access Edit Product ID number 43 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:56:13', '2024-08-11 19:56:13'),
(1290, 'default', 'Access Edit Product ID number 51 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:56:28', '2024-08-11 19:56:28'),
(1291, 'default', 'Access Edit Product ID number 78 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:56:53', '2024-08-11 19:56:53'),
(1292, 'default', 'Evoked Edit Product For Product ID number 78 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:57:03', '2024-08-11 19:57:03'),
(1293, 'default', 'Access Edit Product ID number 78 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:57:04', '2024-08-11 19:57:04'),
(1294, 'default', 'Access Edit Product ID number 79 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:57:13', '2024-08-11 19:57:13'),
(1295, 'default', 'Access Edit Product ID number 80 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:57:26', '2024-08-11 19:57:26'),
(1296, 'default', 'Evoked Edit Product For Product ID number 80 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:57:48', '2024-08-11 19:57:48'),
(1297, 'default', 'Access Edit Product ID number 80 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:57:48', '2024-08-11 19:57:48'),
(1298, 'default', 'Access Edit Product ID number 81 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:58:03', '2024-08-11 19:58:03'),
(1299, 'default', 'Evoked Edit Product For Product ID number 81 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:58:43', '2024-08-11 19:58:43'),
(1300, 'default', 'Access Edit Product ID number 81 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:58:44', '2024-08-11 19:58:44'),
(1301, 'default', 'Access Edit Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:58:55', '2024-08-11 19:58:55'),
(1302, 'default', 'Evoked Edit Product For Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:59:05', '2024-08-11 19:59:05'),
(1303, 'default', 'Access Edit Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:59:06', '2024-08-11 19:59:06'),
(1304, 'default', 'Evoked Edit Product For Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:59:18', '2024-08-11 19:59:18'),
(1305, 'default', 'Access Edit Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:59:20', '2024-08-11 19:59:20'),
(1306, 'default', 'Evoked Edit Product For Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:59:53', '2024-08-11 19:59:53'),
(1307, 'default', 'Access Edit Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 19:59:54', '2024-08-11 19:59:54'),
(1308, 'default', 'Evoked Edit Product For Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:00:48', '2024-08-11 20:00:48'),
(1309, 'default', 'Access Edit Product ID number 82 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:00:50', '2024-08-11 20:00:50'),
(1310, 'default', 'Access Edit Product ID number 83 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:07', '2024-08-11 20:01:07'),
(1311, 'default', 'Evoked Edit Product For Product ID number 83 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:24', '2024-08-11 20:01:24'),
(1312, 'default', 'Access Edit Product ID number 83 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:25', '2024-08-11 20:01:25'),
(1313, 'default', 'Access Edit Product ID number 84 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:37', '2024-08-11 20:01:37'),
(1314, 'default', 'Evoked Edit Product For Product ID number 84 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:47', '2024-08-11 20:01:47'),
(1315, 'default', 'Access Edit Product ID number 84 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:48', '2024-08-11 20:01:48'),
(1316, 'default', 'Evoked Edit Product For Product ID number 84 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:58', '2024-08-11 20:01:58'),
(1317, 'default', 'Access Edit Product ID number 84 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:01:59', '2024-08-11 20:01:59'),
(1318, 'default', 'Access Edit Product ID number 85 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:02:19', '2024-08-11 20:02:19'),
(1319, 'default', 'Access Edit Product ID number 91 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:02:44', '2024-08-11 20:02:44'),
(1320, 'default', 'Evoked Edit Product For Product ID number 91 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:02:55', '2024-08-11 20:02:55'),
(1321, 'default', 'Access Edit Product ID number 91 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:02:56', '2024-08-11 20:02:56'),
(1322, 'default', 'Access Edit Product ID number 92 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:03:07', '2024-08-11 20:03:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1323, 'default', 'Evoked Edit Product For Product ID number 92 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:03:16', '2024-08-11 20:03:16'),
(1324, 'default', 'Access Edit Product ID number 92 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:03:17', '2024-08-11 20:03:17'),
(1325, 'default', 'Access Edit Product ID number 93 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:03:29', '2024-08-11 20:03:29'),
(1326, 'default', 'Evoked Edit Product For Product ID number 93 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:03:39', '2024-08-11 20:03:39'),
(1327, 'default', 'Access Edit Product ID number 93 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:03:40', '2024-08-11 20:03:40'),
(1328, 'default', 'Access Edit Product ID number 94 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:03:53', '2024-08-11 20:03:53'),
(1329, 'default', 'Evoked Edit Product For Product ID number 94 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:04:03', '2024-08-11 20:04:03'),
(1330, 'default', 'Access Edit Product ID number 94 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:04:06', '2024-08-11 20:04:06'),
(1331, 'default', 'Access Edit Product ID number 95 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:04:23', '2024-08-11 20:04:23'),
(1332, 'default', 'Evoked Edit Product For Product ID number 95 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:04:35', '2024-08-11 20:04:35'),
(1333, 'default', 'Access Edit Product ID number 95 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:04:37', '2024-08-11 20:04:37'),
(1334, 'default', 'Access Edit Product ID number 96 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:04:48', '2024-08-11 20:04:48'),
(1335, 'default', 'Evoked Edit Product For Product ID number 96 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:05:06', '2024-08-11 20:05:06'),
(1336, 'default', 'Access Edit Product ID number 96 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:05:11', '2024-08-11 20:05:11'),
(1337, 'default', 'Access Edit Product ID number 97 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:05:23', '2024-08-11 20:05:23'),
(1338, 'default', 'Evoked Edit Product For Product ID number 97 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:06:14', '2024-08-11 20:06:14'),
(1339, 'default', 'Access Edit Product ID number 97 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:06:19', '2024-08-11 20:06:19'),
(1340, 'default', 'Access Edit Product ID number 98 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:06:49', '2024-08-11 20:06:49'),
(1341, 'default', 'Evoked Edit Product For Product ID number 98 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:05', '2024-08-11 20:07:05'),
(1342, 'default', 'Access Edit Product ID number 98 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:07', '2024-08-11 20:07:07'),
(1343, 'default', 'Access Edit Product ID number 99 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:23', '2024-08-11 20:07:23'),
(1344, 'default', 'Evoked Edit Product For Product ID number 99 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:34', '2024-08-11 20:07:34'),
(1345, 'default', 'Access Edit Product ID number 99 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:35', '2024-08-11 20:07:35'),
(1346, 'default', 'Access Edit Product ID number 100 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:49', '2024-08-11 20:07:49'),
(1347, 'default', 'Evoked Edit Product For Product ID number 100 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:59', '2024-08-11 20:07:59'),
(1348, 'default', 'Access Edit Product ID number 100 ', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:07:59', '2024-08-11 20:07:59'),
(1349, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:09:32', '2024-08-11 20:09:32'),
(1350, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:10:17', '2024-08-11 20:10:17'),
(1351, 'default', 'Evoked a Switch Slider Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:10:19', '2024-08-11 20:10:19'),
(1352, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-11 20:10:30', '2024-08-11 20:10:30'),
(1353, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-08-12 10:07:49', '2024-08-12 10:07:49'),
(1354, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-12 15:19:13', '2024-08-12 15:19:13'),
(1355, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-12 15:20:57', '2024-08-12 15:20:57'),
(1356, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-12 15:37:25', '2024-08-12 15:37:25'),
(1357, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-12 15:44:45', '2024-08-12 15:44:45'),
(1358, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-12 15:44:59', '2024-08-12 15:44:59'),
(1359, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-08-13 13:56:18', '2024-08-13 13:56:18'),
(1360, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-08-13 13:56:58', '2024-08-13 13:56:58'),
(1361, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-08-13 14:07:28', '2024-08-13 14:07:28'),
(1362, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-08-14 04:25:21', '2024-08-14 04:25:21'),
(1363, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:51:36', '2024-08-14 04:51:36'),
(1364, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:51:44', '2024-08-14 04:51:44'),
(1365, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:52:30', '2024-08-14 04:52:30'),
(1366, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:52:34', '2024-08-14 04:52:34'),
(1367, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:52:38', '2024-08-14 04:52:38'),
(1368, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:52:41', '2024-08-14 04:52:41'),
(1369, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:52:46', '2024-08-14 04:52:46'),
(1370, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:52:49', '2024-08-14 04:52:49'),
(1371, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 04:52:54', '2024-08-14 04:52:54'),
(1372, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 14:56:23', '2024-08-14 14:56:23'),
(1373, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 14:56:28', '2024-08-14 14:56:28'),
(1374, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 14:56:48', '2024-08-14 14:56:48'),
(1375, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 14:57:03', '2024-08-14 14:57:03'),
(1376, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-14 15:24:46', '2024-08-14 15:24:46'),
(1377, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-08-14 15:36:49', '2024-08-14 15:36:49'),
(1378, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-08-14 15:54:52', '2024-08-14 15:54:52'),
(1379, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 00:31:48', '2024-08-16 00:31:48'),
(1380, 'default', 'User Accessed Site Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 00:31:58', '2024-08-16 00:31:58'),
(1381, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 00:32:04', '2024-08-16 00:32:04'),
(1382, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-16 06:01:44', '2024-08-16 06:01:44'),
(1383, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-16 06:05:39', '2024-08-16 06:05:39'),
(1384, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:09:38', '2024-08-16 06:09:38'),
(1385, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:10:03', '2024-08-16 06:10:03'),
(1386, 'default', 'Approved Product ID: 128', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:10:49', '2024-08-16 06:10:49'),
(1387, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:10:53', '2024-08-16 06:10:53'),
(1388, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:41:44', '2024-08-16 06:41:44'),
(1389, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:41:49', '2024-08-16 06:41:49'),
(1390, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:42:04', '2024-08-16 06:42:04'),
(1391, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:42:10', '2024-08-16 06:42:10'),
(1392, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:42:22', '2024-08-16 06:42:22'),
(1393, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 06:42:27', '2024-08-16 06:42:27'),
(1394, 'default', 'User Accessed Social Media Settings Page', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 08:08:52', '2024-08-16 08:08:52'),
(1395, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-08-16 08:17:12', '2024-08-16 08:17:12'),
(1396, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 15:21:58', '2024-08-16 15:21:58'),
(1397, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 15:22:16', '2024-08-16 15:22:16'),
(1398, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 15:42:18', '2024-08-16 15:42:18'),
(1399, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-16 15:42:26', '2024-08-16 15:42:26'),
(1400, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-17 10:35:45', '2024-08-17 10:35:45'),
(1401, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-17 10:37:08', '2024-08-17 10:37:08'),
(1402, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-17 10:48:24', '2024-08-17 10:48:24'),
(1403, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-17 11:34:49', '2024-08-17 11:34:49'),
(1404, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-17 11:36:43', '2024-08-17 11:36:43'),
(1405, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-18 13:52:14', '2024-08-18 13:52:14'),
(1406, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-18 14:04:34', '2024-08-18 14:04:34'),
(1407, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-18 14:07:37', '2024-08-18 14:07:37'),
(1408, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 23, '[]', NULL, '2024-08-20 12:33:03', '2024-08-20 12:33:03'),
(1409, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-20 14:10:57', '2024-08-20 14:10:57'),
(1410, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-20 14:13:12', '2024-08-20 14:13:12'),
(1411, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-20 14:14:57', '2024-08-20 14:14:57'),
(1412, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-20 14:17:01', '2024-08-20 14:17:01'),
(1413, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 31, '[]', NULL, '2024-08-20 17:36:48', '2024-08-20 17:36:48'),
(1414, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 31, '[]', NULL, '2024-08-20 17:41:20', '2024-08-20 17:41:20'),
(1415, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 31, '[]', NULL, '2024-08-20 17:42:54', '2024-08-20 17:42:54'),
(1416, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 31, '[]', NULL, '2024-08-20 17:47:32', '2024-08-20 17:47:32'),
(1417, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:57:23', '2024-08-20 17:57:23'),
(1418, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:57:38', '2024-08-20 17:57:38'),
(1419, 'default', 'Approved Product ID: 135', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:08', '2024-08-20 17:58:08'),
(1420, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:08', '2024-08-20 17:58:08'),
(1421, 'default', 'Approved Product ID: 130', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:14', '2024-08-20 17:58:14'),
(1422, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:15', '2024-08-20 17:58:15'),
(1423, 'default', 'Approved Product ID: 131', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:21', '2024-08-20 17:58:21'),
(1424, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:21', '2024-08-20 17:58:21'),
(1425, 'default', 'Approved Product ID: 134', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:28', '2024-08-20 17:58:28'),
(1426, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:29', '2024-08-20 17:58:29'),
(1427, 'default', 'Approved Product ID: 133', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:39', '2024-08-20 17:58:39'),
(1428, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-20 17:58:40', '2024-08-20 17:58:40'),
(1429, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-08-22 02:13:00', '2024-08-22 02:13:00'),
(1430, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-08-22 17:39:14', '2024-08-22 17:39:14'),
(1431, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:47:27', '2024-08-26 16:47:27'),
(1432, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:48:08', '2024-08-26 16:48:08'),
(1433, 'default', 'Approved Product ID: 138', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:48:29', '2024-08-26 16:48:29'),
(1434, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:48:31', '2024-08-26 16:48:31'),
(1435, 'default', 'Approved Product ID: 139', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:48:42', '2024-08-26 16:48:42'),
(1436, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:48:47', '2024-08-26 16:48:47'),
(1437, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:49:13', '2024-08-26 16:49:13'),
(1438, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:49:18', '2024-08-26 16:49:18'),
(1439, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:49:44', '2024-08-26 16:49:44'),
(1440, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:49:50', '2024-08-26 16:49:50'),
(1441, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:49:53', '2024-08-26 16:49:53'),
(1442, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:50:04', '2024-08-26 16:50:04'),
(1443, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-26 16:50:12', '2024-08-26 16:50:12'),
(1444, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-27 05:53:32', '2024-08-27 05:53:32'),
(1445, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-27 05:53:51', '2024-08-27 05:53:51'),
(1446, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-27 05:54:16', '2024-08-27 05:54:16'),
(1447, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 30, '[]', NULL, '2024-08-27 05:54:37', '2024-08-27 05:54:37'),
(1448, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-27 06:00:06', '2024-08-27 06:00:06'),
(1449, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-27 06:00:15', '2024-08-27 06:00:15'),
(1450, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-28 10:14:16', '2024-08-28 10:14:16'),
(1451, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-08-30 07:25:15', '2024-08-30 07:25:15'),
(1452, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 31, '[]', NULL, '2024-08-30 16:02:28', '2024-08-30 16:02:28'),
(1453, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 31, '[]', NULL, '2024-08-30 16:08:11', '2024-08-30 16:08:11'),
(1454, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-02 14:10:27', '2024-09-02 14:10:27'),
(1455, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-02 14:10:41', '2024-09-02 14:10:41'),
(1456, 'default', 'Approved Product ID: 141', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-02 14:11:02', '2024-09-02 14:11:02'),
(1457, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-02 14:11:03', '2024-09-02 14:11:03'),
(1458, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-02 15:05:00', '2024-09-02 15:05:00'),
(1459, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-09-03 04:51:06', '2024-09-03 04:51:06'),
(1460, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 9, '[]', NULL, '2024-09-03 04:51:51', '2024-09-03 04:51:51'),
(1461, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-04 03:25:31', '2024-09-04 03:25:31'),
(1462, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-04 03:25:44', '2024-09-04 03:25:44'),
(1463, 'default', 'Approved Product ID: 142', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-04 03:25:50', '2024-09-04 03:25:50'),
(1464, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-04 03:25:50', '2024-09-04 03:25:50'),
(1465, 'default', 'Evoked a delete How it works Request', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-04 03:26:43', '2024-09-04 03:26:43'),
(1466, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-04 03:26:46', '2024-09-04 03:26:46'),
(1467, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-10 08:58:56', '2024-09-10 08:58:56'),
(1468, 'default', 'Accessed All Products', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-10 08:59:12', '2024-09-10 08:59:12'),
(1469, 'default', 'User Accessed the Admins Dashboard', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-09-10 09:26:19', '2024-09-10 09:26:19'),
(1470, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-09-17 12:52:34', '2024-09-17 12:52:34'),
(1471, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-09-17 12:52:42', '2024-09-17 12:52:42'),
(1472, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-09-17 12:53:50', '2024-09-17 12:53:50'),
(1473, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-09-17 13:05:52', '2024-09-17 13:05:52'),
(1474, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-09-17 13:06:53', '2024-09-17 13:06:53'),
(1475, 'default', 'Evoked add Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 14, '[]', NULL, '2024-09-17 13:14:19', '2024-09-17 13:14:19'),
(1476, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:05', '2024-09-30 12:25:05'),
(1477, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:10', '2024-09-30 12:25:10'),
(1478, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:15', '2024-09-30 12:25:15'),
(1479, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:16', '2024-09-30 12:25:16'),
(1480, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:16', '2024-09-30 12:25:16'),
(1481, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:16', '2024-09-30 12:25:16'),
(1482, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:16', '2024-09-30 12:25:16'),
(1483, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:17', '2024-09-30 12:25:17'),
(1484, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:17', '2024-09-30 12:25:17'),
(1485, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:17', '2024-09-30 12:25:17'),
(1486, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:24', '2024-09-30 12:25:24'),
(1487, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:25', '2024-09-30 12:25:25'),
(1488, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:25', '2024-09-30 12:25:25'),
(1489, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:25:25', '2024-09-30 12:25:25'),
(1490, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:27:16', '2024-09-30 12:27:16'),
(1491, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:27:21', '2024-09-30 12:27:21'),
(1492, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:27:22', '2024-09-30 12:27:22'),
(1493, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:34', '2024-09-30 12:30:34'),
(1494, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:36', '2024-09-30 12:30:36'),
(1495, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:41', '2024-09-30 12:30:41'),
(1496, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:42', '2024-09-30 12:30:42'),
(1497, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:44', '2024-09-30 12:30:44'),
(1498, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:44', '2024-09-30 12:30:44'),
(1499, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:44', '2024-09-30 12:30:44'),
(1500, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:45', '2024-09-30 12:30:45'),
(1501, 'default', 'Evoked edit Product Operation', NULL, NULL, NULL, 'App\\Models\\User', 8, '[]', NULL, '2024-09-30 12:30:45', '2024-09-30 12:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `active`, `slung`, `type`, `title`, `tags`, `video`, `meta`, `content`, `author`, `category`, `image`, `image_one`, `image_two`, `image_three`, `image_four`, `created_at`, `updated_at`) VALUES
(1, 1, 'some-update-about-creatives-1', 'News', 'Some Update About Creatives 1', NULL, NULL, 'This is a sample meta data', '<p>DhiWise is a programming platform where you can convert your designs into developer-friendly code for Mobile and web apps. DhiWise automates the application development lifecycle and instantly generates readable, modular and reusable code for React and Flutter Apps at blazing fast speed without comprising on code-quality and developer-experience.</p>', '2', '5', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/pic2.png', NULL, NULL, NULL, '2024-07-04 12:27:06', '2024-07-06 12:27:06'),
(2, 1, 'some-update-about-creatives-2', 'News', 'Some Update About Creatives 2', NULL, NULL, 'Some Update About Creatives 2', '<p>This is the place where you can find official information on how to use DhiWise effectively for your Web and Mobile App development. Dig into our documentation and quickstart guides. From syncing your Figma designs with DhiWise to how to use modified DhiWise code in your favourite IDEs, we&rsquo;ve got you covered with everything.</p>', '2', '3', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/pic2.png', NULL, NULL, NULL, '2024-07-04 12:32:20', '2024-07-06 12:32:20'),
(3, 1, 'some-update-about-creatives-3', 'News', 'Some Update About Creatives 3', NULL, NULL, 'Smart Editor cover all the developer\'s ergonomics right here! It provides the right and easy-to-get hands-on amount of creative space to a developer to build the app they desire.', '<p>Smart Editor cover all the developer&#39;s ergonomics right here! It provides the right and easy-to-get hands-on amount of creative space to a developer to build the app they desire.</p>', '2', '8', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/pic2.png', NULL, NULL, NULL, '2024-07-02 12:33:14', '2024-07-06 12:33:14'),
(5, 1, 'some-update-about-creatives-11', 'News', 'Some Update About Creatives 11', NULL, NULL, 'This is a sample meta data', '<p>DhiWise is a programming platform where you can convert your designs into developer-friendly code for Mobile and web apps. DhiWise automates the application development lifecycle and instantly generates readable, modular and reusable code for React and Flutter Apps at blazing fast speed without comprising on code-quality and developer-experience.</p>', '2', '5', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/pic2.png', NULL, NULL, NULL, '2024-07-04 12:27:06', '2024-07-06 12:27:06'),
(6, 1, 'some-update-about-creatives-21', 'News', 'Some Update About Creatives 21', NULL, NULL, 'Some Update About Creatives 2', '<p>This is the place where you can find official information on how to use DhiWise effectively for your Web and Mobile App development. Dig into our documentation and quickstart guides. From syncing your Figma designs with DhiWise to how to use modified DhiWise code in your favourite IDEs, we&rsquo;ve got you covered with everything.</p>', '2', '3', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/pic2.png', NULL, NULL, NULL, '2024-07-04 12:32:20', '2024-07-06 12:32:20'),
(7, 1, 'some-update-about-creatives-31', 'News', 'Some Update About Creatives 31', NULL, NULL, 'Smart Editor cover all the developer\'s ergonomics right here! It provides the right and easy-to-get hands-on amount of creative space to a developer to build the app they desire.', '<p>Smart Editor cover all the developer&#39;s ergonomics right here! It provides the right and easy-to-get hands-on amount of creative space to a developer to build the app they desire.</p>', '2', '8', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/pic2.png', NULL, NULL, NULL, '2024-07-02 12:33:14', '2024-07-06 12:33:14'),
(8, 1, 'some-update-about-creatives-311', 'County Bounty', 'Some Update About Creatives 311', NULL, NULL, 'Smart Editor cover all the developer\'s ergonomics right here! It provides the right and easy-to-get hands-on amount of creative space to a developer to build the app they desire.', '<p>Smart Editor cover all the developer&#39;s ergonomics right here! It provides the right and easy-to-get hands-on amount of creative space to a developer to build the app they desire.</p>', '2', '8', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/pic2.png', NULL, NULL, NULL, '2024-07-02 12:33:14', '2024-07-06 12:33:14'),
(9, 1, 'change-perception-change-society', 'Artisan Voices', 'Change Perception Change Society', NULL, NULL, 'Perspectives', '<p>In the labyrinth of human existence, artisans emerge as alchemists of perception, wielding the transformative power of artistic creativity to sculpt the very fabric of society. Beyond mere aesthetics, their craft becomes a vessel for profound philosophical inquiry, catalyzing a paradigm shift in the way individuals perceive themselves, others, and the world around them.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At the heart of this metamorphosis lies the recognition that art transcends the boundaries of language, culture, and time, serving as a universal language that speaks to the depths of the human soul. Through the strokes of a painter&#39;s brush, the chisel of a sculptor&#39;s hand, or the cadence of a poet&#39;s verse, artisans evoke emotions, provoke introspection, and challenge the status quo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In a world plagued by division and discord, artisans emerge as custodians of empathy, offering glimpses into the lived experiences of others and fostering a sense of interconnectedness among disparate souls. Their creations serve as mirrors reflecting the multifaceted nature of human existence, inviting viewers to confront their biases, contain their biases, and embrace the beauty of diversity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Moreover, artisans are architects of imagination, constructing alternate realities that transcend the constraints of the mundane and inspire visions of what could be. In their hands, the ordinary is transfigured into the extraordinary, inviting viewers to reimagine the possibilities inherent in every moment and every encounter.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yet, perhaps most profoundly, artisans are sowers of seeds, planting the kernels of change that germinate in the fertile soil of collective consciousness. Through their works, they challenge ingrained beliefs, subvert dominant narratives, and ignite the flames of social progress. Whether by challenging gender norms through feminist literature, confronting societal injustices through protest art, or advocating for environmental stewardship through eco-friendly design, artisans catalyze a ripple effect that reverberates far beyond the confines of the studio or gallery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In essence, artisans are catalysts of evolution, guiding humanity on a journey of self-discovery, empathy, and transformation. Theirs is a sacred calling that transcends the boundaries of time and space, shaping the course of history and illuminating the path toward a more enlightened society. As we behold their creations, let us not merely admire their beauty but heed the whispers of wisdom they impart, for in the hands of artisans lies the power to change not only perceptions but the very essence of our shared reality.</p>', '2', '3', NULL, 'https://wakazi.rickelectronics.co.ke/public/uploads/blogs/Perspectives.jpg', NULL, NULL, NULL, '2024-07-04 12:32:20', '2024-07-06 12:32:20'),
(11, 1, 'kenyas-enchanting-cultural-tapestry', 'County Bounty', 'Kenya\'s Enchanting Cultural Tapestry', NULL, NULL, 'Smart Editor cover all the developer\'s ergonomics right here! It provides the right and easy-to-get hands-on amount of creative space to a developer to build the app they desire.', '<p>In the kaleidoscope of Kenya&#39;s cultural tapestry, each of its 47 counties weaves a unique thread, contributing to the vibrant mosaic of diversity that defines this East African gem. From the UNESCO-recognized cultural sites of the coastal region to the bustling metropolis of Nairobi and the tranquil shores of the Lake Regions in the west, Kenya&#39;s artistic richness knows no bounds.</p>\r\n\r\n<blockquote>\r\n<p>Here, the intricate carvings of Swahili doorways tell tales of centuries past</p>\r\n</blockquote>\r\n\r\n<p>Let&#39;s begin our journey along the sun-kissed shores of the Kenyan coast, where the whispers of Swahili culture resonate through the narrow streets of Lamu Old Town, a UNESCO World Heritage Site. Here, the intricate carvings of Swahili doorways tell tales of centuries past, while the rhythmic beats of taarab music transport listeners to distant lands and eras. Mombasa, with its bustling markets and iconic Fort Jesus, stands as a testament to the enduring fusion of Arab, Indian, and African influences, creating a melting pot of flavors, traditions, and artistry.</p>\r\n\r\n<p>Venturing inland, Nairobi beckons with its dynamic energy and cosmopolitan charm. As the beating heart of Kenya, this metropolis is a microcosm of the nation&#39;s diversity, where skyscrapers rise alongside traditional markets and sprawling green spaces. In the streets of Nairobi, one can witness the convergence of tribal traditions, urban trends, and global influences, reflected in the vibrant street art adorning its walls and the eclectic mix of cuisines sizzling in its eateries.</p>\r\n\r\n<p>But Kenya&#39;s cultural wealth extends far beyond its urban centers, reaching deep into the tranquil landscapes of the Lake Regions in western Kenya. Along the shores of Lake Victoria, traditional fishing communities thrive, their way of life intertwined with the rhythms of the water and the songs of the birds. Here, the art of storytelling comes alive around evening fires, as elders pass down ancient tales of heroism and wisdom to the next generation.</p>\r\n\r\n<p>In Kisumu, the capital of the Lake Region, the vibrant arts scene pulses with creativity, from the colorful murals celebrating local legends to the melodious sounds of Benga music echoing across the city. A short hop back to the shores of Lake Naivasha and Lake Nakuru, where the waters teem with flamingos and hippos, the Maasai and Kikuyu peoples pay homage to the land through their intricate beadwork and vibrant ceremonies.</p>\r\n\r\n<p>Across Kenya&#39;s 47 counties, from the snow-capped peaks of Mount Kenya to the savannahs of the Maasai Mara, this land&#39;s cultural diversity and artistic richness&nbsp;are woven into every fabric of society. It is a testament to the resilience and creativity of its people, who continue to celebrate their heritage while embracing the winds of change. In Kenya, cultural diversity is not just a fact; it is a source of pride, unity, and inspiration for generations to come.</p>', '2', '3', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/blogs/unsplash_EIjBDhMz2Z0_weaving .jpg', NULL, NULL, NULL, '2024-07-02 12:33:14', '2024-07-06 12:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('dymantic_instagram_feed:1', 'a:76:{i:0;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/437554436_1063935741936835_6770639213757397824_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=78Bk1-B49cUQ7kNvgFqZIep&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDYieDghZDN7w5wwIIn7xKqsti2YfUbB1kZ6B0Sr04QMg&oe=66C4CD32\";s:2:\"id\";s:17:\"18011251934346434\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/C57_vDooYY2/\";s:7:\"caption\";s:332:\"We had the privilege of collaborating with a developers\' company on some incredible housing projects in the Lavington, Kileleshwa, and Kilimani areas. You\'ve got to see these! Their projects are truly impressive. Check them out at https://valuxe.pro/! 🏡 #RealEstate #DreamHomes #Lavington #Kileleshwa #Kilimani #realestetewebsite\";s:9:\"timestamp\";s:24:\"2024-04-19T09:07:04+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:1;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/420633847_290318644075206_3372977143638955731_n.heic?stp=dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=ZLexp_xU6h0Q7kNvgFMVLQ1&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAcB8Wvu7XI9oNSl95ON80881SVnYrCDg5jGR_zlW3GAA&oe=66C4D9DA\";s:2:\"id\";s:17:\"18024296713962585\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/C3rg_dHCtgM/\";s:7:\"caption\";s:517:\"Passionate about transforming business visions into digital reality through innovative software solutions. As seasoned software developers, We specialize in crafting customized applications that elevate operational efficiency, enhance user experiences, and drive sustainable growth. With a keen understanding of business needs, We strive to create scalable and robust software tailored to optimize processes and meet organizational objectives. Let\'s collaborate to turn your business goals into technological triumphs\";s:9:\"timestamp\";s:24:\"2024-02-23T06:27:46+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:2;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/414434262_982905470039863_7398316931986925449_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=08mNrQfCrKcQ7kNvgElSffC&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYC6eWARgSfoQKrCAhUL-vW0caX4wKG4FUWgr3Jczhp9eg&oe=66C4DF44\";s:2:\"id\";s:17:\"17938800698782977\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/C1Pl2eMLWG_/\";s:7:\"caption\";s:79:\"#website #WebDesign #WebDevelopment #ecommerce #brandingdesign #seo #designekta\";s:9:\"timestamp\";s:24:\"2023-12-24T17:08:43+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:3;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/380661072_917752693221808_8542649360966412710_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=Nga1tYAC7UUQ7kNvgHyPFKO&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCWETmXJTDww2NiOAZik_4Tq0_pAqHqC8CF18tXId6sDw&oe=66C4DBEF\";s:2:\"id\";s:17:\"17987966294351580\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CxVEM_dodpj/\";s:7:\"caption\";s:1416:\"Introducing Shaqs Farm Limited: Your Trusted Agribusiness Partner! \n\nAre you looking for top-notch agricultural products and services? Look no further! Shaqs Farm Limited is here to meet all your agricultural needs. \n\n🌽 What They Offer 🌽\nAt Shaqs Farm Limited, we specialize in planting and supplying high-grade products, including:\n\n🍉 High-Quality Watermelons\n🧄 Fresh Garlic\n🌰 Premium Onions\n🐓 Farm-Fresh Chicken\n🐖 Healthy Pigs\n\nShaqs Farm\'s commitment to quality and sustainability ensures that you get nothing but the best from our farms to your table. \n\n🚜 Why Choose Shaqs Farm Limited? 🚜\n\nQuality Assurance: We take pride in delivering products of the highest quality to our customers.\n\nSustainable Farming: We prioritize eco-friendly and sustainable farming practices.\nDiverse Range: From sweet watermelons to savory garlic and everything in between, we\'ve got it all.\n\nReliable Supply: Count on us for consistent and timely deliveries.\n\nVisit Our Website: Explore our products and learn more about us at shaqsfarm.com.\nJoin us on our journey to promote responsible agriculture and provide you with the finest produce available! 🌍🌱\n\n📞 Contact Us Today! 📞\nHave questions or ready to place an order? Reach out to the:\n📧 Email: info@shaqsfarm.com\n📱 Phone: +1 (202) 540 0134\n\nLet\'s grow together with Shaqs Farm Limited! 🌱🚜 #ShaqsFarm #Agriculture #QualityProduce\";s:9:\"timestamp\";s:24:\"2023-09-18T10:04:34+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:4;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/377700873_914853206845090_6363590845608492978_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=VAqJZs4K8AsQ7kNvgFDJ0hV&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAUpZiBpCY-yYNxvsrkxPKKE02yoaemwxjmdoZt5ssX0A&oe=66C4E3BF\";s:2:\"id\";s:17:\"18107065519334292\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CxKYAsmI9Nb/\";s:7:\"caption\";s:1242:\"Exciting News! Explore Africa with Halisi Africa Discoveries \n\nAre you ready to embark on a breathtaking adventure across the enchanting landscapes of Africa? Look no further than Halisi Africa Discoveries! \n\nDiscover the heart of Africa with us at https://halisiafricadiscoveries.com/ 🌐. \n\nOur dedicated team is passionate about crafting unforgettable travel experiences that will leave you in awe. \n\n🦁🐘 What sets us apart:\n\n✨ Tailor-made Tours: Customize your journey to suit your preferences and interests.\n\n✨ Expert Guides: Our knowledgeable guides will unveil Africa\'s hidden treasures.\n\n✨ Authentic Experiences: Immerse yourself in local cultures and traditions.\n\n✨ Sustainable Travel: We\'re committed to preserving Africa\'s natural beauty.\n\nJoin us on this unforgettable journey and create memories that will last a lifetime. 📸 Share your favorite travel moments with us using #HalisiAfricaDiscoveries! 📷\n\nBook your dream African adventure today! Visit \n\nhttps://halisiafricadiscoveries.com/ to explore our tour packages and start planning your next adventure. 🌍🌟\n\nDon\'t just dream about Africa—experience it with Halisi Africa Discoveries! ✨🌿 #TravelAfrica #HalisiAfricaDiscoveries #AdventureAwaits\";s:9:\"timestamp\";s:24:\"2023-09-14T06:26:01+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:5;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/377569072_914192403577837_137751701409779188_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=-Why7YjTQaAQ7kNvgFA9z7O&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDjEEvaMLICs65wzQ3_ztUICrdi5BJWpLj-dnL9v-rCcA&oe=66C4C526\";s:2:\"id\";s:17:\"18050512936486086\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CxIBa8XoOlb/\";s:7:\"caption\";s:1520:\"Discover the Best Forex Academy in Nairobi: PipdotFx Consultants Limited! \n\nAre you ready to unlock the secrets of financial success through Forex trading? Look no further than PipdotFx Consultants Limited, your ultimate destination for Forex education right here in Nairobi!\n\n🌐 Website: pipdotfx.com\n\nWhy choose PipdotFx Consultants Limited?\n\n✅ Expert Guidance: Our team of seasoned Forex traders and educators are dedicated to providing you with the knowledge and skills you need to thrive in the Forex market.\n\n📚 Comprehensive Courses: From beginner to advanced levels, we offer a wide range of courses tailored to suit your needs and experience.\n\n💹 Practical Training: Get hands-on experience with live trading sessions, strategies, and risk management techniques.\n\n💡 Cutting-Edge Tools: Gain access to the latest trading tools and technologies to stay ahead in the market.\n\n🤝 Supportive Community: Join a supportive community of traders, share insights, and network with like-minded individuals.\n\n🏆 Proven Success: Our track record speaks for itself, with numerous success stories from our satisfied students.\n\nDon\'t miss out on the opportunity to take control of your financial future. Visit our website at pipdotfx.com to learn more about our courses and how we can help you embark on your Forex trading journey.\n\nReady to make a positive change in your financial life? Join PipdotFx Consultants Limited today! 🚀💹 #Forex #ForexTrading #NairobiForex #PipdotFxConsultants #FinancialSuccess\";s:9:\"timestamp\";s:24:\"2023-09-13T08:30:08+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:6;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/376819650_912791017051309_532450642011480566_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=wcY5h8IIVe4Q7kNvgGzAH0a&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAzjkwYGfhz175Sf9VexW2alBI8pIELVU3NBzS1oQWv5Q&oe=66C4DCE9\";s:2:\"id\";s:17:\"17992379072203634\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CxC0IzAIqDI/\";s:7:\"caption\";s:888:\"✨ Say goodbye to dirt and hello to cleanliness with Nairobi\'s best Cleaning Company - Treven Cleaners! 🧹✨\n\nWhen it comes to keeping your space spick and span, Treven Cleaners is the name you can trust. 🏡✨\n\nWhy choose Treven Cleaners?\n🌟 Professional Excellence: Their skilled team delivers unmatched cleaning services.\n🧼 Tailored Solutions: They customize their services to meet your specific needs.\n🕒 Punctuality: Timeliness is their priority - they won\'t keep you waiting.\n💎 Quality Assurance: Only top-notch cleaning products and techniques are used.\n\nDiscover the magic of a spotless home or workspace by visiting their website at www.trevencleanersltd.co.ke. You\'ll be amazed by the transformation!\n\nDon\'t wait any longer. Contact Treven Cleaners today for a cleaner, fresher, and healthier environment. 🌆🧽 #CleanAndFresh #NairobiCleaning #TrevenCleaners\";s:9:\"timestamp\";s:24:\"2023-09-11T07:57:52+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:7;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/376628712_910761580587586_914278878532344566_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=gNBbr9XfTxkQ7kNvgEqA8WH&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDf19VOm4rG-9OlCsXLuPcQHloqO0BhvN5xKzTsrhHraw&oe=66C4C923\";s:2:\"id\";s:17:\"17970044543604571\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cw7CSjYI8e6/\";s:7:\"caption\";s:670:\"Looking to transform your workspace into a masterpiece? Look no further! Kenya\'s best interior fitting contractor is here to turn your dreams into reality.\n\nIntroducing Creation Office Fitouts - where creativity meets functionality. With their unmatched expertise and dedication to excellence, they\'ll revamp your office space like never before.\n\nVisit their website at www.creationltd.co.ke to explore their portfolio and see their incredible work for yourself.\n\nDon\'t miss out on the chance to work with Kenya\'s top interior fitting contractor. Contact Creation Office Fitouts today and bring your office space to life! #OfficeMakeover #InteriorDesign #CreationFitouts\";s:9:\"timestamp\";s:24:\"2023-09-08T07:27:36+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:8;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/375175670_910049570658787_8973246007097565917_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=zc46HUnMwVEQ7kNvgGqrQ9S&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYA-VvskEdtx9ZV0a9x_iCvtywmovAiXRv168kNCAan7Tg&oe=66C4DFF2\";s:2:\"id\";s:17:\"18263958862088066\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cw4W0Z8oyLp/\";s:7:\"caption\";s:934:\"Accessories Kenya - Your Number #1 Supplier of Computer and Phone Accessories! \n\n🌐 Website: accessories.co.ke\n\nAre you in need of high-quality accessories for your gadgets and devices? Look no further! Accessories Kenya has got you covered with a wide range of computer and phone accessories to enhance your digital experience. \n\nWhy choose us?\n✅ Top-notch quality products\n✅ Unbeatable selection\n✅ Competitive prices\n✅ Convenient online shopping\n✅ Fast and reliable delivery\n\nOur website, accessories.co.ke, is your one-stop destination for all your accessory needs. Browse through our extensive catalog and find the perfect add-ons for your tech gadgets.\n\nDon\'t miss out on the latest deals and must-have accessories! Visit our website today and elevate your tech game with Accessories Kenya. \n\n#AccessoriesKenya #TechAccessories #OnlineShopping #DesignektaStudios #QualityProducts #DigitalExperience #NumberOneSupplier\";s:9:\"timestamp\";s:24:\"2023-09-07T06:29:16+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:9;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/375187601_909329537397457_6770888255921422533_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=TraW2lWXjE8Q7kNvgHLw-v7&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAxe2S9uIW-9Im44fGpWk7Lt2S-jqVLlWht-N64shikzg&oe=66C4D31E\";s:2:\"id\";s:17:\"17891310386822757\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cw10ocaoJoy/\";s:7:\"caption\";s:879:\"Discover the best Interior Designers in Kampala! Introducing Ribye Designers Limited, your ultimate destination for breathtaking interior transformations. \n\nWith a passion for creativity and an eye for detail, Ribye Designers Limited (ribye.co.ug) is setting the standard for interior design excellence in Kampala and beyond\n\nCheck out their website, ribye.co.ug, for a glimpse into their impressive portfolio and to explore the endless possibilities of interior design.\n\nWhether you\'re looking to revamp your home, office, or commercial space, Ribye Designers Limited has the expertise and creativity to turn your vision into reality.\n\nDon\'t miss out on the chance to work with the very best in the industry. Contact Ribye Designers Limited today and elevate your interior design game to new heights!\n\n 📞🏠 #InteriorDesign #Kampala #DesignektaStudios #TransformationMasters\";s:9:\"timestamp\";s:24:\"2023-09-06T06:52:03+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:10;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/374772210_908639607466450_4476194776899874835_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=18de74&_nc_ohc=4G0PF4xXMw0Q7kNvgFvhM1E&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAhC8H_lJUdE2N6gCk_ln1QYBeyN4C1QEYLv6p7qz2tsA&oe=66C4DAB6\";s:2:\"id\";s:17:\"17965740899617963\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CwzRJXNIHce/\";s:7:\"caption\";s:1811:\"Discover Excellence in Engineering with Apex Engineering Limited! \n\nAre you looking for top-notch engineering solutions in Somalia? Look no further! \n\n🚀 At Apex Engineering Limited, we\'re proud to be your premier choice for engineering services that drive innovation and excellence in Somalia. 🇸🇴\n\n💡 Why choose Apex Engineering Limited?\n\n✅ Expertise: Our team of seasoned engineers boasts years of experience and unmatched expertise in various engineering fields.\n\n✅ Cutting-Edge Technology: We leverage the latest technology and industry best practices to deliver superior results.\n\n✅ Comprehensive Solutions: From construction to infrastructure, our services cover a wide range of engineering needs.\n\n✅ Quality Assurance: We adhere to the highest standards to ensure your project\'s success.\n\n✅ Local Presence: We are deeply rooted in Somalia, understanding its unique challenges and opportunities.\n\nBut that\'s not all! Our commitment to excellence extends beyond engineering. We\'re excited to share that our website, www.apexengltd.com, has been designed by the creative geniuses at Designekta Studios! 🎨✨\n\nReady to embark on your next engineering project with the best in the business? Visit their website now to learn more about our services, portfolio, and how we can turn your vision into reality.\n\n👉 www.apexengltd.com\n\nDon\'t miss out on the opportunity to work with the finest engineering firm in Somalia. Contact Apex Engineering Limited today, and let\'s build a brighter future together!\n\n📞 Contact us at: Info@apexengltd.com\n\n📍 Find us at Mogadishu Office: Buula Huubey, Wadajir District, Mogadishu, Somalia.\n\n🌐 Visit our website: www.apexengltd.com\n\n#ApexEngineeringLimited #EngineeringExcellence #SomaliaEngineering #DesignektaStudios #InnovationInEngineering\";s:9:\"timestamp\";s:24:\"2023-09-05T07:03:30+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:11;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/374721780_908078190855925_4674624714729822334_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=eRP_nZIafV8Q7kNvgGTl5ch&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAfZ3Qd1Z7AnL9lvat0pODET9WVQNn2IpdPQyXwxRe1_g&oe=66C4C371\";s:2:\"id\";s:17:\"17845631247054634\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cww8UIao-38/\";s:7:\"caption\";s:1193:\"Looking for a hassle-free laptop rental experience? Look no further! 🖥️\n\nWe\'re thrilled to introduce you to Royaltech Computers Limited - your go-to destination for top-notch laptop rentals. 🎉\n\n🌐 Website: royaltech.co.ke\n\nAt Royaltech, we understand your need for flexibility, whether you\'re a student, a professional, or a business owner. That\'s why we offer a wide range of laptops for hire to cater to all your needs. 💼💻\n\nWhy choose us?\n\n✅ High-Quality Laptops\n\n✅ Competitive Prices\n\n✅ Flexible Rental Terms\n\n✅ Prompt Customer Support\n\nAnd guess what? Our sleek and user-friendly website was expertly crafted by Designekta Studios! 🎨🖌️\n\n🎨 Website by Designekta Studios: designekta.com\n\nDesignekta Studios is known for its cutting-edge design and user-focused approach. Together with Royaltech Computers Limited, they\'ve created a seamless online experience for you.\n\nReady to rent a laptop or simply curious about our services? Visit our website today and explore the world of Royaltech Computers Limited! 🚀\n\nDon\'t forget to like, share, and spread the word about this fantastic opportunity! 🌟 #RoyaltechComputers #LaptopRental #TechnologySolutions\";s:9:\"timestamp\";s:24:\"2023-09-04T09:22:59+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:12;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/374662083_906842884312789_3680450148092620812_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=kWM8CikrhdIQ7kNvgHuQwrn&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCkTVl1rEAiIQUQTbJWi-2FKk60X7OB4A_kww6me6bdoQ&oe=66C4CC2F\";s:2:\"id\";s:17:\"17888698220903769\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CwsIGeYItVQ/\";s:7:\"caption\";s:1354:\"Explore East Africa\'s Hidden Wonders with Secret Trek Africa! \n\nAt Designekta Studios, we\'re thrilled to shine a spotlight on one of our amazing clients, Secret Trek Africa (Website: secret-trekafrica.com). \n\nAre you ready for the adventure of a lifetime? Discover the breathtaking landscapes, vibrant cultures, and incredible wildlife that East Africa has to offer! Secret Trek Africa is your ultimate guide to unforgettable trek tours and travel experiences in this stunning region. \n\nWhether you dream of embarking on a safari in the Serengeti, trekking to the summit of Mount Kilimanjaro, or exploring the enchanting beauty of Zanzibar, Secret Trek Africa has you covered? Their expert team ensures every moment of your journey is filled with wonder and discovery. \n\nWhy choose Secret Trek Africa? 🌟\n✅ Unparalleled local knowledge\n✅ Experienced guides\n✅ Sustainable and responsible travel\n✅ Customized itineraries\n✅ Memorable encounters with wildlife\n\nDon\'t miss out on the chance to experience the heart of East Africa like never before. Head over to secret-trekafrica.com and start planning your next adventure today! \n\nFollow Secret Trek Africa on their social media channels to stay updated with their latest adventures and travel tips. \n\n#SecretTrekAfrica #EastAfrica #TrekkingTours #AdventureAwaits #TravelAfrica #DesignektaStudios\";s:9:\"timestamp\";s:24:\"2023-09-02T12:29:46+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:13;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/371912747_906035867726824_626379085454779164_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=VrbQJQL_UQEQ7kNvgGRUky1&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCAlt9XwgRmUhrAZYGvFMpxjg8vMddi2Ivk_dP8efESsw&oe=66C4B665\";s:2:\"id\";s:17:\"17978619311408221\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CwpSRSUoZZB/\";s:7:\"caption\";s:736:\"Megapipes Solutions Limited stands as a beacon of innovation and commitment to eco-friendly solutions, offering state-of-the-art products that play a pivotal role in building a more sustainable future. 💚🌱\n\nTheir dedication to excellence, quality, and environmentally responsible practices has made them the industry\'s go-to choice for large-diameter plastic pipes. \n\nWe\'re proud to be a part of their journey, and we invite you to explore their website (www.megapipes.com) to learn more about the incredible work they do! \n\nLet\'s celebrate the success of Megapipes Solutions Limited and the positive impact they\'re making on our world. 🎉🌍 #MegapipesSolutions #SustainableInfrastructure #Innovation #largediameterplasticpipes\";s:9:\"timestamp\";s:24:\"2023-09-01T10:00:55+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:14;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/371887485_905221134474964_5809103467767041415_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=tzf4CzGq0VkQ7kNvgGfOzJN&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBbk7u7SihD4ebpMiBmni7oJq0eZB3CPF7CAHuo-jzg-g&oe=66C4E428\";s:2:\"id\";s:17:\"18017922394703619\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CwmbJDrIOvd/\";s:7:\"caption\";s:214:\"𝐖𝐞𝐛 ∙ 𝐃𝐞𝐬𝐢𝐠𝐧 ∙ 𝐁𝐫𝐚𝐧𝐝𝐢𝐧𝐠\n\nVisit the website: villaserenehotel.co.ke\n\n#BesthotelKitale #kitalehotels #VillaSereneHotel #AnniversaryCelebration #DesignektaStudios\";s:9:\"timestamp\";s:24:\"2023-08-31T07:20:42+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:15;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/371767701_904548937875517_426618400806333708_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=JpQthXHcOEgQ7kNvgFcxaid&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCeg_5j-9OjKCftEKDbyKynObq5eU-mJTvUdClWpc7JsA&oe=66C4DB91\";s:2:\"id\";s:17:\"17985683075469719\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CwkE4ZEoQhR/\";s:7:\"caption\";s:194:\"𝐖𝐞𝐛 ∙ 𝐃𝐞𝐬𝐢𝐠𝐧 ∙ 𝐁𝐫𝐚𝐧𝐝𝐢𝐧𝐠\nSkyline PR\nhttps://skylinepublicrelations.com\n#PRExcellence #BrandElevation #PRSuccess #SkylinePR #corporatewebsite\";s:9:\"timestamp\";s:24:\"2023-08-30T09:27:43+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:16;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/371822957_903789947951416_2097122664880044731_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=k7Z3eRwlaV8Q7kNvgE08DfK&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDrKuYaz2ZgGkOPcTE6a6MJPSBSubwkhYn5twhPWthpQQ&oe=66C4C61D\";s:2:\"id\";s:17:\"18296095378185900\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CwhLPRFIZ3D/\";s:7:\"caption\";s:247:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #consultancywebsite  #freshfood  #corporatewebsitedesign #farmwebsite \n𝐰𝐰𝐰.𝐬𝐡𝐚𝐪𝐬𝐟𝐚𝐫𝐦.𝐜𝐨𝐦\";s:9:\"timestamp\";s:24:\"2023-08-29T06:25:32+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:17;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"video\";s:3:\"url\";s:721:\"https://scontent-iad3-2.cdninstagram.com/o1/v/t16/f1/m82/334908E7FBDF3941184B8665EA701FAA_video_dashinit.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Inhwdl9wcm9ncmVzc2l2ZS5JTlNUQUdSQU0uQ0xJUFMuQzMuNzIwLmRhc2hfYmFzZWxpbmVfMV92MSJ9&_nc_ht=scontent-iad3-2.cdninstagram.com&_nc_cat=103&vs=79b05b52f79b7ad5&_nc_vs=HBksFQIYT2lnX3hwdl9yZWVsc19wZXJtYW5lbnRfcHJvZC8zMzQ5MDhFN0ZCREYzOTQxMTg0Qjg2NjVFQTcwMUZBQV92aWRlb19kYXNoaW5pdC5tcDQVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dBYklZeFU5TFpEcjB1b0NBTXpjOUg3aWh4NWNicV9FQUFBRhUCAsgBACgAGAAbAogHdXNlX29pbAExEnByb2dyZXNzaXZlX3JlY2lwZQExFQAAJsirw8udsk8VAigCQzMsF0AC7ZFocrAhGBJkYXNoX2Jhc2VsaW5lXzFfdjERAHX%2BBwA%3D&ccb=9-4&oh=00_AYCRMRYDXUUiI3a1WLnoOFS0yyHceuqIYEPiHkR1TTTtZQ&oe=66C0DEC6&_nc_sid=1d576d\";s:2:\"id\";s:17:\"18060117169424609\";s:9:\"permalink\";s:43:\"https://www.instagram.com/reel/CumfYgALmYf/\";s:7:\"caption\";s:0:\"\";s:9:\"timestamp\";s:24:\"2023-07-12T14:55:11+0000\";s:13:\"thumbnail_url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.36329-15/359730878_985651772562624_2849143882296434660_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=18de74&_nc_ohc=Rh0em5OJhtUQ7kNvgHibWmN&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBLmwUYAnPESnvDbzrg3zys88pTXOhVNZOjbOsEZ0aL7w&oe=66C4BD4A\";s:8:\"children\";a:0:{}}i:18;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/354058682_851114819885596_8769924689896082080_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=9EXsLUWGg3AQ7kNvgH9ACw2&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDsdT2-yjVb-5ZEaagA7gYjnFAd2uArrMi_TYuCQS8pMQ&oe=66C4E972\";s:2:\"id\";s:17:\"17887976771793896\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CticAZVoLti/\";s:7:\"caption\";s:252:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #shemaqproductions  #shemaq #mediaproduction  #corporatewebsitedesign #ecommerce #ecommercewebsite #venshaq\nhttps://shemaqproductions.com/\";s:9:\"timestamp\";s:24:\"2023-06-16T04:37:07+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:19;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/326939299_855291328863022_5393232226732639883_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=EJIacJS4we8Q7kNvgGryVgP&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDa_MbVM0L6RY2p8ZHZ00wX4AwslkVOtbnlAdUac82GCg&oe=66C4EA6A\";s:2:\"id\";s:17:\"18175658905254727\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cnqr4negkfu/\";s:7:\"caption\";s:257:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #leathermeetscanvas #leatherbags #canvas  #corporatewebsitedesign #ecommerce #ecommercewebsite \n𝐰𝐰𝐰.𝐚𝐬𝐭𝐞.𝐜𝐨.𝐤𝐞\";s:9:\"timestamp\";s:24:\"2023-01-21T06:21:25+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:20;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/324345260_879189166561283_3231791439589093089_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=tckZkcgnOlgQ7kNvgH-mNas&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBazXT3a8d9iCEvmNp3R9IlOy8MJgYezj5Q1FdPySqgcw&oe=66C4DA94\";s:2:\"id\";s:17:\"18033607684426122\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CnWHQeHA4ZG/\";s:7:\"caption\";s:247:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #consultancywebsite  #freshfood  #corporatewebsitedesign #farmwebsite \n𝐰𝐰𝐰.𝐬𝐡𝐚𝐪𝐬𝐟𝐚𝐫𝐦.𝐜𝐨𝐦\";s:9:\"timestamp\";s:24:\"2023-01-13T06:36:33+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:21;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/320964363_1234586217135215_2391944944497814856_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=2nptk8F5SuAQ7kNvgHzAEoG&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBwDeaxOqZXfvoFU1CqlTjLEC43uwblPIjw6IEJS5lsCg&oe=66C4C487\";s:2:\"id\";s:17:\"17860656689850152\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CmggDt_ATpf/\";s:7:\"caption\";s:0:\"\";s:9:\"timestamp\";s:24:\"2022-12-23T10:54:17+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:22;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/318333151_702133264783753_1256599210169789166_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=vIJspzqGt9kQ7kNvgEzQ9ah&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBdBEpWUatcRpOR8dss1eDr4X_dpmJD4pl4vYbE1rUy3w&oe=66C4DB44\";s:2:\"id\";s:17:\"18063098614347147\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/ClxjIIzK9LZ/\";s:7:\"caption\";s:290:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #consultancywebsite  #consultancywebsitedesign  #corporatewebsitedesign #alternativeSolutions\n𝘄𝘄𝘄.𝗮𝗹𝘁𝗲𝗿𝗻𝗮𝘁𝗶𝘃𝗲𝘀𝗹𝗻.𝗰𝗼𝗺\";s:9:\"timestamp\";s:24:\"2022-12-05T05:16:48+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:23;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/317725650_698616258468787_428857445855009407_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=Ba9-jIhJc8AQ7kNvgEW2elx&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYARJ0gMV8y6eazK7mTZXSOrj8wvzTZqlzvGnwoUJYjdsg&oe=66C4E017\";s:2:\"id\";s:17:\"17922507119517851\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Clnar2SgOQe/\";s:7:\"caption\";s:290:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #DesignersWesbite #interiorDesign #officeFitouts #interiorfittingcontractor #ribyeDesigners #bestinteriors #officepartition \n𝐰𝐰𝐰.𝐫𝐢𝐛𝐲𝐞.𝐜𝐨.𝐮𝐠\";s:9:\"timestamp\";s:24:\"2022-12-01T06:50:37+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:24;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/316250566_692390589091354_7682497833329218285_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=UwVisXoNsG8Q7kNvgGZ8qzZ&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCBsvzRRtFjPnqF1lsZAzY_9tQrT8o9_MB5TBzdH6CCOg&oe=66C4E6B0\";s:2:\"id\";s:17:\"17894308730713311\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/ClU6i3yIHAO/\";s:7:\"caption\";s:254:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#ecommerce #ecommercestore  #webdesign #webdeveloper #branding #branddesign \n#computershop #computerrepair \n𝐰𝐰𝐰.𝐫𝐨𝐲𝐚𝐥𝐭𝐞𝐜𝐡.𝐜𝐨.𝐤𝐞\";s:9:\"timestamp\";s:24:\"2022-11-24T02:23:27+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:25;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t39.30808-6/315660566_687481712915575_5710633678193481650_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=7aek_eYKYhgQ7kNvgGim40d&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBqrAhKRIXOKOQVwuF3PAvvlaDCow_988NH7o_7UrycQA&oe=66C4BB9B\";s:2:\"id\";s:17:\"17973861931767730\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/ClGJCcwAR0t/\";s:7:\"caption\";s:296:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #alizhorainternational #hrWesbite #corporatewebsitedesign \n𝘄𝘄𝘄.𝗮𝗹𝗶𝘇𝗵𝗼𝗿𝗮𝗵𝗿𝗶𝗻𝘁𝗲𝗿𝗻𝗮𝘁𝗶𝗼𝗻𝗮𝗹.𝗰𝗼.𝗸𝗲\";s:9:\"timestamp\";s:24:\"2022-11-18T08:41:29+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:26;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t39.30808-6/315646330_686498749680538_7195422976540441253_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=dlEevrIipvgQ7kNvgH9LQFe&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBVShVBmPuvMuRachIJ1dIAz4yh7GRKSmM7FLUEX2iUKQ&oe=66C4C06F\";s:2:\"id\";s:17:\"18117873115295210\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/ClDeuhHAAoL/\";s:7:\"caption\";s:281:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #editioninvestment #graphicsdesign #interiordesign #woodeninteriors \n𝘄𝘄𝘄.𝗲𝗱𝗶𝘁𝗶𝗼𝗻𝗶𝗻𝘃𝗲𝘀𝘁𝗺𝗲𝗻𝘁𝘀.𝗰𝗼𝗺\";s:9:\"timestamp\";s:24:\"2022-11-17T07:53:17+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:27;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/315659608_666083238429292_706102552802934790_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=aYezQgtZnnUQ7kNvgGZyk-u&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDUj48NOv1DpnxEqWFJxUcYaleM0-TSgbbr5x-oIAJoRQ&oe=66C4DBE5\";s:2:\"id\";s:17:\"17951555888252871\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Ck_q0l8gllN/\";s:7:\"caption\";s:286:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #branddesign #safariwebsite #secretTrekAfrica #best#bestsafari #adventureWebsite\n𝐰𝐰𝐰.𝐬𝐞𝐜𝐫𝐞𝐭-𝐭𝐫𝐞𝐤𝐚𝐟𝐫𝐢𝐜𝐚.𝐜𝐨𝐦\";s:9:\"timestamp\";s:24:\"2022-11-15T20:22:00+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:28;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/315661460_822919565698941_3262839282096701482_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=Y0sOgUvECJgQ7kNvgEww2nJ&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBN27HHObRbNyy_gZWDwHK1fQV3tga9X43rBq7g8NHb0w&oe=66C4C23B\";s:2:\"id\";s:17:\"18005314234513826\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Ck883cpAbro/\";s:7:\"caption\";s:232:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #branddesign #companywebsite ##companywebsite #venshaqHoldings \n𝐰𝐰𝐰.𝐯𝐞𝐧𝐬𝐡𝐚𝐪.𝐜𝐨𝐦\";s:9:\"timestamp\";s:24:\"2022-11-14T19:01:57+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:29;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/315350937_171470108817432_1556258286829501688_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=gDguPZ_Ncl0Q7kNvgF3tJkV&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCw7HLfXq9_0vdjRseffnp5dJ6FHD-CKhShBYxg5PgTbA&oe=66C4B642\";s:2:\"id\";s:17:\"18162487165250288\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Ck5zD3vKxYw/\";s:7:\"caption\";s:289:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #branddesign #hospitality #hospitalitywebsite #hotelwebsite #cottages #kenyancottages #talacottages \n𝐰𝐰𝐰.𝐭𝐚𝐥𝐚𝐜𝐨𝐭𝐭𝐚𝐠𝐞𝐬.𝐜𝐨𝐦\";s:9:\"timestamp\";s:24:\"2022-11-13T13:38:33+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:30;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/315345644_1188728695392938_3960205752828128332_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=96MEkQ_SM5gQ7kNvgHNld4g&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAqy4mAnwmcLJbS_YhQ3xuDH7IhowMZmqNOBJJJUIA2gw&oe=66C4BD58\";s:2:\"id\";s:17:\"17958126083141021\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Ck2xeSmAPiv/\";s:7:\"caption\";s:242:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n #webdesign #webdeveloper #branding #branddesign \n#engineeringwebsite #architecturalwebsite \n𝐰𝐰𝐰.𝐣𝐬𝐩𝐞𝐱𝐝𝐞𝐬𝐢𝐠𝐧.𝐜𝐨𝐦\";s:9:\"timestamp\";s:24:\"2022-11-12T09:26:57+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:31;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/314552598_684961536300360_5446330028493514100_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=EoquuC0U2pMQ7kNvgF1ou42&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYC_5_W3ziQu5O6kZNhGzQRF8bnAogRFAbz5jali_6CoOw&oe=66C4E6EC\";s:2:\"id\";s:17:\"17931916988427631\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Ckr55OJqjM7/\";s:7:\"caption\";s:261:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#ecommerce #ecommercestore #webdesign #webdeveloper #branding #branddesign \n#engineeringwebsite #architecturalwebsite \n𝐰𝐰𝐰.𝐛𝐨𝐥𝐝𝐦𝐚𝐫𝐤.𝐜𝐨.𝐤𝐞\";s:9:\"timestamp\";s:24:\"2022-11-08T04:08:53+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:32;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/314713680_852678169100503_7183506761425874881_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=sayY9CZV2mkQ7kNvgGxTHNN&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBCugsnh64Nv6W9ilamoBXjHx6dBbTRRlnYALL_HUzKlQ&oe=66C4CC0F\";s:2:\"id\";s:17:\"17924139773614658\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CkpZpL-qpYs/\";s:7:\"caption\";s:253:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#ecommerce #ecommercestore #webdesign #webdeveloper #branding #branddesign \n#computershop #computerrepair \n𝐰𝐰𝐰.𝐫𝐨𝐲𝐚𝐥𝐭𝐞𝐜𝐡.𝐜𝐨.𝐤𝐞\";s:9:\"timestamp\";s:24:\"2022-11-07T04:48:36+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:33;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/314449175_812399536647857_6516969494211028577_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=zJSz-1edOr4Q7kNvgFxFlcL&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDSihn093O9n-na5Aru7NNtyIjkPzXDdHj9P-EKRbVqXg&oe=66C4BBF3\";s:2:\"id\";s:17:\"18148364482302474\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CknPj1MgWAo/\";s:7:\"caption\";s:187:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #branddesign #hospitality #hospitalitywebsite \nwww.villaserenehotel.co.ke\";s:9:\"timestamp\";s:24:\"2022-11-06T08:42:00+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:34;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/311374838_716468079895555_2288172022130192796_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=ous0GkC9ovkQ7kNvgEM03VM&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDYDxsCL-iDf_DHxtfUyRrGLZq3jghRO0utV9s-4JoM8w&oe=66C4C5C3\";s:2:\"id\";s:17:\"17991813337566999\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cjmko5LgYDC/\";s:7:\"caption\";s:149:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\n#webdesign #webdeveloper #branding #branddesign \nwww.prosborders.co.ke\";s:9:\"timestamp\";s:24:\"2022-10-12T05:55:34+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:35;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/310518905_626290378937750_6553967820603804928_n.webp?stp=dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=Itu5fME9gfMQ7kNvgGeQ4jI&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAjfgb80NA4WOxV_nQAzvL3-aYos3XEZJHUDXpJTlIOOA&oe=66C4E9D6\";s:2:\"id\";s:17:\"17849685167830782\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CjYngrVIkqQ/\";s:7:\"caption\";s:63:\"https://clutch.co.ke/ke/web-designers\n#ClutchLeader #designekta\";s:9:\"timestamp\";s:24:\"2022-10-06T19:51:17+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:36;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/299727001_1066990033931870_4486751505235713186_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=Q_cq-SE9GLAQ7kNvgH4M8X3&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAfw5rmUmh983cI-sidlX0PQBOBOL9W1SpWzkIO9ojwgA&oe=66C4EC5E\";s:2:\"id\";s:17:\"17896533551654788\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/ChVMbxbASYd/\";s:7:\"caption\";s:78:\"𝗪𝗲𝗯 ● 𝗗𝗲𝘀𝗶𝗴𝗻 ● 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\";s:9:\"timestamp\";s:24:\"2022-08-16T18:54:11+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:37;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/298273851_577915147344897_7586760309707525884_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=FSryIDdphj8Q7kNvgGcg8dP&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYC-CRrY7HNw1IvNuMhm5moj9paPtvcPC9kaXur4W07ESw&oe=66C4B645\";s:2:\"id\";s:17:\"18024896044402490\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/ChHSMHbAWiC/\";s:7:\"caption\";s:76:\"𝗪𝗲𝗯 · 𝗗𝗲𝘀𝗶𝗴𝗻 · 𝗕𝗿𝗮𝗻𝗱𝗶𝗻𝗴\";s:9:\"timestamp\";s:24:\"2022-08-11T09:15:06+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:38;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/298158239_149437814420381_8757835238538757895_n.webp?stp=dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=rI8vxo16Ji0Q7kNvgFdX8kw&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYApK3iL3oAyN6cXGiWe4DNgwS0VV9dRsST4G7aetxgs7A&oe=66C4DF04\";s:2:\"id\";s:17:\"17945821697154346\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/ChDD-jPIjSZ/\";s:7:\"caption\";s:29:\"Web •  Design •  Branding\";s:9:\"timestamp\";s:24:\"2022-08-09T17:53:57+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:39;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/296968234_594012912330839_8556390527443133834_n.webp?stp=dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=rQlCym7UG0wQ7kNvgFoY_xw&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDD_Kn_sBkJKZgj4G-n1-I4dk6Mh-8qPjHtP3WSzPGbwA&oe=66C4D08A\";s:2:\"id\";s:17:\"17942757326074882\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cg1mYv9or4T/\";s:7:\"caption\";s:0:\"\";s:9:\"timestamp\";s:24:\"2022-08-04T12:25:15+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:40;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/296171358_318036830468073_7913769609734456773_n.webp?stp=dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=e7UNllMHQsMQ7kNvgH9hxOI&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYA5SJtoIuqC-ydmdffPx-V3L6h1DZNwv2Tl8xR2beMWGg&oe=66C4DD87\";s:2:\"id\";s:17:\"17906695907618938\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cgme7gVopdm/\";s:7:\"caption\";s:27:\"Web • Design • Branding\";s:9:\"timestamp\";s:24:\"2022-07-29T15:31:29+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:41;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/296110178_393445652853714_7375465906343004997_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=Q_sKiLgnJeYQ7kNvgG9Rsjr&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAsQRh93nadhBgxxBTWI26evtP2oRCX5JL1WL0d5qOb1w&oe=66C4B815\";s:2:\"id\";s:17:\"17874589934723870\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/Cgjtka-q0a5/\";s:7:\"caption\";s:27:\"Web ∙ Design ∙ Branding\";s:9:\"timestamp\";s:24:\"2022-07-28T13:41:41+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:42;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/295834663_188076110308820_4048792095598341320_n.webp?stp=dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=X3zpbhlCvAgQ7kNvgFiK3fr&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBPMQaVd5Fu1TLVMoMunXP9-xkx6EE1AMSGsUj4DEO67g&oe=66C4EB21\";s:2:\"id\";s:17:\"17960253514859336\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CgeUQAbo9Pk/\";s:7:\"caption\";s:21:\"Responsive Web Design\";s:9:\"timestamp\";s:24:\"2022-07-26T11:24:15+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:43;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/270527207_222773600023673_8415031417354103164_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=EQMQurHbBEIQ7kNvgHaAiIJ&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYARGOPcKsBfDCKfGTgPTuiuojIEa3HVQT7FhCymirJHOw&oe=66C4EA89\";s:2:\"id\";s:17:\"17938769665826088\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CYJDxfXgGBI/\";s:7:\"caption\";s:0:\"\";s:9:\"timestamp\";s:24:\"2021-12-31T09:05:05+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:44;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/248365965_107217741676139_4429810893440595568_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=jFYJdTlBt_MQ7kNvgHVWouO&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCNuPYSSgdxpXX33-SlU9YbUNT0hrH77OsDEOehgR2IqA&oe=66C4E978\";s:2:\"id\";s:17:\"18097997401283262\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CVbx44TL6D9/\";s:7:\"caption\";s:382:\"✅𝐃𝐨𝐦𝐚𝐢𝐧 𝐑𝐞𝐠𝐢𝐬𝐭𝐫𝐚𝐭𝐢𝐨𝐧\n✅𝐖𝐞𝐛 𝐇𝐨𝐬𝐭𝐢𝐧𝐠\n✅𝐖𝐞𝐛 𝐃𝐞𝐯𝐞𝐥𝐨𝐩𝐦𝐞𝐧𝐭\n✅𝐒𝐮𝐩𝐩𝐨𝐫𝐭 & 𝐌𝐚𝐢𝐧𝐭𝐞𝐧𝐚𝐧𝐜𝐞 \n✅𝐆𝐫𝐚𝐩𝐡𝐢𝐜 𝐃𝐞𝐬𝐢𝐠𝐧 & 𝐁𝐫𝐚𝐧𝐝𝐢𝐧𝐠\nhttps://www.designekta.com/\";s:9:\"timestamp\";s:24:\"2021-10-25T02:00:13+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:45;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/244625224_565511591327140_1847139332639444394_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=I7MyAK_aHvIQ7kNvgFGBmZW&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCqZF3W6akVdA4aLrjvuhxFNSdquUZof72EnACjYctjQw&oe=66C4D40E\";s:2:\"id\";s:17:\"17953156126521585\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CUzkRdDKH-l/\";s:7:\"caption\";s:567:\"𝐖𝐞𝐛 𝐇𝐨𝐬𝐭𝐢𝐧𝐠:\n✅𝑺𝒉𝒂𝒓𝒆𝒅 𝑯𝒐𝒔𝒕𝒊𝒏𝒈\n✅𝑽𝒊𝒓𝒕𝒖𝒂𝒍 𝑷𝒓𝒊𝒗𝒂𝒕𝒆 𝑺𝒆𝒓𝒗𝒆𝒓𝒔\n✅𝑾𝒊𝒏𝒅𝒐𝒘𝒔 𝑯𝒐𝒔𝒕𝒊𝒏𝒈\n✅𝑬𝒎𝒂𝒊𝒍 𝑯𝒐𝒔𝒕𝒊𝒏𝒈\n📞 0723014032 | 0786644148\n𝒉𝒕𝒕𝒑𝒔://𝒘𝒘𝒘.𝒅𝒆𝒔𝒊𝒈𝒏𝒆𝒌𝒕𝒂.𝒄𝒐𝒎/𝒔𝒆𝒓𝒗𝒊𝒄𝒆/𝒘𝒆𝒃-𝒉𝒐𝒔𝒕𝒊𝒏𝒈-𝒅𝒐𝒎𝒂𝒊𝒏-𝒓𝒆𝒈𝒊𝒔𝒕𝒓𝒂𝒕𝒊𝒐𝒏\";s:9:\"timestamp\";s:24:\"2021-10-09T11:11:35+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:46;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/240737307_3069456423333684_314005107152848114_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=y_LKafrQ6yMQ7kNvgF2L-hM&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBFl5jIh9guOn-H-v1XvwnGt_dMr-46vZerA9PTsIwy7g&oe=66C4BAA3\";s:2:\"id\";s:17:\"17936807266566925\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CTK1BK6iW6z/\";s:7:\"caption\";s:78:\"https://designekta.com/knowledge-base/6-ways-parallax-still-works-in-2021-com/\";s:9:\"timestamp\";s:24:\"2021-08-29T18:57:39+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:47;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/217441090_575843293784679_5116967611114073350_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=HKaLrMRKpSsQ7kNvgHZee-e&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAuvtiD6SVjFYfpytgu1lTpqXIuJ4yHTjeF18GnmsGoNA&oe=66C4DFDC\";s:2:\"id\";s:17:\"17913703291876871\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CRQhhHmKsgk/\";s:7:\"caption\";s:222:\"Digital Marketing\n✅Market Research\n✅Social Media Marketing\n✅Content Marketing & Blogging\n✅Email Marketing\n📞0723014032 | 0712531336\n📧info@designekta.com\n🌐https://www.designekta.com/service/digital-marketing\";s:9:\"timestamp\";s:24:\"2021-07-13T06:59:54+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:48;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/168133734_2958649127789933_6015287219690998401_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=N7o-j33pTBgQ7kNvgEvWgmZ&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDyZRShdIr2ffcm874ubnTxz5xvRpRjP4gho7GCedC2LA&oe=66C4D3C9\";s:2:\"id\";s:17:\"17888529509018633\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CNRLZxTKwur/\";s:7:\"caption\";s:66:\"https://www.designekta.com/service/web-hosting-domain-registration\";s:9:\"timestamp\";s:24:\"2021-04-05T03:00:25+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:49;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/168467694_443778693595486_7871461669373826468_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=Yv6SEATEUt0Q7kNvgF9hxYo&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAlZ6-Q3OGp5y7LkUtdmgJgVHDIyWoQxEe-P5VatFqHeA&oe=66C4D20D\";s:2:\"id\";s:17:\"17920825036590654\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CNMBywmLaNZ/\";s:7:\"caption\";s:0:\"\";s:9:\"timestamp\";s:24:\"2021-04-03T03:00:10+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:50;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/167011059_2863394040605631_4111851874027122372_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=BNveJt90WC0Q7kNvgGgdwuT&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCgsde5S6I70MYAu0QmMsYNaisM5RsG4clNinQFDbqAAg&oe=66C4DECB\";s:2:\"id\";s:17:\"18146474203094468\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CNJdBTbLZJc/\";s:7:\"caption\";s:81:\"Kenya\'s Finest Legal Counsel For Your Legal Needs\nhttps://version.amanyalaw.co.ke\";s:9:\"timestamp\";s:24:\"2021-04-02T03:00:23+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:51;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/167091309_287369886239870_559311573133559757_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=YSdGlz9RIMUQ7kNvgHUd8Ye&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBjSgnTqdig8JEAdcDGeHvUYvnQxyH6SLgxLbeh6yaLPg&oe=66C4DDA3\";s:2:\"id\";s:17:\"18159106222124326\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CNG4O06KojP/\";s:7:\"caption\";s:103:\"Thinking HR? Sharpen your HR with Africa Best Online HR community\nhttps://online.iperformanceafrica.com\";s:9:\"timestamp\";s:24:\"2021-04-01T03:00:30+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:52;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/166342203_556751998627136_2969179011700851487_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=EuyeeDB5pWYQ7kNvgHdgjYO&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBn8NSVQ8Tacz7wsk0puoOW4QspCcXWYRubkec13q3nZg&oe=66C4E2C6\";s:2:\"id\";s:17:\"17886351575117654\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CNETbTGrWug/\";s:7:\"caption\";s:85:\"Best Safaris and Experiences Partner in South Africa\nhttps://aoloutdooradventures.com\";s:9:\"timestamp\";s:24:\"2021-03-31T03:00:21+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:53;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/166137978_2961599144119078_9116437939280853171_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=A-PMBKVXXiEQ7kNvgHgqFHu&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAu8YSuKzPqTZE8maTzKzpNWsDMDTNGvYgFwuXCHRlc-A&oe=66C4EA71\";s:2:\"id\";s:17:\"18140072680166301\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CNBuouwrNWS/\";s:7:\"caption\";s:67:\"Leading Cleaners Company In Nairobi\nhttps://trevencleanersltd.co.ke\";s:9:\"timestamp\";s:24:\"2021-03-30T03:00:23+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:54;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/165883357_175650484282490_5251230037799686787_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=AXM3G-HdEKwQ7kNvgGVZAPh&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCcFJW8AIJvtJcHvbYDJl-hmpcu5fV2rLgmHrZccE84Gg&oe=66C4C399\";s:2:\"id\";s:17:\"18157511695191902\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CM_J1gRrG4m/\";s:7:\"caption\";s:259:\"Leading integrated business solutions provider in East Africa.\n✅Property Development Advisory\n✅Estate Agency & Property Management\n✅Professional Cleaning & Hospitality Services\n✅Real Estate & Project Management\n✅General Supplies\nhttps://sparol.co.ke\";s:9:\"timestamp\";s:24:\"2021-03-29T03:00:20+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:55;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/164198187_178006354136047_7618740217859721232_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=08FMgWHIUb8Q7kNvgGpUWZn&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYD3epsEDI4lwsI-vr79LULXt8j6KM2MC04q8XM2OU5Srg&oe=66C4CAA3\";s:2:\"id\";s:17:\"17870350877361697\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CM3bdD7LYcW/\";s:7:\"caption\";s:138:\"Best Cleaning Company In Nairobi\nHouse Organization Services, Moving Out/In Cleaning, Maid Services Among Others\nhttps://cleanmaids.co.ke/\";s:9:\"timestamp\";s:24:\"2021-03-26T03:00:23+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:56;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/163551256_275364850819566_8519283024195373571_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=NAxRbNxwDcQQ7kNvgGsoWS3&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCuTx_hmAam6SHw76s1gkTbsI4VVppG3Uj_M62i5ypv8w&oe=66C4C7AB\";s:2:\"id\";s:17:\"17983155901354030\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CM02p-srL5u/\";s:7:\"caption\";s:173:\"Your Best Tours & Safaris Partner - For Coastal Tours, Game Safaris, Flying Safaris, Mountain Safaris and Many Others Breath-Taking Experiences \nhttp://secret-trekafrica.com\";s:9:\"timestamp\";s:24:\"2021-03-25T03:00:21+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:57;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/163404154_433569504408421_6599596564280320179_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=1WvMpKu0kJEQ7kNvgGFGKd8&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBrqScsR6Q35WyYPOwhwcp3zx25zYcWaCyT1bjQPsa_tA&oe=66C4B546\";s:2:\"id\";s:17:\"17886039425103093\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CMyR4JgqtAT/\";s:7:\"caption\";s:68:\"Best Marketing & PR Firm In Africa\nhttp://www.vartecheastafrica.com/\";s:9:\"timestamp\";s:24:\"2021-03-24T03:00:31+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:58;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/162578656_560903781556161_8365689025337601439_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=zy7WhOWLF7cQ7kNvgG3_Xlr&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDAvAg7iQMwjlg5BSTsXoyIDd2SmLrTfvfISRQJL-OPaA&oe=66C4E522\";s:2:\"id\";s:17:\"17850647765529661\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CMvtESILX5W/\";s:7:\"caption\";s:142:\"Best Academics & Article Writers Globally! Think Thesis Paper, Essay, Business Plan and Case studies among others\nhttps://academicscaptain.com\";s:9:\"timestamp\";s:24:\"2021-03-23T03:00:21+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:59;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/164127864_749433399039629_7380615619288708003_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=QIAn3Y2_E60Q7kNvgFXlEGy&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAmSvItvuii18nfxIY0LyLxGiWUGwKbuoCc3lIv8Cn9fQ&oe=66C4BAFC\";s:2:\"id\";s:17:\"17846202926532540\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CMtIRnrKMgR/\";s:7:\"caption\";s:73:\"The Leading HR Training Center in Africa \nhttps://iperformanceafrica.com/\";s:9:\"timestamp\";s:24:\"2021-03-22T03:00:25+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:60;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/161777973_502117644286063_8773054882454470670_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=umLexIcAoXYQ7kNvgFKQibL&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCbvGTfTHFMlWqnSkek2HA6Qmmtm6g-oIuyhvbIm8oq6Q&oe=66C4E721\";s:2:\"id\";s:17:\"18144099622183389\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CMn-rfWqoKq/\";s:7:\"caption\";s:109:\"Leading Supplier of Computer Accessories, Printer Accessories and Phone Accessories\nhttp://accessories.co.ke/\";s:9:\"timestamp\";s:24:\"2021-03-20T03:00:22+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:61;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/161439941_435412607553653_7573416637258337884_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=-J5lczff5UIQ7kNvgFoIOmJ&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYC09GghMCyafXL-rvMYJkNcnlzhcmSNNM-WOOSZujIDhQ&oe=66C4B56A\";s:2:\"id\";s:17:\"17914666510616598\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CMlZ4AorhFD/\";s:7:\"caption\";s:101:\"Leading Supplier of Car Stereo & Accessories in Kenya & East Africa\n https://amanivehiclesounds.co.ke\";s:9:\"timestamp\";s:24:\"2021-03-19T03:00:14+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:62;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/161551534_1389986858032771_6015002024152944741_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=mePAhEcc5lwQ7kNvgFh0tCA&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDbbfu9bn74MfgMVF9jLjoMpQJdDh2bPONxnQ-RHR89Ow&oe=66C4C087\";s:2:\"id\";s:17:\"17864547107484412\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CMjS1b2LFZa/\";s:7:\"caption\";s:85:\"Leading supplier of wood-based interiors in East Africa\nhttp://editioninvestments.com\";s:9:\"timestamp\";s:24:\"2021-03-18T07:20:14+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:63;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/148386568_1334011583636993_8618372163470631144_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=tLIAREBYCaAQ7kNvgGsDbXR&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYA3gXLIy68DHYvgNOXN3ypc-ru5eL37tRlBOMQsdr3hCg&oe=66C4C1A9\";s:2:\"id\";s:17:\"17985032278331205\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CLCO-O_g94g/\";s:7:\"caption\";s:18:\"www.designekta.com\";s:9:\"timestamp\";s:24:\"2021-02-08T14:40:07+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:64;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/123133155_359327265178217_4220625538526702496_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=UPkkqA0sDyQQ7kNvgGjc1Xy&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYA5dF-f4fU0ATTkFJzusZS5EhmCKJkArjPrfEn4_PhaYA&oe=66C4C235\";s:2:\"id\";s:17:\"17856544622261097\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CG7uzwWAcpb/\";s:7:\"caption\";s:78:\"Custom Web Design\nFree Domain Registration\nFree Web Hosting\nwww.designekta.com\";s:9:\"timestamp\";s:24:\"2020-10-29T15:58:03+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:65;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/121592538_705603650047173_263281313353323468_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=18de74&_nc_ohc=-GxhwjG5TdcQ7kNvgEi-PO0&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDJV3CeCrBdXCYX_dsz_5tx8ITHN_DJOHzGDo5Vue_LYA&oe=66C4E22F\";s:2:\"id\";s:17:\"17870707106016396\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CGcSvR-jmYZ/\";s:7:\"caption\";s:235:\"Web Hosting From 1500/= per year\n✅Shared Hosting\n✅Unmanaged VPS\n✅Managed VPS\n✅Litespeed VPS\nDomain Registration From 499/= \n✅.co.ke\n✅.com\n✅.org\n✅.net\n🌐 https://www.designekta.com \n📞0723014032/0786644148/0712531336\";s:9:\"timestamp\";s:24:\"2020-10-17T10:56:19+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:66;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/72695561_1270846909783891_8098786940180991384_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=-OFpFPpApWQQ7kNvgEgG4oz&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCEgbSf1D6ZWelEN27YsWP43K7ufbvHBHgtja717EfPBw&oe=66C4D188\";s:2:\"id\";s:17:\"17843224636807437\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/B46-u3Hnl-h/\";s:7:\"caption\";s:222:\"Ready Made Websites from 5100/=\n✅Free Domain Registration\n✅Free 1st year web hosting\n✅Free SSL\n✅24/7/365 Online Support\n📞Call/Text/whatsApp 0723014032/0786644148\n🌐https://www.designekta.com/ready-made-website\";s:9:\"timestamp\";s:24:\"2019-11-16T09:38:26+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:67;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/67293158_755156178247517_1086367054388304577_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=CLGNdGuKFVIQ7kNvgFy4lsJ&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDa5xH5EcFZAxgBP7hqKnAgbJvrooXFrILn4uCIzH8vbA&oe=66C4CA38\";s:2:\"id\";s:17:\"17849320807521059\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/B0ko0oUH9Gv/\";s:7:\"caption\";s:97:\"Need your clients to pay via PayPal in your website? \nGet PayPal integration services from 5000/=\";s:9:\"timestamp\";s:24:\"2019-07-31T07:18:07+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:68;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:293:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/66501297_657550664751020_898884219716322640_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=jwXYAwiqh9EQ7kNvgHf1Lxk&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBS_Ae0wC5t1NEY64UDUUGQO0jAXLPI7Y71DTXkgmMIVw&oe=66C4EB06\";s:2:\"id\";s:17:\"18088944772029422\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/B0koQXYnd_Y/\";s:7:\"caption\";s:90:\"Get a Product listing website from as little as 12500/= Free Domain registration & Hosting\";s:9:\"timestamp\";s:24:\"2019-07-31T07:13:10+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:69;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/67269267_223417065295851_4263276087783792986_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=xZJVMFSrudgQ7kNvgH9HXkB&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYD-jvj9T7neisBuO-W5u6SfN9kDJTOe0j7Lcw2XG2uBVw&oe=66C4B552\";s:2:\"id\";s:17:\"18002988091244055\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/B0O9il_n7wH/\";s:7:\"caption\";s:82:\"Get a simple responsive website from as low as 8100/= 1 Year free domain & Hosting\";s:9:\"timestamp\";s:24:\"2019-07-22T21:15:51+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:70;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/66141708_2475036666085628_8344580240301475620_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=PsifvYhPuq4Q7kNvgG49GFT&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYB1d0giPHBiV8vl2BOxPlB5PXliTSeZ3wOuavJDzFDjAQ&oe=66C4E582\";s:2:\"id\";s:17:\"17961937366285988\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/B0NNvluHLGT/\";s:7:\"caption\";s:48:\"Get an E-commerce website from as low as 15500/=\";s:9:\"timestamp\";s:24:\"2019-07-22T04:58:58+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:71;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/66395785_440920126760352_3032177725288471251_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=JCOC-e4WSDsQ7kNvgGvp4Xq&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDFe9v5nXlH80tFSXJAHA7c5EGFsIJQ6fZeV8Q_GcI1nw&oe=66C4BC51\";s:2:\"id\";s:17:\"17988254779257160\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/B0MKUdAnAsV/\";s:7:\"caption\";s:33:\"Web hosting from as low as 1000/=\";s:9:\"timestamp\";s:24:\"2019-07-21T19:09:48+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:72;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/66626873_159488845209759_3909655928979626515_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=lioEeHZZfxwQ7kNvgGDj6mf&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYB4sJytt5lqGcny1vSjmDjVi-OqjjV70CGgtzbQUDIDfA&oe=66C4E6B9\";s:2:\"id\";s:17:\"17850276982499715\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/B0MJB0XHqqZ/\";s:7:\"caption\";s:39:\"Doman registration from as low as 570/=\";s:9:\"timestamp\";s:24:\"2019-07-21T18:58:31+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:73;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/57262967_279722426236702_5136725536760160436_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=Wi9L4lpUb3cQ7kNvgGV3j6P&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCHBA4TZifwczoNvwnwKHFWAezRGPkCMGEf3pGx0Ko1AA&oe=66C4D879\";s:2:\"id\";s:17:\"18058798828034437\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/BwnD3QLnZfu/\";s:7:\"caption\";s:0:\"\";s:9:\"timestamp\";s:24:\"2019-04-23T19:47:18+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:5:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/57262967_279722426236702_5136725536760160436_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=Wi9L4lpUb3cQ7kNvgGV3j6P&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCHBA4TZifwczoNvwnwKHFWAezRGPkCMGEf3pGx0Ko1AA&oe=66C4D879\";s:2:\"id\";s:17:\"17848506592416158\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/57558559_152721155766202_6063777733302925980_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=1RfDWvfADJsQ7kNvgEG7fIo&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYALbdted7yjIkQiUaxKYRbxwpJVO25rbL2k_jN4igXD3Q&oe=66C4BBE7\";s:2:\"id\";s:17:\"17957087449267829\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/57952128_170935157231978_6912579533890696918_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=opYLT45Nq80Q7kNvgEaPyds&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBU2ctuPAfklQryLyprLkWPn9Zsb7Vf2gAqv1JYIedOiw&oe=66C4DC2F\";s:2:\"id\";s:17:\"17994925726205513\";}i:3;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-2.cdninstagram.com/v/t51.2885-15/57272304_1005723369818302_6348460990348399873_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=GXcX5P7gGA0Q7kNvgHMHism&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCfP66eAigwKLAzXkvtxxKqdhV0cif910i2My5HnfyVuw&oe=66C4E4BF\";s:2:\"id\";s:17:\"17846266882424964\";}i:4;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:293:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/56947247_598018494046545_846402017800028421_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=ZawAUQjUfX8Q7kNvgGDx6SI&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAFxn1cidOhqWJ9qiXuOq2iMbKbrlpZVeAfkiXgVsnDIw&oe=66C4CE5D\";s:2:\"id\";s:17:\"18041339566116035\";}}}i:74;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:294:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/58113799_132769314531656_8369248551556055651_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=_1e-c8LcWS8Q7kNvgH6N6tl&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYC1pCEyYmqGUs20eHdR-jY11zOFS_dYykTs-wmU9WIORA&oe=66C4E629\";s:2:\"id\";s:17:\"18057609628029200\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/BwnCgx8ne80/\";s:7:\"caption\";s:18:\"Designekta Studios\";s:9:\"timestamp\";s:24:\"2019-04-23T19:35:30+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}i:75;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/54513910_1175537035956247_1884353621154246134_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=-UrCruIo-TcQ7kNvgGFBBeS&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBULW02uj_FRGiAwRvCMP3wwA31QSbvCVEIPwVFinvOUw&oe=66C4C1D6\";s:2:\"id\";s:17:\"18012784300146932\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/BvCkYnDHHS1/\";s:7:\"caption\";s:68:\"Own a website today from as low as 8100/=\nhttps://www.designekta.com\";s:9:\"timestamp\";s:24:\"2019-03-15T19:08:11+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}}', 2039152926);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('dymantic_instagram_feed:2', 'a:12:{i:0;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"video\";s:3:\"url\";s:729:\"https://scontent-iad3-2.cdninstagram.com/o1/v/t16/f1/m86/5B4D24C9F8D983F6EFC50B18BA6E1A92_video_dashinit.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Inhwdl9wcm9ncmVzc2l2ZS5JTlNUQUdSQU0uQ0xJUFMuQzMuNzIwLmRhc2hfYmFzZWxpbmVfMV92MSJ9&_nc_ht=scontent-iad3-2.cdninstagram.com&_nc_cat=103&vs=cdea14f0c8edfbaa&_nc_vs=HBksFQIYUmlnX3hwdl9yZWVsc19wZXJtYW5lbnRfc3JfcHJvZC81QjREMjRDOUY4RDk4M0Y2RUZDNTBCMThCQTZFMUE5Ml92aWRlb19kYXNoaW5pdC5tcDQVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dDdVZJQnRwSW9lY2k4d0JBTU9sdjJuY2JFa01icV9FQUFBRhUCAsgBACgAGAAbAogHdXNlX29pbAExEnByb2dyZXNzaXZlX3JlY2lwZQExFQAAJpL%2F2qGb2t8BFQIoAkMzLBdAOup%2B%2Bdsi0RgSZGFzaF9iYXNlbGluZV8xX3YxEQB1%2FgcA&ccb=9-4&oh=00_AYDl1g1swyjz1Y4nanP0YqyJn-pz-nsxir7Ulk_F6zKFBA&oe=66C16B3E&_nc_sid=1d576d\";s:2:\"id\";s:17:\"18033428387164424\";s:9:\"permalink\";s:43:\"https://www.instagram.com/reel/C-vPoEQNG_m/\";s:7:\"caption\";s:47:\"When people come together, great things happen!\";s:9:\"timestamp\";s:24:\"2024-08-16T16:54:44+0000\";s:13:\"thumbnail_url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/454997210_1039069254238829_8782909796188412579_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=QoN9cQCGoy8Q7kNvgHTjW05&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAYsPa6SVVUXlBUOHdcAuJeQafX5eVVNdQ8TdoL0m7jFw&oe=66C55D12\";s:8:\"children\";a:0:{}}i:1;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"video\";s:3:\"url\";s:723:\"https://scontent-iad3-2.cdninstagram.com/o1/v/t16/f1/m86/244876497F36AEE3CA044D26C36593AE_video_dashinit.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Inhwdl9wcm9ncmVzc2l2ZS5JTlNUQUdSQU0uQ0xJUFMuQzMuNzIwLmRhc2hfYmFzZWxpbmVfMV92MSJ9&_nc_ht=scontent-iad3-2.cdninstagram.com&_nc_cat=110&vs=dbae761bfa38e2f2&_nc_vs=HBksFQIYUmlnX3hwdl9yZWVsc19wZXJtYW5lbnRfc3JfcHJvZC8yNDQ4NzY0OTdGMzZBRUUzQ0EwNDREMjZDMzY1OTNBRV92aWRlb19kYXNoaW5pdC5tcDQVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dLdUlMaHRla241RS1Yc0hBRnJOWDh5amNjMVRicV9FQUFBRhUCAsgBACgAGAAbAogHdXNlX29pbAExEnByb2dyZXNzaXZlX3JlY2lwZQExFQAAJqjkmMWY6OMBFQIoAkMzLBdAMRDlYEGJNxgSZGFzaF9iYXNlbGluZV8xX3YxEQB1%2FgcA&ccb=9-4&oh=00_AYC-SW4dZ9-EoL89yf6IprL-6QXELysFMQBTKI3oeqVUVA&oe=66C1869D&_nc_sid=1d576d\";s:2:\"id\";s:17:\"18037849160311035\";s:9:\"permalink\";s:43:\"https://www.instagram.com/reel/C-vO9QeN_EL/\";s:7:\"caption\";s:43:\"We train hard and play harder!\n#wakaziworks\";s:9:\"timestamp\";s:24:\"2024-08-16T16:49:37+0000\";s:13:\"thumbnail_url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/455661531_778574320879711_9219911828244570235_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=FA9SSe9SejwQ7kNvgF8ubFW&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDXOzctmUr0Yz2GsqDxs33PMpCwZnwWPjoWKBeQU6_zBg&oe=66C54CD8\";s:8:\"children\";a:0:{}}i:2;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455472916_7774340619343459_8421332607204031592_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=6_6wYWoU5JMQ7kNvgHgANtL&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCQNAuSt_um28dWIeAjA_ZBcUWYzi7LxNTwu9ndaShknw&oe=66C57A00\";s:2:\"id\";s:17:\"18355187089117733\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/C-vMeLfC31Q/\";s:7:\"caption\";s:66:\"On location showcasing the diversity of the Wakazi Team portfolio.\";s:9:\"timestamp\";s:24:\"2024-08-16T16:25:11+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:5:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455472916_7774340619343459_8421332607204031592_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=6_6wYWoU5JMQ7kNvgHgANtL&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCQNAuSt_um28dWIeAjA_ZBcUWYzi7LxNTwu9ndaShknw&oe=66C57A00\";s:2:\"id\";s:17:\"18049397620884298\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455754126_379213935215794_1758103515005828719_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=x0osFKVK0lUQ7kNvgGJJXq5&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDARQJl-o7lahYwf1bMES6de21HaEhehof333g5R9HtyA&oe=66C563AD\";s:2:\"id\";s:17:\"18040458865994893\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455251320_1839125566610739_4999575255714038772_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=0S5K6d3-Jh0Q7kNvgEWXmbk&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDdiRESi01MjWtiA7q2LO5CIo7MwYnBQ5igsJWPshm_kA&oe=66C572F0\";s:2:\"id\";s:17:\"18245733697249677\";}i:3;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/455941213_481193344698438_5529486902716146742_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=18de74&_nc_ohc=ibCKgZZ7RtUQ7kNvgGCF1g1&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBhUhW9GNzbgjk6I72Lh66fSopRv6OjaTFVoVlI6nSrKQ&oe=66C5720D\";s:2:\"id\";s:17:\"18037672036889013\";}i:4;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455692280_1474265750635991_4346831239658808966_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=on13Fa6MQ9EQ7kNvgEPc4hb&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDpTJY8FCGNY-6rLVOx-mqccPKN9lO35sjDKmi3NlCGew&oe=66C54DA2\";s:2:\"id\";s:17:\"18038273888079669\";}}}i:3;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455338354_3873030862978129_284885431332661877_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=bVz9MnndfYoQ7kNvgEdJLat&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYA4XpzFrLhDB4trCdmXy4k4bypNfGzq6Guj3BiMO2Xuog&oe=66C55827\";s:2:\"id\";s:17:\"18247825723250157\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/C-vL3MpC-bH/\";s:7:\"caption\";s:59:\"We came ... we saw... we took it home. Nothing but prayers!\";s:9:\"timestamp\";s:24:\"2024-08-16T16:19:52+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:10:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455338354_3873030862978129_284885431332661877_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=bVz9MnndfYoQ7kNvgEdJLat&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYA4XpzFrLhDB4trCdmXy4k4bypNfGzq6Guj3BiMO2Xuog&oe=66C55827\";s:2:\"id\";s:17:\"18020078219163923\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:295:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/455871153_934383785080215_428925440135788048_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=9lroVQf25m4Q7kNvgFEMxCc&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYANNncXVRErA-z2zfg0XaGW3j1EupTyFHi_vlALjtFeFQ&oe=66C546FC\";s:2:\"id\";s:17:\"18029552426192225\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/455758240_1053557039708212_7833003126356248695_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=Xj0LSAPLD8YQ7kNvgHKsM6L&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCBeP1eRSrOd0rZflFNdBPaybkmHLmzNWtUwC21HICwyg&oe=66C57713\";s:2:\"id\";s:17:\"17994633848673686\";}i:3;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/455899195_1142743023470755_1406097574543699184_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=xibdgRNCzL4Q7kNvgGxoe8o&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAv_X0-RHHhMBs1ZyrlG4AzwnwcMYuMxwyHfhSx3CkSdg&oe=66C562B7\";s:2:\"id\";s:17:\"18448944343052592\";}i:4;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455806974_381050064774154_3686202583780080028_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=18de74&_nc_ohc=P9_5HD_PpJAQ7kNvgGVgdvY&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCipc-rfDZ0c6afS4V8Xe_b7aI--C6BEYcBDGfq0UYEnA&oe=66C54C9F\";s:2:\"id\";s:17:\"17843029344287722\";}i:5;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455359955_491452253826049_2532413677760325430_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=RLJNiW5khZEQ7kNvgF7RYgY&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAbLeZUrhx411pFuJT1maDt8XcJ1xLIg7TMhWyVCAQMdg&oe=66C55685\";s:2:\"id\";s:17:\"17950547954714105\";}i:6;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455652132_990163899532166_8353467912467026050_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=5R5zT1t-QVwQ7kNvgHGgCC5&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCdV0LDHSEBSccizpkwWUe8TszLHR9ZLecZz6e_o9i3nQ&oe=66C56F7A\";s:2:\"id\";s:17:\"17876252160120657\";}i:7;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455041913_3696944643876921_7453173343826037536_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=Qt3GirmypFQQ7kNvgEqb_qo&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYADCtOutdeXQGniNN7Hfl4Jy3iO1nQY7KZ32mqTDTn4Zw&oe=66C55E14\";s:2:\"id\";s:17:\"18019333958178355\";}i:8;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/455707839_1188246249062002_2239808538491319248_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=aCztPapoQMAQ7kNvgEMrfOz&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAz2bl-s7bPionDBF4YegSackJg4IiAAOr9ZOoKzXma7g&oe=66C561A3\";s:2:\"id\";s:17:\"18112285288394646\";}i:9;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:297:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/455816221_1545529199653619_2663941599486859700_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=jO1GsMKR1McQ7kNvgFmyE19&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYD1Z7a73R2SAcnYsmzr89OJsKPdpLlYbYASwzthyUB3lw&oe=66C57621\";s:2:\"id\";s:17:\"18050319088831055\";}}}i:4;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"video\";s:3:\"url\";s:719:\"https://scontent-iad3-2.cdninstagram.com/o1/v/t16/f1/m82/0C4EE0C4BE3BC935B3990D7D39DEA794_video_dashinit.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Inhwdl9wcm9ncmVzc2l2ZS5JTlNUQUdSQU0uQ0xJUFMuQzMuNzIwLmRhc2hfYmFzZWxpbmVfMV92MSJ9&_nc_ht=scontent-iad3-2.cdninstagram.com&_nc_cat=100&vs=5a267d221a1baf8e&_nc_vs=HBksFQIYT2lnX3hwdl9yZWVsc19wZXJtYW5lbnRfcHJvZC8wQzRFRTBDNEJFM0JDOTM1QjM5OTBEN0QzOURFQTc5NF92aWRlb19kYXNoaW5pdC5tcDQVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dGc1NjaFl1eTFpSFNsd2lBUEVmd2stekJURldicV9FQUFBRhUCAsgBACgAGAAbAogHdXNlX29pbAExEnByb2dyZXNzaXZlX3JlY2lwZQExFQAAJtTHvc7ArMECFQIoAkMzLBdAPOZmZmZmZhgSZGFzaF9iYXNlbGluZV8xX3YxEQB1%2FgcA&ccb=9-4&oh=00_AYC8n4dP-I06hmz6sVqE6M4BiqDQZxGJHEu8Z5e-vtyeDQ&oe=66C1819F&_nc_sid=1d576d\";s:2:\"id\";s:17:\"17986697063364011\";s:9:\"permalink\";s:43:\"https://www.instagram.com/reel/CxBRFciNkNq/\";s:7:\"caption\";s:0:\"\";s:9:\"timestamp\";s:24:\"2023-09-10T17:32:42+0000\";s:13:\"thumbnail_url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.36329-15/377526444_321136500576906_2368224378036025657_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=wUK2_z5o4JoQ7kNvgHZlmgN&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAGL6fdHm2G-lyCLCion2LRe4mInPtI7vcBbAlZRtxOqw&oe=66C558E2\";s:8:\"children\";a:0:{}}i:5;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/365473561_256507460480626_6052306394952327923_n.webp?stp=dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=ko46aoFZR5kQ7kNvgHjFsqr&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCSVS9ZxpujGUz9jc5fO2V6VLtP1kRe0y4PbeREUkKRMw&oe=66C565CA\";s:2:\"id\";s:17:\"17947351730546748\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CviPW-bNB0v/\";s:7:\"caption\";s:34:\"Mementos! Keep your network tight.\";s:9:\"timestamp\";s:24:\"2023-08-04T19:49:23+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:10:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/365473561_256507460480626_6052306394952327923_n.webp?stp=dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=18de74&_nc_ohc=ko46aoFZR5kQ7kNvgHjFsqr&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCSVS9ZxpujGUz9jc5fO2V6VLtP1kRe0y4PbeREUkKRMw&oe=66C565CA\";s:2:\"id\";s:17:\"17980713950341262\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/365427323_133628616454772_7623245292418678119_n.webp?stp=dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=2THRLp-wFOMQ7kNvgGNbu5z&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBHvxWsXYXDwO9HBKydNSW7JANdnEw27zCTmbpn4ZKYSQ&oe=66C5790F\";s:2:\"id\";s:17:\"18085723255364830\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:310:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/365172095_1321344935476143_7618585701020944750_n.webp?stp=dst-jpg&_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=CtjoXDxots4Q7kNvgFL5glP&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCJcX8gboDtkurBxqXURn_Jmimvdf0i75ClLfaz6E5PGg&oe=66C568B9\";s:2:\"id\";s:17:\"18014267932696902\";}i:3;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/365470715_227285886478030_4833369148193755222_n.webp?stp=dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=JiFbMaHS7fwQ7kNvgESjzDp&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCaG1jfY5ZyIyNrXjh-bbWa7ctylId08rEDNn2MPwC3Uw&oe=66C55F4F\";s:2:\"id\";s:17:\"17987550227069134\";}i:4;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:310:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/364385486_1024078818610164_6044738858936755456_n.webp?stp=dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=rn18mdrl01kQ7kNvgFqTct9&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBZsxb_mpsMpUC5OiFNA6ZRPgloClI-UmW4dtML2huNag&oe=66C57849\";s:2:\"id\";s:17:\"18017493418661357\";}i:5;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/364359350_215592201477880_5791531287168420228_n.webp?stp=dst-jpg&_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=IiLBjcMBaYoQ7kNvgEesj1t&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCs3KztqMzwjuX8s2_fnGAVfGCyB6Jy37n7FpqzY2R0BQ&oe=66C57212\";s:2:\"id\";s:17:\"17995648472039770\";}i:6;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/365021418_617465393825758_2495509184582382259_n.webp?stp=dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=18de74&_nc_ohc=hGIE3XbeX3gQ7kNvgG9Rsis&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBIsNQ3P3i1hj325bH3AtnepfMNpKTHKSuFK8G0q7ekGw&oe=66C543D2\";s:2:\"id\";s:17:\"18027873013525267\";}i:7;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:310:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/364397858_1658019234703724_1534616914966254977_n.webp?stp=dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=rk0F9ozwLM4Q7kNvgEfxOPt&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYA_RAnyqce95p6YKW4pJuTKlAZ9jLgMgwWTkvMFAnepXA&oe=66C56592\";s:2:\"id\";s:17:\"17844185673037064\";}i:8;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/364955447_799559251862851_5932506532519730141_n.webp?stp=dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=A-IG1HryXvEQ7kNvgFUHBW5&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCNxPomWWQP2GBwDIFKVbYf0iSWK8_FHz1kCUh8D-71Pw&oe=66C56C92\";s:2:\"id\";s:17:\"17964209267448788\";}i:9;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/364418389_626761095921404_2483752758916431915_n.webp?stp=dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=h-u3DwfO91AQ7kNvgHR3OMf&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDy6iwVTo3_H0qw_G8BO-X4lgum9r1WNWe34HR9rDsKdA&oe=66C577EF\";s:2:\"id\";s:17:\"17995504981907662\";}}}i:6;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"video\";s:3:\"url\";s:723:\"https://scontent-iad3-2.cdninstagram.com/o1/v/t16/f1/m82/E4401E87DF68B29956B2450B92715380_video_dashinit.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Inhwdl9wcm9ncmVzc2l2ZS5JTlNUQUdSQU0uQ0xJUFMuQzMuNzIwLmRhc2hfYmFzZWxpbmVfMV92MSJ9&_nc_ht=scontent-iad3-2.cdninstagram.com&_nc_cat=106&vs=cd9fd80b4a897d58&_nc_vs=HBksFQIYT2lnX3hwdl9yZWVsc19wZXJtYW5lbnRfcHJvZC9FNDQwMUU4N0RGNjhCMjk5NTZCMjQ1MEI5MjcxNTM4MF92aWRlb19kYXNoaW5pdC5tcDQVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dBaU9PeFhvYTBhbzdkSUNBT2hIVV80V1hiWjBicV9FQUFBRhUCAsgBACgAGAAbAogHdXNlX29pbAExEnByb2dyZXNzaXZlX3JlY2lwZQExFQAAJpiL8%2F%2FV4KYCFQIoAkMzLBdAOoAAAAAAABgSZGFzaF9iYXNlbGluZV8xX3YxEQB1%2FgcA&ccb=9-4&oh=00_AYCUuJKh05hK1On35zSl7nSmetuxxi5cngVhPjAnt40VjQ&oe=66C17998&_nc_sid=1d576d\";s:2:\"id\";s:17:\"17982083525334807\";s:9:\"permalink\";s:43:\"https://www.instagram.com/reel/CuCyY0oP7RC/\";s:7:\"caption\";s:40:\"Stay High, Stay Positive. Stay cruising.\";s:9:\"timestamp\";s:24:\"2023-06-28T18:09:49+0000\";s:13:\"thumbnail_url\";s:296:\"https://scontent-iad3-2.cdninstagram.com/v/t51.36329-15/356612179_167730559506817_5065324237869233046_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=GdajSxEa1isQ7kNvgGwqoPY&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBm8ih81eCb35yazxiJNiZWaIPzi03eVTAjAzvXz_nd7A&oe=66C564FD\";s:8:\"children\";a:0:{}}i:7;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:308:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355312527_801488134959665_763562508288186607_n.webp?stp=dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=0HjtI-tnllIQ7kNvgEYHIoc&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAsbwahG3zzZFS4q-wnQSydHavzR4fI3_BPsNdfojw02A&oe=66C550D0\";s:2:\"id\";s:17:\"17990268344035568\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CtyKeYnAeXf/\";s:7:\"caption\";s:24:\"Stakeholders engagement.\";s:9:\"timestamp\";s:24:\"2023-06-22T07:11:46+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:3:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:308:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355312527_801488134959665_763562508288186607_n.webp?stp=dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=0HjtI-tnllIQ7kNvgEYHIoc&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAsbwahG3zzZFS4q-wnQSydHavzR4fI3_BPsNdfojw02A&oe=66C550D0\";s:2:\"id\";s:17:\"17888911145846132\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355426142_596381959283975_7469238035644683443_n.webp?stp=dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=4_O2JmEGjzMQ7kNvgFGaanL&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCyhtwmKfg2VOKAs936xxnpoGub2DO4HgrmSjjeaZPRcA&oe=66C566E1\";s:2:\"id\";s:17:\"17899338647748266\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355128875_1256011778373103_608306794360128589_n.webp?stp=dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=oNdemQMDFJIQ7kNvgHbqAUd&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAbnYuesKoQvuzqx2c13TG6_SIHIUIMtBDc1ymXuGXV3Q&oe=66C55FB1\";s:2:\"id\";s:17:\"18000221011756352\";}}}i:8;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355322196_179534868212910_4808434700657285826_n.webp?stp=dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=eby2D3YDwq4Q7kNvgF8G_uT&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYALDZqDKM7HhepnPQYRtrpV010fqu777oiW3ntf97n7cw&oe=66C56340\";s:2:\"id\";s:17:\"17933411489686963\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CtyKXtsgK5B/\";s:7:\"caption\";s:17:\"Networking event.\";s:9:\"timestamp\";s:24:\"2023-06-22T07:10:51+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:3:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355322196_179534868212910_4808434700657285826_n.webp?stp=dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=18de74&_nc_ohc=eby2D3YDwq4Q7kNvgF8G_uT&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYALDZqDKM7HhepnPQYRtrpV010fqu777oiW3ntf97n7cw&oe=66C56340\";s:2:\"id\";s:17:\"17958153482460673\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:310:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355422640_2569367379932607_5716012917633741288_n.webp?stp=dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=A85Z9Cim5T0Q7kNvgH3OsA4&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBaAJ4sikJf5_tSRIY341a3CYM59W59mzbgy-ItF9KsAw&oe=66C54BB8\";s:2:\"id\";s:17:\"18096101746336514\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355131564_200066033011279_7363158395677531472_n.webp?stp=dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=18de74&_nc_ohc=8J75FcJjqvcQ7kNvgHyrPJw&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAl47dfOwh2gAt3SF6BKdAd2EClAA7ehRKTAwdQ8zIh5A&oe=66C5625F\";s:2:\"id\";s:17:\"17970373805414512\";}}}i:9;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355128857_830991715322791_5094584804565639534_n.webp?stp=dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=SPBCYZkz4GkQ7kNvgHFggTX&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCe1BwEbl-mVIQk_T74yoUjqi7ys6xZtkvNGoqxO3Ch2Q&oe=66C55BB4\";s:2:\"id\";s:17:\"18016138609568315\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CtyJmKrAnPf/\";s:7:\"caption\";s:123:\"The CS education showed up as the Chief Guest at the Wakazi Works stand. #nairobiinnovationweek2023 \n#nairobiinnovationweek\";s:9:\"timestamp\";s:24:\"2023-06-22T07:04:05+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:3:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355128857_830991715322791_5094584804565639534_n.webp?stp=dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=18de74&_nc_ohc=SPBCYZkz4GkQ7kNvgHFggTX&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCe1BwEbl-mVIQk_T74yoUjqi7ys6xZtkvNGoqxO3Ch2Q&oe=66C55BB4\";s:2:\"id\";s:17:\"18003060520733708\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355292665_631192438936089_2211797846312827470_n.webp?stp=dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=oeqyDtKcoWsQ7kNvgGVj1j7&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBjldWBw_ImllhgJbR8ot9mIGx7KvHsQXpEqL8HDPk9KA&oe=66C55353\";s:2:\"id\";s:17:\"17872521101920790\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355411107_515668364019509_5351406543412685100_n.webp?stp=dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=NP2H7aZ-_2AQ7kNvgF84Am2&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDJiWPfc1k6Gl5P4qyEr9T2WEuXtv5VHwed3mvphT31Ww&oe=66C54A0B\";s:2:\"id\";s:17:\"17997895531808957\";}}}i:10;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:8:\"carousel\";s:3:\"url\";s:310:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355410662_1407698400083975_1777715394143670738_n.webp?stp=dst-jpg&_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=fSSJsciEasMQ7kNvgGQujiC&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAcD3Uz5WWajThboAjpY9orK4d2xyWZ7kCsQVJMZ_W4Eg&oe=66C54618\";s:2:\"id\";s:17:\"17991444140018882\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CtyJG-mgEuu/\";s:7:\"caption\";s:68:\"How the #nairobiinnovationweek went down! #nairobiinnovationweek2023\";s:9:\"timestamp\";s:24:\"2023-06-22T06:59:50+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:7:{i:0;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:310:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355410662_1407698400083975_1777715394143670738_n.webp?stp=dst-jpg&_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=fSSJsciEasMQ7kNvgGQujiC&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAcD3Uz5WWajThboAjpY9orK4d2xyWZ7kCsQVJMZ_W4Eg&oe=66C54618\";s:2:\"id\";s:17:\"17932523855700283\";}i:1;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:310:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355170015_1589430088215038_8992000219599540553_n.webp?stp=dst-jpg&_nc_cat=105&ccb=1-7&_nc_sid=18de74&_nc_ohc=fKiMSFb5zqgQ7kNvgHTpOeh&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYDWvl2Op6neMlSsnexFxUpog4tq6yllAyB746L8BGhv3w&oe=66C55BE6\";s:2:\"id\";s:17:\"17982106187509085\";}i:2;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355657607_657864549491684_4853510174594252956_n.webp?stp=dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=18de74&_nc_ohc=sz3cPspV64gQ7kNvgG5yOWh&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYCElV_BtDWIcWn4Nyi7X4n1KQk264eAdbLY8xLE1OUWgQ&oe=66C5499A\";s:2:\"id\";s:17:\"17842551180018086\";}i:3;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/355281457_794226645490783_8525029435246580061_n.webp?stp=dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=18de74&_nc_ohc=MzUhaZzg8h4Q7kNvgG6ml6A&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYABAfEVaC0jUBQkfNuIjLsXkGyVvMeA0raxyVWEL98IgA&oe=66C55EF2\";s:2:\"id\";s:17:\"17983547717480999\";}i:4;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355451964_810666297096270_7952303223902387650_n.webp?stp=dst-jpg&_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=M05Ct77T3KEQ7kNvgH_6p08&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYAvZ-iORiVkDegn-4eP07Tu7MFcTQ7h3f4n6KKFM3ZRgA&oe=66C574FF\";s:2:\"id\";s:17:\"17961274856546445\";}i:5;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355105236_199612259331934_4909759924176824398_n.webp?stp=dst-jpg&_nc_cat=102&ccb=1-7&_nc_sid=18de74&_nc_ohc=_rWv23JZ1rgQ7kNvgHhn2Uu&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYC_HommLmygWKwSXFrFohBbznCJ-Zuzc71N9Pc8HYvgaw&oe=66C563C4\";s:2:\"id\";s:17:\"18001483453893102\";}i:6;a:3:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:309:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355418841_535988828584944_2658322285784729630_n.webp?stp=dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=18de74&_nc_ohc=1HoBH3d-0doQ7kNvgHQDGeg&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYBEKe2dtRkgg4wt188YIyAhCMqeZHr3ALjNZ0VwmGoS6g&oe=66C57B34\";s:2:\"id\";s:17:\"18194486185254722\";}}}i:11;O:37:\"Dymantic\\InstagramFeed\\InstagramMedia\":8:{s:4:\"type\";s:5:\"image\";s:3:\"url\";s:308:\"https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/355117885_197986649887021_705309597697687275_n.webp?stp=dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=18de74&_nc_ohc=8WC-nyTdYNEQ7kNvgHkIfgD&_nc_ht=scontent-iad3-1.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AYC2c5lTmEekBAq7htcI0PA-9UMkVYGbMEhnculRr4TorQ&oe=66C54E50\";s:2:\"id\";s:17:\"18017848489623628\";s:9:\"permalink\";s:40:\"https://www.instagram.com/p/CtyIGwtgcZb/\";s:7:\"caption\";s:19:\"Where it all began!\";s:9:\"timestamp\";s:24:\"2023-06-22T06:51:04+0000\";s:13:\"thumbnail_url\";s:0:\"\";s:8:\"children\";a:0:{}}}', 2039189471);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_id` int DEFAULT NULL,
  `thicknesses` text COLLATE utf8mb4_unicode_ci,
  `a_c_ratings` text COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `slung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `name`, `main_id`, `thicknesses`, `a_c_ratings`, `meta`, `slung`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Home Living & Decor', NULL, 1, NULL, NULL, 'Home Living & Decor', 'home-living-decor', NULL, NULL, '2024-06-17 14:44:00', '2024-06-17 14:44:00'),
(2, 'Fashion & Accessories', NULL, 1, NULL, NULL, 'Fashion and Accessories', 'fashion-accessories', NULL, NULL, '2024-06-17 14:44:16', '2024-06-17 14:44:16'),
(3, 'Art and Crafts', NULL, 1, NULL, NULL, 'Art and Crafts', 'art-and-crafts', NULL, NULL, '2024-06-17 14:44:31', '2024-06-17 14:44:31'),
(4, 'Kitchen and Dining', NULL, NULL, NULL, NULL, 'Kitchen and Dining', 'kitchen-and-dining', '<p><strong>Kitchen and Dining</strong></p>', NULL, '2024-06-17 14:44:48', '2024-06-17 14:44:48'),
(5, 'Jewellery', NULL, NULL, NULL, NULL, 'Jewellery', 'jewellery', '<p><strong>Jewellery</strong></p>', NULL, '2024-06-17 14:44:59', '2024-06-17 14:44:59'),
(6, 'Textiles and Fabrics', NULL, NULL, NULL, NULL, 'Textiles and Fabrics', 'textiles-and-fabrics', '<p><strong>Textiles and Fabrics</strong></p>', NULL, '2024-06-17 14:45:15', '2024-06-17 14:45:15'),
(7, 'Outdoor and Landscaping', NULL, NULL, NULL, NULL, 'Outdoor and Landscaping', 'outdoor-and-landscaping', '<p><strong>Outdoor and Landscaping</strong></p>', NULL, '2024-06-17 14:45:29', '2024-06-17 14:45:29'),
(8, 'Garden and Farming', NULL, NULL, NULL, NULL, 'Garden and Farming', 'garden-and-farming', '<p><strong>Garden and Farming</strong></p>', NULL, '2024-06-17 14:45:45', '2024-06-17 14:45:45'),
(9, 'Toys and Games', NULL, NULL, NULL, NULL, 'Toys and Games', 'toys-and-games', '<p><strong>Toys and Games</strong></p>', NULL, '2024-06-17 14:46:00', '2024-06-17 14:46:00'),
(10, 'Stationery and Gifts', NULL, NULL, NULL, NULL, 'Stationery and Gifts', 'stationery-and-gifts', '<p><strong>Stationery and Gifts</strong></p>', NULL, '2024-06-17 14:46:15', '2024-06-17 14:46:15'),
(11, 'Personal Care', NULL, NULL, NULL, NULL, 'Personal Care', 'personal-care', '<p><strong>Personal Care</strong></p>', NULL, '2024-06-17 14:46:32', '2024-06-17 14:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `content`, `meta`, `image`, `video`, `created_at`, `updated_at`) VALUES
(1, '<h3>Join the Wakazi County Bounty Initiative</h3>\r\n\r\n<p>Whether you are an artisan looking to showcase your work or a customer searching for unique, high-quality handcrafted items, the Wakazi County Bounty Initiative is here to help. Sign up today and be a part of this vibrant community that celebrates and supports artisan craftsmanship.</p>\r\n\r\n<p><strong>Sign Up Today!</strong> Empower artisans and discover unique art from around the world with the Wakazi County Bounty Initiative. Together, we can create a thriving community that values and promotes handcrafted excellence.</p>', 'Whether you are an artisan looking to showcase your work or a customer searching for unique, high-quality handcrafted items, the Wakazi County Bounty Initiative is here to help. Sign up today and be a part of this vibrant community that celebrates and supports artisan craftsmanship.', 'https://wakazi.rickelectronics.co.ke/uploads/county/unsplash_taC5veAcyiA_Maasai.jpg', 'https://wakazi.rickelectronics.co.ke/uploads/county/6790426-hd_1080_1920_25fps.mp4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_basic_profiles`
--

CREATE TABLE `dymantic_instagram_basic_profiles` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dymantic_instagram_basic_profiles`
--

INSERT INTO `dymantic_instagram_basic_profiles` (`id`, `username`, `identity_token`, `created_at`, `updated_at`) VALUES
(2, 'Wakazi_Works', NULL, '2024-08-16 08:09:22', '2024-08-30 11:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_feed_tokens`
--

CREATE TABLE `dymantic_instagram_feed_tokens` (
  `id` int UNSIGNED NOT NULL,
  `profile_id` int UNSIGNED NOT NULL,
  `access_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'photo_2024-05-31_08-09-25.jpg', '1', '2024-06-09 14:26:53', '2024-06-09 14:26:53'),
(2, 'photo_2024-05-31_08-09-16.jpg', '1', '2024-06-09 14:28:07', '2024-06-09 14:28:07'),
(3, 'photo_2024-05-31_08-09-17.jpg', '1', '2024-06-09 14:28:08', '2024-06-09 14:28:08'),
(4, 'photo_2024-05-31_08-09-19.jpg', '1', '2024-06-09 14:28:08', '2024-06-09 14:28:08'),
(5, 'photo_2024-05-31_08-09-21.jpg', '1', '2024-06-09 14:28:09', '2024-06-09 14:28:09'),
(6, 'photo_2024-05-31_08-09-22.jpg', '1', '2024-06-09 14:28:09', '2024-06-09 14:28:09'),
(7, 'photo_2024-05-31_08-09-23.jpg', '1', '2024-06-09 14:28:10', '2024-06-09 14:28:10'),
(8, 'photo_2024-05-31_08-09-25.jpg', '1', '2024-06-09 14:28:10', '2024-06-09 14:28:10'),
(9, 'photo_2024-05-31_08-09-16.jpg', '1', '2024-06-10 14:06:42', '2024-06-10 14:06:42'),
(10, 'photo_2024-05-31_08-09-17.jpg', '1', '2024-06-10 14:06:43', '2024-06-10 14:06:43'),
(11, 'photo_2024-05-31_08-09-19.jpg', '1', '2024-06-10 14:06:43', '2024-06-10 14:06:43'),
(12, 'photo_2024-05-31_08-09-21.jpg', '1', '2024-06-10 14:06:44', '2024-06-10 14:06:44'),
(13, 'photo_2024-05-31_08-09-22.jpg', '1', '2024-06-10 14:06:44', '2024-06-10 14:06:44'),
(14, 'photo_2024-05-31_08-09-23.jpg', '1', '2024-06-10 14:06:45', '2024-06-10 14:06:45'),
(15, 'photo_2024-05-31_08-09-25.jpg', '1', '2024-06-10 14:06:45', '2024-06-10 14:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lnmo_api_response`
--

CREATE TABLE `lnmo_api_response` (
  `lnmoID` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `Amount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MpesaReceiptNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CheckoutRequestID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MerchantRequestID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransactionDate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lnmo_api_response`
--

INSERT INTO `lnmo_api_response` (`lnmoID`, `user_id`, `status`, `Amount`, `MpesaReceiptNumber`, `Balance`, `CheckoutRequestID`, `MerchantRequestID`, `TransactionDate`, `PhoneNumber`, `updateTime`, `updated_at`, `created_at`) VALUES
(1, 5, 1, '1', 'SHC5TK4QKV', NULL, '0', '2a4a-467c-989e-6f5c5a331b4f55006336', '20240812164617', '254723014032', '2024-08-12 16:46:08', '2024-08-12 10:46:07', '2024-08-12 10:46:07'),
(2, 5, 1, '1', 'SHC8UZWWBS', NULL, '0', 'c01d-43fe-967a-e1f71d81049d15456560', '20240812214125', '254723014032', '2024-08-12 21:41:15', '2024-08-12 15:41:14', '2024-08-12 15:41:14'),
(3, 33, 1, '200', 'SI44ER6AX4', NULL, '0', '2766-4fba-b49a-c79072f32d7b102174881', '20240904154132', '254723014032', '2024-09-04 15:41:21', '2024-09-04 09:41:20', '2024-09-04 09:41:20'),
(4, 5, 0, NULL, NULL, NULL, '0', 'c01d-43fe-967a-e1f71d81049d87619627', NULL, NULL, '2024-09-10 14:52:26', '2024-09-10 08:52:26', '2024-09-10 08:52:26'),
(5, 5, 1, '200', 'SIA242CXRO', NULL, '0', 'e1f1-482d-9538-d140c330be9b6000834', '20240910145305', '254723014032', '2024-09-10 14:52:59', '2024-09-10 08:52:59', '2024-09-10 08:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `mains`
--

CREATE TABLE `mains` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mains`
--

INSERT INTO `mains` (`id`, `title`, `slung`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Metal Works', 'metal-works', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/mains/e1.jpg', '2024-06-22 03:44:02', '2024-06-22 03:44:02'),
(2, 'Craft Works', 'craft-works', NULL, NULL, '2024-06-22 03:44:12', '2024-06-22 03:44:12'),
(3, 'Leather Works', 'leather-works', NULL, NULL, '2024-06-22 03:44:23', '2024-06-22 03:44:23'),
(4, 'Art Works', 'art-works', NULL, NULL, '2024-06-22 03:44:38', '2024-06-22 03:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_06_11_161505_create_orders_product_table', 1),
(2, '2024_08_16_035049_create_instagram_basic_profile_table', 2),
(3, '2024_08_16_035049_create_instagram_feed_token_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total`, `created_at`, `updated_at`) VALUES
(1, 21, 'pending', '2,320.00', '2024-07-29 14:32:23', '2024-07-29 14:32:23'),
(2, 5, 'pending', '34,800.00', '2024-08-12 09:48:58', '2024-08-12 09:48:58'),
(3, 5, 'pending', '0.00', '2024-08-12 09:50:59', '2024-08-12 09:50:59'),
(4, 5, 'pending', '34,800.00', '2024-08-12 10:46:40', '2024-08-12 10:46:40'),
(5, 5, 'pending', '17,400.00', '2024-08-12 15:41:44', '2024-08-12 15:41:44'),
(6, 33, 'pending', '200.00', '2024-09-04 09:41:52', '2024-09-04 09:41:52'),
(7, 5, 'pending', '200.00', '2024-09-10 08:53:28', '2024-09-10 08:53:28'),
(8, 5, 'pending', '0.00', '2024-09-10 09:00:03', '2024-09-10 09:00:03'),
(9, 5, 'pending', '0.00', '2024-09-10 09:02:35', '2024-09-10 09:02:35'),
(10, 5, 'pending', '0.00', '2024-09-10 09:05:09', '2024-09-10 09:05:09'),
(11, 5, 'pending', '0.00', '2024-09-10 09:08:21', '2024-09-10 09:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders_product`
--

CREATE TABLE `orders_product` (
  `id` int UNSIGNED NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `orders_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_product`
--

INSERT INTO `orders_product` (`id`, `tax`, `total`, `product_id`, `orders_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, '320.00', '2,320.00', 39, 1, 1, '2024-07-29 17:32:23', '2024-07-29 17:32:23'),
(2, '4,800.00', '34,800.00', 15, 2, 1, '2024-08-12 12:48:58', '2024-08-12 12:48:58'),
(3, '4,800.00', '34,800.00', 15, 4, 1, '2024-08-12 13:46:41', '2024-08-12 13:46:41'),
(4, '2,400.00', '17,400.00', 9, 5, 1, '2024-08-12 18:41:44', '2024-08-12 18:41:44'),
(5, '0.00', '200.00', 91, 6, 1, '2024-09-04 12:41:53', '2024-09-04 12:41:53'),
(6, '0.00', '200.00', 93, 7, 1, '2024-09-10 11:53:28', '2024-09-10 11:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint NOT NULL DEFAULT '0',
  `main` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pro_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `slung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_product_category` int NOT NULL DEFAULT '6552',
  `sub_category_id` int DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aste',
  `featured` tinyint NOT NULL DEFAULT '0',
  `trending` tinyint NOT NULL DEFAULT '1',
  `banner_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'In Stock',
  `price_raw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slider`, `main`, `UserID`, `status`, `pro_condition`, `slung`, `video`, `category`, `google_product_category`, `sub_category_id`, `brand`, `featured`, `trending`, `banner_position`, `sku`, `stock`, `price_raw`, `price`, `meta`, `content`, `image_one`, `image_two`, `image_three`, `image_four`, `created_at`, `updated_at`) VALUES
(9, 'Electric Stainless Steel Food Warmer.', 0, 1, 11, 1, 'New', 'electric-stainless-steel-food-warmer', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'ELE-32081596', 'In Stock', '15000', '15000', 'Electric Stainless Steel Food Warmer.', '<p>Introducing the Electric Stainless Steel Food Warmer, the must-have appliance for any kitchen or catering business. Made with high-quality stainless steel, this food warmer is built to last and withstand heavy-duty use. Whether you&#39;re keeping soups, sauces, or other dishes warm for hours on end, this reliable electric warmer will get the job done with ease.</p>\r\n\r\n<p>With its sleek design and durable construction, this electric food warmer is not only functional but also adds a touch of elegance to any space. The adjustable temperature control allows you to easily maintain the perfect temperature for your food, while the easy-to-clean stainless steel surface makes maintenance a breeze. Say goodbye to cold meals and hello to perfectly warmed dishes with the Electric Stainless Steel Food Warmer.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.06 AM (3).jpeg', NULL, NULL, NULL, '2024-06-17 15:09:46', '2024-06-17 15:09:46'),
(10, 'Stainless Steel Baking Tins Set', 0, 1, 11, 1, 'New', 'stainless-steel-baking-tins-set', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'STA-14867539', 'In Stock', '2500', '2500', 'Stainless Steel Baking Tins Set', '<p>Experience the ultimate baking performance with our Heavy-Duty Stainless Steel Baking Tins Set. Hand crafted from premium-grade stainless steel, these tins are designed for durability and even heat distribution, ensuring perfect bakes every time. Resistant to warping and rust, they provide long-lasting reliability for all your baking needs.</p>\r\n\r\n<p>The set includes multiple sizes to accommodate a variety of recipes, from cakes and cookies to roasts and casseroles. Easy to clean and dishwasher safe, our baking tins are a must-have for both amateur and professional bakers. Elevate your kitchen arsenal with this versatile, high-quality set.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.01 AM (3).jpeg', NULL, NULL, NULL, '2024-06-18 12:55:44', '2024-06-18 12:55:44'),
(11, 'Cast Iron Chapati Pans', 0, 1, 11, 1, 'New', 'cast-iron-chapati-pans', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'CAS-03672828', 'In Stock', '800', '800', 'Cast Iron Chapati Pans', '<p>Crafted for durability and performance, our Heavy-Duty Cast Iron Chapati Pans are the ultimate kitchen essential for perfect chapatis. These pans are designed to distribute heat evenly, ensuring consistent cooking results every time.</p>\r\n\r\n<p>With a robust build, they can withstand high temperatures and heavy use, making them ideal for both home kitchens and professional settings. The naturally non-stick surface improves with each use, offering effortless food release and easy cleaning. Elevate your cooking experience with these reliable, long-lasting cast iron chapati pans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.01 AM (1).jpeg', NULL, NULL, NULL, '2024-06-18 13:20:13', '2024-06-18 13:20:13'),
(12, 'High-Quality Stainless Steel Serving Table', 0, 1, 11, 1, 'New', 'high-quality-stainless-steel-serving-table', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'HIG-48108563', 'In Stock', '15000', '15000', 'High-Quality Stainless Steel Serving Table', '<p>Enhance your entertaining experience with our High-Quality Stainless Steel Serving Table. Crafted from premium-grade stainless steel, this table combines sleek modern design with unparalleled durability. Its sturdy construction ensures long-lasting performance, making it ideal for both indoor and outdoor use.</p>\r\n\r\n<p>The smooth, polished surface is not only visually appealing but also easy to clean, offering a hygienic solution for serving food and beverages. With a spacious top for ample serving space, this serving table is perfect for hosting gatherings, parties, and events. Elevate your hosting game with a serving table that blends functionality with style.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.07 AM.jpeg', NULL, NULL, NULL, '2024-06-18 14:46:23', '2024-06-18 14:46:23'),
(13, 'Heavy-Duty Metal Three-Burner Gas Cooker', 0, 1, 11, 1, 'New', 'heavy-duty-metal-three-burner-gas-cooker', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'HEA-01926854', 'In Stock', '30000', '30000', 'Heavy-Duty Metal Three-Burner Gas Cooker', '<p>Upgrade your cooking experience with our Heavy-Duty Metal Three-Burner Gas Cooker. Engineered for durability and efficiency, this robust gas cooker features:</p>\r\n\r\n<ul>\r\n	<li><strong>Three High-Performance Burners</strong>: Perfect for multitasking and preparing meals swiftly, whether you&#39;re cooking for family gatherings or large events.</li>\r\n	<li><strong>Sturdy Metal Construction</strong>: Built to withstand daily use and high temperatures, ensuring long-lasting performance in any kitchen or outdoor setting.</li>\r\n	<li><strong>Easy Ignition System</strong>: Quick and reliable ignition system for hassle-free cooking.</li>\r\n	<li><strong>Efficient Heat Distribution</strong>: Designed to provide even heat distribution for consistent cooking results.</li>\r\n	<li><strong>User-Friendly Design</strong>: Simple to operate and clean, with detachable parts for easy maintenance.</li>\r\n</ul>\r\n\r\n<p>Ideal for home chefs, caterers, and outdoor cooking enthusiasts, this gas cooker delivers reliable, high-powered cooking wherever you need it.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.07 AM (3).jpeg', NULL, NULL, NULL, '2024-06-18 14:56:25', '2024-06-18 14:56:25'),
(14, 'Heavy Duty Cast Iron Cooking Pots', 0, 1, 11, 1, 'New', 'heavy-duty-cast-iron-cooking-pots', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'HEA-85949235', 'In Stock', '1500', '1500', 'Heavy Duty Cast Iron Cooking Pots - Different Sizes', '<p>Experience the ultimate in cooking durability and performance with our Heavy-Duty Cast Iron Cooking Pots. crafted for excellence, these pots are designed to handle high heat and rigorous use, making them perfect for everything from slow-cooked stews to high-temperature searing.</p>\r\n\r\n<p><strong>Key Features:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Exceptional Heat Retention:</strong> Ensures even cooking and superior heat distribution.</li>\r\n	<li><strong>Durable Construction:</strong> Built to withstand the test of time, resisting chipping, cracking, and warping.</li>\r\n	<li><strong>Versatile Use:</strong> Suitable for all stovetops, including induction, and oven-safe up to 500&deg;F.</li>\r\n	<li><strong>Naturally Non-Stick:</strong> Pre-seasoned for a smooth finish that improves with every use.</li>\r\n	<li><strong>Ergonomic Design:</strong> Features sturdy handles for a secure grip and easy handling.</li>\r\n</ul>\r\n\r\n<p><strong>Why Choose Our Cast Iron Cooking Pots?</strong> Our cast iron pots are crafted with precision and care, making them an essential addition to any kitchen. Whether you&#39;re a professional chef or a home cook, these pots will elevate your culinary creations with their unmatched quality and versatility.</p>\r\n\r\n<p>Transform your cooking experience with the timeless reliability of our Heavy-Duty Cast Iron Cooking Pots&mdash;where tradition meets innovation.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.02 AM (2).jpeg', NULL, NULL, NULL, '2024-06-18 15:16:44', '2024-06-18 15:16:44'),
(15, 'High Performance Stainless Steel Gas Cooker', 0, 1, 11, 1, 'New', 'high-performance-stainless-steel-gas-cooker', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'HIG-93077438', 'In Stock', '15000', '30000', NULL, '<p>Introducing the High Performance Stainless Steel Gas Cooker, designed for culinary excellence and durability. Crafted from premium stainless steel, this gas cooker combines sleek aesthetics with robust functionality.</p>\r\n\r\n<h3>Key Features:</h3>\r\n\r\n<ul>\r\n	<li><strong>Exceptional Durability</strong>: Constructed from high-grade stainless steel, ensuring long-lasting use and resistance to corrosion.</li>\r\n	<li><strong>Powerful Burners</strong>: Equipped with multiple high-efficiency burners for precise and consistent cooking performance.</li>\r\n	<li><strong>Easy Ignition</strong>: Features an advanced ignition system for quick and effortless startup.</li>\r\n	<li><strong>User-Friendly Controls</strong>: Intuitive control knobs allow for easy adjustment of flame intensity, providing maximum control over your cooking.</li>\r\n	<li><strong>Safety Features</strong>: Includes built-in flame failure safety device, ensuring peace of mind during use.</li>\r\n	<li><strong>Spacious Design</strong>: Ample cooking space to accommodate large pots and pans, perfect for both everyday meals and special occasions.</li>\r\n	<li><strong>Sleek Finish</strong>: Polished stainless steel surface for a modern look that complements any kitchen decor and is easy to clean.</li>\r\n</ul>\r\n\r\n<p>Upgrade your kitchen with the High Performance Stainless Steel Gas Cooker and enjoy superior cooking experiences every day.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.03 AM (1).jpeg', NULL, NULL, NULL, '2024-06-18 15:21:01', '2024-06-18 15:21:01'),
(16, 'High-Quality Galvanized Energy Serving Jikos', 0, 1, 11, 1, 'New', 'high-quality-galvanized-energy-serving-jikos', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'HIG-19528633', 'In Stock', '1500', '1500', 'High-Quality Galvanized Energy Serving Jikos', '<p>Introducing our High-Quality Galvanized Energy Serving Jikos, the perfect blend of efficiency and durability for your cooking needs. Crafted from robust galvanized steel, this jiko is designed to withstand the elements and provide consistent, high-performance cooking.</p>\r\n\r\n<p>Its energy-efficient design ensures optimal fuel usage, reducing costs and environmental impact. Ideal for both everyday meals and large gatherings, our jiko promises quick heating, even cooking, and easy maintenance. Experience superior cooking with a product built to last.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.03 AM.jpeg', NULL, NULL, NULL, '2024-06-18 15:29:38', '2024-06-18 15:29:38'),
(17, 'High-Quality Cast Iron Soup Spoons', 0, 1, 11, 1, 'New', 'high-quality-cast-iron-soup-spoons', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'HIG-41504232', 'In Stock', '200', '200', 'High-Quality Cast Iron Soup Spoons - Different Sizes', '<p>Elevate your dining experience with our High-Quality Cast Iron Soup Spoons. Expertly crafted from durable cast iron, these spoons are designed to deliver exceptional performance and longevity. The ergonomic handle provides a comfortable grip, making every scoop effortless. Ideal for enjoying hearty soups, stews, and broths, these spoons retain heat, ensuring your food stays warm from the first bite to the last.</p>\r\n\r\n<p>With a sleek, rustic design, they add a touch of elegance to any table setting. Perfect for everyday use or special occasions, our cast iron soup spoons combine functionality and style, making them a must-have in any kitchen.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.08 AM (1).jpeg', NULL, NULL, NULL, '2024-06-18 15:35:31', '2024-06-18 15:35:31'),
(18, 'High-Quality Cast Iron Serving Spoons', 0, 1, 11, 1, 'New', 'high-quality-cast-iron-serving-spoons', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'HIG-84021973', 'In Stock', '200', '200', 'High-Quality Cast Iron Serving Spoons - Different Sizes', '<p>Crafted with precision and durability in mind, these serving spoons are designed to withstand the test of time while adding a touch of rustic elegance to your kitchen. Perfect for both everyday use and special occasions, they offer:</p>\r\n\r\n<ul>\r\n	<li><strong>Superior Strength and Durability</strong>: Made from premium cast iron, ensuring they can handle heavy servings and frequent use without bending or breaking.</li>\r\n	<li><strong>Heat Resistance</strong>: Ideal for serving hot dishes, as they handle&nbsp;heat well and keep your hands safe.</li>\r\n	<li><strong>Ergonomic Design</strong>: Comfortable grip and balanced weight make serving a breeze.</li>\r\n	<li><strong>Timeless Aesthetic</strong>: The classic design and silver&nbsp;finish complement any table setting, from casual family meals to formal gatherings.</li>\r\n	<li><strong>Easy Maintenance</strong>: Naturally non-stick and simple to clean, these spoons develop a beautiful patina over time.</li>\r\n</ul>\r\n\r\n<p>Experience the perfect blend of functionality and style with our High-Quality Cast Iron Serving Spoons&mdash;essential tools for every kitchen.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.08 AM (2).jpeg', NULL, NULL, NULL, '2024-06-18 15:43:31', '2024-06-18 15:43:31'),
(19, 'Heavy Duty Quality Metal Spades', 0, 1, 11, 1, 'New', 'heavy-duty-quality-metal-spades', NULL, '8', 6552, NULL, 'Aste', 0, 1, NULL, 'HEA-62285740', 'In Stock', '500', '500', 'Heavy Duty Quality Metal Spades - Different colours', '<p><strong>Durability Meets Performance</strong></p>\r\n\r\n<p>Designed for the toughest jobs, our Heavy Duty Quality Metal Spades are built to last. Crafted from premium-grade steel, these spades offer unmatched strength and reliability for all your digging, landscaping, and gardening needs. With an ergonomic handle for comfort and a sharp, reinforced blade for precision, these spades make light work of even the most challenging tasks. Perfect for professionals and home gardeners alike, our metal spades ensure efficiency and durability, season after season.</p>\r\n\r\n<p><strong>Key Features:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Premium-Grade Steel:</strong> High-quality metal construction for superior strength and longevity.</li>\r\n	<li><strong>Ergonomic Handle:</strong> Designed for comfort and reduced strain during extended use.</li>\r\n	<li><strong>Reinforced Blade:</strong> Sharp and durable for precise digging and cutting.</li>\r\n	<li><strong>Heavy Duty Performance:</strong> Ideal for tough soil, roots, and rocky terrain.</li>\r\n	<li><strong>Versatile Use:</strong> Perfect for gardening, landscaping, and construction projects.</li>\r\n</ul>\r\n\r\n<p>Experience the power and reliability of our Heavy Duty Quality Metal Spades and make your outdoor tasks easier and more efficient.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.15 AM (3).jpeg', NULL, NULL, NULL, '2024-06-18 15:47:44', '2024-06-18 15:47:44'),
(20, 'Heavy Duty Quality Metal Wheelbarrows', 0, 1, 11, 1, 'New', 'heavy-duty-quality-metal-wheelbarrows', NULL, '8', 6552, NULL, 'Aste', 0, 1, NULL, 'HEA-21994865', 'In Stock', '5000', '5000', 'Heavy Duty Quality Metal Wheelbarrows', '<p>Introducing our heavy-duty metal wheelbarrow, crafted for durability and strength. Perfect for tackling tough jobs with ease, this wheelbarrow is designed to handle heavy loads without compromise. Featuring a robust metal body and sturdy pneumatic tires, it ensures stability and smooth movement across various terrains.</p>\r\n\r\n<p>Ideal for both professional landscapers and DIY enthusiasts, this wheelbarrow is your reliable partner in heavy lifting and efficient transportation of materials. Built to last and ready to work hard alongside you, it&#39;s the ultimate choice for durability and performance.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 11.11.13 AM (2).jpeg', NULL, NULL, NULL, '2024-06-18 15:59:35', '2024-06-18 15:59:35'),
(23, 'Hand Woven Shopping Basket', 0, 3, 7, 1, 'New', 'hand-woven-shopping-basket', NULL, '1', 6552, 1, 'Aste', 0, 1, NULL, 'HAN-85601521', 'In Stock', '2499', '2500', 'Hand Woven Shopping Basket', '<p>Introducing our Handwoven Elegance Basket, where traditional craftsmanship meets modern flair. Each basket is meticulously woven with natural fibers, adorned with vibrant fabric extensions that add a pop of color and personality. The elegant leather straps provide a luxurious touch, ensuring both durability and style. Perfect for home d&eacute;cor, storage, or a chic picnic, this basket is a unique blend of functionality and artistic expression. Elevate your space with a piece that tells a story of skilled artisanship and vibrant design.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.11.57 PM (1).jpeg', NULL, NULL, NULL, '2024-06-20 06:04:18', '2024-06-20 06:04:18'),
(24, 'Hand Woven Shopping Basket', 0, 3, 7, 1, 'New', 'hand-woven-shopping-basket', NULL, '1', 6552, 1, 'Aste', 0, 1, NULL, 'HAN-70608325', 'In Stock', '2500', '2500', 'Hand Woven Shopping Basket', '<p>Introducing our Handwoven Elegance Basket, where traditional craftsmanship meets modern flair. Each basket is meticulously woven with natural fibers, and adorned with vibrant fabric extensions that add a pop of color and personality. The elegant leather straps provide a luxurious touch, ensuring durability and style. This basket is a unique blend of functionality and artistic expression, perfect for home d&eacute;cor, storage, or a chic picnic. Elevate your space with a piece that tells a story of skilled artisanship and vibrant design.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.03 PM.jpeg', NULL, NULL, NULL, '2024-06-20 06:14:11', '2024-06-20 06:14:11'),
(25, 'Wooden Watch Holder', 0, 2, 8, 1, 'New', 'wooden-watch-holder', NULL, '2', 6552, 3, 'Aste', 0, 1, NULL, 'WOO-88254336', 'In Stock', '2500', '1500', 'Wooden Watch Holder', '<p>Elevate your watch collection with our Handcrafted Wooden Watch Holder, a perfect blend of elegance, craftsmanship, and functionality. This exquisite piece is meticulously crafted from premium, sustainably sourced hardwood, ensuring a unique grain pattern and unparalleled durability.</p>\r\n\r\n<p><strong>Features:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Artisan Craftsmanship:</strong> Each watch holder is handcrafted by skilled artisans, highlighting the wood&#39;s natural beauty and intricate details. The smooth finish and rich texture make it a stunning addition to any dresser or nightstand.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Elegant Design:</strong> The minimalist yet sophisticated design complements any decor style. The natural wood tones add a touch of warmth and luxury, making it a perfect gift for watch enthusiasts and collectors.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Practical Functionality:</strong> With its spacious slots, this watch holder can accommodate up to six watches of various sizes, keeping them organized and easily accessible. The soft velvet lining protects your timepieces from scratches and damage, ensuring they remain in pristine condition.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Eco-Friendly:</strong> Our commitment to sustainability means that each piece is made from responsibly sourced wood, reducing environmental impact and promoting eco-conscious choices.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Versatile Use:</strong> Beyond watches, this holder is ideal for storing bracelets, cufflinks, or other small accessories, adding versatility to its functionality.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Enhance your daily routine and showcase your watch collection with the Handcrafted Wooden Watch Holder. Experience the perfect harmony of style and practicality, crafted just for you.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/4b99520cf0244ef31b077414542f5751.jpg', NULL, NULL, NULL, '2024-06-26 17:44:47', '2024-06-26 17:44:47'),
(26, 'Wooden Cutlery And Serviette Holder', 0, 2, 8, 1, 'New', 'wooden-cutlery-and-serviette-holder', NULL, '4', 6552, 2, 'Aste', 0, 1, NULL, 'WOO-84652271', 'In Stock', '1500', '1500', 'Wooden Cutlery And Tissue Paper Holder', '<p>Elevate your dining experience with our Handcrafted Wooden Cutlery and Serviette Holder, a blend of elegance and functionality. Meticulously crafted by skilled artisans, this exquisite piece combines the timeless beauty of natural wood with a practical design that complements any table setting.</p>\r\n\r\n<p>Features:</p>\r\n\r\n<ul>\r\n	<li><strong>Artisanal Craftsmanship</strong>: Each holder is handmade with precision, showcasing high-quality wood&#39;s unique grain patterns and natural warmth.</li>\r\n	<li><strong>Durable and Sustainable</strong>: Made from sustainably sourced wood, this holder is not only sturdy and long-lasting but also an eco-friendly choice for your home.</li>\r\n	<li><strong>Versatile Design</strong>: With separate compartments for cutlery and serviettes, it ensures your table remains organized and your essentials are always within reach.</li>\r\n	<li><strong>Elegant Aesthetic</strong>: The smooth finish and minimalist design add a touch of rustic charm to any dining d&eacute;cor, making it perfect for both everyday meals and special occasions.</li>\r\n	<li><strong>Easy Maintenance</strong>: The holder&rsquo;s surface is treated to resist stains and moisture, ensuring it remains beautiful with minimal care.</li>\r\n</ul>\r\n\r\n<p>Whether you&rsquo;re hosting a dinner party or enjoying a quiet meal with your family, our Handcrafted Wooden Cutlery and Serviette Holder is a stylish and practical addition to your dining table. Its thoughtful design and artisanal quality make it a delightful gift for loved ones or a cherished item for your own home. Embrace the beauty of handcrafted wood and make every meal a special occasion.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/8624720de6adbf84fde2d3168cd29af1.jpg', NULL, NULL, NULL, '2024-06-26 17:58:16', '2024-06-26 17:58:16'),
(27, 'Wooden Tie Case', 0, 2, 8, 1, 'New', 'wooden-tie-case', NULL, '2', 6552, 3, 'Aste', 0, 1, NULL, 'WOO-49852033', 'In Stock', '2000', '2000', 'Wooden Tie Case', '<p>Discover the elegance and craftsmanship of our Handcrafted Wooden Tie Case, a perfect blend of function and style for the modern gentleman. Each case is meticulously crafted from premium hardwood, showcasing the natural beauty and unique grain of the wood.</p>\r\n\r\n<p>Key Features:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Exquisite Craftsmanship</strong>: Handmade by skilled artisans, our tie case exemplifies superior quality and attention to detail. Each piece is sanded to a smooth finish and polished to enhance the wood&#39;s natural luster.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Premium Materials</strong>: Constructed from sustainably sourced hardwood, this tie case is as eco-friendly as it is stylish. The rich, warm tones of the wood add a touch of sophistication to any dresser or travel bag.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ample Storage</strong>: Designed to hold up to four&nbsp;ties, the case features individual slots that keep your ties neatly organized and wrinkle-free. The spacious interior also includes a soft velvet lining to protect your ties from damage.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Secure Closure</strong>: A sturdy magnetic closure ensures that your ties remain secure during travel. The discreet yet robust design offers peace of mind, whether you&#39;re at home or on the go.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Versatile Design</strong>: Its sleek and compact form makes it perfect for travel or daily use. Easily slip it into your suitcase or display it proudly on your dresser as a testament to timeless style.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personalized Touch</strong>: Make it uniquely yours with custom engraving options. Add initials, a name, or a special message to create a personalized gift that will be cherished for years to come.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Elevate your accessory game with the Handcrafted Wooden Tie Case &ndash; where elegance meets practicality. Whether you&#39;re a frequent traveler, a tie enthusiast, or searching for the perfect gift, this tie case is an essential addition to any refined wardrobe.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/7a2ca84e012bba530dbf3a428a68aa71.jpg', NULL, NULL, NULL, '2024-06-26 18:02:34', '2024-06-26 18:02:34'),
(28, 'Miniature Wooden Wall Art -  African Women', 1, 4, 8, 1, 'New', 'miniature-wooden-wall-art-african-women', NULL, '3', 6552, 6, 'Aste', 0, 1, NULL, 'MIN-28938054', 'In Stock', '3000', '3000', 'Miniature Wooden Wall Art -  African Women', '<p><strong>A Celebration of Beauty and Culture</strong></p>\r\n\r\n<p>Transform your living space with the elegance and vibrancy of our Handcrafted African Women Wooden Wall Art. This exquisite piece captures the essence of African heritage, celebrating the strength, grace, and beauty of African women. Each artwork is meticulously carved by skilled artisans using traditional techniques passed down through generations, ensuring every piece is unique and rich in cultural significance.</p>\r\n\r\n<p>Features:</p>\r\n\r\n<ul>\r\n	<li><strong>Authentic Craftsmanship</strong>: Painstakingly handcrafted by local artisans, each piece showcases the intricate detailing and skilled artistry that are hallmarks of African woodcarving traditions.</li>\r\n	<li><strong>Premium Materials</strong>: Made from sustainably sourced hardwood, this wall art is not only a beautiful addition to your home but also an eco-friendly choice.</li>\r\n	<li><strong>Vibrant Colors</strong>: Hand-painted with natural dyes, the vibrant colors bring the figures to life, creating a striking focal point for any room.</li>\r\n	<li><strong>Cultural Significance</strong>: Each piece tells a story, reflecting the diverse cultures and traditions of Africa, making it a meaningful addition to your art collection.</li>\r\n</ul>\r\n\r\n<p><strong>Perfect for Any Space:</strong></p>\r\n\r\n<p>Whether you&#39;re looking to add a touch of cultural richness to your living room, bedroom, office, or hallway, this handcrafted wall art blends seamlessly with various d&eacute;cor styles. Its captivating design and intricate details draw attention and spark conversation, making it more than just a decoration but a statement of appreciation for African art and culture.</p>\r\n\r\n<p><strong>A Thoughtful Gift:</strong></p>\r\n\r\n<p>This Handcrafted African Women Wooden Wall Art is a perfect gift for art lovers, cultural enthusiasts, or anyone who appreciates the beauty of handcrafted items. It&#39;s a thoughtful present for birthdays, anniversaries, housewarmings, or any special occasion.</p>\r\n\r\n<p>Bring home a piece of Africa and let the timeless beauty of our Handcrafted African Women Wooden Wall Art inspire and enrich your surroundings. Embrace the elegance, tradition, and vibrant spirit of African art today.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/2c30134d734146eab8f440d8c479d9fb.jpg', NULL, NULL, NULL, '2024-06-26 18:23:19', '2024-06-26 18:23:19'),
(29, 'Fine Beaded Fedora Hat - Blue', 0, 2, 7, 1, 'New', 'fine-beaded-fedora-hat-blue', NULL, '2', 6552, 9, 'Aste', 0, 1, NULL, 'FIN-58039242', 'In Stock', '2500', '2500', 'Fine Beaded Fedora Hat', '<p>Introducing our Exquisite Handcrafted Fine Beaded Fedora Hat, a masterpiece of artisanal craftsmanship. This elegant accessory features meticulously hand-sewn beads, creating intricate patterns that exude sophistication and style. This fedora is perfect for any occasion and combines timeless design with unique, contemporary flair, making it an essential addition to your wardrobe. Elevate your fashion game with a hat that stands out in both quality and beauty.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.01 PM (1).jpeg', NULL, NULL, NULL, '2024-06-27 15:02:36', '2024-06-27 15:02:36'),
(30, 'Fine Beaded Fedora Hat - Brown', 0, 2, 7, 1, 'New', 'fine-beaded-fedora-hat-brown', NULL, '2', 6552, 9, 'Aste', 0, 1, NULL, 'FIN-05236584', 'In Stock', '2500', '2500', 'Fine Beaded Fedora Hat', '<p>Introducing our Exquisite Handcrafted Fine Beaded Fedora Hat, a masterpiece of artisanal craftsmanship. This elegant accessory features meticulously hand-sewn beads, creating intricate patterns that exude sophistication and style. This fedora is perfect for any occasion and combines timeless design with unique, contemporary flair, making it an essential addition to your wardrobe. Elevate your fashion game with a hat that stands out in both quality and beauty.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.01 PM (2).jpeg', NULL, NULL, NULL, '2024-06-27 15:03:20', '2024-06-27 15:03:20'),
(32, 'Fine Beaded Fedora Hat - Scarlet', 0, 2, 7, 1, 'New', 'fine-beaded-fedora-hat-scarlet', NULL, '2', 6552, 9, 'Aste', 0, 1, NULL, 'FIN-98509622', 'In Stock', '2500', '2500', 'Fine Beaded Fedora Hat - Scarlet', '<p>Introducing our Exquisite Handcrafted Fine Beaded Fedora Hat, a masterpiece of artisanal craftsmanship. This elegant accessory features meticulously hand-sewn beads, creating intricate patterns that exude sophistication and style. This fedora is perfect for any occasion and combines timeless design with unique, contemporary flair, making it an essential addition to your wardrobe. Elevate your fashion game with a hat that stands out in both quality and beauty.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.00 PM (3).jpeg', NULL, NULL, NULL, '2024-06-27 15:24:18', '2024-06-27 15:24:18'),
(33, 'Double Beaded Fedora Hat - Scarlet', 0, 2, 7, 1, 'New', 'double-beaded-fedora-hat-scarlet', NULL, '2', 6552, 9, 'Aste', 0, 1, NULL, 'DOU-32295061', 'In Stock', '3000', '3000', 'Double Beaded Fedora Hat - Scarlet', '<p>Introducing our Exquisite Handcrafted Fine Beaded Fedora Hat, a masterpiece of artisanal craftsmanship. This elegant accessory features meticulously hand-sewn beads, creating intricate patterns that exude sophistication and style. Perfect for any occasion, this fedora combines timeless design with unique, contemporary flair, making it an essential addition to your wardrobe. Elevate your fashion game with a hat that stands out in both quality and beauty.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.02 PM.jpeg', NULL, NULL, NULL, '2024-06-27 15:28:54', '2024-06-27 15:28:54'),
(34, 'Double Beaded Fedora Hat', 0, 2, 7, 1, 'New', 'double-beaded-fedora-hat', NULL, '2', 6552, 9, 'Aste', 0, 1, NULL, 'DOU-73037680', 'In Stock', '3000', '3000', 'Beaded Fedora Hat', '<p>Introducing our Exquisite Handcrafted Fine Beaded Fedora Hat, a masterpiece of artisanal craftsmanship. This elegant accessory features meticulously hand-sewn beads, creating intricate patterns that exude sophistication and style. Perfect for any occasion, this fedora combines timeless design with unique, contemporary flair, making it an essential addition to your wardrobe. Elevate your fashion game with a hat that stands out in both quality and beauty.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.00 PM (2).jpeg', NULL, NULL, NULL, '2024-06-27 15:31:10', '2024-06-27 15:31:10'),
(35, 'Handcrafted Beaded Bag', 0, 2, 7, 1, 'New', 'handcrafted-beaded-bag', NULL, '2', 6552, 12, 'Aste', 0, 1, NULL, 'HAN-81796351', 'In Stock', '2000', '2000', 'Handcrafted Beaded Bag', '<p>Discover elegance and craftsmanship with our finely handcrafted beaded bag. Each bag is meticulously created by skilled artisans, using high-quality beads to form intricate patterns and vibrant designs. This unique accessory is not just a bag, but a piece of art that embodies tradition and modern style.</p>\r\n\r\n<ul>\r\n	<li><strong>Exquisite Design</strong>: Detailed beadwork that catches the eye</li>\r\n	<li><strong>Premium Materials</strong>: Durable beads and high-quality lining</li>\r\n	<li><strong>Versatile Use</strong>: Perfect for both everyday use and special occasions</li>\r\n	<li><strong>Cultural Heritage</strong>: Supports traditional artisan techniques and craftsmanship</li>\r\n</ul>\r\n\r\n<p>Add a touch of handmade elegance to your wardrobe with this stunning beaded bag, a true testament to the artistry and dedication of our talented artisans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.11.58 PM (1).jpeg', NULL, NULL, NULL, '2024-06-27 17:29:46', '2024-06-27 17:29:46'),
(36, 'Handcrafted Beaded Bag', 0, 2, 7, 1, 'New', 'handcrafted-beaded-bag', NULL, '2', 6552, 12, 'Aste', 0, 1, NULL, 'HAN-85081063', 'In Stock', '2000', '2000', 'Handcrafted Beaded Bag', '<p>Discover elegance and craftsmanship with our finely handcrafted beaded bag. Each bag is meticulously created by skilled artisans, using high-quality beads to form intricate patterns and vibrant designs. This unique accessory is not just a bag, but a piece of art that embodies tradition and modern style.</p>\r\n\r\n<ul>\r\n	<li><strong>Exquisite Design</strong>: Detailed beadwork that catches the eye</li>\r\n	<li><strong>Premium Materials</strong>: Durable beads and high-quality lining</li>\r\n	<li><strong>Versatile Use</strong>: Perfect for both everyday use and special occasions</li>\r\n	<li><strong>Cultural Heritage</strong>: Supports traditional artisan techniques and craftsmanship</li>\r\n</ul>\r\n\r\n<p>Add a touch of handmade elegance to your wardrobe with this stunning beaded bag, a true testament to the artistry and dedication of our talented artisans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.11.58 PM (2).jpeg', NULL, NULL, NULL, '2024-06-27 17:31:28', '2024-06-27 17:31:28'),
(37, 'Handcrafted Beaded Bag', 0, 2, 7, 1, 'New', 'handcrafted-beaded-bag', NULL, '2', 6552, 12, 'Aste', 0, 1, NULL, 'HAN-29719355', 'In Stock', '2000', '2000', 'Handcrafted Beaded Bag', '<p>Discover elegance and craftsmanship with our finely handcrafted beaded bag. Each bag is meticulously created by skilled artisans, using high-quality beads to form intricate patterns and vibrant designs. This unique accessory is not just a bag, but a piece of art that embodies tradition and modern style.</p>\r\n\r\n<ul>\r\n	<li><strong>Exquisite Design</strong>: Detailed beadwork that catches the eye</li>\r\n	<li><strong>Premium Materials</strong>: Durable beads and high-quality lining</li>\r\n	<li><strong>Versatile Use</strong>: Perfect for both everyday use and special occasions</li>\r\n	<li><strong>Cultural Heritage</strong>: Supports traditional artisan techniques and craftsmanship</li>\r\n</ul>\r\n\r\n<p>Add a touch of handmade elegance to your wardrobe with this stunning beaded bag, a true testament to the artistry and dedication of our talented artisans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.11.58 PM (3).jpeg', NULL, NULL, NULL, '2024-06-27 17:33:11', '2024-06-27 17:33:11'),
(38, 'Handcrafted Beaded Bag', 0, 2, 7, 1, 'New', 'handcrafted-beaded-bag', NULL, '2', 6552, 12, 'Aste', 0, 1, NULL, 'HAN-40226858', 'In Stock', '2000', '2000', 'Handcrafted Beaded Bag', '<p>Discover elegance and craftsmanship with our finely handcrafted beaded bag. Each bag is meticulously created by skilled artisans, using high-quality beads to form intricate patterns and vibrant designs. This unique accessory is not just a bag, but a piece of art that embodies tradition and modern style.</p>\r\n\r\n<ul>\r\n	<li><strong>Exquisite Design</strong>: Detailed beadwork that catches the eye</li>\r\n	<li><strong>Premium Materials</strong>: Durable beads and high-quality lining</li>\r\n	<li><strong>Versatile Use</strong>: Perfect for both everyday use and special occasions</li>\r\n	<li><strong>Cultural Heritage</strong>: Supports traditional artisan techniques and craftsmanship</li>\r\n</ul>\r\n\r\n<p>Add a touch of handmade elegance to your wardrobe with this stunning beaded bag, a true testament to the artistry and dedication of our talented artisans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.11.58 PM.jpeg', NULL, NULL, NULL, '2024-06-27 17:34:10', '2024-06-27 17:34:10'),
(39, 'Handcrafted Beaded Bag', 0, 2, 7, 1, 'New', 'handcrafted-beaded-bag', NULL, '2', 6552, 12, 'Aste', 0, 1, NULL, 'HAN-74753881', 'In Stock', '2000', '2000', 'Handcrafted Beaded Bag', '<p>Discover elegance and craftsmanship with our finely handcrafted beaded bag. Each bag is meticulously created by skilled artisans, using high-quality beads to form intricate patterns and vibrant designs. This unique accessory is not just a bag, but a piece of art that embodies tradition and modern style.</p>\r\n\r\n<ul>\r\n	<li><strong>Exquisite Design</strong>: Detailed beadwork that catches the eye</li>\r\n	<li><strong>Premium Materials</strong>: Durable beads and high-quality lining</li>\r\n	<li><strong>Versatile Use</strong>: Perfect for both everyday use and special occasions</li>\r\n	<li><strong>Cultural Heritage</strong>: Supports traditional artisan techniques and craftsmanship</li>\r\n</ul>\r\n\r\n<p>Add a touch of handmade elegance to your wardrobe with this stunning beaded bag, a true testament to the artistry and dedication of our talented artisans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.11.59 PM (1).jpeg', NULL, NULL, NULL, '2024-06-27 17:34:52', '2024-06-27 17:34:52'),
(41, 'Handcrafted Beaded Bag', 0, 2, 7, 1, 'New', 'handcrafted-beaded-bag', NULL, '2', 6552, 12, 'Aste', 0, 1, NULL, 'HAN-36409873', 'In Stock', '2000', '2000', 'Handcrafted Beaded Bag', '<p>Discover elegance and craftsmanship with our finely handcrafted beaded bag. Each bag is meticulously created by skilled artisans, using high-quality beads to form intricate patterns and vibrant designs. This unique accessory is not just a bag, but a piece of art that embodies tradition and modern style.</p>\r\n\r\n<ul>\r\n	<li><strong>Exquisite Design</strong>: Detailed beadwork that catches the eye</li>\r\n	<li><strong>Premium Materials</strong>: Durable beads and high-quality lining</li>\r\n	<li><strong>Versatile Use</strong>: Perfect for both everyday use and special occasions</li>\r\n	<li><strong>Cultural Heritage</strong>: Supports traditional artisan techniques and craftsmanship</li>\r\n</ul>\r\n\r\n<p>Add a touch of handmade elegance to your wardrobe with this stunning beaded bag, a true testament to the artistry and dedication of our talented artisans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.11.59 PM.jpeg', NULL, NULL, NULL, '2024-06-27 17:36:23', '2024-06-27 17:36:23'),
(42, 'Handcrafted Beaded Bag', 0, 2, 7, 1, 'New', 'handcrafted-beaded-bag', NULL, '2', 6552, 12, 'Aste', 0, 1, NULL, 'HAN-40739156', 'In Stock', '2000', '2000', 'Handcrafted Beaded Bag', '<p>Discover elegance and craftsmanship with our finely handcrafted beaded bag. Each bag is meticulously created by skilled artisans, using high-quality beads to form intricate patterns and vibrant designs. This unique accessory is not just a bag, but a piece of art that embodies tradition and modern style.</p>\r\n\r\n<ul>\r\n	<li><strong>Exquisite Design</strong>: Detailed beadwork that catches the eye</li>\r\n	<li><strong>Premium Materials</strong>: Durable beads and high-quality lining</li>\r\n	<li><strong>Versatile Use</strong>: Perfect for both everyday use and special occasions</li>\r\n	<li><strong>Cultural Heritage</strong>: Supports traditional artisan techniques and craftsmanship</li>\r\n</ul>\r\n\r\n<p>Add a touch of handmade elegance to your wardrobe with this stunning beaded bag, a true testament to the artistry and dedication of our talented artisans.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.00 PM.jpeg', NULL, NULL, NULL, '2024-06-27 17:37:27', '2024-06-27 17:37:27'),
(43, 'Elegant Beaded Ladies Hat', 0, 2, 7, 1, 'New', 'elegant-beaded-ladies-hat', NULL, '2', 6552, 10, 'Aste', 0, 1, NULL, 'ELE-02561456', 'In Stock', '2500', '2500', 'Elegant Beaded Ladies Hat', '<p>Step into a world of timeless sophistication with our Majestic Elegance Beaded Hat. This exquisite accessory is more than just a hat&mdash;it&#39;s a statement of refined taste and artistic craftsmanship.</p>\r\n\r\n<p>Each hat is meticulously handcrafted by skilled artisans, using premium materials to ensure both durability and comfort. The elegant design features an intricate pattern of hand-sewn beads, shimmering with every movement and adding a touch of glamour to any outfit.</p>\r\n\r\n<p>The wide brim offers a chic silhouette, perfect for both sunny days and special occasions. The inner band is lined with soft, breathable fabric, ensuring a comfortable fit throughout the day.</p>\r\n\r\n<p>Whether you&#39;re attending a garden party, a wedding, or simply enjoying a day out, the Majestic Elegance Beaded Hat elevates your ensemble with its unique blend of tradition and contemporary style. Embrace the art of beading and make a lasting impression with this luxurious accessory.</p>\r\n\r\n<p><strong>Key Features</strong>:</p>\r\n\r\n<ul>\r\n	<li><strong>Handcrafted Excellence</strong>: Each hat is individually made by skilled artisans, ensuring a unique and high-quality piece.</li>\r\n	<li><strong>Intricate Beadwork</strong>: The stunning bead patterns are meticulously sewn by hand, adding an elegant sparkle to your look.</li>\r\n	<li><strong>Premium Materials</strong>: Made with high-quality materials for durability and comfort.</li>\r\n	<li><strong>Versatile Style</strong>: The wide brim and elegant design make it suitable for various occasions, from casual outings to formal events.</li>\r\n	<li><strong>Comfortable Fit</strong>: Soft inner lining for all-day comfort.</li>\r\n</ul>\r\n\r\n<p>Elevate your style with the Majestic Elegance Beaded Hat and experience the perfect blend of tradition, elegance, and modern flair.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/WhatsApp Image 2024-06-16 at 12.12.00 PM (1).jpeg', NULL, NULL, NULL, '2024-06-27 17:40:42', '2024-06-27 17:40:42'),
(44, 'Handcrafted Sailboat Wood Cutaway Plaque', 0, 4, 8, 1, 'New', 'handcrafted-sailboat-wood-cutaway-plaque', NULL, '1', 6552, 5, 'Aste', 0, 1, NULL, 'HAN-40189903', 'In Stock', '2000', '2000', 'Handcrafted Sailboat Wood Cutaway Plaque', '<p>Discover the timeless elegance and masterful craftsmanship of our <strong>Handcrafted Sailboat Wood Cutaway Plaque</strong>, an exquisite piece that captures the essence of maritime adventure. This stunning plaque is meticulously crafted by skilled artisans using premium, sustainably sourced wood, ensuring both beauty and durability.</p>\r\n\r\n<p><strong>Key Features:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Artisan Craftsmanship</strong>: Each sailboat plaque is handcrafted with precision, showcasing intricate details that highlight the skill and dedication of our talented artisans.</li>\r\n	<li><strong>Premium Materials</strong>: Made from high-quality, eco-friendly wood, this plaque is not only a testament to sustainable practices but also ensures longevity and a natural aesthetic.</li>\r\n	<li><strong>Unique Design</strong>: The cutaway style offers a unique perspective, revealing the intricate inner workings of a classic sailboat. This design element adds depth and intrigue, making it a standout piece in any room.</li>\r\n	<li><strong>Versatile D&eacute;cor</strong>: Perfect for nautical enthusiasts, this plaque enhances the charm of living rooms, offices, or coastal-themed spaces, providing a touch of sophistication and a connection to the sea.</li>\r\n	<li><strong>Gift-Worthy Packaging</strong>: Beautifully packaged, this sailboat plaque makes an exceptional gift for special occasions such as birthdays, anniversaries, or holidays, delighting recipients with its artistry and craftsmanship.</li>\r\n</ul>\r\n\r\n<p><strong>Why Choose Our Sailboat Wood Cutaway Plaque?</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Support Artisans</strong>: By purchasing this plaque, you support small-scale artisans and contribute to the preservation of traditional craftsmanship.</li>\r\n	<li><strong>Sustainable Choice</strong>: Our commitment to eco-friendly materials ensures that your purchase aligns with environmentally responsible practices.</li>\r\n	<li><strong>Timeless Appeal</strong>: The classic design and superior craftsmanship make this plaque a timeless addition to your home d&eacute;cor, a piece that will be cherished for years to come.</li>\r\n</ul>\r\n\r\n<p>Bring the beauty of handcrafted artistry and the spirit of the sea into your home with our <strong>Handcrafted Sailboat Wood Cutaway Plaque</strong>. Order now and experience the exquisite blend of tradition and elegance that defines this remarkable piece.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/8403627b851a48b1a6e810c69ed7da63.jpg', NULL, NULL, NULL, '2024-06-27 18:01:10', '2024-06-27 18:01:10'),
(45, 'Wood Butterfly Engraved Wall Art', 0, 4, 8, 1, 'New', 'wood-butterfly-engraved-wall-art', NULL, '3', 6552, 8, 'Aste', 0, 1, NULL, 'WOO-45319225', 'In Stock', '2000', '10000', 'Wood Butterfly Engraved Wall Art', '<p>Transform your living space with the timeless elegance of our Handcrafted Wood Butterfly Engraved Wall Art. This exquisite piece is a testament to the skill and creativity of our artisans, meticulously crafted to bring a touch of nature&#39;s beauty into your home.</p>\r\n\r\n<p>Features:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Artisan Craftsmanship</strong>: Each piece is lovingly handcrafted by skilled artisans, ensuring that no two pieces are exactly alike. The intricate butterfly design is carefully engraved into high-quality wood, showcasing exceptional attention to detail.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Natural Materials</strong>: Made from sustainably sourced wood, this wall art piece not only enhances your decor but also supports eco-friendly practices. The rich, natural grain of the wood adds depth and warmth to the butterfly motif.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Elegant Design</strong>: The delicate butterfly, a symbol of transformation and grace, is beautifully rendered with intricate patterns that capture the essence of its ethereal beauty. The fine engraving highlights the wings&#39; delicate lines and textures, creating a stunning visual impact.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Versatile Decor</strong>: Perfect for any room, this piece adds a touch of sophistication and charm to your home. Whether displayed in your living room, bedroom, or office, it serves as a captivating focal point that inspires admiration and conversation.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Easy to Hang</strong>: Equipped with a sturdy hanging mechanism, this wall art is easy to install and ready to be enjoyed. Its lightweight design ensures that it can be safely and securely displayed on any wall.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Benefits:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Unique and Personal</strong>: Enhance your space with a piece that is not just decor, but a work of art with a story. Each butterfly wall art is unique, reflecting the artisan&#39;s dedication and personal touch.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Eco-Friendly Choice</strong>: By choosing this handcrafted piece, you are supporting sustainable practices and contributing to the preservation of traditional craftsmanship.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Timeless Appeal</strong>: Unlike mass-produced items, this wall art exudes a timeless charm that transcends trends, making it a cherished addition to your home for years to come.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Elevate your interior decor with the captivating beauty of our Handcrafted Wood Butterfly Engraved Wall Art. Embrace the artistry, elegance, and sustainability that this piece represents, and let it inspire a sense of wonder and tranquility in your home.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/4ca78c39ab4ab7355c8b2c4017a1ad29.jpg', NULL, NULL, NULL, '2024-06-27 18:05:49', '2024-06-27 18:05:49'),
(50, 'Leather Tote Bag', 0, 3, NULL, 1, 'New', 'leather-tote-bag', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'LEA-09250278', 'In Stock', '7000', '7500', 'Leather Tote Bag', '<p>This is a new design leather bag is meant for the fashion-centric&nbsp;individual.&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/download Bag.jpg', NULL, NULL, NULL, '2024-07-01 15:15:46', '2024-07-01 15:15:46'),
(51, 'Beaded Sandals', 0, 3, 9, 1, 'New', 'beaded-sandals', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-25311285', 'In Stock', '1499', '1500', 'Add your collection with these stylish handmade maasai beaded sandals made with authentic leather which makes it easier to slip on and off. It\'s made in different colored beads for maximum style.', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/Sandal.jpg', NULL, NULL, NULL, '2024-07-01 15:20:12', '2024-07-01 15:20:12'),
(52, 'Wooden wall clocks', 1, 4, 8, 1, 'New', 'wooden-wall-clocks', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'LOV-53921675', 'In Stock', '2500', '3000', 'The clock is powered by original quartz mechanism and it comes in different colors.', '<p>The clock is powered by original quartz mechanism and it comes in different colors.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/il_570xN.3594482817_jyfb.jpg', NULL, NULL, NULL, '2024-07-03 15:52:45', '2024-07-03 15:52:45');
INSERT INTO `products` (`id`, `name`, `slider`, `main`, `UserID`, `status`, `pro_condition`, `slung`, `video`, `category`, `google_product_category`, `sub_category_id`, `brand`, `featured`, `trending`, `banner_position`, `sku`, `stock`, `price_raw`, `price`, `meta`, `content`, `image_one`, `image_two`, `image_three`, `image_four`, `created_at`, `updated_at`) VALUES
(53, 'Wooden calendars', 0, 4, 8, 1, 'New', 'wooden-calendars', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'WOO-73155369', 'In Stock', '2500', '2500', 'wooden stylish calendars with movable parts that indicates different dates of a year', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/ca6883660902a5d435498532366dc2a5.jpg', NULL, NULL, NULL, '2024-07-03 16:50:59', '2024-07-03 16:50:59'),
(54, 'Wolf art', 0, 4, 8, 1, 'New', 'wolf-art', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'WOL-43757846', 'In Stock', '3000', '3000', 'A dynamic display of a wolf face made from wood with the face black in colour', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/51b0593b80ac1074fc71270cebaf5676.jpg', NULL, NULL, NULL, '2024-07-04 11:26:09', '2024-07-04 11:26:09'),
(55, 'Mountains with sky wooden art', 0, 4, 8, 1, 'New', 'mountains-with-sky-wooden-art', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'RAI-24754185', 'In Stock', '4800', '5800', 'Perfect Living room decorating piece of mountains with a blue background made from wood', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/b3e20442c890c4d0c7adab208fd8042b.jpg', NULL, NULL, NULL, '2024-07-06 10:11:32', '2024-07-06 10:11:32'),
(56, 'African woman art', 0, 4, 8, 1, 'New', 'african-woman-art', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'AFR-39166828', 'In Stock', '7000', '7000', NULL, NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/e9ecd0589d5f14e48a4840ed3dc54500.jpg', NULL, NULL, NULL, '2024-07-06 10:16:20', '2024-07-06 10:16:20'),
(57, 'Handmade wooden watch stand for men and women collection.', 0, 2, 8, 1, 'New', 'handmade-wooden-watch-stand-for-men-and-women-collection', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'HAN-23580421', 'In Stock', '1500', '1500', 'watch stands keeps your most precious time pieces on display in style safely.they are available for both men and women.', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/23bbb6d572da55324960e3423453ea26.jpg', NULL, NULL, NULL, '2024-07-06 10:20:18', '2024-07-06 10:20:18'),
(59, 'Apple wall clock', 0, 4, 8, 1, 'New', 'apple-wall-clock', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'APP-92780376', 'In Stock', '3500', '3500', NULL, NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/31b3da9fec06a1551c75c4295816ff8b.jpg', NULL, NULL, NULL, '2024-07-06 11:43:50', '2024-07-06 11:43:50'),
(60, 'Ancient Sun worshipping', 0, 4, 8, 1, 'New', 'ancient-sun-worshipping', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'ANC-17382959', 'In Stock', '2500', '2500', 'A solar deity or sun deity is a deity who represents the Sun or an aspect thereof. Such deities are usually associated with power and strength. Solar deities and Sun worship can be found throughout most of recorded history in various forms. The Sun is sometimes referred to by its Latin name Sol or by its Greek name Helios', '<p>A solar deity or sun deity is a deity who represents the Sun or an aspect thereof. Such deities are usually associated with power and strength. Solar deities and Sun worship can be found throughout most of recorded history in various forms. The Sun is sometimes referred to by its Latin name Sol or by its Greek name Helios</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/939ba0b767fab7da9fa17860f6a33167.jpg', NULL, NULL, NULL, '2024-07-06 11:46:54', '2024-07-06 11:46:54'),
(61, 'Heart shaped wooden wall clock', 0, 4, 8, 1, 'New', 'heart-shaped-wooden-wall-clock', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'HEA-54042817', 'In Stock', '1499', '3500', 'It\'s hand made from wood and comes in red paint that elicits powerful emotions and connected with love, passion and desire while the white colour represent the purest form of love like a parents love for their child.\r\nPowered by original quartz mechanism.', '<p>It&#39;s hand made from wood and comes in red paint that elicits powerful emotions and connected with love, passion and desire while the white colour represent the purest form of love like a parents love for their child.<br />\r\nPowered by original quartz mechanism.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Screenshot_20240707-111012_1.jpg', NULL, NULL, NULL, '2024-07-07 05:12:33', '2024-07-07 05:12:33'),
(62, 'Handcrafted Islamic wall hanging art', 0, 4, 8, 1, 'New', 'handcrafted-islamic-wall-hanging-art', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'HAN-45815816', 'In Stock', '4000', '7000', 'This wooden 3d piece was inspired by the greatness of Allah with the words above meaning \"GOD IS GREAT\". The famous green colour above is considered a sacred colour in Islam which indicates of the heavens. In fact the Muslim faith believes that the people in paradise are dressed in all green.\r\n( 18×25 inches)', '<p>This wooden 3d piece was inspired by the greatness of Allah with the words above meaning &quot;GOD IS GREAT&quot;. The famous green colour above is considered a sacred colour in Islam which indicates of the heavens. In fact the Muslim faith believes that the people in paradise are dressed in all green. ( 18&times;25 inches)</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Screenshot_20240707-112520_1.jpg', NULL, NULL, NULL, '2024-07-07 08:01:26', '2024-07-07 08:01:26'),
(63, 'Wooden giraffe art', 0, 4, 8, 1, 'New', 'wooden-giraffe-art', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'WOO-40720725', 'In Stock', '4000', '4000', 'This piece of art is a tribute to all the giraffes which are revered as a symbol of grace, elegance and adaptability.\r\nTheir height and appearance has captured the imagination of people for centuries making it a source of inspiration in art.\r\n(14×35 inches)\r\nIt comes in different colors', '<p>&nbsp;This piece of art is a tribute to all the giraffes which are revered as a symbol of grace, elegance and adaptability.<br />\r\nTheir height and appearance have captured the imagination of people for centuries making it a source of inspiration in art.<br />\r\n(14&times;35 inches). It comes in different colors</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Screenshot_20240707-112411_1.jpg', NULL, NULL, NULL, '2024-07-07 08:05:37', '2024-07-07 08:05:37'),
(65, 'Handmade elephant head art', 0, 4, 8, 1, 'New', 'handmade-elephant-head-art', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'HAN-96278039', 'In Stock', '7000', '10000', 'Elephants have been known to symbolize power, wisdom and good luck, many often collected elephant figurines to place in their household to protect it.\r\nBy incorporating elephant into our artworks, we pay homage to the past and enduring wisdom of their ancestors.🦣\r\n(24×27 inches)', '<p>Elephants have been known to symbolize power, wisdom and good luck, many often collected elephant figurines to place in their household to protect it.<br />\r\nBy incorporating elephant into our artworks, we pay homage to the past and enduring wisdom of their ancestors.🦣<br />\r\n(24&times;27 inches)</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Screenshot_20240707-112251_1.jpg', NULL, NULL, NULL, '2024-07-07 08:16:08', '2024-07-07 08:16:08'),
(66, 'Beaded Leather Sandals', 0, 3, 9, 1, 'New', 'beaded-leather-sandals', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-75081196', 'In Stock', '1000', '1000', 'African beaded women sandals with a unique stunning flower shape.\r\nMade from sustainability sourced leather.', '<p>AFRICAN QUALITY BEADED SANDALS FOR SALE</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/20240626_133526.jpg', NULL, NULL, NULL, '2024-07-09 14:52:17', '2024-07-09 14:52:17'),
(67, 'Men shoe', 0, 3, 7, 1, 'New', 'men-shoe', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'MEN-76809261', 'In Stock', '2500', '2500', NULL, '<p><strong>Men loafers</strong></p>\r\n\r\n<p><strong>​​​​#madeinkenya</strong></p>\r\n\r\n<p><strong>#strongand durable</strong></p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20230810-WA0077_1.jpg', NULL, NULL, NULL, '2024-07-11 03:03:49', '2024-07-11 03:03:49'),
(69, 'Ageism', 1, 4, 10, 1, 'New', 'ageism', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'AGE-24793006', 'In Stock', '65000', '65000', 'Title: Ageism \r\nsize: 70x100cm \r\nStyle: Mixed media', '<p>A painting that depicts the discrimination against people of older age. The painting is made from color pencil on forest paper.&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/DocScanner 16 Jun 2024 12-29-23(135975907181209).jpg', NULL, NULL, NULL, '2024-07-25 15:29:52', '2024-07-25 15:29:52'),
(74, 'Colourful smile', 1, 4, 14, 1, 'New', 'colourful-smile', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'COL-60414837', 'In Stock', '7500', '7500', 'Acrylic on canvas \r\nDimensions ;30 by 30 cm\r\nTitle ;colourful smile', '<blockquote>\r\n<p>Art is reality in itself it depicts real life situations,For me the above painting represents &nbsp;but the beauty that&#39;s the smile.Its a colourful representation of bright colours engraved on a canvas with a prepossing nature.</p>\r\n</blockquote>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Task_3c5ad6e089edd484.jpg', NULL, NULL, NULL, '2024-07-25 16:36:56', '2024-07-25 16:36:56'),
(75, 'Beaded bracelets handmade', 0, 4, 16, 1, 'New', 'beaded-bracelets-handmade', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-28134706', 'In Stock', '3000', '3000', 'Handmade beaded bangles from kenya to be worn in different occasions (6pieces)', '<p>Handmade beaded bangles from kenya&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240718-WA0000.jpg', NULL, NULL, NULL, '2024-07-25 16:41:50', '2024-07-25 16:41:50'),
(76, 'Zealous', 0, 4, 14, 1, 'New', 'zealous', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'ZEA-70237855', 'In Stock', '3000', '3000', NULL, '<blockquote>\r\n<p>A man is a true definition of someone that is avid,he shows a keen interest or desire for sth.He&#39;ll get up each day fight battles physically,mentally and spiritually and still hold up so well cause he&#39;s stratified(Theres many layer that makes a man who he is)Even though he&#39;s mental state is at stake for him a man gotta be a man.</p>\r\n</blockquote>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Task_6cde50c909d24f24.jpg', NULL, NULL, NULL, '2024-07-25 16:59:17', '2024-07-25 16:59:17'),
(77, 'Leather Shoes', 0, 3, 20, 1, 'New', 'leather-shoes', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'LEA-79575096', 'In Stock', '2500', '2500', 'Leather Shoes', '<p>Hand stitched leather shoes</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Sample Shoes.jpg', NULL, NULL, NULL, '2024-07-26 08:58:55', '2024-07-26 08:58:55'),
(78, 'Kenyan flag bracelet', 0, 2, 9, 1, 'New', 'kenyan-flag-bracelet', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'KEN-16789506', 'In Stock', '1800', '1800', 'Stylish handmade wrist bracelets made from quality string and beads to level up your style.', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240720-WA0005.jpg', NULL, NULL, NULL, '2024-07-27 07:29:51', '2024-07-27 07:29:51'),
(79, 'Maasai necklace', 0, 3, 9, 1, 'New', 'maasai-necklace', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'MAA-01940234', 'In Stock', '1499', '2500', 'Handmade maasai stylish necklace with mixed coloured beads that comes with a back hook closure.', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240725-WA0008.jpg', NULL, NULL, NULL, '2024-07-27 10:59:51', '2024-07-27 10:59:51'),
(80, 'Clutch bag', 0, 3, 9, 1, 'New', 'clutch-bag', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'CLU-83109623', 'In Stock', '1800', '1800', 'Stylish handmade clutches for a perfect completion of your outfit.\r\nHandcrafted from black leather and golden crystal beads.', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240720-WA0008.jpg', NULL, NULL, NULL, '2024-07-28 05:15:06', '2024-07-28 05:15:06'),
(81, 'Beaded wrist watch', 0, 2, 9, 1, 'New', 'beaded-wrist-watch', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-37190807', 'In Stock', '2000', '2000', 'Handmade Stylish wrist watch whose straps are made using leather and colored beads.\r\nIt comes in different bead patterns that suite you well.', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240720-WA0004.jpg', NULL, NULL, NULL, '2024-07-28 12:34:23', '2024-07-28 12:34:23'),
(82, 'Round beaded necklace with matching earrings', 0, 2, 16, 1, 'New', 'round-beaded-necklace-with-matching-earrings', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'ROU-36297089', 'In Stock', '2500', '2500', 'Kenyan artcraft hand m', '<p>Handmade beaded necklace with matching ears, locally made</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20231101-WA0005.jpg', NULL, NULL, NULL, '2024-07-29 16:33:49', '2024-07-29 16:33:49'),
(83, 'Brass beaded necklace', 0, 2, 16, 1, 'New', 'brass-beaded-necklace', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'BRA-40542063', 'In Stock', '3000', '3000', 'Make in Kenya, handmade beaded brass', '<p>Handmade brass beaded necklace to be worn in different, can be used as decoration&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20231218-WA0001.jpg', NULL, NULL, NULL, '2024-07-29 16:47:03', '2024-07-29 16:47:03'),
(84, 'Leather clutch bag with matching necklace and bracelets', 0, 2, 16, 1, 'New', 'leather-clutch-bag-with-matching-necklace-and-bracelets', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'LEA-19937300', 'In Stock', '5000', '5000', 'All materials are locally made in Kenya can be used as fashion or when attending functions', '<p>The clutch bag is leather made produced in Kenya with matching necklace,long too kenyaimade and bracelets&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240325-WA0001.jpg', NULL, NULL, NULL, '2024-07-29 16:54:12', '2024-07-29 16:54:12'),
(85, 'Circumcision Ritual', 0, 4, 10, 1, 'New', 'circumcision-ritual', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'INI-39412061', 'In Stock', '65000', '65000', 'Title: Circumcission ritual 1\r\nMedium: Mixed Media On Canvas\r\nSize: 80x60 cm', '<p>A painting about the ceremonious circumcision rituals of the Luhya people where young boys are initiated into manhood.&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/DocScanner 16 Jun 2024 12-29-1(135975058585154).jpg', NULL, NULL, NULL, '2024-07-29 17:01:08', '2024-07-29 17:01:08'),
(86, 'Circumcision Ritual 2', 0, 4, 10, 1, 'New', 'circumcision-ritual-2', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'CIR-65904391', 'In Stock', '60000', '60000', 'Title: Circumcision Ritual 2\r\nMedium: Mixed Media \r\nSize: 80x60 cm', '<p>A painting about the ceremonious circumcision rituals of the Luhya people where young boys are initiated into manhood.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/Circumcision Ritual 2 crop.jpg', NULL, NULL, NULL, '2024-07-29 17:05:37', '2024-07-29 17:05:37'),
(88, 'Decisive', 0, 4, 14, 1, 'New', 'decisive', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'DEC-18065994', 'In Stock', '10000', '10000', 'Medium;Acrylic and oil on canvas\r\nDimension;60 by 40\r\nTitle;Final', '<blockquote>\r\n<p>Football is not just but a game it is also a form of art.It has an aesthetic dimension,it conveys emotion and requires skill to achieve it.This piece as the title says was a final that went down and with it being electrifying,cracking and mood charged.The mood changed when one of the players got injured after the other player who was the opponent intentionally hurt him.Black potrays the range of emotions from fans after their best player was injured in what they deemed to be intentional.As the mood changed so did the players too and they went on losing the match meaning no silverware which would mean they would be European kings</p>\r\n\r\n<p>Finally it also brings about how people come together for the love of the game as its art and its beautiful to watch</p>\r\n</blockquote>', 'https://www.wakazi.co.ke/uploads/products/Task_719c95dee91f24bb.jpg', NULL, NULL, NULL, '2024-07-29 18:32:11', '2024-07-29 18:32:11'),
(89, 'Mother Nature', 0, 4, 10, 1, 'New', 'mother-nature', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'MOT-15034019', 'In Stock', '55000', '55000', 'Title: Mother Nature \r\nMedium: Palette Knife \r\nSize: 63x88 cm', '<p>Textured oil painting. Made using palette knife.</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/DocScanner 16 Jun 2024 12-29-6(135975251324485).jpg', NULL, NULL, NULL, '2024-07-29 20:04:13', '2024-07-29 20:04:13'),
(90, 'Broken Dreams', 1, 4, 10, 1, 'New', 'broken-dreams', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'BRO-42049197', 'In Stock', '55000', '55000', 'Title: Broken Dreams\r\nMedium: Acrylic \r\nSize: 70X100 cm', '<p>Acrylic on cartridge paper.&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/DocScanner 16 Jun 2024 12-29-16(135975693523186).jpg', NULL, NULL, NULL, '2024-07-29 20:16:47', '2024-07-29 20:16:47'),
(91, 'Beaded key holders', 0, 2, 9, 1, 'New', 'beaded-key-holders', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-82625187', 'In Stock', '200', '200', 'The beaded holders are handmade by using different beading patterns to portray unique stunning shapes.\r\nIt comes with a strong metallic key ring for holding the keys', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/Screenshot_20240730-101531_1.jpg', NULL, NULL, NULL, '2024-07-30 04:16:41', '2024-07-30 04:16:41'),
(92, 'Patriotic Necklace and Bracelets', 0, 2, 22, 1, 'New', 'patriotic-necklace-and-bracelets', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'PAT-75360431', 'In Stock', '600', '1500', 'Patriotic Bracelet / Necklace', '<p>Finely crafted with astounding detail</p>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-07-29 at 10.58.53 PM.jpeg', NULL, NULL, NULL, '2024-07-31 02:27:15', '2024-07-31 02:27:15'),
(93, 'Special Friend Beaded Keyholder', 0, 2, 23, 1, 'New', 'special-friend-beaded-keyholder', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'SPE-16827493', 'In Stock', '200', '200', 'Special Friend Beaded Keyholder', '<p>The perfect gift for someone special, or just to spoil yourself.</p>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-07-19 at 9.59.24 PM.jpeg', NULL, NULL, NULL, '2024-08-01 05:57:32', '2024-08-01 05:57:32'),
(94, 'Special Rahab Beaded Keyholder', 0, 2, 23, 1, 'New', 'special-rahab-beaded-keyholder', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'SPE-28479351', 'In Stock', '200', '200', 'Special Rahab Beaded Keyholder', '<p>Get your custom detail keyholder, for yourself or just for Rahab.</p>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-01 at 11.48.30 AM.jpeg', NULL, NULL, NULL, '2024-08-01 06:00:26', '2024-08-01 06:00:26'),
(95, 'Hand woven bright plush carpet', 0, 2, 23, 1, 'New', 'hand-woven-bright-plush-carpet', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'HAN-72784045', 'In Stock', '4000', '4000', 'Hand woven plush carpet', '<p>Made for a cozy interior, this carpet compliments your decor and keeps your feet and household warm.</p>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-01 at 8.38.09 PM.jpeg', NULL, NULL, NULL, '2024-08-01 15:12:12', '2024-08-01 15:12:12'),
(96, 'Hand woven soft plush carpet', 0, 2, 23, 1, 'New', 'hand-woven-soft-plush-carpet', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'HAN-89532010', 'In Stock', '4000', '4000', 'Hand woven soft plush carpet', '<p>Perfect for the cozy interiors.</p>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-07-20 at 12.51.24 PM.jpeg', NULL, NULL, NULL, '2024-08-01 15:15:57', '2024-08-01 15:15:57'),
(97, 'Traditional Masai Bracelet with Matching Earrings', 0, 2, 16, 1, 'New', 'traditional-masai-bracelet-with-matching-earrings', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'ATR-06639751', 'In Stock', '2000', '2000', 'Kenyan handmade with fine beads', '<p>Handmade traditional Masai bracelet with matching ears worn in different functions&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0008.jpg', NULL, NULL, NULL, '2024-08-02 15:07:57', '2024-08-02 15:07:57'),
(98, 'A leather beaded belt', 0, 2, 16, 1, 'New', 'a-leather-beaded-belt', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'ALE-48107184', 'In Stock', '3000', '3000', 'Kenyan handmade leather creation', '<p>Locally produced leather beaded in different designs and colors</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0040.jpg', NULL, NULL, NULL, '2024-08-02 15:36:50', '2024-08-02 15:36:50'),
(99, 'A beaded necklace', 0, 2, 16, 1, 'New', 'a-beaded-necklace', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'ABE-87853790', 'In Stock', '1500', '1500', 'Beaded necklace, Kenyan handmade made', '<p>This artwork is made with traditional Kenyan beads and comes in different colors&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0012.jpg', NULL, NULL, NULL, '2024-08-02 15:43:53', '2024-08-02 15:43:53'),
(100, 'A long beaded earings', 0, 2, 16, 1, 'New', 'a-long-beaded-earings', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'ALO-44833916', 'In Stock', '800', '800', 'Handmade beaded ears for different functions', '<p>Handmade beaded ears and comes in different colors, with round ring&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0034.jpg', NULL, NULL, NULL, '2024-08-02 15:50:12', '2024-08-02 15:50:12'),
(101, 'Fine beaded waist beads/necklace', 0, 4, 16, 1, 'New', 'fine-beaded-waist-beadsnecklace', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'FIN-31084773', 'In Stock', '400', '400', 'Handmade fine beaded waist beads', '<p>Fine beaded beads that can be used as waist beads, necklace, bracelet and anklets&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0043.jpg', NULL, NULL, NULL, '2024-08-02 15:56:18', '2024-08-02 15:56:18'),
(102, 'A fine beaded necklace', 0, 4, 16, 1, 'New', 'a-fine-beaded-necklace', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'AFI-96280145', 'In Stock', '4500', '4500', 'Made in Kenya with fine beads', '<p>This necklace (scatter) is handmade with fine beads and comes in different shapes and sizes and can be worn in different occasions&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0016.jpg', NULL, NULL, NULL, '2024-08-02 16:04:03', '2024-08-02 16:04:03'),
(103, 'Beaded necklace handmade', 0, 4, 16, 1, 'New', 'beaded-necklace-handmade', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-93958024', 'In Stock', '2500', '2500', 'Kenyan handmade beaded necklace', '<p>A beaded necklace with brass on one side&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0028.jpg', NULL, NULL, NULL, '2024-08-02 16:31:06', '2024-08-02 16:31:06'),
(105, 'Fine beaded necklace with matching ears', 0, 4, 16, 1, 'New', 'fine-beaded-necklace-with-matching-ears', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'FIN-12838395', 'In Stock', '2000', '2000', 'Handmade and can be worn on all occasions', '<p>This necklace is locally made with fine beads and wire and comes in different colors with matching ears&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240802-WA0025.jpg', NULL, NULL, NULL, '2024-08-02 16:43:18', '2024-08-02 16:43:18'),
(106, 'Leather beaded clutch bag with matching necklace and bracelets', 0, 4, 16, 1, 'New', 'leather-beaded-clutch-bag-with-matching-necklace-and-bracelets', NULL, '5', 6552, NULL, 'Aste', 0, 1, NULL, 'LEA-46724309', 'In Stock', '5000', '5000', 'Beads locally produced and all handmade', '<p>Clutch bag is beaded and made with soft leather and has matching long necklace with matching bracelets&nbsp;</p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240307-WA0062.jpg', NULL, NULL, NULL, '2024-08-02 16:52:09', '2024-08-02 16:52:09'),
(107, 'Cutlery tray', 0, 2, 8, 1, 'New', 'cutlery-tray', NULL, '4', 6552, NULL, 'Aste', 0, 1, NULL, 'CUT-79116537', 'In Stock', '1499', '2500', 'Wooden utensils tray with compartments for fork spoon and knife utensils', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/af0ddc0d153126f7b0d59c7343edcf0d.jpg', NULL, NULL, NULL, '2024-08-05 04:31:19', '2024-08-05 04:31:19'),
(108, 'Quarter Boot Leather', 0, 3, 20, 1, 'New', 'quarter-boot-leather', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'QUA-27591524', 'In Stock', '3200', '3200', 'Quarter Boot Leather', '<blockquote>\r\n<p>Quarter boot suitable for both office wear and casual wear pure leather it comes in both color black and brown with flat sole.</p>\r\n</blockquote>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-06 at 8.41.22 PM.jpeg', NULL, NULL, NULL, '2024-08-06 15:37:45', '2024-08-06 15:37:45'),
(109, 'Oxford official  pure leather', 0, 3, 20, 1, 'New', 'oxford-official-pure-leather', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'OXF-45812256', 'In Stock', '2900', '2800', 'Oxford official  pure leather', '<blockquote>\r\n<p>Oxford official wear;&nbsp;pure leather</p>\r\n</blockquote>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-06 at 8.42.54 PM.jpeg', NULL, NULL, NULL, '2024-08-06 15:40:21', '2024-08-06 15:40:21'),
(110, 'Ladies school going shoes - pure leather', 0, 3, 20, 1, 'New', 'ladies-school-going-shoes-pure-leather', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'LAD-82663944', 'In Stock', '1800', '1800', 'Ladies school going shoes - pure leather', '<blockquote>\r\n<p>school going shoe&#39;s for ladies with Velcro pure leather 1800</p>\r\n</blockquote>', 'https://wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-06 at 8.42.12 PM.jpeg', NULL, NULL, NULL, '2024-08-06 15:42:54', '2024-08-06 15:42:54'),
(113, 'Soft Carpet', 0, 4, 23, 1, 'New', 'soft-carpet', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'SOF-34221018', 'In Stock', '2500', '2500', 'Bright Soft carpet', '<blockquote>\r\n<p>Bright soft carpet</p>\r\n</blockquote>', 'https://wakazi.co.ke/uploads/products/IMG-20240719-WA0120.jpg', NULL, NULL, NULL, '2024-08-07 12:31:16', '2024-08-07 12:31:16'),
(117, 'Traditional handmade bag(kiondo)', 0, 4, 16, 1, 'New', 'traditional-handmade-bagkiondo', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'TRA-39158067', 'In Stock', '3000', '3000', 'Kenyan handmade with leather strap', '<p>This is made with both sisal and thread , suitable for shopping&nbsp;</p>', 'https://wakazi.co.ke/uploads/products/IMG-20240808-WA0020.jpg', NULL, NULL, NULL, '2024-08-09 14:53:39', '2024-08-09 14:53:39'),
(118, 'A pair of candle stand', 1, 4, 16, 1, 'New', 'a-pair-of-candle-stand', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'APA-75809967', 'In Stock', '6500', '6500', 'Kenyan handmade, with the lady carrying calabash on the head', '<p>This stylish candle stands,Masai beaded can be used as candle stand or for decoration&nbsp;</p>', 'https://wakazi.co.ke/uploads/products/IMG-20240808-WA0022.jpg', NULL, NULL, NULL, '2024-08-09 15:01:49', '2024-08-09 15:01:49'),
(119, 'Handwoven bag', 0, 4, 16, 1, 'New', 'handwoven-bag', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'HAN-65887005', 'In Stock', '3500', '3500', 'Kenyan handmade and can be used as shopping bag', '<p>This bag that can be used for shopping is handmade using sisal thread and dyed in different colors.the strap we use leather and has lining inside&nbsp;</p>', 'https://wakazi.co.ke/uploads/products/IMG-20240808-WA0012.jpg', NULL, NULL, NULL, '2024-08-09 15:13:30', '2024-08-09 15:13:30'),
(120, 'A carrier bag', 0, 4, 16, 1, 'New', 'a-carrier-bag', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'ACA-38529547', 'In Stock', '3000', '3000', 'African fabric', '<p>Uses locally sourced materials especially fabric and comes in different prints and designs&nbsp;</p>', 'https://wakazi.co.ke/uploads/products/IMG-20240808-WA0007.jpg', NULL, NULL, NULL, '2024-08-09 15:23:08', '2024-08-09 15:23:08'),
(121, 'Beaded wrist watch', 0, 4, 9, 1, 'New', 'beaded-wrist-watch', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-61020937', 'In Stock', '1500', '1500', 'Beautiful beaded wrist watch made from dark glass beads of the best quality and comes with detachable straps', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240725-WA0005.jpg', NULL, NULL, NULL, '2024-08-09 15:56:11', '2024-08-09 15:56:11'),
(122, 'Beaded leather clutch bags', 0, 3, 9, 1, 'New', 'beaded-leather-clutch-bags', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, 'BEA-91905085', 'In Stock', '2000', '2000', 'Beautiful clutch bags hand sewn and made from good quality leather. These stylish bags are the perfect way to complete your outfit for your next special occasion. It comes in different colour patterns that suits you well.', NULL, 'https://wakazi.rickelectronics.co.ke/uploads/products/IMG-20240809-WA0032.jpg', NULL, NULL, NULL, '2024-08-09 16:04:52', '2024-08-09 16:04:52'),
(128, 'Peacock notebook', 0, 2, 30, 1, 'New', 'peacock-notebook', NULL, '10', 6552, NULL, 'Aste', 0, 1, NULL, 'PEA-28375940', 'In Stock', '600', '600', NULL, '<p>A notebook designed as the merchaindise form&nbsp;of the original water color art piece Peacock by nelzpicasa , that is an abstract piece of a colorful peacock perched on a tree branch</p>\r\n\r\n<p>Available in&nbsp;blank pages and ruled pages</p>', 'http://www.wakazi.co.ke/uploads/products/IMG-20231207-WA0002.jpg', NULL, NULL, NULL, '2024-08-16 06:01:46', '2024-08-16 06:01:46'),
(130, 'Heritage and butterfly glow reversal bookmark pair', 0, 2, 30, 1, 'New', 'heritage-and-butterfly-glow-reversal-bookmark-pair', NULL, '10', 6552, NULL, 'Aste', 0, 1, NULL, 'HER-59987408', 'In Stock', '140', '140', 'Bookmark pair of the art pieces Heritage and Butterfly glow reversal', '<p>These are bookmark merchaindises of the original 3d abstract conceptual art pieces heritage , which entails african royalty of the woman figure and butterfly glow reversal which is an animation of a reversed flight of a butterfly</p>', 'https://www.wakazi.co.ke/uploads/products/WhatsApp Image 2024-02-08 at 13.08.19_11cf2355 - Copy.jpg', NULL, NULL, NULL, '2024-08-17 10:48:27', '2024-08-17 10:48:27'),
(131, 'Artifacts', 0, 4, 30, 1, 'New', 'artifacts', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'ART-40721954', 'In Stock', '21000', '21000', 'A 3D  conceptual art piece of a museum setting', '<p>This is a 3D conceptual art piece illustrating differently styled structure vases placed across a mysteriously low light table , giving a feel of curiosity and wonder that can be experienced in a museum</p>', 'https://www.wakazi.co.ke/uploads/products/Artifacts.jpg', NULL, NULL, NULL, '2024-08-18 14:04:39', '2024-08-18 14:04:39'),
(133, 'life in vision  notebook', 0, 2, 30, 1, 'New', 'life-in-vision-notebook', NULL, '10', 6552, NULL, 'Aste', 0, 1, NULL, 'PEN-03836511', 'In Stock', '600', '600', 'A notebook merchaindise form of the piece life in vision', '<p>A notebook designed as the merchaindise form&nbsp;of the original water color art piece life in vision which illustrates the feeling of refection on ones life</p>\r\n\r\n<p>Available in&nbsp;blank pages and ruled pages</p>', 'https://www.wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-19 at 15.49.57_9a345c3a.jpg', NULL, NULL, NULL, '2024-08-20 14:10:57', '2024-08-20 14:10:57'),
(134, 'the battle notebook', 0, 2, 30, 1, 'New', 'the-battle-notebook', NULL, '10', 6552, NULL, 'Aste', 0, 1, NULL, 'THE-28112387', 'In Stock', '600', '600', 'A notebook merchaindise form of the piece the battle', '<p>A notebook designed as the merchaindise form&nbsp;of the original water color art piece battle that is a fan art piece of the animation samurai jack</p>\r\n\r\n<p>Available in&nbsp;blank pages and ruled pages</p>', 'https://www.wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-19 at 14.55.33_cb00f74f.jpg', NULL, NULL, NULL, '2024-08-20 14:14:57', '2024-08-20 14:14:57'),
(135, 'Heritage notebook', 0, 2, 30, 1, 'New', 'heritage-notebook', NULL, '10', 6552, NULL, 'Aste', 0, 1, NULL, 'HER-93548067', 'In Stock', '600', '600', 'A notebook merchaindise form of Heritage', '<p>A notebook designed as the merchaindise form&nbsp;of the original water color art piece heritage that illustrates the beautiful and powerful value of african women in royalty</p>\r\n\r\n<p>Available in&nbsp;blank pages and ruled pages</p>', 'https://www.wakazi.co.ke/uploads/products/WhatsApp Image 2024-08-19 at 14.55.32_b1e78fb3.jpg', NULL, NULL, NULL, '2024-08-20 14:17:01', '2024-08-20 14:17:01'),
(138, 'Bath Salts', 0, 4, 6, 1, 'New', 'bath-salts', NULL, '11', 6552, NULL, 'Aste', 0, 1, NULL, 'BAT-04876239', 'In Stock', '1500', '1500', 'Bath salts', '<p>Authentic rejuvenating and healing salts&nbsp;</p>', 'https://wakazi.co.ke/uploads/products/IMG-20240821-WA0037.jpg', NULL, NULL, NULL, '2024-08-22 02:13:00', '2024-08-22 02:13:00'),
(139, 'Borderles Unity', 0, 4, 10, 1, 'New', 'borderles-unity', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'BOR-94550323', 'In Stock', '45000', '45000', 'Title: Borderles Unity\r\nStyle: Mixed Media\r\nSize: 105x76cm', '\'Borderles Unity\' a mixed media painting.', 'https://www.wakazi.co.ke/uploads/products/6fcd7880-e07b-11ee-aef3-4b98f3fd97f7_1.jpg', NULL, NULL, NULL, '2024-08-22 17:39:14', '2024-08-22 17:39:14'),
(141, 'mkalatusi |Eucalyptus smudge medicine', 0, 1, 31, 1, 'New', 'mkalatusi-eucalyptus-smudge-medicine', NULL, '1', 6552, NULL, 'Aste', 0, 1, NULL, 'MKA-04911378', 'In Stock', '1700', '1700', 'mkalatusi |Eucalyptus smudge medicine', '<p>:Smudge medicine</p>\r\n\r\n<p>Wildly And Ethically sourced and harvestes</p>\r\n\r\n<p>Natural</p>\r\n\r\n<p>Foraged</p>\r\n\r\n<p>Of ancient trees</p>\r\n\r\n<p>Incense</p>\r\n\r\n<p>Aero-cleansers</p>\r\n\r\n<p>Meditative tools</p>\r\n\r\n<p>Mind growth tools</p>\r\n\r\n<p>Wellness</p>\r\n\r\n<p>Hand_picked and packed .</p>\r\n\r\n<p>Organic</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vitality.art.lifestyle</p>', 'https://www.wakazi.co.ke/uploads/products/IMG_20210520_144901-scaled baibuis content.jpg', NULL, NULL, NULL, '2024-08-30 16:08:11', '2024-08-30 16:08:11'),
(142, 'Stylish leather sandals', 0, 3, 9, 1, 'New', 'stylish-leather-sandals', NULL, '2', 6552, NULL, 'Aste', 0, 1, NULL, '-84632561', 'In Stock', '1500', '1500', 'Comfortable and stylish women sandals that comes with laces to tie the back to your fit.\r\nHandmade using quality leather and colored beads.', NULL, 'https://www.wakazi.co.ke/uploads/products/IMG-20240826-WA0026.jpg', NULL, NULL, NULL, '2024-09-03 04:51:07', '2024-09-03 04:51:07'),
(143, 'Trouble in paradise', 0, 4, 14, 0, 'New', 'trouble-in-paradise', NULL, '3', 6552, NULL, 'Aste', 0, 1, NULL, 'TRO-28820509', 'In Stock', '10000', '10000', 'We create chaos ourselves on the paradise we live in  troubled times and sometimes this makes others pay for others greediness and unthoughtful decisions.Things like war in some parts of the world have turned one of the most promising places to go down in ashes', '<p><kbd>In a fast changing world where chaos reigns out of unthoughtful,selfish and greediness involved many lives suffer as they are subject to hunger,war,death being the worst bit.Wars all the world have made so many promising places go up in flames and never to be heard of again as they are inert no going foward just staying put.Some of this places were full of beauty never seen as they were once wonders to be glared upon now its everyone armed to the tooth with guns,some violence.</kbd></p>', 'https://wakazi.rickelectronics.co.ke/uploads/products/20240915_195122.jpg', NULL, NULL, NULL, '2024-09-17 12:53:51', '2024-09-17 12:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0nikMr7ReZRuAKjj8QVWrW3R2gBOjjuywR8p0TWT', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXN2cEVoYmUxb3VndnhVSFJ0MGFTTVNQZHpETFZwTHk4VUxEZ1pWbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0cy9raXRjaGVuLWFuZC1kaW5pbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729179408),
('2iFhwirNaUcET06zegP3mfyFuxnyJnUSxQLUqBZl', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2lDNDR6eDBnUXJRNXNzcVhDZ3VZWDBLa2NYN1hoaVNHdVZLR3MzViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9jb3VudHktYm91bnR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729173692),
('2oDhot7pGsDcB9I4GTHkhDDFUcAWVhdifio6CF5m', NULL, '52.167.144.168', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGwwUVVzRkxKaGRHYUwyMngxVjFWdHNQWVJrZ2VlUWtQbmM2NklHeiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly93YWthemkuY28ua2UvZGFzaGJvYXJkL3RoYW5rWW91Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729171888),
('2UzqevwPPS4iTGIGxluuhXUNNKAAwADnY869GiKk', NULL, '40.77.167.136', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUJ6bzh1QmN4elpjcURVV3NIUDc3QjVBMElVQWI3MWR5ZmtYeWkxbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3Qvd29vZGVuLXdhbGwtY2xvY2tzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729198250),
('3bDOEJyHg2KSdEHALvupTwOy52GUr0tiFYXOGE41', NULL, '66.249.70.108', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFlIUmJrR3JkMnFiTjJxSDVCdUlIdXluOU51OU90YTh1bHRSSTR6SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L3JvdW5kLWJlYWRlZC1uZWNrbGFjZS13aXRoLW1hdGNoaW5nLWVhcnJpbmdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729158805),
('3EwgluKsmEW0v1EGlHeHQrYzeTPFwBsT6Dyucnt1', NULL, '66.249.70.193', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHZmT0hBTVVRdE1mZUdRWlVTaG9CWFY2d1lob2hnVW95bUFkMVFaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYy9pbmRleC5waHAvcHJvZHVjdC9maW5lLWJlYWRlZC1mZWRvcmEtaGF0LWJsdWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729154612),
('3s3wL191SBH5cZEPeiiIZN3BGqUF0XktDADXN0nN', NULL, '102.215.34.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2d6STI3QzA5c2tBME1paUdlbWFOSElUeWZuQ2paampiczg4SzJjVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2EtcGFpci1vZi1jYW5kbGUtc3RhbmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729189299),
('4dSiNr6ABIQASqUuG4nD6Qwj4TSCpLU8ZHLn87sS', NULL, '205.210.31.54', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWIyemVHQW5NN3o3UGdYYXY2TW9GVFJyVHVyWEdRVFJzYTNzbW5IViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729245249),
('4gjmAsNxvjkeL4PCiExuvI1RiUq7PuXCkvHrk8tU', NULL, '165.232.179.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW1JRGZUQzBqZldvdjNCeXpVRDRHZkhqUXByS2Q3M0V4WFo2Nzc5ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd2FrYXppLnJpY2tlbGVjdHJvbmljcy5jby5rZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729176368),
('6JQghxP7vOfGSuCO2mYjYtFFevw9OnKQzFZyU6qc', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEpoUWNJaTJrV2JvVlRrOUEwTkJOeFZwR0pDRDFRdGxWNHAzS1JydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0cy1jbGFzcy9hcnQtd29ya3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729175622),
('6QOII7T3oXayJk7uNX5ZBwWxKM0E0fSiYvoBunOA', NULL, '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWYzdDdxcVB6dHpjNjIxaUJnZ2x5Z2taQlYxRVVZQldIVUFsZEs3dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729201098),
('6xA6UKrJQHl7K85MCUdTYVt2NoV8TqgfZ5XTf55H', NULL, '66.249.70.192', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUx5YTVWUWxrWEsyUnlDTW5HVjB5aWlYODBod21oYzVPUXNWbFJORiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729156728),
('6Z2Di5xkQIO3xx0Gv2cI5fnqYqvLSROwstdhLXU5', NULL, '207.46.13.141', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzQ5T2NRVWduNkQ3b2FYNVg1Q0V3dlhLblREc014MVd3QVFicGl3aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2NvbXBhbnktcHJvZHVjdHMvMTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729146464),
('7nHmTySjlUdrfajggGg1t8Jk849TPNdsRmdAVeF1', NULL, '66.249.66.16', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXVrY09qdUMzUlJ3djhWS1NhUEtKNUJBZ3hUM1ZwUEZoUVAwZTQyaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2EtcGFpci1vZi1jYW5kbGUtc3RhbmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729190173),
('85nY3IJNUCdBteU0Wlxa0DR5wgf6M7XQJrvjkyUX', NULL, '66.249.66.37', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFd5UkpxRWZKUk1aS0tLVlVhMEdadlpXNGJkUW9PVmJRTFdKWW9wciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvYS1jYXJyaWVyLWJhZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729183230),
('8KBgcP6qdsV7DnaTynMvuDGA8bE4keocYgFHWSWk', NULL, '41.89.65.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmdBT200cmk2SFJjbDk5dndWVWxQVndwRUhRWmFSdE1Xam1TOUNPYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0cy1jbGFzcy9tZXRhbC13b3JrcyI7fX0=', 1729237741),
('8OAumGPMgRy9Xe49kiMAMPoYlwcQMuTn7NtPrXVI', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2pWSVZsVnVWRnZ6OFVWTEtPczhrS1B4eWdyaUMyUld4NEsxNllwMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729247406),
('8OebzAnBcBiQCnQlQMrB6Ke3ELuy0wkyciZ3Y09T', NULL, '66.249.70.193', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1A1Ull2V3FFWnVpckZuRDRUS1JIZ2JUYkU1Wk00Rlc3TWRPRFltTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729155053),
('9FV2BoPf5PuSb1QZlJDHbqKxARHrvovYnuZsjlfS', NULL, '207.46.13.102', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNUQ3cmJjbEhvbTRQMzBzS0tuS2pKMVh2ejg4Y1ZuUUpLRlhyTThOTSI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiMDE3OTY4NmZmNmRiNjM5OTI3MDYzZjUxMDhlOWY2Y2MiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiMDE3OTY4NmZmNmRiNjM5OTI3MDYzZjUxMDhlOWY2Y2MiO3M6MjoiaWQiO3M6MjoiODkiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjEzOiJNb3RoZXIgTmF0dXJlIjtzOjU6InByaWNlIjtkOjU1MDAwO3M6Njoid2VpZ2h0IjtkOjA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjA7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7czo4OiJpbnN0YW5jZSI7czo3OiJkZWZhdWx0Ijt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6NzoibWVzc2FnZSI7czoyNToiUHJvZHVjdCBIYXMgQmVlbiBBcHByb3ZlZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjE6e2k6MDtzOjc6Im1lc3NhZ2UiO319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2FkZC10by1jYXJ0Lzg5Ijt9fQ==', 1729150984),
('9GaCZ24IsaihvyMUFTIcqsZHt9JXwKOWIlNHvgs9', NULL, '66.249.66.17', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWtJeE8wQUVGRjdkTHJWWnE2UFl0d3A4bGdKSFh4UndvaGp2RnR3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9iZWNvbWUtc3VwcGxpZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729174809),
('9PyQZPzd45AOTVMNDNZlRH1VDRo9dcNzRcR8it28', NULL, '66.249.66.15', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGtVN0FIM254ZjloellNbjVsVWhpV0RramZEdmdFZUdYQWx1b1lqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2EtYmVhZGVkLW5lY2tsYWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729187101),
('A6HZTFwIKNMV8Z76ca8vrml4EqVLMqWRXbXLVmGB', NULL, '52.167.144.191', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUUxTXBUYlVHWk9va2pmS1E0R0VqVDFONm1Dcm94Q29nZjhuV0dhRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYy9wcm9kdWN0cy1jbGFzcy9sZWF0aGVyLXdvcmtzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729241271),
('A6qLzujvdvqNBg7gJ2ASB63csiCaeErJyFffSjGk', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGNTMUpNUkZuMnBPU041UDlLdE9NVXF4b21GREtwcmgybW1ZOXdOVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9uZXdzLXVwZGF0ZXMva2VueWFzLWVuY2hhbnRpbmctY3VsdHVyYWwtdGFwZXN0cnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729175060),
('AeYNXAaxPNLshRU5IUbK0n7jA7Dg75JpUazMEK24', NULL, '40.77.167.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2h6UDhhS2hYSGd6RXFKeldiMHFaTUV1a3RZREhHQ2hvM3M0V3RhRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvaGlnaC1xdWFsaXR5LWNhc3QtaXJvbi1zZXJ2aW5nLXNwb29ucyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729233861),
('agdNHjG7Z7mygLigFLRpJC8pxoIeXDXNmGybZc0S', NULL, '34.213.255.232', 'Mozilla/5.0 (Windows NT 6.2; rv:22.0) Gecko/20130405 Firefox/23.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUtvWHo4V2h2UDVjRHFPRnd6R3EyaU9uazNiY01qbW5tRGRCem1CeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729232476),
('aN5dxmwwoBEPc7ITuk77mXwJJx73FFYIaQCBkMBW', NULL, '41.212.55.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNElmU3U1Rzc2OGM1WkJReENYNnVUZVJkcDY0NlJGSnRNdjN2NlRHdiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly93YWthemkuY28ua2Uvc3VwcGxpZXIvbXktb3JkZXJzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729158235),
('Ar1FGb5fqspe96g2PWWo4BBEiaFNqeHo1bweBoSg', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzZmVWltSENrbFVvekFac2NCeUhadGRxNlY3Y1RhWk1ZdG1hSG5oVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0cy9zdGF0aW9uZXJ5LWFuZC1naWZ0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729177108),
('AS6SGQfn7rEZ7PYzaeZ7XeDWUgKvE6aBnehZQLyT', NULL, '66.249.66.17', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGdwcm1FSnZCblpCNFo4bFRCdHk5WGtWN01PRUExMVRvTTl2N0hSVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2xpZmUtaW4tdmlzaW9uLW5vdGVib29rIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729178824),
('ASa2X10lCcaqvoZbS1lHSHlydwfoYiEF7THUssz4', NULL, '52.167.144.19', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjdUbkpnS3l6TnJyOXVKZEdxVUlKOUU0dUZSZmJSV3h5S0NiaWxPbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729137979),
('aSAfAQMVPXtH9B6NhknmyS8GVjllS0ERfw5H91Or', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmxYeGFkelI1YWtIcE9UbHdRU0R6cXdhMW5RMDJNcGlnSHlYNFoyMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvYnJhc3MtYmVhZGVkLW5lY2tsYWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729232783),
('awwgXdxc2ElBBmWZO7wNDqmFxE3XmoQ9XisVKKTQ', NULL, '40.77.167.76', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzY4T0I1blloTFgzalNLTkNHZEo1ZHpJWkF2Tm1PaUJEYktXUmlvSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2NvbXBhbnktcHJvZHVjdHMvMTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729234012),
('bR49RJrzpVVQf9u0yjggaIFN20MOMtdLJ8CaBI4y', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1dudjhIMEVyckhHS3Ywd3VoVnRPYzBtQzY5Uk5SUDZNOU5PaUVnNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729219115),
('C7biHBeLLexGGz0TqxJewsh8b2pTTSMQ705K9A2a', NULL, '66.249.66.37', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzlPcjRrNWo2akVvbEZwcE5BV2lwbWl2QW9DdXBLa2FUTnJRVXdxYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzE6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYy9pbmRleC5waHAvcHJvZHVjdC9iZWFkZWQtYnJhY2VsZXRzLWhhbmRtYWRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729177885),
('C8xbEYLPBSJBVKDN9muiiP2BqKFOlnB1Mp44TyH3', NULL, '167.71.135.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU243azh2MFNUWnUwWFFOaERqa1lDUVZqdkJ3aEdLbGw4V1hmVm84WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd2FrYXppLnJpY2tlbGVjdHJvbmljcy5jby5rZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729233013),
('c9k3NzoCGBuP36wjJrJqQrOh1LLoMDHt9kEmxBDM', NULL, '135.148.100.196', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUtHUEMyWURmczY1STRaSTVCbXZyZ3dnNEVaS3ZZTzdCS3RoR2lzcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729231839),
('Cr76DOleKHOG7izsPz5NqUkpPsnhJBXLjuXtRvrc', NULL, '66.249.66.6', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1k0dGtmZ1ZZNTRaYmVmYlJOSnZqRUZmMUFEbGFpeTZSWVZsSDM3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vd2FrYXppLnJpY2tlbGVjdHJvbmljcy5jby5rZS9wcm9kdWN0L3N0YWlubGVzcy1zdGVlbC1iYWtpbmctdGlucy1zZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729179510),
('d1zNhv2NppU4pHbFfwEttGtQsox2SPFafG4QWbKs', NULL, '66.249.66.17', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2xKeHdUWU9Bc3FnRGtQY1czdzJjbElycVhFcnloYUJFRHFvT3Z4NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2hhbmQtd292ZW4tc2hvcHBpbmctYmFza2V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729175495),
('D2Wr8w4fda9likan2fjtTmlsQxG7iX2pcMOh26gG', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1VLNU8xbTVZdEViZTFnYlF6Yk1EVzhpZGdhaWdFQ2xKVnROVVdvSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2EtcGFpci1vZi1jYW5kbGUtc3RhbmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729190216),
('Dj7TGJmctz7NWmXhtHbh1QauotC6LfcFm2xK9W9f', NULL, '66.249.70.202', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3RORjVFRzdVZ3h4SE12WENSVHJGNkFSYVNuWFNBZGVLUzNoQ1dOVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvYnJhc3MtYmVhZGVkLW5lY2tsYWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729155588),
('dsZ097NNNJVzcx5NDs3PPCy4zd9MOg9uV2GHlCel', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHh0YVJabFZPT0Q3eHJHQUJ3R0Fjd29XMGwzZDZSenRGY1dURVRabSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0cy1jbGFzcy9tZXRhbC13b3JrcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729179532),
('E5gXmrfVntzFGzzoaaAeiAO6ncFssIC0RwgoDzVP', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1hBRm03R0l1MzhqcjJtM3RTOExFc251ZDJQTHNrbXRXOE5CZVN2TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2ZpbmUtYmVhZGVkLWZlZG9yYS1oYXQtYnJvd24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729178657),
('f28sNlgCphXlp7issSJFfBx2c8JLcZgar2XIu3Iv', NULL, '40.77.167.22', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3AxelBuelgzaWIxS0dUS3FDZk0wS2pnZ3drWVRYNWFGSk5PaFpLciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3Qvd29vZC1idXR0ZXJmbHktZW5ncmF2ZWQtd2FsbC1hcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729230988),
('fHXYBfKFRgNEvQ0nzaWkvSG61UF2m4oCIYsWfK3t', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM0pERFZPcmUyOVVhZGNuMFR5RWM1RGEyOU1UbEtheXRpMm12WXJxOSI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiMTFhNjc3ZDE0NWFiZDVkZTQ0N2E3YmFlZjI4MTgzMDYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiMTFhNjc3ZDE0NWFiZDVkZTQ0N2E3YmFlZjI4MTgzMDYiO3M6MjoiaWQiO3M6MzoiMTM1IjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxNzoiSGVyaXRhZ2Ugbm90ZWJvb2siO3M6NToicHJpY2UiO2Q6NjAwO3M6Njoid2VpZ2h0IjtkOjA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjA7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7czo4OiJpbnN0YW5jZSI7czo3OiJkZWZhdWx0Ijt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6NzoibWVzc2FnZSI7czoyNToiUHJvZHVjdCBIYXMgQmVlbiBBcHByb3ZlZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjE6e2k6MDtzOjc6Im1lc3NhZ2UiO319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9hZGQtdG8tY2FydC8xMzUiO319', 1729177794),
('GhmfXdJIxk2Ng6RpLLvT1TZVs8hN2XYn466cNajk', NULL, '197.155.95.4', 'Mozilla/5.0 (Linux; Android 13; SM-A032F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXhOVDRXcHBnVzJWRWUzOU9YVnk4RDF5WkJTR2FxdnR1cElxczBjTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729158241),
('gphVfZwsSz8r28zUACUsYTUay0337JQQDmaCF3en', NULL, '119.13.103.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnNMNzRtVEhvRU84MDBzTjRZNDk5MEh5UHlBNnVIYTFkVElNRVJpUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly93YWthemkuY28ua2UvcHJvZHVjdC9oaWdoLXF1YWxpdHktZ2FsdmFuaXplZC1lbmVyZ3ktc2VydmluZy1qaWtvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729201645),
('h9erJd6qyeg1GsKW2YO7zCn04vndurIDmUJbpwdc', NULL, '66.249.70.192', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVdNc3ZiUlhCSHZia0diYUxCT1k0OWFpV3c1MGk5ckVyQkw3Rk5zUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729148121),
('H9IM8PB0cSYLZfku4kJJddf7tdzAtdI0MTcpskyN', NULL, '197.237.88.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnprd0NVUERwZHQ5dWZsQUh4U1hROVNBeHU2MWxjSGNWVnpoOWlrdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd2FrYXppLnJpY2tlbGVjdHJvbmljcy5jby5rZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729144869),
('HbsdcbcOnsWgxmLYC5Wb10ijkP27sKDoZxyrsh4j', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3gwNGRqSGdTZjBGRkc1ZlU2Ujl4SFZXczZHNURyVjJqQzZXcmUxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729197081),
('hgkh7NtOiris8QgVM0mToV6sEnLWw0cBV1kzFUiE', NULL, '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjIzNTRiWFpFdUFPYkllR2NyZ3hKMG5CaGdpSnhtcUxEVWlCMHYwRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729179457),
('HwzxKf9Bj33unQOvaG8sFy24rZDWbMC2t6JdLRLL', NULL, '66.249.70.202', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0NqRlFZdnF1anBrSUVZekc0QUpsNmZFalpjT2NHYllVWjhRWlY3bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729148161),
('Hzn6klnX0HUSr3ue6WYsNRyjBnP2WGewub6zX17Z', NULL, '197.155.95.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzFqSkhDc014R2JBNGZ1Z2tsbnk1dGgySFJ5NEZzQ0twNnRYQUJLSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd2FrYXppLnJpY2tlbGVjdHJvbmljcy5jby5rZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729144872),
('IAdwVEONDSi0xROkys6ZaB3iNweYIMfzFzKp11QI', NULL, '52.167.144.225', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0VDZ09POFExNEVmYmdXcUt6TUQzZ1NNandDZmNrZ2VpZmtVR0ZzMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729210542),
('IfyIFfr3QLzpAIoVqGfLIjeXxlTkxcnGtNbyibfc', NULL, '52.167.144.168', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnVaR1hMZ2FWbEJwTWFWS3plNE94RmxDN1NDcjVoa0s1NFVkS25DYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvYXBwbGUtd2FsbC1jbG9jayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729171817),
('IwEUErIbE9u6S4BFfyauQt5yJHhXL8ObAtllLbGh', NULL, '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUQ4S05zMWNnaWluRUFpQkNlanVOaFE5ZTRNaDRKYk85dkhDZ3oxVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729200933),
('jeUKg99t9vlaAneoSx1CumpqPqm2J9hAK3sgbmX5', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVplaWE4Vzh6NEs1SGtuS0hLNG53eWpFajVqUFJxRXRyckdwcmZvSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvbGVhdGhlci10b3RlLWJhZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729221411),
('jLbhtWSVg3rPZdpHOMzEo81bHpjwwLFCa5pJPeYS', NULL, '66.249.66.37', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGw4ZWxJRURSclY0aWo5VWd5RjFwNnFsS2IzeDdxcEJEOVJibXpMNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2xvZ2luLXNlbGVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729183161),
('Jocu9tSAIx1ZcN1y0P9Htd2TXUkGbfL5x9EP6vEX', NULL, '110.238.110.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTmlBcng1VWxPTlMzSDQzZFhERTFHaXdXV2JRQmY4cjBXNm5TRjcyYiI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiNWI0NDY5NjBlNWVjNmRhYzZhOTdiNzJiYjg1NDliZTEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiNWI0NDY5NjBlNWVjNmRhYzZhOTdiNzJiYjg1NDliZTEiO3M6MjoiaWQiO3M6MzoiMTQyIjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyMzoiU3R5bGlzaCBsZWF0aGVyIHNhbmRhbHMiO3M6NToicHJpY2UiO2Q6MTUwMDtzOjY6IndlaWdodCI7ZDowO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NzoidGF4UmF0ZSI7aTowO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjc6Im1lc3NhZ2UiO3M6MjU6IlByb2R1Y3QgSGFzIEJlZW4gQXBwcm92ZWQiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo3OiJtZXNzYWdlIjt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vd2FrYXppLmNvLmtlL2FkZC10by1jYXJ0LzE0MiI7fX0=', 1729185309),
('JPfvDxd9YX83qvYZpUgbjDjJ8GBxraYWUnQ0z03k', NULL, '207.46.13.6', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGJNOG4zek54cnZLaGliM2czb1VtbjBKcEFCbnF2b0xTY0dnMWNqUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3RzL2FydC1hbmQtY3JhZnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729166583),
('jTwovhr4L4bq1HkvqWmGMZBPJwQrNLrmMq8oQI8r', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0FlUWhJTUV0bWZnbkUxRGw1dFhZQWpzMnVRMk10bFpSR2U4eGFkZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729215267),
('kpP0dfQ5WE7LPnPcKCmWiw2yECn3EDvATn79p6Jw', NULL, '196.201.210.29', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmdOU2VDUzNXYlkwT0l6d2xVNGZ1cHdtNnd4QkpLZUZ3N2pRdUozaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729237187),
('ktOuTxodw2q4u1ytjzhBF04AfUiFAAObP5clPFDn', NULL, '66.249.66.36', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEVQV1F4WWhwVGNGRjRjM1dEM1J2elkzNGtnaDg2SDJoSHhNVkxubyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYy9pbmRleC5waHAvcHJvZHVjdHMva2l0Y2hlbi1hbmQtZGluaW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729174803),
('L6m3qEIHNf7WZUXSxUYrPSUng9f6dgpgAWRJscNj', NULL, '66.249.66.36', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGdTbzdoOGlUdHZBbzF6a09ONXpLaDdoVzc1TWxVUUlKVlhESlRNQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYy9pbmRleC5waHAvbG9naW4tc2VsZWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729193851),
('ljy8ecnYATzL3oOkDSmDmY1ZoNUy1gAj6VmQuu8e', NULL, '52.167.144.140', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ2Rncnk1czdYMzF1V3h4Q29YcWxiTkVIVllrNWRsSjFsVm4wRlFNMyI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiMzFlNWNkYTA3MDQ3Yjg1NDEzZjMxZjE4MmYzOTRmZjUiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiMzFlNWNkYTA3MDQ3Yjg1NDEzZjMxZjE4MmYzOTRmZjUiO3M6MjoiaWQiO3M6MzoiMTI4IjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxNjoiUGVhY29jayBub3RlYm9vayI7czo1OiJwcmljZSI7ZDo2MDA7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MDtzOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDY6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBkaXNjb3VudFJhdGUiO2k6MDtzOjg6Imluc3RhbmNlIjtzOjc6ImRlZmF1bHQiO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czo3OiJtZXNzYWdlIjtzOjI1OiJQcm9kdWN0IEhhcyBCZWVuIEFwcHJvdmVkIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MTp7aTowO3M6NzoibWVzc2FnZSI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjoiaHR0cHM6Ly93YWthemkuY28ua2UvYWRkLXRvLWNhcnQvMTI4Ijt9fQ==', 1729228674),
('lrcWM7olBpkAEvLmUvaeJmhuMu3nd4wpyhLsGEhT', NULL, '40.77.167.68', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHNQdDRpb3lVSGRvRDNnazVQUVRMNGN6WTVXYVZGU24xdVRpdnJzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729226005),
('lrvjXRBO1GXFU2CdiaYvd7yE767v2UWwZXtxbaX2', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkRZQ29vdGZCT0dSVER6TE9KTDRLbWtiZFo5YVdycnZXekF0dXlEayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729175852),
('M2IZzZRQK7AYqcR4IEUdwVieMfflqXEchdN98A8Z', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHREVXNHTFNyR3BmbWRnTWRCOXhYa21aSUY0M1pNY2NRUWhPMVZrMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9jYXJ0L3Nob3BwaW5nLWNhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729177535),
('mC9jvutMhdJZOQ9GoVQS9MwUdwt6EXS7dFIGdxBr', NULL, '17.241.219.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXduOGZSWjh6UFp5UHgzQ1pOb1NjVzMxNE1rSVpVUFZEYjBpa0xmQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729145460),
('MfowmX1oaWE2JyqR6Kfrd3cRgj3mpO3Nn4vDBfTL', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjhEYmRKQnhsajRCUDVLN1k0ZFNyVHZEcVVOQlU1YXBPVklBbWl3dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wdWJsaWMvbG9naW4tc2VsZWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729186258),
('mfZm1vhczuoS6YY1EaOlacmEQR0yRTIqJqNfYGX5', NULL, '66.249.66.17', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3pQd0Z0VEc4NmltMzlJMWswdk5mZU9SeFE4eWdGUXZMUHRsb2MzeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2hhbmRjcmFmdGVkLXNhaWxib2F0LXdvb2QtY3V0YXdheS1wbGFxdWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729176648),
('MGtcz4wFLA6U1sdw3MAQteuglzrYNSpdwOzJCnDK', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEhoMFlRa1JONjJDMmc0VEQ5ckZsTWRLejA0bjRRYWpnUkFkbmZCbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L3dvb2Rlbi13YXRjaC1ob2xkZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729178915),
('MKYE0Snsg3Pc0MqwfC4w5chmeXTEMgoLSbw1sALY', NULL, '66.249.70.202', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkV6QVVMNmtaa2VxVDRyQ0pUZGpKUjNIMjYybUN6dDk3dnh3c0xwbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729144105),
('no1FyErQcLzhO192zLMaZmFqEfyBsWL4akLnkvsU', NULL, '37.182.175.134', 'Mozilla/5.0 (Windows NT 11.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUQwc2RBSnFSSms5MmlyM0dWRVFyWWJYcWlsNjFnWEpUR3FUUmFwMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2xvZ2luLXNlbGVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729185343),
('oLssFc492QbJAGpdihDBhQySMyXGMtOAu0Vh4tor', NULL, '41.81.6.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia081R1JmeWRZclJhZEtWM2U4dDcxVGVIbTVCRHhic2lkbXo2NUs2SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3RzLWNsYXNzL21ldGFsLXdvcmtzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729165598),
('oMc7yqdFxalyfTPXhFWouOe9n6DuwyT3ocm8napV', NULL, '198.235.24.164', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0NXT0FmMThKc25ZbVBYRFZXYzRMR2x2V3ZuNXZsV1h3UkZkc09TayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd2FrYXppLnJpY2tlbGVjdHJvbmljcy5jby5rZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729225235),
('ooVg9j3o6TwIWcR68Tg7Py182kpXToC4pxvdfsKS', NULL, '66.249.66.17', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZklwY0thdUc2N3ZLSXhjRndHc1l1UGowaHpCSWZGVUc4MGtQQ2JGdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2hlcml0YWdlLW5vdGVib29rIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729178409),
('Os1UcEYdVA6CSyBlYNSNxuPCRK4J7EaqOSwKinbx', NULL, '205.210.31.136', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGhSRXdNSUxMRTVQbjFFQVF0anllVFMxY3pFR1dYUTBLMUZGTXlmdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93YWthemkucmlja2VsZWN0cm9uaWNzLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729193951),
('P1C1WGerxzE0yU0iew41RKyIVOEgejMizpfgetpm', NULL, '52.167.144.237', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNmNwVFFJdXlvTGVvV0RIQ05ITlBmUXRpcXB1Rkdmcm1UVmNyUnRvWCI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiNmMwNjJkYzY4Y2FkNzQ2MjU0NTkxODJiZmNlM2I2NmEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiNmMwNjJkYzY4Y2FkNzQ2MjU0NTkxODJiZmNlM2I2NmEiO3M6MjoiaWQiO3M6MzoiMTMzIjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyNDoibGlmZSBpbiB2aXNpb24gIG5vdGVib29rIjtzOjU6InByaWNlIjtkOjYwMDtzOjY6IndlaWdodCI7ZDowO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NzoidGF4UmF0ZSI7aTowO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjc6Im1lc3NhZ2UiO3M6MjU6IlByb2R1Y3QgSGFzIEJlZW4gQXBwcm92ZWQiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo3OiJtZXNzYWdlIjt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwczovL3dha2F6aS5jby5rZS9hZGQtdG8tY2FydC8xMzMiO319', 1729211714),
('PJpJh5fCHeoBKOFT94OmgYRl9ZsORv8TuKuzjalr', NULL, '157.55.39.62', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGxRa25vNkdjdTg4VDhaNjhWSVNSWXMzNmpJVHZKTW1zSHRqMUxYUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd2FrYXppLmNvLmtlL2NvbXBhbnktcHJvZHVjdHMvMTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729169450),
('POl421mnfzYS5AyXpkKwhU9fYFyfyna9dtHj9xak', NULL, '159.138.103.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0hWVTFXZHNjdTBoWlVCRVByR3d5YnJDZThEa0pyUGlTaXFYbk0wZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly93YWthemkuY28ua2UvcHJvZHVjdC9maW5lLWJlYWRlZC1uZWNrbGFjZS13aXRoLW1hdGNoaW5nLWVhcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729167919),
('pt98ulAi8de4u1XF5ZxgHPIkyb7UtNZFO3pv8DPC', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmhyOVA5bjdlQlp1Rmc1WEgzbE5GSnVNdDhtc2JXQ2tFUmFjTzZMNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729177841),
('PuQuQJeIdQK8wdY6AOuXhR5wLVhnDAPEQaWoOZn1', NULL, '161.35.37.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVhuR0lkZjNmWkZZSGFVZ0tLU1FsMGl2dlZlbUVmWmU4N2N3TkVNMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lndha2F6aS5yaWNrZWxlY3Ryb25pY3MuY28ua2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729172875),
('QiS3rY0uUZW2J13ElZR4Q2P3mSFgT5CF7e6ysJ63', NULL, '66.249.66.17', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2NCMzE5SVpQWmw4Wml1VEV1aW1qdXhMNU45MDBFY3J2SVFsVkF2cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODI6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L3RyYWRpdGlvbmFsLW1hc2FpLWJyYWNlbGV0LXdpdGgtbWF0Y2hpbmctZWFycmluZ3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729176089),
('rzl8LAQQQehWEboif3ah7n8JEmaJmemCEV7wl0Ew', NULL, '190.92.219.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQW1reXVibHVmekJKUVFTaW5mTUlJUXk1YmRhcGtucHgwUDV6NFIwTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly93YWthemkuY28ua2UvcHJvZHVjdC9oYW5kLXdvdmVuLXNob3BwaW5nLWJhc2tldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729227040),
('senUEopYK6NCtgu98LLiMAIL1O4onZ7V56EbQUKY', NULL, '66.249.66.37', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWs3Q2x6eU1UUmNUSE8zVXJvUEdnTWJRTE5GV01LZU5uSUlBT0tPSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729159954),
('T7wnSZkc13cUz0y2yUummmH6uSvX91Klo7lpzSpF', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSENaOHNmaUhmQVB6MWtWanBuZG42QnFEUE1xVGxxVFcxYW80VDhrNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0cy90ZXh0aWxlcy1hbmQtZmFicmljcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729178695),
('TBie2C1y401dkWMgXl4efkwG91B6BnTMRKfmgKj2', NULL, '66.249.70.108', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaWRIdTZIVVFoS0pqdnNqUVFFR0ppRWxWd2wwNTlQb1lGZVd3c0IzWiI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiNGYyZDJkMDcwOWIwMDcxMDJmN2ZlMzNjZWEyMDE4ODciO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiNGYyZDJkMDcwOWIwMDcxMDJmN2ZlMzNjZWEyMDE4ODciO3M6MjoiaWQiO3M6MjoiMjAiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjM3OiJIZWF2eSBEdXR5IFF1YWxpdHkgTWV0YWwgV2hlZWxiYXJyb3dzIjtzOjU6InByaWNlIjtkOjUwMDA7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MDtzOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDY6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBkaXNjb3VudFJhdGUiO2k6MDtzOjg6Imluc3RhbmNlIjtzOjc6ImRlZmF1bHQiO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czo3OiJtZXNzYWdlIjtzOjI1OiJQcm9kdWN0IEhhcyBCZWVuIEFwcHJvdmVkIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MTp7aTowO3M6NzoibWVzc2FnZSI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozOToiaHR0cHM6Ly93d3cud2FrYXppLmNvLmtlL2FkZC10by1jYXJ0LzIwIjt9fQ==', 1729137759),
('tkdM9PIq6dICfWqr6BkgaEJ5lwrlv0ea1AOGSPw2', NULL, '157.55.39.9', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUdDZFNBaWxGdnlJSmZWRzhkSjZNZDlDWkg0Vk5tZ2JDZDNkYTA3SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvZG91YmxlLWJlYWRlZC1mZWRvcmEtaGF0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729183947),
('tPH1g14CgURoa87bfCgbCvigNau67zq1VHjqNR3H', NULL, '66.249.66.7', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnNNaHlSaGRxSjhSc2tXeWFJaDROUWtNS0tLTGg1cEF6QlZaMGw3RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vd2FrYXppLnJpY2tlbGVjdHJvbmljcy5jby5rZS9wcm9kdWN0L2JlYWRlZC1icmFjZWxldHMtaGFuZG1hZGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729179492);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TuDsBDfohXnkpo0dPqwg2Opa75ObN8AVF1Ae9Pkv', NULL, '102.215.34.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDdGdjBiS1o5ak94bkF3YTJvNDBhNEZEUTJ1RnlRNGo1ajhaUkdIbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2EtcGFpci1vZi1jYW5kbGUtc3RhbmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729222990),
('UAuIzFPdoYUGjOqRvfka3vpPBoRo5f4C2Dhdxzwn', NULL, '66.249.66.37', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDc2bkoyNnp0d0hqc1pIY1pzUjg0SXl0MDdTWXo0WDNybzlFQzE2ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvbGVhdGhlci10b3RlLWJhZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729225076),
('UD3wwNagjiLyimYFNyAUPqUy0qsyaGLGeOkHPOML', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3pONzVTQmQ1S0w1RVdCYkJJb0pEN2pyelV3Z1FOcmt5SDFTSEdkYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L21pbmlhdHVyZS13b29kZW4td2FsbC1hcnQtYWZyaWNhbi13b21lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729178837),
('uDeZ1w81MKHB3pzzD82oZX7sUR4PFpNFT0ClNhpp', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1U3dFF6VEc4bUluYkxoN3I3d0tad2NWVFNXZjEyQ29zaXBNamtDUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L3dvb2QtYnV0dGVyZmx5LWVuZ3JhdmVkLXdhbGwtYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729178283),
('URQgqBoni5rb9cAG6j4fdJWmbW8ErGnULAcOdyG8', NULL, '52.167.144.218', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieHRVeU92aEp3b1g2bkZEWEhzYWFFVnlsdklPUGl1NXNJZDllY1FqOCI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiOGM5YTkwZTQwNTNjZDc0ZGNiODM1MTVlNzQ1NDE5YWUiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiOGM5YTkwZTQwNTNjZDc0ZGNiODM1MTVlNzQ1NDE5YWUiO3M6MjoiaWQiO3M6MjoiNDIiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjIyOiJIYW5kY3JhZnRlZCBCZWFkZWQgQmFnIjtzOjU6InByaWNlIjtkOjIwMDA7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MDtzOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDY6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBkaXNjb3VudFJhdGUiO2k6MDtzOjg6Imluc3RhbmNlIjtzOjc6ImRlZmF1bHQiO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czo3OiJtZXNzYWdlIjtzOjI1OiJQcm9kdWN0IEhhcyBCZWVuIEFwcHJvdmVkIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MTp7aTowO3M6NzoibWVzc2FnZSI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cHM6Ly93YWthemkuY28ua2UvYWRkLXRvLWNhcnQvNDIiO319', 1729203330),
('ux7RTOCXCXahDeAnREVZ6euHeyPYtEkaZGT8kGWe', NULL, '66.249.66.35', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE5DR0JRZFFxYjBsTU1hbU1KY0p0TGFwaGF0TDM3QkdaSTB2OVBWdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvYmVhZGVkLWJyYWNlbGV0cy1oYW5kbWFkZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729176839),
('v0UQYDnRZOAfYjuzlkcqvPe7tE6cf7nxGvgqn9GZ', NULL, '198.235.24.87', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0w0OEE2VUpycDNjaVBlM05zcGRQamhIZkVkNUdiYmJZcTdDaERheCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vbWFpbC53YWthemkuY28ua2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729215783),
('VbMLXUTC8eHMF3hCVXk5Fr1TrRhccZAy89bkZwNd', NULL, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjFXVjdmMXV1dHh4UXZsYzk5dGZ0NThHNXBibkFYZ1ZOT3BKNHcyaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729228757),
('VTccvQSicZ9gdNxk997LwdV8mP0WpYfGH1eHwvFt', NULL, '40.77.167.35', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkU1aEdURkV4WkxNT29oT3lSNjg4Rk1ZWUk5TVhkSGs5d0R1Qk5oUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvaGFuZGNyYWZ0ZWQtYmVhZGVkLWJhZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729229479),
('w5RLuh8rkNg0W133ELSBcI6mlIeE9jnXjsZQxNJY', NULL, '167.71.135.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUd2M3hnWElidlp6YWN0TmpGYVdZTkpKUnlvOXJjTms2aXU1WWNOeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93YWthemkucmlja2VsZWN0cm9uaWNzLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729233013),
('XdQY7PR7dcO3NyVTO4jLzViI7jKZG4wWCW7EQVJ0', NULL, '66.249.66.17', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0licUIwTWRaMjh1QWhJSkV1eHEwUlRNVWtsTHFJMWpHeXYyZlJPVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9uZXdzLXVwZGF0ZXMvY2hhbmdlLXBlcmNlcHRpb24tY2hhbmdlLXNvY2lldHkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729177608),
('xiViaUojgtkB57zYUoQRMG8rG0990SoNGEPcL0uC', NULL, '66.249.66.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEFTeVphSHlsUnhZaEpUUEVQT2xUb0s4VmFRdEZiQzU4M0M0MXd0dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wcm9kdWN0L2VsZWdhbnQtYmVhZGVkLWxhZGllcy1oYXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729177023),
('XK6XrCcBxNPyIcYdSFKinSLXbIv8WGs2FHbL5Fwr', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzlEWGRPMTBlQ2Y2UURydW15ZEVVMDdHb2l0V1ljSjhCeEFZOVBlTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9hcnRpc2FuLXZvaWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729173935),
('XmNfdbbIhBrDWipf3sAbgLSV8cGHy6ppj9EBeJo8', NULL, '66.249.66.36', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTI1M2Z6ZEJSQXNVMkxZWWdMQXJzeFhEZ1RPeFhGbnA2SWFyQVlxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvdHJhZGl0aW9uYWwtaGFuZG1hZGUtYmFna2lvbmRvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729219587),
('xYO1fL2CFL4HJf9H1Te6lxjEm8zoILVZbdhrL74C', NULL, '66.249.70.202', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjFFWXJJb1oyejdodDlrcHM2cG5LOXZWT085TVNsdjJuNHlpNHI5cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729148160),
('Y81KpVWQc5rpBvmI1iZogJHxSbcF5A86NRoEnm0h', NULL, '157.55.39.202', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ2RlMnV2VU5ZTlRiZ1ZweDFHVERURm5SaUhyeWFwSHZsQlREaHZ2QSI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiNzcxMDcxNWI2MTAzM2FkY2YxN2I4ZTQxMjIxOGFhMWIiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiNzcxMDcxNWI2MTAzM2FkY2YxN2I4ZTQxMjIxOGFhMWIiO3M6MjoiaWQiO3M6MjoiNTIiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjE4OiJXb29kZW4gd2FsbCBjbG9ja3MiO3M6NToicHJpY2UiO2Q6MzAwMDtzOjY6IndlaWdodCI7ZDowO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NzoidGF4UmF0ZSI7aTowO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjc6Im1lc3NhZ2UiO3M6MjU6IlByb2R1Y3QgSGFzIEJlZW4gQXBwcm92ZWQiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo3OiJtZXNzYWdlIjt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwczovL3dha2F6aS5jby5rZS9hZGQtdG8tY2FydC81MiI7fX0=', 1729198245),
('yRZXW0ox7j6bJDnGQbboBwFRygUN5Zn13AT5qql9', NULL, '66.249.66.15', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUktDYTBoaEh1bk04RGFMY215ZkVxbnROTXpPaHZqRHd4c0NIUUJvcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9sb2dpbi1zZWxlY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729174738),
('Z0YDX98fPo4iCDZgDmNBMIAnXFVQd41hVVokt8gT', NULL, '66.249.70.107', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTBVM1dURlpmZHFKSFhCNUR1a2FDSU5Db0p5NGwyR1UyaU9ZN3FhSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHBzOi8vd3d3Lndha2F6aS5jby5rZS9wdWJsaWMvcHJvZHVjdC9iZWFkZWQtbmVja2xhY2UtaGFuZG1hZGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729147362),
('zH0VUS5HhjJa1r9PJ31RxnQtdN6wPgv8hJTFWGaT', NULL, '157.55.39.58', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTVRZk4yREZNVUVpSTJTTFZzenNMVzgxZWxmbUgya1FHWUJaNlRVbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vd2FrYXppLmNvLmtlL3Byb2R1Y3QvaGVhdnktZHV0eS1xdWFsaXR5LW1ldGFsLXNwYWRlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729193852);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `slug`, `image`, `meta`, `content`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Woven Baskets', 'woven-baskets', 'https://africanpharmaceuticalreviewbucket.s3.eu-central-1.amazonaws.com/uploads/subcategories/WhatsApp Image 2024-06-16 at 12.11.57 PM (1).jpeg', 'Woven Baskets', '<p>Hand woven Baskets</p>', '1', '2024-06-19 14:46:19', '2024-06-19 14:46:19'),
(2, 'Hand-crafted utensils', 'hand-crafted-utensils', NULL, 'Hand-crafted utensils', '<p>Hand-crafted utensils</p>', '4', '2024-06-20 06:10:57', '2024-06-20 06:10:57'),
(3, 'Wardrobe Kits', 'wardrobe-kits', NULL, 'Wardrobe Kits', '<p>Wardrobe Kits&nbsp;</p>', '2', '2024-06-26 17:37:56', '2024-06-26 17:37:56'),
(4, 'Kitchen Accessories', 'kitchen-accessories', NULL, 'Kitchen Accessories', '<p>Kitchen Accessories</p>', '4', '2024-06-26 17:38:41', '2024-06-26 17:38:41'),
(5, 'Living Room Décor', 'living-room-decor', NULL, 'Living Room Décor', '<p>Living Room D&eacute;cor</p>', '1', '2024-06-26 17:40:32', '2024-06-26 17:40:32'),
(6, 'Wall Art', 'wall-art', NULL, 'Wall Art', NULL, '3', '2024-06-26 18:17:01', '2024-06-26 18:17:01'),
(7, 'Wall Painting', 'wall-painting', NULL, 'Wall Painting', NULL, '3', '2024-06-26 18:17:28', '2024-06-26 18:17:28'),
(8, 'Wall Hangings', 'wall-hangings', NULL, 'Wall Hangings', NULL, '3', '2024-06-26 18:18:08', '2024-06-26 18:18:08'),
(9, 'Fedora Hats', 'fedora-hats', NULL, 'Fedora Hats', '<p>Fedora Hats</p>', '2', '2024-06-27 14:40:51', '2024-06-27 14:40:51'),
(10, 'Ladies Hats', 'ladies-hats', NULL, 'Ladies Hats', '<p>Ladies Hats</p>', '2', '2024-06-27 14:51:11', '2024-06-27 14:51:11'),
(11, 'Beaded Tote Bags', 'beaded-tote-bags', NULL, 'Beaded Tote Bags', '<p>Beaded Tote Bags</p>', '2', '2024-06-27 14:57:23', '2024-06-27 14:57:23'),
(12, 'Beaded Shoulder Bags', 'beaded-shoulder-bags', NULL, 'Beaded Shoulder Bags', '<p>Beaded Shoulder Bags</p>', '2', '2024-06-27 15:00:01', '2024-06-27 15:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s`
--

CREATE TABLE `s_m_s` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_t_k_requests`
--

CREATE TABLE `s_t_k_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `Amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CheckoutRequestID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MerchantRequestID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PhoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_t_k_requests`
--

INSERT INTO `s_t_k_requests` (`id`, `user_id`, `status`, `Amount`, `CheckoutRequestID`, `MerchantRequestID`, `PhoneNumber`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '34800', '0', '2a4a-467c-989e-6f5c5a331b4f55006336', '254723014032', '2024-08-12 10:46:07', '2024-08-12 10:46:07'),
(2, 5, 0, '17400', '0', 'c01d-43fe-967a-e1f71d81049d15456560', '254723014032', '2024-08-12 15:41:13', '2024-08-12 15:41:13'),
(3, 33, 0, '200', '0', '2766-4fba-b49a-c79072f32d7b102174881', '254723014032', '2024-09-04 09:41:19', '2024-09-04 09:41:19'),
(4, 5, 0, '200', '0', 'c01d-43fe-967a-e1f71d81049d87619627', '254723014032', '2024-09-10 08:52:26', '2024-09-10 08:52:26'),
(5, 5, 0, '200', '0', 'e1f1-482d-9538-d140c330be9b6000834', '254723014032', '2024-09-10 08:52:52', '2024-09-10 08:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `company`, `apartment`, `street`, `zip`, `comment`, `email`, `email_verified_at`, `password`, `remember_token`, `google_id`, `type`, `image`, `is_admin`, `mobile`, `address`, `country`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Admin User', NULL, NULL, NULL, NULL, NULL, 'admin@wakazi.co.ke', NULL, '$2y$12$NZwWi0jS7zhQQiRqGKvp4.VmGhDa2.k23j9S27eRLI8rJdrc3rFAa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-11 23:57:24', '2024-06-11 23:57:24'),
(3, 'Manager User', NULL, NULL, NULL, NULL, NULL, 'manager@wakazi.co.ke', NULL, '$2y$12$BX7QYyITGHf3oW7uEigAX.DxG05HmF/.zxvdL8XY8jTDypuEnOTW2', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-11 23:57:24', '2024-06-11 23:57:24'),
(5, 'Regular User', 'Designekta Studios', 'Suite 18', 'Cotton Avenue', '00100', NULL, 'user@wakazi.co.ke', NULL, '$2y$12$kZJGf4rFrNjg12dyCFY.2OCMJQZHATaoN4ZCnV1WVGxvubPIjgwxy', NULL, NULL, 0, NULL, NULL, '+254723014032', 'Jambo App, Kilimani', 'Kenya', NULL, '2024-06-11 23:57:24', '2024-06-11 23:57:24'),
(6, 'Jaffa Traders', 'Jaffa Traders', NULL, NULL, NULL, 'We run the show sometimes', 'jaffatraders@gmail.com', NULL, '$2y$12$PEQ84x5xjlMlZoj35kbt4.rxQ3DD5rK/9qgUArxQtNrPh.LTydA7.', '9cgqMb1qiWOZm478sGVjptgf3nj3ZyXNzL4eRusUmzxsmBC6XzB9RnrKso7i', NULL, 3, 'https://wakazi.rickelectronics.co.ke/uploads/users/Wakazi Snaps.png', NULL, '0705027335', NULL, NULL, NULL, '2024-06-30 15:04:08', '2024-08-03 08:21:02'),
(7, 'Christine Kamundi', NULL, NULL, NULL, NULL, NULL, 'christinekawira2@gmail.com', NULL, '$2y$12$tutkWmKfbL0njCPoxasFLOnajDe.oNS6GwMQiFoBxQK7bAsiq/OLe', 'qFijyEppD1BZK8BvVILiXvp5J3EqWfiRXAVBag2iENcWkOHk52wN86xmMwOI', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 14:26:46', '2024-07-01 14:26:46'),
(8, 'Brian oluoch', NULL, NULL, NULL, NULL, NULL, 'oluochbrian919@gmail.com', NULL, '$2y$12$zfNbZLNSlAPZXRvmX0JYnOBh8RaYrGxNRAhhqeib0eKf7PT2I9kuC', 'ALp2ifVkKfsTWv5PkMYlwD9gVjMoyP0n9xeavnvD7eEcUQI0Obpe3tEEDe7U', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 14:26:55', '2024-07-01 14:26:55'),
(9, 'Phylis Amboga', NULL, NULL, NULL, NULL, NULL, 'phylisamboga@gmail.com', NULL, '$2y$12$JwJbty9I4z10LdbnEU21qetcuYnWvcu68yrv.pYHSpMu9Y4mDFsv6', 'SZi5kBzVzm3dBLJWz5ZwxzJ1ZVaNX0xxkUCYwOZQTFSuMlJ9wfGqrfZiaIoy', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 14:58:56', '2024-09-02 15:36:42'),
(10, 'Raphael Seleti', NULL, NULL, NULL, NULL, NULL, 'seletiraphael@gmail.com', NULL, '$2y$12$c7hDo4.TtWTnNzWX19/rRO/J6LWw4IOOBfYfOKR52amcCDEsYrKzy', 'iSuUcU0thOB5tIwwdcBIe2s5Bus4iXKVxS7xLm7TeHg71eI5raIeLKGo8gjC', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06 11:59:12', '2024-07-06 11:59:12'),
(11, 'Eric Ogol', NULL, NULL, NULL, NULL, NULL, 'erickogol88@gmail.com', NULL, '$2y$12$SWycof0RwSR3lf7DPR78QuY3n1o3Rw9lic1YR4tM7RVMs5bl2.Y7.', 'oiTeJbh9K5GmvYbl788AQLElm6zbypIXrsh7btidqXHc9tX6o95ovDEVVgVl', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-15 08:01:43', '2024-07-15 08:01:43'),
(12, 'Test Suppliers', 'Desikgnekta Studios', '5c', 'Ring Road', NULL, 'DN', 'supplier@wakazi.co.ke', NULL, '$2y$12$J2A0WcgjdxwVBLoceMtTre3fleM.eh0JudTICTsSB67BIl1JG1RG6', NULL, NULL, 3, NULL, NULL, '0723014032', 'Chalbi, Cotton Avenue', 'KE', NULL, '2024-06-11 23:57:24', '2024-06-11 23:57:24'),
(14, 'Luois Angolo Kweyu', 'Loui arts and craft shop', 'JJ apartments', 'Luckysummer', NULL, 'Welcome to my store where all is made possible by colours this is done with experience,expertise in the practice of fields of art like painting,sketches and DIY crafts.Here customers preferences are also considered and is done to their liking.', 'luoiskweyu@gmail.com', NULL, '$2y$12$LlkxlHRTp1bkQtRpSrNmvupJupwQODVR3aUxFGVcOucjq3tmTq07a', 'HtYtnTHEJkyCC4dOerbD9SMZCBPT68Ggljinc2sZuqJHiLMkn4weWCswS1nE', NULL, 3, 'https://wakazi.rickelectronics.co.ke/uploads/users/20240630_003016.jpg', NULL, '+254707975208', '00618', 'Kenya', NULL, '2024-07-25 15:09:44', '2024-07-29 18:08:20'),
(15, 'SAMUEL OWINO OFULA', NULL, NULL, NULL, NULL, NULL, 'mcofulasammy@gmail.com', NULL, '$2y$12$U2eXDb2HidZTZIuWm1.UY.OJrJkNEwKVaxIAwFJoraqsD1qBy1Jxm', '79GPWDhStPe0OPhgA3EYGYh1ZD7aWiouo6JO0Tp7TtyowKq7w5CP2Yru5JBg', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-25 15:16:23', '2024-07-25 15:16:23'),
(19, 'Terry ngundi', NULL, NULL, NULL, NULL, NULL, 'terryngundi@gmail.com', NULL, '$2y$12$wXkf54bEB4Tq3Yr70QHQ9ubEPtjCHRPT6cHpLziZvmpGz4ul2MDIK', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-25 15:58:17', '2024-07-25 15:58:17'),
(20, 'Hezron Busolo', NULL, NULL, NULL, NULL, NULL, 'busolohezron@gmail.com', NULL, '$2y$12$nweuoD.vSQx2ZzZ5wHNMMOSURY7NvucAn0GSf20TIeWMlUDpvzlDK', '9C9CcZFsQbBrKRYTaU8jsQ6PmCdlrABWte3dBQ5pJ2HXwceFOXQtYfQpUfvY', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-26 08:50:57', '2024-08-06 14:03:56'),
(22, 'Moses Odhiambo', 'Ghetto Arts 254', NULL, NULL, NULL, 'Authentic Style.', 'ghettoarts254@gmail.com', NULL, '$2y$12$IoFWakIVzkm8/FPa0u9VdefOglUNjSmeDab.XLUPZPF7pdr6ayYaW', 'xXXBf1ywcL21SAg7L22mSzNvGQofSOXF86jrJJRtIpskjPu2dLfpFU0FLkBe', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-31 02:05:24', '2024-07-31 02:05:24'),
(23, 'Christine Siagano', NULL, NULL, NULL, NULL, NULL, 'christinesiagano@gmail.com', NULL, '$2y$12$y.4ztLjEYtwsyM8DMlalVuXsyFMTXBgJ6kSSDXPXmeBIKTJEv/JF.', 'PjdZYgVhz1jBqztY57EJpkjB8fDf5IrRtjiieggkElHaeVvLBCMpd3WYJY9y', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-01 05:42:57', '2024-08-01 05:42:57'),
(27, 'Hezron Busolo', NULL, NULL, NULL, NULL, NULL, 'busolohezron@gmail.com', NULL, '$2y$12$K1xwCMWqaSMsfTNifRoWbO/btwkjQUhp77Kf2N7Lj96FKmQ9YhUba', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-03 08:30:58', '2024-08-03 08:30:58'),
(28, 'GEOFFREY OBWOGE', 'zxfsdfdsf', 'sdfsdf', '2214', '40200', 'sdfsdfsd', 'onchongasamuel0@gmail.com', NULL, '$2y$12$c9ehteGLZgDJo4BZ3dAH/Okx.xLhXXt4kg0JPX7neT2nDGxSk9ul.', 'loaskAIAWFIIIz7kXC3HMhLaiq79jkkJs3qZj0UY3hwYFsiHffPQHd2d7sJe', NULL, 0, NULL, NULL, '0720162267', NULL, 'Kenya', NULL, '2024-08-03 14:38:12', '2024-08-03 14:38:12'),
(29, 'Recheal Wangari', NULL, NULL, NULL, NULL, NULL, 'rechealwangari962@gmail.com', NULL, '$2y$12$/bkmAOQ8Wg9qcEynXT4r4ekabviN1HcEh3RnhcjlY.ype6WYlbB6q', 'wn4jSB34ukOYjcBzLgeyu886sD3MnBGgxy9YVc5VWNmpbYdTUR9ZrDIdrr9n', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-07 16:09:17', '2024-08-07 16:09:17'),
(30, 'Nelson Kioko', 'Nelzpicasa', NULL, NULL, NULL, 'Art pieces and their respective merchandise for your home decor and day to day uses', 'nelsonkioko257@gmail.com', NULL, '$2y$12$3vRc8k/YaVbrfxXEorI/7.PIV5qPn9.2o.sDwJXoSYopdol9bL4jS', 'BwMA8cQtfTvqlFt2mOmRRwVY1y7ubMK8M3QAPX2q79x73Ss0cFbHBlCQiqyk', NULL, 3, NULL, NULL, '0740636967', '30-0100', 'Kenya', NULL, '2024-08-14 12:08:22', '2024-08-17 10:33:21'),
(31, 'Baibui', 'baibui', NULL, NULL, NULL, 'sustainable, progressive,wholesome living , organic body care and wear .Customised and hand-made natural product. with nature as nature ,through a way of life endowed in a creative ,innovative and progressive life🕯️🌼🌚\r\n\r\nhttps://thebaibuistudios.art/', 'plants.explore.sense@gmail.com', NULL, '$2y$12$GeI0DH7a.zLTULwiLl42auOH6XdhzSontkLgnfA9jKxtLsnEpmgcW', '3Oilk59RugpwY9ORYiwuOmnPpm8vFomNh4rBcrd7AY3D6wjJLWCloQxePPtF', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 15:50:34', '2024-08-14 15:50:34'),
(32, 'Nancy mbatha', NULL, NULL, NULL, NULL, NULL, 'nanciembatha10@gmail.com', NULL, '$2y$12$Y2oAVShrKy.BBRZkrMZ8.uZ/s8LpK9IvK9rokTG2eQ3wJ8fJNqR1i', 'xCQRgGKu1mWHK1WD9PGlzreR4T06cq7D6Ooo0MflwtG8RgqkAVRwP4yooHzl', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-23 05:14:42', '2024-08-23 05:14:42'),
(33, 'Albert Muhatia', 'Designekta Studios', 'Chalbi Condominiums', 'Cotton Avenue, Ring Road Kilimani', '00100', 'None for now', 'albertmuhatia@gmail.com', NULL, '$2y$12$SM/a5TbSMsasnrh8YvpFqeT50XlGDeEi.YErYUzuT2GaXkvDBwzd2', 'LjfD5SpuDtQbQHUSRmGWSHNCkJSVkVPavewboBGrOaVzCP2fzyV8ZoT68RnZ', NULL, 0, NULL, NULL, '254723014032', NULL, 'Kenya', NULL, '2024-09-04 09:36:58', '2024-09-04 09:36:58'),
(34, 'Albert Muhatia', 'Designekta Studios', 'Chalbi Condominiums', 'Cotton Ave, Ring Road', '00100', 'None for Now', 'albertmuhatia@gmail.com', NULL, '$2y$12$5wSoq2lUr1IUMDTMJDH4Hu2sDqDug5tg78qN7e1Z6C2ZB.cJJ90cK', NULL, NULL, 0, NULL, NULL, '254723017032', NULL, 'Kenya', NULL, '2024-09-04 09:40:47', '2024-09-04 09:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `voices`
--

CREATE TABLE `voices` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voices`
--

INSERT INTO `voices` (`id`, `content`, `meta`, `image`, `video`, `created_at`, `updated_at`) VALUES
(1, '<h3>Join the Wakazi County Bounty Initiative</h3>\r\n\r\n<p>Whether you are an artisan looking to showcase your work or a customer searching for unique, high-quality handcrafted items, the Wakazi County Bounty Initiative is here to help. Sign up today and be a part of this vibrant community that celebrates and supports artisan craftsmanship.</p>\r\n\r\n<p><strong>Sign Up Today!</strong> Empower artisans and discover unique art from around the world with the Wakazi County Bounty Initiative. Together, we can create a thriving community that values and promotes handcrafted excellence.</p>', 'Whether you are an artisan looking to showcase your work or a customer searching for unique, high-quality handcrafted items, the Wakazi County Bounty Initiative is here to help. Sign up today and be a part of this vibrant community that celebrates and supports artisan craftsmanship.', 'http://localhost:8000/uploads/voices/unsplash_taC5veAcyiA_Maasai.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_site_settings`
--

CREATE TABLE `_site_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `sitename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_footer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpesa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15955.277444357953!2d36.8222756!3d-1.2821653!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb39310a139138d6!2sDesignekta%20Studios!5e0!3m2!1sen!2ske!4v1617719690195!5m2!1sen!2ske',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risks` text COLLATE utf8mb4_unicode_ci,
  `welcome` text COLLATE utf8mb4_unicode_ci,
  `tawkTo` text COLLATE utf8mb4_unicode_ci,
  `tawkToStatus` tinyint NOT NULL DEFAULT '1',
  `whatsAppStatus` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_site_settings`
--

INSERT INTO `_site_settings` (`id`, `sitename`, `logo`, `logo_footer`, `logo_two`, `favicon`, `email`, `email_one`, `mobile_one`, `mobile_two`, `mpesa`, `paypal`, `tagline`, `url`, `location`, `map`, `address`, `facebook`, `whatsapp`, `telegram`, `twitter`, `linkedin`, `instagram`, `youtube`, `google`, `risks`, `welcome`, `tawkTo`, `tawkToStatus`, `whatsAppStatus`, `created_at`, `updated_at`) VALUES
(1, 'Wakazi Works Industries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15955.277444357953!2d36.8222756!3d-1.2821653!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb39310a139138d6!2sDesignekta%20Studios!5e0!3m2!1sen!2ske!4v1617719690195!5m2!1sen!2ske', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slung_unique` (`slung`),
  ADD UNIQUE KEY `blogs_title_unique` (`title`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dymantic_instagram_basic_profiles_username_unique` (`username`);

--
-- Indexes for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lnmo_api_response`
--
ALTER TABLE `lnmo_api_response`
  ADD PRIMARY KEY (`lnmoID`);

--
-- Indexes for table `mains`
--
ALTER TABLE `mains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_t_k_requests`
--
ALTER TABLE `s_t_k_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voices`
--
ALTER TABLE `voices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lnmo_api_response`
--
ALTER TABLE `lnmo_api_response`
  MODIFY `lnmoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mains`
--
ALTER TABLE `mains`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_product`
--
ALTER TABLE `orders_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `s_t_k_requests`
--
ALTER TABLE `s_t_k_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `voices`
--
ALTER TABLE `voices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
