-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 06:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bwastartup`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `perks` text DEFAULT NULL,
  `backer_count` int(11) DEFAULT NULL,
  `goal_amount` int(11) DEFAULT NULL,
  `current_amount` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `short_description`, `description`, `perks`, `backer_count`, `goal_amount`, `current_amount`, `slug`, `created_at`, `updated_at`) VALUES
(1, 15, 'Campaign 1', 'Short', 'LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO', 'perks 1, awo 2, rfmrkf 3', 0, 100000000, 0, 'camoign 1', '2023-05-25 00:00:00', '2023-05-25 00:00:00'),
(2, 15, 'Campaign 2', 'Short', 'LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO', 'perks 1,  awo 2, rfmrkf 3', 0, 100000000, 0, 'camoign 2', '2023-05-25 00:00:00', '2023-05-25 00:00:00'),
(3, 16, 'Campaign 3', 'Short', 'LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO', 'perks 1,  awo 2, rfmrkf 3', 0, 100000000, 0, 'camoign 3', '2023-05-25 00:00:00', '2023-05-25 00:00:00'),
(5, 15, 'Penggalangan Dana Startup', 'short', 'LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOONG', 'Hadiah 1, Hadiah 2, Hadiah 3, Hadiah 4, Hadiah 5', 0, 100000000, 0, 'penggalangan-dana-startup-s-int-15', '2023-05-30 08:36:49', '2023-05-30 08:36:49'),
(6, 15, 'Penggalangan Dana Startup', 'short', 'LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOONG', 'Hadiah 1, Hadiah 2, Hadiah 3, Hadiah 4, Hadiah 5', 0, 100000000, 0, 'd-string-penggalangan-dana-startup-15', '2023-05-30 08:37:50', '2023-05-30 08:37:50'),
(7, 16, 'Penggalangan Dana Startup', 'short', 'LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOONG', 'Hadiah 1, Hadiah 2, Hadiah 3, Hadiah 4, Hadiah 5', 0, 100000000, 0, 'd-string-penggalangan-dana-startup-16', '2023-05-30 08:38:24', '2023-05-30 08:38:24'),
(8, 15, 'sebuah campaign keren', 'Singkat sekali ygy', 'Panjang amat sangat', 'Hasil satu, hasil 2, hasil tigas, hasil 4', 0, 10000000, 0, 'd-string-sebuah-campaign-keren-15', '2023-05-30 09:11:05', '2023-05-30 09:11:05'),
(9, 16, 'Punyaku', 'Singkat ygy', 'Panjang sangat sekali', 'Hasil dua, hasil 2, hasil empat, hasil 4', 0, 1000000, 0, 'd-string-punyaku-16', '2023-05-30 09:12:12', '2023-05-30 09:12:12'),
(10, 16, 'Punyaku', 'Singkat ygy', 'Panjang sangat sekali', 'Hasil dua, hasil 2, hasil empat, hasil 4', 0, 1000000, 0, 'punyaku-16', '2023-05-30 09:21:26', '2023-05-30 09:21:26'),
(11, 16, 'Punyaku UPTADE 1', 'Singkat ygy UPTADE', 'Panjang sangat sekali UPTADE', 'Hasil dua, hasil 2, hasil empat UPTADE, hasil 4 UPTADE', 0, 1750000, 0, 'punyaku-16', '2023-05-30 09:21:27', '2023-05-30 10:48:21'),
(12, 15, 'Punyaku UPTADE oqoqoqoq', 'Singkat ygy UPTADE', 'Panjang sangat sekali UPTADE', 'Hasil dua, hasil 2, hasil empat UPTADE, hasil 4 UPTADE', 0, 1750000, 0, 'punyaku-15', '2023-05-30 09:22:01', '2023-05-30 10:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign_images`
--

INSERT INTO `campaign_images` (`id`, `campaign_id`, `file_name`, `is_primary`, `created_at`, `updated_at`) VALUES
(2, 1, 'campaign-images/satu.jpg', 0, '2023-05-25 00:00:00', '2023-05-25 00:00:00'),
(3, 1, 'campaign-images/dua.jpg', 1, '2023-05-25 00:00:00', '2023-05-25 00:00:00'),
(4, 1, 'campaign-images/tiga.jpg', 0, '2023-05-25 00:00:00', '2023-05-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Pasha', 'programer', 'pasha@gmail.com', 'Agung', 'images/1-Avatar 2.jpg', 'user', '12', '2023-05-19 00:00:00', '2023-05-24 10:48:43'),
(2, 'agus', 'it developer', 'agus@gmail.com', 'agus', '', 'user', '0', '2023-05-19 00:00:00', '2023-05-19 00:00:00'),
(4, 'Test Simpan', '', '', '', '', '', NULL, '2023-05-22 08:16:29', '2023-05-22 08:16:29'),
(6, 'Name dari POSTMAN', 'UI Desaigner', 'email@domain.com', '$2a$04$PXTc80uyLs8XDKqa7Ta7POpJ/qrSh06pJYtkeyKW8NZO8bOUvMMGW', '', 'user', NULL, '2023-05-22 09:18:01', '2023-05-22 09:18:01'),
(7, 'Nama', 'CEO', 'email@domain.com', '$2a$04$vMT2tDLbZ5LyPx2oU1LJte9SZ//ui6JNcwG23Z2W8yuy7nJwe6AJ6', '', 'user', NULL, '2023-05-22 10:38:26', '2023-05-22 10:38:26'),
(8, 'Nama', 'CEO', 'email@domain.com', '$2a$04$5jlb9sUkhvlvIvmJjTLQ1OmJKDuuwU5jOL4z/3N.GpsFwMm4KC8XC', '', 'user', NULL, '2023-05-22 10:40:16', '2023-05-22 10:40:16'),
(15, 'Agung', 'IT Engginerring', 'agung@gmail.com', '$2a$04$3bM42kNJIrF1GUYvMptTs.9G6IevhqjIyc3wEuF33cSkuD32OVyna', 'images/15-Avatar 2.jpg', 'user', NULL, '2023-05-23 08:01:37', '2023-05-24 10:51:21'),
(16, 'Daniel', 'HRD', 'daniel@gmail.com', '$2a$04$7iRo3swZmf9JyyWYpPY.8u3KCxBhcaGeyc5htE/fggI5dWs/4wQ8i', 'images/16-Avatar 4.jpg', 'user', NULL, '2023-05-23 09:47:17', '2023-05-24 10:52:31'),
(17, 'jwt', 'akuaku', 'jwt@gmail.com', '$2a$04$CnfeP.EAFt/NwThr0LKBsuofLBMcc7mAymc8phpXVfj5u0SGmQbLW', '', 'user', NULL, '2023-05-24 09:25:40', '2023-05-24 09:25:40'),
(18, 'jwt', 'akuaku', 'jwt@gmail.com', '$2a$04$33miTWsFoMddgx.t1GgOLuVfAZ25BEPL31ItPH8azasNMGGmspi6G', '', 'user', NULL, '2023-05-24 09:26:06', '2023-05-24 09:26:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
