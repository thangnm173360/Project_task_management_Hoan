-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 12:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_task_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `content` varchar(256) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `content`, `card_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 3, '2020-12-15 10:16:20', '2020-12-15 10:16:47'),
(2, 'https://www.youtube.com/', 3, '2020-12-15 10:16:20', '2020-12-15 10:16:47'),
(4, 'https://stackoverflow.com/', 3, '2020-12-15 10:16:20', '2020-12-15 10:16:47'),
(5, 'https://github.com/IT440920201/Nhom_12', 3, '2020-12-15 10:16:20', '2020-12-15 10:16:47'),
(6, 'https://lms.hust.edu.vn/', 3, '2020-12-15 10:16:20', '2020-12-15 10:16:47'),
(9, NULL, 3, '2020-12-15 15:52:43', '2020-12-15 15:52:43'),
(10, 'Hot boyyyyyyy', 3, '2020-12-15 15:52:50', '2020-12-15 15:52:50'),
(13, 'google.com.vn', 136, '2020-12-16 03:52:44', '2020-12-16 03:52:44'),
(14, 'github.org', 136, '2020-12-16 03:52:50', '2020-12-16 03:52:50'),
(20, 'http://google.com.vn', 153, '2020-12-16 15:32:24', '2020-12-16 15:32:24'),
(22, 'https://github.com/thangnm173360', 130, '2020-12-17 00:27:31', '2020-12-17 00:27:31'),
(25, 'https://www.facebook.com/', 132, '2020-12-17 00:28:19', '2020-12-17 00:28:19'),
(26, 'https://drive.google.com/drive', 130, '2020-12-17 01:42:51', '2020-12-16 18:43:11'),
(27, 'https://dropbox.com', 130, '2020-12-17 01:47:32', '2020-12-17 01:47:32'),
(28, 'http://google.com.vn', 1, '2020-12-23 16:19:11', '2020-12-23 16:19:11'),
(29, 'https://github.com/sessions/verified-device', 1, '2020-12-23 16:19:22', '2020-12-23 16:19:22'),
(30, 'https://drive.google.com/drive/u/0/', 1, '2020-12-23 16:19:35', '2020-12-23 16:19:35'),
(31, 'https://drive.google.com/drive/u/0/my-drive', 170, '2020-12-23 16:24:58', '2020-12-23 16:24:58'),
(32, 'https://github.com/sessions/verified-device', 170, '2020-12-23 16:25:04', '2020-12-23 16:25:04'),
(34, 'https://github.com/sessions/verified-device', 131, '2020-12-23 23:39:16', '2020-12-23 23:39:16'),
(35, 'https://www.dropbox.com/', 131, '2020-12-23 23:39:41', '2020-12-23 23:39:41'),
(36, 'http://google.com.vn', 131, '2020-12-24 00:04:18', '2020-12-24 00:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `title`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'University', '2020-11-29 01:09:02', '2020-12-23 16:26:47', 1),
(6, 'Language', '2020-11-29 01:39:41', '2020-12-23 09:32:10', 1),
(24, 'Discover', '2020-12-15 12:49:53', '2020-12-15 12:49:53', 1),
(27, 'Company', '2020-12-16 03:50:09', '2020-12-23 09:32:42', 1),
(62, 'Music', '2020-12-17 00:29:54', '2020-12-17 00:29:54', 3),
(63, 'Movie', '2020-12-17 00:30:02', '2020-12-17 00:30:02', 3),
(64, 'Book', '2020-12-17 00:30:08', '2020-12-17 00:30:08', 3),
(65, 'Travel', '2020-12-17 00:30:17', '2020-12-17 00:30:17', 3),
(66, 'Swimming', '2020-12-17 00:30:27', '2020-12-17 00:30:27', 3),
(67, 'Basketball', '2020-12-17 00:30:38', '2020-12-17 00:30:38', 3),
(68, 'Football', '2020-12-17 00:30:46', '2020-12-17 00:30:46', 3),
(74, 'Study', '2020-12-19 13:18:54', '2020-12-19 13:18:54', 3),
(75, 'House', '2020-12-19 13:19:08', '2020-12-19 13:19:08', 3);

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `list_checklist` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`id`, `task_id`, `list_checklist`, `created_at`, `updated_at`, `name`) VALUES
(1, 3, '\"[{\\\"task_name\\\":\\\"name\\\",\\\"isChecked\\\":true},{\\\"task_name\\\":\\\"name\\\",\\\"isChecked\\\":false}]\"', '2020-12-01 11:24:19', '2020-12-18 07:44:22', 'english'),
(4, 3, '[{\"id\":1,\"task_name\":\"home work 1333333333333322222\",\"isChecked\":\"true\"},{\"id\":2,\"task_name\":\"home work\",\"isChecked\":\"false\"}]', NULL, '2020-12-16 03:46:19', 'thang'),
(5, 3, NULL, NULL, NULL, 'Hot girl'),
(6, 3, NULL, NULL, NULL, 'Hot boy'),
(7, 3, NULL, NULL, NULL, 'Hot boy'),
(9, 3, NULL, NULL, NULL, 'ex in class'),
(10, 142, NULL, NULL, NULL, 'hgkh'),
(12, 131, '[{\"task_name\":\"Report in LMS\",\"isChecked\":\"true\"},{\"task_name\":\"Do Ex 3\",\"isChecked\":\"false\"},{\"task_name\":\"Do Ex 4\",\"isChecked\":\"true\"}]', NULL, '2020-12-23 17:05:09', 'Do homework'),
(13, 130, '[{\"task_name\":\"Ex 1\",\"isChecked\":\"false\"},{\"task_name\":\"Ex 2\",\"isChecked\":\"false\"},{\"task_name\":\"Ex 3\",\"isChecked\":\"false\"},{\"task_name\":\"Ex 4\",\"isChecked\":\"true\"}]', NULL, '2020-12-16 18:36:22', 'Execise of Class'),
(14, 148, NULL, NULL, NULL, 'test'),
(15, 153, '[{\"task_name\":\"ssdf\",\"isChecked\":\"true\"},{\"task_name\":\"sdfsdf\",\"isChecked\":\"true\"},{\"task_name\":\"fsdf\",\"isChecked\":\"true\"},{\"task_name\":\"asdf\",\"isChecked\":\"true\"}]', NULL, '2020-12-16 08:31:37', 'asdf'),
(16, 153, '[{\"task_name\":\"asdf\",\"isChecked\":\"true\"},{\"task_name\":\"asdasdf\",\"isChecked\":\"true\"},{\"task_name\":\"asdfazsdf\",\"isChecked\":\"true\"},{\"task_name\":\"asdf\",\"isChecked\":\"true\"}]', NULL, '2020-12-16 08:32:12', 'asdfasdfasdf'),
(18, 3, NULL, NULL, NULL, 'test'),
(19, 1, '[{\"task_name\":\"fasd\",\"isChecked\":\"false\"},{\"task_name\":\"\\u00e1df\",\"isChecked\":\"false\"},{\"task_name\":\"\\u00e1df\",\"isChecked\":\"false\"},{\"task_name\":\"fasdf\",\"isChecked\":\"false\"}]', NULL, '2020-12-18 07:01:20', 'test'),
(20, 170, '[{\"task_name\":\"Ex1\",\"isChecked\":\"true\"},{\"task_name\":\"Ex2\",\"isChecked\":\"true\"},{\"task_name\":\"Ex4\",\"isChecked\":\"false\"},{\"task_name\":\"Ex4\",\"isChecked\":\"false\"}]', NULL, '2020-12-23 09:24:21', 'Home Work'),
(22, 131, '[{\"task_name\":\"Prepare to new lesson\",\"isChecked\":\"true\"},{\"task_name\":\"Make a presentation\",\"isChecked\":\"true\"}]', NULL, '2020-12-23 17:07:34', 'Try Hard');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `created_at`, `updated_at`, `task_id`) VALUES
(1, 'add file', 1, '2020-12-12 11:40:54', '2020-12-12 11:40:54', 3),
(2, 'add image', 1, '2020-12-12 11:40:57', '2020-12-12 11:40:57', 3),
(3, 'javhd.net', 1, '2020-12-15 10:04:31', '2020-12-15 10:04:31', 3),
(4, 'bad code', 1, '2020-12-15 10:04:48', '2020-12-15 10:04:48', 3),
(5, 'need report earier', 1, '2020-12-15 10:05:07', '2020-12-15 10:05:07', 3),
(7, 'hoandx', 1, '2020-12-15 11:00:58', '2020-12-15 11:00:58', 3),
(8, 'Code stupid', 1, '2020-12-15 13:49:46', '2020-12-15 13:49:46', 131),
(9, 'Review shoud earlier', 1, '2020-12-15 13:50:12', '2020-12-23 16:44:56', 131),
(10, 'sdfas', 1, '2020-12-15 16:32:33', '2020-12-15 16:32:33', 134),
(11, 'asdfasdf', 1, '2020-12-15 16:32:41', '2020-12-15 16:32:41', 134),
(13, 'asdf', 1, '2020-12-16 11:01:12', '2020-12-16 11:01:12', 147),
(14, 'asdf', 1, '2020-12-16 15:30:07', '2020-12-16 15:30:07', 153),
(15, 'asdfas', 1, '2020-12-16 15:30:24', '2020-12-16 15:30:24', 153),
(16, 'asdfasdf', 1, '2020-12-16 15:32:28', '2020-12-16 15:32:28', 153),
(17, 'asdfasdf', 1, '2020-12-16 15:32:53', '2020-12-16 15:32:53', 153),
(24, 'test', 1, '2020-12-19 11:18:19', '2020-12-19 11:18:19', 166),
(38, 'tesst', 1, '2020-12-23 14:05:04', '2020-12-23 14:05:04', 130),
(39, 'tesst', 1, '2020-12-23 14:07:48', '2020-12-23 14:07:48', 130),
(40, 'test', 1, '2020-12-23 16:23:43', '2020-12-23 16:23:43', 170),
(41, 'Amazing Goodjob', 1, '2020-12-23 23:43:04', '2020-12-23 23:43:04', 131);

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_id` int(10) UNSIGNED NOT NULL,
  `index` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `title`, `board_id`, `index`, `created_at`, `updated_at`) VALUES
