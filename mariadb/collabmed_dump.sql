-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2019 at 03:18 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collabmed`
--

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int(11) NOT NULL,
  `disease` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptoms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `patient_name`, `patient_id`, `disease`, `symptoms`, `treatment`, `seen`, `doctor`, `department`, `created_at`, `updated_at`) VALUES
(1, 'vgoodwin', 3, 'beatae', 'Rerum maxime pariatur placeat eum rerum eos. In sequi illo sed. Et accusamus optio perspiciatis molestiae. Eos aliquam sed et voluptas.', 'Doloribus aut numquam eos possimus in. Quis ducimus maiores ut. Consequatur deserunt officia quis aut omnis iste. Dolorem expedita accusantium ut illum fugiat.', '1', 'murray61', 'Treatment', '2019-08-30 10:10:06', '2019-08-30 10:10:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
