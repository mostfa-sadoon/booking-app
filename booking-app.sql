-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 11:48 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'mostafa sadoun', 'admin@admin.com', '$2y$10$FsuHxyHTpMZE7cysPS2p4exInJiDMcH/AvFfrYbzt/s5SeFAgHha6', '$2y$10$y8SZGDLJiy51GO2UubM4QOgAH/xd7/RTtOdEXoRRYs0VmUMD6rhE2');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_29_082337_vehicle-kind', 2),
(8, '2022_08_29_083326_admin', 3),
(11, '2022_08_29_082347_vehicle', 4),
(14, '2022_08_29_162625_solt', 5),
(18, '2022_08_29_082401_travel', 6),
(23, '2022_08_29_193703_travel_slots', 7);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `vehicle_id`, `number`, `created_at`, `updated_at`) VALUES
(1, 8, 1, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(2, 8, 2, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(3, 8, 3, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(4, 8, 4, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(5, 8, 5, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(6, 8, 6, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(7, 8, 7, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(8, 8, 8, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(9, 8, 9, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(10, 8, 10, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(11, 8, 11, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(12, 8, 12, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(13, 8, 13, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(14, 8, 14, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(15, 8, 15, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(16, 8, 16, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(17, 8, 17, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(18, 8, 18, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(19, 8, 19, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(20, 8, 20, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(21, 8, 21, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(22, 8, 22, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(23, 8, 23, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(24, 8, 24, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(25, 9, 1, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(26, 9, 2, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(27, 9, 3, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(28, 9, 4, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(29, 9, 5, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(30, 9, 6, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(31, 9, 7, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(32, 9, 8, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(33, 9, 9, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(34, 9, 10, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(35, 9, 11, '2022-08-29 18:45:30', '2022-08-29 18:45:30'),
(36, 9, 12, '2022-08-29 18:45:30', '2022-08-29 18:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `slots` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`id`, `vehicle_id`, `slots`, `price`, `from`, `to`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(5, 8, 24, 50, 'zagazige', 'Alex', '2022-08-31 20:53:00', '2022-08-31 15:53:00', '2022-08-30 12:53:25', '2022-08-30 12:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `travelslots`
--

CREATE TABLE `travelslots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `slots_id` bigint(20) UNSIGNED NOT NULL,
  `travel_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('available','unavailable') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelslots`
--

INSERT INTO `travelslots` (`id`, `vehicle_id`, `slots_id`, `travel_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(2, 8, 2, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 14:52:15'),
(3, 8, 3, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(4, 8, 4, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(5, 8, 5, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 14:55:56'),
(6, 8, 6, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-31 06:42:41'),
(7, 8, 7, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(8, 8, 8, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(9, 8, 9, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-31 06:45:05'),
(10, 8, 10, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(11, 8, 11, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(12, 8, 12, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-31 07:41:19'),
(13, 8, 13, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(14, 8, 14, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(15, 8, 15, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-31 06:36:27'),
(16, 8, 16, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(17, 8, 17, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(18, 8, 18, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(19, 8, 19, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(20, 8, 20, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(21, 8, 21, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(22, 8, 22, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(23, 8, 23, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25'),
(24, 8, 24, 5, NULL, 'available', '2022-08-30 12:53:25', '2022-08-30 12:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mostafa sadoun', 'user@user.com', '01014324321', NULL, '$2y$10$ArM1ec83.9X72RDg68xAi.WV2HDN4xymMkWRd1QWmHlwJb.bEyBYi', NULL, NULL, NULL),
(3, 'mostafa sadoun', 'user@user1.com', '0101432432122', NULL, '$2y$10$ArM1ec83.9X72RDg68xAi.WV2HDN4xymMkWRd1QWmHlwJb.bEyBYi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_kind_id` bigint(20) UNSIGNED NOT NULL,
  `slots` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehiclenumber` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_kind_id`, `slots`, `name`, `vehiclenumber`, `created_at`, `updated_at`) VALUES
(8, 1, 24, 'اتوبيس مرسيدس', 2512, '2022-08-29 18:45:05', '2022-08-29 18:45:05'),
(9, 2, 12, 'هاي اس تويتا', 25315, '2022-08-29 18:45:30', '2022-08-29 18:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_kinds`
--

CREATE TABLE `vehicle_kinds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_kinds`
--

INSERT INTO `vehicle_kinds` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'اتوبيس', '2022-08-29 13:25:53', '2022-08-29 13:25:53'),
(2, 'هاي اس', '2022-08-29 13:32:45', '2022-08-29 13:32:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slots_vehicle_id_foreign` (`vehicle_id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travels_vehicle_id_foreign` (`vehicle_id`);

--
-- Indexes for table `travelslots`
--
ALTER TABLE `travelslots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelslots_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `travelslots_slots_id_foreign` (`slots_id`),
  ADD KEY `travelslots_travel_id_foreign` (`travel_id`),
  ADD KEY `travelslots_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_vehicle_kind_id_foreign` (`vehicle_kind_id`);

--
-- Indexes for table `vehicle_kinds`
--
ALTER TABLE `vehicle_kinds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicle_kinds_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `travelslots`
--
ALTER TABLE `travelslots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_kinds`
--
ALTER TABLE `vehicle_kinds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `slots`
--
ALTER TABLE `slots`
  ADD CONSTRAINT `slots_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travels`
--
ALTER TABLE `travels`
  ADD CONSTRAINT `travels_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travelslots`
--
ALTER TABLE `travelslots`
  ADD CONSTRAINT `travelslots_slots_id_foreign` FOREIGN KEY (`slots_id`) REFERENCES `slots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travelslots_travel_id_foreign` FOREIGN KEY (`travel_id`) REFERENCES `travels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travelslots_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travelslots_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_vehicle_kind_id_foreign` FOREIGN KEY (`vehicle_kind_id`) REFERENCES `vehicle_kinds` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
