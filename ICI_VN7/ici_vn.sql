-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 07, 2023 lúc 05:54 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ici_vn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Danh mục sản phẩm', 'fa-archive', 'category/all-category-product', '*', '2023-05-13 19:40:24', '2023-05-13 19:48:31'),
(9, 0, 0, 'Sản Phẩm', 'fa-book', 'product/all-product', '*', '2023-05-24 09:15:13', '2023-05-24 09:15:13'),
(10, 0, 0, 'Sinh viên', 'fa-female', 'student/all-students', '*', '2023-05-25 08:49:47', '2023-05-25 08:49:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '::1', '[]', '2023-05-02 18:40:49', '2023-05-02 18:40:49'),
(2, 1, 'admin/auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 18:41:10', '2023-05-02 18:41:10'),
(3, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 18:41:21', '2023-05-02 18:41:21'),
(4, 1, 'admin', 'GET', '::1', '[]', '2023-05-02 18:41:31', '2023-05-02 18:41:31'),
(5, 1, 'admin', 'GET', '::1', '[]', '2023-05-02 18:41:32', '2023-05-02 18:41:32'),
(6, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 18:43:56', '2023-05-02 18:43:56'),
(7, 1, 'admin/auth/users', 'GET', '::1', '[]', '2023-05-02 20:22:27', '2023-05-02 20:22:27'),
(8, 1, 'admin/auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:23:41', '2023-05-02 20:23:41'),
(9, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:24:00', '2023-05-02 20:24:00'),
(10, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:31:04', '2023-05-02 20:31:04'),
(11, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:34:27', '2023-05-02 20:34:27'),
(12, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:34:32', '2023-05-02 20:34:32'),
(13, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:34:35', '2023-05-02 20:34:35'),
(14, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:34:37', '2023-05-02 20:34:37'),
(15, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:34:46', '2023-05-02 20:34:46'),
(16, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:34:53', '2023-05-02 20:34:53'),
(17, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 20:35:16', '2023-05-02 20:35:16'),
(18, 1, 'admin', 'GET', '::1', '[]', '2023-05-02 22:54:15', '2023-05-02 22:54:15'),
(19, 1, 'admin', 'GET', '::1', '[]', '2023-05-02 22:54:17', '2023-05-02 22:54:17'),
(20, 1, 'admin', 'GET', '::1', '[]', '2023-05-02 22:54:17', '2023-05-02 22:54:17'),
(21, 1, 'admin', 'GET', '::1', '[]', '2023-05-02 22:54:18', '2023-05-02 22:54:18'),
(22, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 22:54:49', '2023-05-02 22:54:49'),
(23, 1, 'admin/auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 22:54:52', '2023-05-02 22:54:52'),
(24, 1, 'admin/auth/users', 'POST', '::1', '{\"username\":\"kiet\",\"name\":\"Kiet\",\"password\":\"Admin@123\",\"password_confirmation\":\"Admin@123\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"8mcHJKnWfDwfYxFsWb4FKkvWpNeZMkUUsxJENOwo\",\"_previous_\":\"http:\\/\\/localhost\\/ICI_VN7\\/public\\/admin\\/auth\\/users\"}', '2023-05-02 22:55:27', '2023-05-02 22:55:27'),
(25, 1, 'admin/auth/users', 'GET', '::1', '[]', '2023-05-02 22:55:27', '2023-05-02 22:55:27'),
(26, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-03 08:57:30', '2023-05-03 08:57:30'),
(27, 1, 'admin', 'GET', '::1', '[]', '2023-05-03 08:58:38', '2023-05-03 08:58:38'),
(28, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-03 08:58:41', '2023-05-03 08:58:41'),
(29, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"2\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"K8lCK5mEyUAn62BQPfiTjZzTSRqZ7j4c4Tc6C065\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-03 08:58:47', '2023-05-03 08:58:47'),
(30, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-03 08:58:47', '2023-05-03 08:58:47'),
(31, 1, 'admin/auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-03 08:58:49', '2023-05-03 08:58:49'),
(32, 1, 'admin/auth/users/create', 'GET', '::1', '[]', '2023-05-03 08:59:53', '2023-05-03 08:59:53'),
(33, 1, 'admin/auth/users/create', 'GET', '::1', '[]', '2023-05-03 08:59:56', '2023-05-03 08:59:56'),
(34, 1, 'admin/auth/users/create', 'GET', '::1', '[]', '2023-05-03 08:59:59', '2023-05-03 08:59:59'),
(35, 1, 'admin/auth/users/create', 'GET', '::1', '[]', '2023-05-03 09:00:00', '2023-05-03 09:00:00'),
(36, 1, 'admin/auth/users/create', 'GET', '::1', '[]', '2023-05-03 09:00:00', '2023-05-03 09:00:00'),
(37, 1, 'admin/auth/users', 'POST', '::1', '{\"username\":\"kiet\",\"name\":\"Kiet\",\"password\":\"Admin@123\",\"password_confirmation\":\"Admin@123\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"K8lCK5mEyUAn62BQPfiTjZzTSRqZ7j4c4Tc6C065\"}', '2023-05-03 09:00:18', '2023-05-03 09:00:18'),
(38, 1, 'admin/auth/users', 'GET', '::1', '[]', '2023-05-03 09:00:18', '2023-05-03 09:00:18'),
(39, 1, 'admin/auth/users', 'GET', '::1', '[]', '2023-05-03 09:02:00', '2023-05-03 09:02:00'),
(40, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 01:38:03', '2023-05-06 01:38:03'),
(41, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 01:42:35', '2023-05-06 01:42:35'),
(42, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-06 01:59:32', '2023-05-06 01:59:32'),
(43, 1, 'admin/auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-06 02:00:13', '2023-05-06 02:00:13'),
(44, 1, 'admin/auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-06 02:00:34', '2023-05-06 02:00:34'),
(45, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-06 02:00:43', '2023-05-06 02:00:43'),
(46, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-06 02:02:41', '2023-05-06 02:02:41'),
(47, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-06 02:02:47', '2023-05-06 02:02:47'),
(48, 1, 'admin/auth/permissions', 'GET', '::1', '[]', '2023-05-06 02:04:01', '2023-05-06 02:04:01'),
(49, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 08:48:13', '2023-05-06 08:48:13'),
(50, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 08:49:17', '2023-05-06 08:49:17'),
(51, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 08:49:18', '2023-05-06 08:49:18'),
(52, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-06 08:49:20', '2023-05-06 08:49:20'),
(53, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 08:50:02', '2023-05-06 08:50:02'),
(54, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 09:03:49', '2023-05-06 09:03:49'),
(55, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 09:04:22', '2023-05-06 09:04:22'),
(56, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 09:05:15', '2023-05-06 09:05:15'),
(57, 1, 'admin', 'GET', '::1', '[]', '2023-05-06 09:05:24', '2023-05-06 09:05:24'),
(58, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-06 09:08:21', '2023-05-06 09:08:21'),
(59, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-06 09:08:22', '2023-05-06 09:08:22'),
(60, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-06 09:08:23', '2023-05-06 09:08:23'),
(61, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-06 09:08:23', '2023-05-06 09:08:23'),
(62, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-06 09:08:35', '2023-05-06 09:08:35'),
(63, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-06 09:12:52', '2023-05-06 09:12:52'),
(64, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-06 22:29:22', '2023-05-06 22:29:22'),
(65, 1, 'adminICI', 'GET', '::1', '[]', '2023-05-07 00:14:12', '2023-05-07 00:14:12'),
(66, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-12 23:50:59', '2023-05-12 23:50:59'),
(67, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-12 23:51:17', '2023-05-12 23:51:17'),
(68, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-12 23:51:18', '2023-05-12 23:51:18'),
(69, 3, 'adminICI/auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:31', '2023-05-13 07:40:31'),
(70, 3, 'adminICI/auth/logs', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:39', '2023-05-13 07:40:39'),
(71, 3, 'adminICI/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:40', '2023-05-13 07:40:40'),
(72, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:49', '2023-05-13 07:40:49'),
(73, 3, 'adminICI/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:54', '2023-05-13 07:40:54'),
(74, 3, 'adminICI/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:56', '2023-05-13 07:40:56'),
(75, 3, 'adminICI/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:56', '2023-05-13 07:40:56'),
(76, 3, 'adminICI/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 07:40:57', '2023-05-13 07:40:57'),
(77, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 08:31:54', '2023-05-13 08:31:54'),
(78, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 08:31:58', '2023-05-13 08:31:58'),
(79, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 09:17:29', '2023-05-13 09:17:29'),
(80, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 19:16:12', '2023-05-13 19:16:12'),
(81, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 19:16:20', '2023-05-13 19:16:20'),
(82, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 19:16:22', '2023-05-13 19:16:22'),
(83, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 19:16:22', '2023-05-13 19:16:22'),
(84, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 19:16:22', '2023-05-13 19:16:22'),
(85, 3, 'adminICI/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:16:27', '2023-05-13 19:16:27'),
(86, 3, 'adminICI/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"icon\":\"fa-archive\",\"uri\":\"category\\/index\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"cOrcP6GDnH80tJgsumX73Dl6lJeuY1SoIOHG4BBY\"}', '2023-05-13 19:40:24', '2023-05-13 19:40:24'),
(87, 3, 'adminICI/auth/menu', 'GET', '::1', '[]', '2023-05-13 19:40:24', '2023-05-13 19:40:24'),
(88, 3, 'adminICI/auth/menu', 'GET', '::1', '[]', '2023-05-13 19:40:30', '2023-05-13 19:40:30'),
(89, 3, 'adminICI/category/index', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:40:40', '2023-05-13 19:40:40'),
(90, 3, 'adminICI/category/index', 'GET', '::1', '[]', '2023-05-13 19:40:40', '2023-05-13 19:40:40'),
(91, 3, 'adminICI/category/index', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:41:32', '2023-05-13 19:41:32'),
(92, 3, 'adminICI/category/index', 'GET', '::1', '[]', '2023-05-13 19:41:32', '2023-05-13 19:41:32'),
(93, 3, 'adminICI/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:48:23', '2023-05-13 19:48:23'),
(94, 3, 'adminICI/auth/menu/8/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:48:26', '2023-05-13 19:48:26'),
(95, 3, 'adminICI/auth/menu/8', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"icon\":\"fa-archive\",\"uri\":\"category\\/all-category-product\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"cOrcP6GDnH80tJgsumX73Dl6lJeuY1SoIOHG4BBY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ICI_VN7\\/public\\/adminICI\\/auth\\/menu\"}', '2023-05-13 19:48:31', '2023-05-13 19:48:31'),
(96, 3, 'adminICI/auth/menu', 'GET', '::1', '[]', '2023-05-13 19:48:31', '2023-05-13 19:48:31'),
(97, 3, 'adminICI/auth/menu', 'GET', '::1', '[]', '2023-05-13 19:48:40', '2023-05-13 19:48:40'),
(98, 3, 'adminICI/auth/menu', 'GET', '::1', '[]', '2023-05-13 19:48:41', '2023-05-13 19:48:41'),
(99, 3, 'adminICI/auth/menu', 'GET', '::1', '[]', '2023-05-13 19:48:41', '2023-05-13 19:48:41'),
(100, 3, 'adminICI/auth/menu', 'GET', '::1', '[]', '2023-05-13 19:48:42', '2023-05-13 19:48:42'),
(101, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:48:45', '2023-05-13 19:48:45'),
(102, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:48:45', '2023-05-13 19:48:45'),
(103, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:48:57', '2023-05-13 19:48:57'),
(104, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 19:50:37', '2023-05-13 19:50:37'),
(105, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:50:42', '2023-05-13 19:50:42'),
(106, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:50:42', '2023-05-13 19:50:42'),
(107, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-13 19:55:18', '2023-05-13 19:55:18'),
(108, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 19:55:20', '2023-05-13 19:55:20'),
(109, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:55:24', '2023-05-13 19:55:24'),
(110, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:55:25', '2023-05-13 19:55:25'),
(111, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:55:26', '2023-05-13 19:55:26'),
(112, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:55:26', '2023-05-13 19:55:26'),
(113, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:55:26', '2023-05-13 19:55:26'),
(114, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:55:26', '2023-05-13 19:55:26'),
(115, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 19:55:26', '2023-05-13 19:55:26'),
(116, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 20:20:53', '2023-05-13 20:20:53'),
(117, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 21:31:40', '2023-05-13 21:31:40'),
(118, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:32:57', '2023-05-13 22:32:57'),
(119, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:32:58', '2023-05-13 22:32:58'),
(120, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:32:58', '2023-05-13 22:32:58'),
(121, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:32:58', '2023-05-13 22:32:58'),
(122, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:52:48', '2023-05-13 22:52:48'),
(123, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:52:48', '2023-05-13 22:52:48'),
(124, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:52:49', '2023-05-13 22:52:49'),
(125, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:52:49', '2023-05-13 22:52:49'),
(126, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:52', '2023-05-13 22:57:52'),
(127, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:53', '2023-05-13 22:57:53'),
(128, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:53', '2023-05-13 22:57:53'),
(129, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:53', '2023-05-13 22:57:53'),
(130, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:53', '2023-05-13 22:57:53'),
(131, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:54', '2023-05-13 22:57:54'),
(132, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:54', '2023-05-13 22:57:54'),
(133, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:57:56', '2023-05-13 22:57:56'),
(134, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:58:28', '2023-05-13 22:58:28'),
(135, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:58:29', '2023-05-13 22:58:29'),
(136, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:58:29', '2023-05-13 22:58:29'),
(137, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:58:30', '2023-05-13 22:58:30'),
(138, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:58:50', '2023-05-13 22:58:50'),
(139, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 22:59:06', '2023-05-13 22:59:06'),
(140, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:03', '2023-05-13 23:14:03'),
(141, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:04', '2023-05-13 23:14:04'),
(142, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:04', '2023-05-13 23:14:04'),
(143, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:04', '2023-05-13 23:14:04'),
(144, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:25', '2023-05-13 23:14:25'),
(145, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:25', '2023-05-13 23:14:25'),
(146, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:26', '2023-05-13 23:14:26'),
(147, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:26', '2023-05-13 23:14:26'),
(148, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:14:26', '2023-05-13 23:14:26'),
(149, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:15:28', '2023-05-13 23:15:28'),
(150, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:15:38', '2023-05-13 23:15:38'),
(151, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-13 23:25:11', '2023-05-13 23:25:11'),
(152, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 23:26:00', '2023-05-13 23:26:00'),
(153, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-13 23:26:00', '2023-05-13 23:26:00'),
(154, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 23:36:00', '2023-05-13 23:36:00'),
(155, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-13 23:36:00', '2023-05-13 23:36:00'),
(156, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:19:09', '2023-05-14 00:19:09'),
(157, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:20:27', '2023-05-14 00:20:27'),
(158, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:20:38', '2023-05-14 00:20:38'),
(159, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:20:39', '2023-05-14 00:20:39'),
(160, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:20:39', '2023-05-14 00:20:39'),
(161, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:24', '2023-05-14 00:22:24'),
(162, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:25', '2023-05-14 00:22:25'),
(163, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:26', '2023-05-14 00:22:26'),
(164, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:37', '2023-05-14 00:22:37'),
(165, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:38', '2023-05-14 00:22:38'),
(166, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:38', '2023-05-14 00:22:38'),
(167, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:38', '2023-05-14 00:22:38'),
(168, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:22:39', '2023-05-14 00:22:39'),
(169, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:23:48', '2023-05-14 00:23:48'),
(170, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:23:49', '2023-05-14 00:23:49'),
(171, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:23:49', '2023-05-14 00:23:49'),
(172, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:23:50', '2023-05-14 00:23:50'),
(173, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:23:52', '2023-05-14 00:23:52'),
(174, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 00:23:54', '2023-05-14 00:23:54'),
(175, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:17:10', '2023-05-14 01:17:10'),
(176, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:19:43', '2023-05-14 01:19:43'),
(177, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:20:17', '2023-05-14 01:20:17'),
(178, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:25:01', '2023-05-14 01:25:01'),
(179, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:25:02', '2023-05-14 01:25:02'),
(180, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:25:02', '2023-05-14 01:25:02'),
(181, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:25:03', '2023-05-14 01:25:03'),
(182, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:25:03', '2023-05-14 01:25:03'),
(183, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:25:18', '2023-05-14 01:25:18'),
(184, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:26:29', '2023-05-14 01:26:29'),
(185, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:26:57', '2023-05-14 01:26:57'),
(186, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:26:59', '2023-05-14 01:26:59'),
(187, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:28:04', '2023-05-14 01:28:04'),
(188, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:39:31', '2023-05-14 01:39:31'),
(189, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:39:32', '2023-05-14 01:39:32'),
(190, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:40:17', '2023-05-14 01:40:17'),
(191, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 01:41:13', '2023-05-14 01:41:13'),
(192, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-14 01:55:11', '2023-05-14 01:55:11'),
(193, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 01:55:17', '2023-05-14 01:55:17'),
(194, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 01:55:18', '2023-05-14 01:55:18'),
(195, 3, 'adminICI/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 01:58:09', '2023-05-14 01:58:09'),
(196, 3, 'adminICI/auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 01:58:10', '2023-05-14 01:58:10'),
(197, 3, 'adminICI/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 01:58:32', '2023-05-14 01:58:32'),
(198, 3, 'adminICI/auth/users', 'GET', '::1', '[]', '2023-05-14 02:04:40', '2023-05-14 02:04:40'),
(199, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:04:42', '2023-05-14 02:04:42'),
(200, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:04:48', '2023-05-14 02:04:48'),
(201, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 02:04:58', '2023-05-14 02:04:58'),
(202, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-14 02:18:40', '2023-05-14 02:18:40'),
(203, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:23:14', '2023-05-14 02:23:14'),
(204, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:23:17', '2023-05-14 02:23:17'),
(205, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:23:28', '2023-05-14 02:23:28'),
(206, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-14 08:50:38', '2023-05-14 08:50:38'),
(207, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 08:50:41', '2023-05-14 08:50:41'),
(208, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-15 08:01:57', '2023-05-15 08:01:57'),
(209, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-18 07:35:54', '2023-05-18 07:35:54'),
(210, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-19 09:09:16', '2023-05-19 09:09:16'),
(211, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-19 09:09:20', '2023-05-19 09:09:20'),
(212, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:09:23', '2023-05-19 09:09:23'),
(213, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:14:52', '2023-05-19 09:14:52'),
(214, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-19 09:14:56', '2023-05-19 09:14:56'),
(215, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-19 09:14:58', '2023-05-19 09:14:58'),
(216, 3, 'adminICI/category/all-category-product', 'POST', '::1', '{\"status\":\"1\",\"name\":\"Test\",\"category_desc\":\"<p>helllo<\\/p>\",\"category_parents\":\"2\",\"_token\":\"wpIumHVpWPfY8ZXv56HQ322wOQoJyHn9m9THVoxI\"}', '2023-05-19 09:17:36', '2023-05-19 09:17:36'),
(217, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-19 09:17:36', '2023-05-19 09:17:36'),
(218, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:17:46', '2023-05-19 09:17:46'),
(219, 3, 'adminICI/category/all-category-product', 'POST', '::1', '{\"status\":\"1\",\"name\":\"test 2\",\"category_desc\":\"helll 2\",\"category_parents\":\"2\",\"_token\":\"wpIumHVpWPfY8ZXv56HQ322wOQoJyHn9m9THVoxI\",\"_previous_\":\"http:\\/\\/localhost\\/ICI_VN7\\/public\\/adminICI\\/category\\/all-category-product\"}', '2023-05-19 09:18:01', '2023-05-19 09:18:01'),
(220, 3, 'adminICI/category/all-category-product', 'GET', '::1', '[]', '2023-05-19 09:18:01', '2023-05-19 09:18:01'),
(221, 3, 'adminICI/category/all-category-product/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:18:09', '2023-05-19 09:18:09'),
(222, 3, 'adminICI/category/all-category-product/1/edit', 'GET', '::1', '[]', '2023-05-19 09:18:12', '2023-05-19 09:18:12'),
(223, 3, 'adminICI/category/all-category-product/1', 'PUT', '::1', '{\"status\":\"1\",\"name\":\"Test\",\"category_desc\":\"<p>helllo<\\/p>\",\"category_parents\":\"2\",\"_token\":\"wpIumHVpWPfY8ZXv56HQ322wOQoJyHn9m9THVoxI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ICI_VN7\\/public\\/adminICI\\/category\\/all-category-product\\/create\"}', '2023-05-19 09:18:17', '2023-05-19 09:18:17'),
(224, 3, 'adminICI/category/all-category-product/create', 'GET', '::1', '[]', '2023-05-19 09:18:17', '2023-05-19 09:18:17'),
(225, 3, 'adminICI/category/all-category-product/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:18:20', '2023-05-19 09:18:20'),
(226, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:18:21', '2023-05-19 09:18:21'),
(227, 3, 'adminICI/category/all-category-product/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:18:24', '2023-05-19 09:18:24'),
(228, 3, 'adminICI/category/all-category-product/2/edit', 'GET', '::1', '[]', '2023-05-19 09:18:26', '2023-05-19 09:18:26'),
(229, 3, 'adminICI/category/all-category-product/2', 'PUT', '::1', '{\"status\":\"1\",\"name\":\"test 2\",\"category_desc\":\"<p>helll<\\/p>\",\"category_parents\":\"2\",\"_token\":\"wpIumHVpWPfY8ZXv56HQ322wOQoJyHn9m9THVoxI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ICI_VN7\\/public\\/adminICI\\/category\\/all-category-product\\/1\\/edit\"}', '2023-05-19 09:18:33', '2023-05-19 09:18:33'),
(230, 3, 'adminICI/category/all-category-product/1/edit', 'GET', '::1', '[]', '2023-05-19 09:18:33', '2023-05-19 09:18:33'),
(231, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:18:39', '2023-05-19 09:18:39'),
(232, 3, 'adminICI/_handle_action_', 'POST', '::1', '{\"_key\":\"1\",\"_model\":\"App_CategoryProduct\",\"_token\":\"wpIumHVpWPfY8ZXv56HQ322wOQoJyHn9m9THVoxI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-19 09:19:06', '2023-05-19 09:19:06'),
(233, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:19:06', '2023-05-19 09:19:06'),
(234, 3, 'adminICI/_handle_action_', 'POST', '::1', '{\"_key\":\"2\",\"_model\":\"App_CategoryProduct\",\"_token\":\"wpIumHVpWPfY8ZXv56HQ322wOQoJyHn9m9THVoxI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-19 09:19:10', '2023-05-19 09:19:10'),
(235, 3, 'adminICI/category/all-category-product', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 09:19:10', '2023-05-19 09:19:10'),
(236, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 02:42:56', '2023-05-20 02:42:56'),
(237, 3, 'adminICI', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 02:43:03', '2023-05-20 02:43:03'),
(238, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-20 21:23:29', '2023-05-20 21:23:29'),
(239, 3, 'adminICI', 'GET', '::1', '[]', '2023-05-21 05:42:26', '2023-05-21 05:42:26'),
(240, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-24 09:13:45', '2023-05-24 09:13:45'),
(241, 3, 'adminICI/category/all-category-product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 09:13:57', '2023-05-24 09:13:57'),
(242, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 09:14:08', '2023-05-24 09:14:08'),
(243, 3, 'adminICI/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"S\\u1ea3n Ph\\u1ea9m\",\"icon\":\"fa-book\",\"uri\":\"product\\/all-product\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"v0JQwS1wzBFWxSJKJ4kI7iU0DuNLmuNsZXRkDrQK\"}', '2023-05-24 09:15:13', '2023-05-24 09:15:13'),
(244, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-24 09:15:13', '2023-05-24 09:15:13'),
(245, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-24 09:15:17', '2023-05-24 09:15:17'),
(246, 3, 'adminICI', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 09:15:37', '2023-05-24 09:15:37'),
(247, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-25 08:41:13', '2023-05-25 08:41:13'),
(248, 3, 'adminICI', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 08:43:06', '2023-05-25 08:43:06'),
(249, 3, 'adminICI', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 08:43:08', '2023-05-25 08:43:08'),
(250, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 08:43:15', '2023-05-25 08:43:15'),
(251, 3, 'adminICI/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Sinh vi\\u00ean\",\"icon\":\"fa-female\",\"uri\":\"student\\/all-students\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"IZqvzYUOBlcnvsn5NoOCkBjFqqY04eRsVgTLE7Dn\"}', '2023-05-25 08:49:47', '2023-05-25 08:49:47'),
(252, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-25 08:49:47', '2023-05-25 08:49:47'),
(253, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-25 08:49:53', '2023-05-25 08:49:53'),
(254, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-25 08:50:04', '2023-05-25 08:50:04'),
(255, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-25 08:50:09', '2023-05-25 08:50:09'),
(256, 3, 'adminICI/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-25 08:50:12', '2023-05-25 08:50:12'),
(257, 3, 'adminICI/student/all-students', 'GET', '127.0.0.1', '[]', '2023-05-25 09:20:23', '2023-05-25 09:20:23'),
(258, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-25 09:23:33', '2023-05-25 09:23:33'),
(259, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-25 09:23:36', '2023-05-25 09:23:36'),
(260, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-25 09:30:55', '2023-05-25 09:30:55'),
(261, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-25 09:33:05', '2023-05-25 09:33:05'),
(262, 3, 'adminICI/category/all-category-product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 09:33:08', '2023-05-25 09:33:08'),
(263, 3, 'adminICI/category/all-category-product', 'GET', '127.0.0.1', '[]', '2023-05-25 09:33:17', '2023-05-25 09:33:17'),
(264, 3, 'adminICI', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 09:33:21', '2023-05-25 09:33:21'),
(265, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-25 09:35:18', '2023-05-25 09:35:18'),
(266, 3, 'adminICI/category/all-category-product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 09:35:30', '2023-05-25 09:35:30'),
(267, 3, 'adminICI', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-27 08:50:44', '2023-05-27 08:50:44'),
(268, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-27 08:54:06', '2023-05-27 08:54:06'),
(269, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-28 07:05:25', '2023-05-28 07:05:25'),
(270, 3, 'adminICI', 'GET', '127.0.0.1', '[]', '2023-05-28 07:45:24', '2023-05-28 07:45:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-05-02 18:39:14', '2023-05-02 18:39:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$CKD/lHUSjrOBgfe7xtPnhexRGJ9X14EXAGaFLIhW1SdfBVbtGKap6', 'Administrator', NULL, '96wJekLIadx4FrkeLa52BmRXw1S4xPPtQhDrgrqHP9LALkRWKIhTgOjzzD9f', '2023-05-02 18:39:14', '2023-05-02 18:39:14'),
(3, 'kiet', '$2y$10$r5IypRiQElcow9bQkgwVlOFMn3yvbeqvWG7NkA/WH5acRQdCzmEmC', 'Kiet', NULL, 'BMQKPUeWGiBxHG7ItRyqucZnvap95X9Vc66BXZNdikPhPX0LXqrNPnmjRJxQ', '2023-05-03 09:00:18', '2023-05-03 09:00:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2023_05_14_031405_create_tbl_category_product', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_parents` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_free_quote`
--

CREATE TABLE `tbl_free_quote` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `service` text NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Chỉ mục cho bảng `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_free_quote`
--
ALTER TABLE `tbl_free_quote`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
