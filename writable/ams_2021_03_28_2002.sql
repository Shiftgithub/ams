-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 04:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `bad`
--

CREATE TABLE `bad` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `acc_no` varchar(20) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bad`
--

INSERT INTO `bad` (`id`, `name`, `acc_no`, `branch`) VALUES
(6, 'Kelly Curry', '75', 'Nulla deserunt qui u'),
(7, 'Fiona Sykes', '2', 'Ipsum exercitation d'),
(8, 'Quinn Clarke', '94', 'Qui et nobis adipisi'),
(9, 'Reed Richardson', '63', 'Qui in suscipit ad l'),
(10, 'Jelani Faulkner', '46', 'Veniam ad est eos '),
(11, 'Pearl Britt', '98', 'Adipisci nihil adipi'),
(12, 'Hermione Chaney', '8', 'Rerum cupiditate lab');

-- --------------------------------------------------------

--
-- Table structure for table `client_profile`
--

CREATE TABLE `client_profile` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `software_user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_profile`
--

INSERT INTO `client_profile` (`id`, `name`, `adress`, `email`, `phone`, `nid`, `software_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bishawjit', 'Dhaka', 'bishawjit2021@gmail.com', 1674853492, 2147483647, 0, '2021-03-28 15:57:17', NULL, NULL),
(2, 'Turan', 'Ut saepe et velit re', 'valir@mailinator.com', 1, 63, 0, '2021-03-28 15:57:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_service_charge`
--

CREATE TABLE `client_service_charge` (
  `id` bigint(20) NOT NULL,
  `r_id` bigint(20) NOT NULL,
  `month` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_service_charge`
--

INSERT INTO `client_service_charge` (`id`, `r_id`, `month`, `amount`, `client_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'january', 2300, 1, '2021-03-28 15:58:24', NULL, NULL),
(2, 1, 'january', 5000, 2, '2021-03-28 15:58:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `phone`) VALUES
(6, 'wyhuwety@mailinator.com', '+1 (855) 742-3286'),
(7, 'kyxivymu@mailinator.com', '+1 (621) 779-5869'),
(8, 'digagexax@mailinator.com', '+1 (284) 523-4634'),
(9, 'gykuqatef@mailinator.com', '+1 (272) 444-4004'),
(10, 'mawujuv@mailinator.com', '+1 (413) 418-9839'),
(11, 'difabefyro@mailinator.com', '+1 (851) 422-8433'),
(12, 'labikycugi@mailinator.com', '+1 (985) 883-8289');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` bigint(20) NOT NULL,
  `cv` varchar(300) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `character_certificate` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `percentage` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`id`, `quantity`, `percentage`) VALUES
(1, 10, '10%'),
(2, 15, '25%'),
(3, 20, '40%'),
(4, 24, '50%');

-- --------------------------------------------------------

--
-- Table structure for table `nid`
--

CREATE TABLE `nid` (
  `id` bigint(20) NOT NULL,
  `nid_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nid`
--

INSERT INTO `nid` (`id`, `nid_no`) VALUES
(6, '32'),
(7, '30'),
(8, '6'),
(9, '21'),
(10, '14'),
(11, '78'),
(12, '16');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ref_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `user_id`, `ref_user_id`) VALUES
(1, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sale_promotion`
--

CREATE TABLE `sale_promotion` (
  `id` bigint(20) NOT NULL,
  `t_id` bigint(20) NOT NULL,
  `profit_percentage` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sell_by_marketing_executive`
--

CREATE TABLE `sell_by_marketing_executive` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sell_log`
--

CREATE TABLE `sell_log` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `sell` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `clien_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Marketing Executive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `c_id` bigint(20) NOT NULL,
  `b_id` bigint(20) NOT NULL,
  `f_id` bigint(20) NOT NULL,
  `n_id` bigint(20) NOT NULL,
  `t_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `c_id`, `b_id`, `f_id`, `n_id`, `t_id`) VALUES
(1, 'Brenden Ashley', 9, 9, 0, 9, 3),
(2, 'Lionel Green', 10, 10, 0, 10, 2),
(3, 'Kelsie Donaldson', 11, 11, 0, 11, 3),
(4, 'Yen Thompson', 12, 12, 0, 12, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bad`
--
ALTER TABLE `bad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_profile`
--
ALTER TABLE `client_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_service_charge`
--
ALTER TABLE `client_service_charge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nid`
--
ALTER TABLE `nid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_promotion`
--
ALTER TABLE `sale_promotion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `sell_by_marketing_executive`
--
ALTER TABLE `sell_by_marketing_executive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_log`
--
ALTER TABLE `sell_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clien_id` (`clien_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
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
-- AUTO_INCREMENT for table `bad`
--
ALTER TABLE `bad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client_profile`
--
ALTER TABLE `client_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_service_charge`
--
ALTER TABLE `client_service_charge`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nid`
--
ALTER TABLE `nid`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_promotion`
--
ALTER TABLE `sale_promotion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_by_marketing_executive`
--
ALTER TABLE `sell_by_marketing_executive`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_log`
--
ALTER TABLE `sell_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_service_charge`
--


--
-- Constraints for table `reference`
--
ALTER TABLE `reference`
  ADD CONSTRAINT `reference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_promotion`
--
ALTER TABLE `sale_promotion`
  ADD CONSTRAINT `sale_promotion_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell_log`
--
ALTER TABLE `sell_log`
  ADD CONSTRAINT `sell_log_ibfk_1` FOREIGN KEY (`clien_id`) REFERENCES `client_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sell_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
