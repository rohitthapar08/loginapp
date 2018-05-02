-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 08:09 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rohit@gmail.com', '$2y$10$VALEYvOYpu919aHvj6APM.rh6PSMVH4uqAShY4jAvZ.ROUzcX2Mpi', '2018-05-02 00:08:07'),
('raj@gmail.com', '$2y$10$G9zigVbnTB.uzOAjKCsrTuiE.k0TcZ4OFIu9xONtLjRUPGq.13W4q', '2018-05-02 00:11:43'),
('rohan@gmail.com', '$2y$10$l9uVgOgPPue2hoGAZxELxOFiiiPit1/tDdibROkkw0I4a4EEIGHMW', '2018-05-02 00:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'raj', 'raj@gmail.com', '$2y$10$wXvTSbIJwInrUUXFX/BKZ.Yj7jppD.nZKSXfHrO1BLRA/b7IZvL32', 'vpAo8cR10bgo9IBwRgKhczDldOax8tJkpnoH7Tdbu8pNAlyZckOi5ApLzItx', '2018-05-01 06:01:56', '2018-05-01 06:01:56'),
(2, 'rohit', 'rohit@gmail.com', '$2y$10$UvR6UKCTwABNdjx2TEhwI.4nx3ph6sUlFuELMlmJq5USEKeQkem5u', 'q2TCXVWeAqtWzhGsVExMGGSBece8cjymOpsMXwb0cpybie0qlkgmwFe4DrIG', '2018-05-01 23:51:49', '2018-05-01 23:51:49'),
(3, 'rohan', 'rohan@gmail.com', '$2y$10$VcghXDV9vdziVh72woGlYeXSQUrXbcvZZ4FJneJWiQdrdRpZfwHyu', 'pvWDaokOTsumVgXG6YAsM2zuLowv0o525LfWexCFDntMxyUBbw3u9hUg5iBm', '2018-05-02 00:14:35', '2018-05-02 00:14:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