(10, 'createeeee', 1, 0, '2020-11-29 00:14:18', '2020-11-29 01:12:01'),
(17, 'updateeeee', 1, 0, '2020-11-29 00:58:47', '2020-11-29 01:13:28'),
(20, 'Backlog', 5, 0, '2020-11-29 01:40:33', '2020-12-23 16:25:00'),
(22, 'Backlog', 6, 1, '2020-12-06 08:03:23', '2020-12-23 09:28:39'),
(23, 'Progress', 6, 0, '2020-12-06 08:03:14', '2020-12-06 08:03:14'),
(24, 'Completed', 6, 0, '2020-12-06 08:03:04', '2020-12-23 09:28:39'),
(25, 'helllo', 1, 0, '2020-12-11 19:21:28', '2020-12-11 19:21:28'),
(26, 'tesssttttttt', 1, 0, '2020-12-11 19:21:33', '2020-12-11 19:21:33'),
(27, 'tesssttttttt', 1, 0, '2020-12-11 19:21:34', '2020-12-11 19:21:34'),
(31, 'Done Process', 6, 0, '2020-12-14 14:39:12', '2020-12-14 14:39:12'),
(36, 'Process', 5, 0, '2020-11-29 01:40:42', '2020-12-23 16:48:35'),
(37, 'In Review', 5, 0, NULL, '2020-12-23 09:34:14'),
(39, 'Backlog', 27, 0, NULL, NULL),
(40, 'Process', 27, 0, NULL, NULL),
(41, 'Done', 27, 0, NULL, NULL),
(44, 'Done', 5, 0, NULL, '2020-12-23 16:25:01'),
(47, 'aaa', 30, 0, NULL, NULL),
(49, 'ccc', 30, 0, NULL, NULL),
(50, 'aaa', 30, 0, NULL, NULL),
(51, 'ddd', 30, 0, NULL, NULL),
(52, 'fff', 30, 0, NULL, NULL),
(1000, 'Completed', 5, 0, NULL, '2020-12-23 16:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_28_230326_create_tasks_table', 1),
(4, '2020_11_10_162152_create_checklist_table', 1),
(5, '2020_11_10_162258_create_lists_table', 1),
(6, '2020_11_10_162346_create_boards_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lists_id` int(10) UNSIGNED DEFAULT NULL,
  `dead_line` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `user_avatar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `lists_id`, `dead_line`, `status`, `attachment`, `updated_at`, `created_at`, `user_avatar`) VALUES
(1, 'Listening of Ielts', NULL, 23, '2020-12-12 13:07:43', 'completed', '', '2020-12-23 09:30:04', '2020-12-14 21:33:28', '[1,2]'),
(3, 'China', NULL, 24, '2020-12-12 13:07:51', 'pending', '', '2020-12-23 09:28:38', '2020-12-14 21:33:28', '{\"10\", \"4\", \"2\", \"5\"}'),
(6, 'Japan conversation', NULL, 22, '2020-12-12 13:07:55', 'completed', '', '2020-12-23 09:31:13', '2020-12-14 21:33:28', '{\"1\", \"2\", \"3\", \"4\"}'),
(122, 'Speaking part 1', NULL, 24, '2020-12-12 13:07:58', 'completed', '', '2020-12-23 09:30:20', '2020-12-14 21:33:28', '{\"1\", \"user\", \"2\", \"3\"}'),
(123, 'Japan Test N5 listening', NULL, 24, '2020-12-12 13:08:00', 'completed', '', '2020-12-23 09:31:53', '2020-12-14 21:33:28', '[1,2]'),
(124, 'China Reading', NULL, 22, '2020-12-14 21:34:37', NULL, NULL, '2020-12-23 09:30:47', '2020-12-14 14:34:37', '[1,2]'),
(125, 'Japan Test N5', NULL, 22, '2020-12-14 21:35:50', NULL, NULL, '2020-12-23 09:30:56', '2020-12-14 14:35:50', '[1,2]'),
(130, 'Project 3', NULL, 21, '2020-12-18 02:23:00', 'pending', NULL, '2020-12-23 07:50:47', '2020-12-15 06:45:58', '[1,2]'),
(131, 'Sercurity network', 'Network security is a broad term that covers a multitude of technologies, devices and processes. In its simplest term', 36, '2020-12-15 00:02:39', 'pending', NULL, '2020-12-23 18:52:25', '2020-12-15 06:46:12', '[1,2]'),
(132, 'Math', NULL, 1000, '2020-12-17 09:25:00', 'completed', NULL, '2020-12-23 16:48:34', '2020-12-15 06:47:50', '[1,2]'),
(133, 'English', NULL, 20, '2020-12-28 00:42:00', 'pending', NULL, '2020-12-23 16:25:00', '2020-12-15 06:47:57', '[1,2]'),
(134, 'Exxxxxxfffffff', 'helllo', 38, '2020-12-18 16:31:00', NULL, NULL, '2020-12-15 09:33:04', '2020-12-15 09:31:56', ''),
(135, 'update add file', NULL, 39, NULL, NULL, NULL, '2020-12-16 03:51:11', '2020-12-16 03:51:11', '[1,2]'),
(136, 'update test many cards', 'afasdfasd', 39, '2020-12-18 03:51:00', 'completed', NULL, '2020-12-15 20:53:19', '2020-12-16 03:51:21', '[1,2]'),
(139, 'asdf', NULL, 39, NULL, NULL, NULL, '2020-12-15 21:11:56', '2020-12-15 21:11:56', ''),
(140, 'Math', NULL, 20, '2020-12-26 01:37:00', 'pending', NULL, '2020-12-23 18:38:42', '2020-12-15 21:17:09', '[1,2]'),
(142, 'System', NULL, 1000, '2020-12-25 09:28:00', 'completed', NULL, '2020-12-23 16:48:34', '2020-12-15 22:42:12', '[1,2]'),
(143, 'Computer', NULL, 1000, '2020-12-31 09:28:00', 'completed', NULL, '2020-12-23 16:48:34', '2020-12-15 22:42:15', '[1,2]'),
(146, 'Final exam', NULL, 44, '2020-12-18 09:28:00', 'completed', NULL, '2020-12-23 16:24:59', '2020-12-16 09:29:10', ''),
(152, 'asdf', NULL, 47, NULL, NULL, NULL, '2020-12-16 15:29:47', '2020-12-16 15:29:47', ''),
(153, 'asdf', NULL, 47, '2020-12-19 15:31:00', 'completed', NULL, '2020-12-16 08:32:35', '2020-12-16 15:29:49', ''),
(154, 'asdf', NULL, 49, NULL, NULL, NULL, '2020-12-16 15:29:51', '2020-12-16 15:29:51', ''),
(155, 'asdf', NULL, 50, NULL, NULL, NULL, '2020-12-16 15:29:52', '2020-12-16 15:29:52', ''),
(156, 'asdf', NULL, 51, NULL, NULL, NULL, '2020-12-16 15:29:54', '2020-12-16 15:29:54', ''),
(157, 'asdf', NULL, 52, NULL, NULL, NULL, '2020-12-16 15:29:55', '2020-12-16 15:29:55', ''),
(158, 'asdf', NULL, 49, NULL, NULL, NULL, '2020-12-16 15:29:57', '2020-12-16 15:29:57', ''),
(159, 'asdf', NULL, 50, NULL, NULL, NULL, '2020-12-16 15:29:58', '2020-12-16 15:29:58', ''),
(160, 'asdf', NULL, 51, NULL, NULL, NULL, '2020-12-16 15:29:59', '2020-12-16 15:29:59', ''),
(161, 'asdf', NULL, 52, NULL, NULL, NULL, '2020-12-16 15:30:02', '2020-12-16 15:30:02', ''),
(163, 'Data structures.', NULL, 20, '2020-12-25 01:37:00', 'pending', NULL, '2020-12-23 18:38:12', '2020-12-17 00:33:17', ''),
(164, 'Digital systems.', NULL, 21, '2020-12-19 02:27:00', 'pending', NULL, '2020-12-23 07:50:47', '2020-12-17 00:33:24', ''),
(165, 'Computer Science', NULL, 21, '2020-12-20 02:27:00', 'pending', NULL, '2020-12-23 07:50:48', '2020-12-17 00:34:02', ''),
(166, 'Computer Networks', NULL, 36, '2020-12-24 00:42:00', 'completed', NULL, '2020-12-23 16:48:34', '2020-12-17 00:34:15', ''),
(167, 'Computing', NULL, 44, '2020-12-27 00:42:00', 'completed', NULL, '2020-12-23 16:25:00', '2020-12-17 00:34:38', ''),
(169, 'Speaking part 2', NULL, 31, '2020-12-19 13:19:00', 'pending', NULL, '2020-12-23 09:30:36', '2020-12-18 13:20:10', NULL),
(170, 'Merchine Learning', NULL, 36, '2020-12-24 16:23:00', 'pending', NULL, '2020-12-23 16:52:11', '2020-12-23 16:23:15', NULL),
(171, 'Reading of Ielts', NULL, 23, NULL, NULL, NULL, '2020-12-23 16:29:22', '2020-12-23 16:29:22', NULL),
(172, 'Writing task 1', NULL, 23, NULL, NULL, NULL, '2020-12-23 16:31:33', '2020-12-23 16:31:33', NULL),
(173, 'Deep Learning', NULL, 37, '2020-12-25 16:34:00', 'pending', NULL, '2020-12-23 09:35:51', '2020-12-23 16:34:29', NULL),
(174, 'Big Data', NULL, 37, '2020-12-23 16:34:00', 'completed', NULL, '2020-12-23 09:36:02', '2020-12-23 16:34:37', NULL),
(175, 'Web Design', NULL, 37, '2020-12-26 16:34:00', 'pending', NULL, '2020-12-23 09:36:09', '2020-12-23 16:35:02', NULL),
(177, 'Test', NULL, 20, '2021-01-01 01:37:00', 'pending', NULL, '2020-12-23 18:38:33', '2020-12-23 23:30:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ngọc Huyền', 'admin1@gmail.com', '$2y$10$WmI1TC5kdTAGpedIpd5Z8.PJ07tXTn8WAPf/mCOyrz6USYO0yhIlS', '1_avatar1608775308.jpg', 'HkFSBrtwyvkrtCrjK5cu5Wato96jCWEwApR9b4TEbJzaxEMgeDLTi4cUfE2k', '2020-11-28 20:13:01', '2020-12-23 19:01:48'),
(2, 'Hoang', 'hoangadmin@gmail.com', '$2y$10$y0q1S7p27Wx2HqyLbtisF.z8C5b3OG8f9Ah.hOrFTr6OUfEY5iR9C', '1.jpg', NULL, '2020-12-12 03:06:05', '2020-12-12 03:06:05'),
(3, 'HoanDX', 'admin2@gmail.com', '$2y$10$JDO.ZUHE.XjJl1iVV9vYt.BIeMSPxQOCZPgaOMJFcqTN9/hg8OaKG', '3_avatar1608739526.jpg', '83zI0itY5zvVBpbTClloOA5nI8IFA0IOIg0MuVM3SRpGPTEHgUevyV71EdP0', '2020-12-16 09:39:50', '2020-12-23 09:05:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checklists`
--
ALTER TABLE `checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `checklists`
--
ALTER TABLE `checklists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `lists`
--
ALTER TABLE `lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2002;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
