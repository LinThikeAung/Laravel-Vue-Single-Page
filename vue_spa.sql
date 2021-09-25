-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 05:26 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_15_092446_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Adipisci.', '128.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(2, 'Nam et.', '369.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(3, 'Error sed.', '432.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(4, 'Dolorem.', '169.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(5, 'Nulla ab.', '187.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(6, 'Sit.', '188.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(7, 'Nostrum.', '483.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(8, 'Nam.', '424.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(9, 'Incidunt.', '452.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(10, 'Vel dolor.', '470.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(11, 'Eius sed.', '469.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(12, 'Commodi.', '291.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(13, 'Quae.', '167.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(14, 'Tempore.', '474.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(15, 'Est.', '137.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(16, 'Tempore.', '160.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(17, 'In aut.', '424.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(18, 'Et ipsa.', '147.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(19, 'Sapiente.', '463.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(20, 'Ipsa quis.', '341.00', '2020-10-15 03:25:09', '2020-10-15 03:25:09'),
(21, 'Autem non.', '371.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(22, 'Ut.', '157.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(23, 'Omnis vel.', '491.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(24, 'Unde ut.', '245.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(25, 'Sed omnis.', '162.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(26, 'Aut.', '185.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(27, 'Quia.', '454.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(28, 'Repellat.', '335.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(29, 'Non dicta.', '364.00', '2020-10-15 03:37:22', '2020-10-15 03:37:22'),
(32, 'Rolex Watch', '5000.00', '2020-10-21 02:17:04', '2020-10-21 02:17:04'),
(40, 'MacBook Pro', '8000.00', '2020-10-23 06:36:52', '2020-10-23 06:36:52'),
(43, 'Samsung Galaxy', '3000.00', '2020-10-24 03:14:33', '2020-10-24 03:14:33'),
(44, 'Redmi K30 5G', '500.00', '2020-10-24 23:16:35', '2020-10-24 23:16:35'),
(45, 'RedMi K30 Pro', '900.00', '2020-10-24 23:43:44', '2020-10-24 23:43:44'),
(47, 'Xiami K20', '499.00', '2020-10-24 23:55:09', '2021-09-24 20:48:10'),
(48, 'Apple Watch Series 6', '650.00', '2020-10-25 00:02:37', '2020-10-25 00:02:58'),
(49, 'IPhone XS Max', '700.00', '2021-09-24 20:43:11', '2021-09-24 20:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
