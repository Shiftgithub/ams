-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 10:35 AM
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
-- Table structure for table `bank_acc_detalis`
--

CREATE TABLE `bank_acc_detalis` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `acc_no` varchar(20) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_acc_detalis`
--

INSERT INTO `bank_acc_detalis` (`id`, `name`, `acc_no`, `branch`) VALUES
(1, 'Bangladesh Bank', '1234567889', 'Keraniganj'),
(2, 'Asia Bank', '8837628570923859', 'Dhaka'),
(3, 'Tatiana Roman', '27', 'Ut doloribus recusan'),
(4, 'Rowan Vaughan', '89', 'Eos voluptas in eu ');

-- --------------------------------------------------------

--
-- Table structure for table `client_profile`
--

CREATE TABLE `client_profile` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `software_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_profile`
--

INSERT INTO `client_profile` (`id`, `name`, `adress`, `email`, `phone`, `nid`, `software_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Althea Macdonald', 'Althea Macdonald', 'doruqatyr@mailinator.com', 1, 56, 0, '2021-03-25 07:45:07', NULL, NULL),
(2, 'Althea Macdonald', 'Althea Macdonald', 'doruqatyr@mailinator.com', 1, 56, 0, '2021-03-25 07:45:18', NULL, NULL),
(3, 'Tatiana Franco', 'Tatiana Franco', 'zakolo@mailinator.com', 1, 48, 0, '2021-03-25 07:45:42', NULL, NULL),
(4, 'Colleen Oliver', 'Colleen Oliver', 'hyhywo@mailinator.com', 1, 60, 0, '2021-03-25 07:47:10', NULL, NULL),
(5, 'Quinn Shelton', 'Quinn Shelton', 'relazypa@mailinator.com', 1, 74, 0, '2021-03-25 08:22:08', NULL, NULL),
(6, 'Lacy Whitfield', 'Id nisi eveniet qui', 'lijusojyz@mailinator.com', 1, 94, 0, '2021-03-28 07:46:25', NULL, NULL),
(7, 'Hamish Turner', 'Pariatur Modi porro', 'hyrim@mailinator.com', 1, 5, 0, '2021-03-28 07:46:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_service_charge`
--

CREATE TABLE `client_service_charge` (
  `id` int(20) NOT NULL,
  `r_id` int(20) NOT NULL,
  `month` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `client_id` int(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_service_charge`
--

INSERT INTO `client_service_charge` (`id`, `r_id`, `month`, `amount`, `client_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '5', 10000, 2, '2021-03-28 08:18:40', NULL, NULL),
(2, 3, '1', 2000, 3, '2021-03-28 08:20:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `phone`) VALUES
(1, 'subratamondol@gmail.com', '01745989031'),
(2, 'mamunmiaturan@gmail.com', '01965572363'),
(3, 'hilaha@mailinator.com', '+1 (739) 806-5278'),
(4, 'subydup@mailinator.com', '+1 (823) 545-1335');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `cv` varchar(300) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `character_certificate` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `id` int(20) NOT NULL,
  `quantity` int(11) NOT NULL,
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
  `id` int(11) NOT NULL,
  `nid_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nid`
--

INSERT INTO `nid` (`id`, `nid_no`) VALUES
(1, '213435467687645'),
(2, '123457686976542'),
(3, '87'),
(4, '4');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `user_id`, `ref_user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sale_promotion`
--

CREATE TABLE `sale_promotion` (
  `id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `profit_percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sell_by_marketing_executive`
--

CREATE TABLE `sell_by_marketing_executive` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sell_log`
--

CREATE TABLE `sell_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `softwere_id` int(11) NOT NULL,
  `sell` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell_log`
--

INSERT INTO `sell_log` (`id`, `user_id`, `softwere_id`, `sell`, `amount`, `client_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 2, 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(2, 3, 3, 139, 93, 2, '2021-03-28 09:44:44', NULL, NULL),
(3, 4, 3, 508, 13, 6, '2021-03-28 09:47:46', NULL, NULL),
(4, 4, 3, 80, 80, 5, '2021-03-28 09:47:58', NULL, NULL),
(5, 4, 1, 689, 52, 2, '2021-03-28 09:56:25', NULL, NULL),
(6, 3, 0, 914, 84, 1, '2021-03-28 09:57:14', NULL, NULL),
(7, 3, 0, 197, 19, 7, '2021-03-28 09:57:41', NULL, NULL),
(8, 4, 1, 732, 43, 5, '2021-03-28 10:01:39', NULL, NULL),
(9, 3, 1, 72, 80, 3, '2021-03-28 10:01:52', NULL, NULL),
(10, 4, 1, 732, 43, 5, '2021-03-28 10:03:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `softwere`
--

CREATE TABLE `softwere` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `softwere`
--

INSERT INTO `softwere` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'MCA with bank', 'With bank', '0000-00-00 00:00:00'),
(2, 'MCA without bank', 'WithOut bank', '0000-00-00 00:00:00'),
(3, 'Inventory', 'Accounting', '0000-00-00 00:00:00'),
(4, 'Billing', 'Accounting', '0000-00-00 00:00:00'),
(5, 'CMS', 'Medical', '0000-00-00 00:00:00'),
(6, 'prescription', 'medical', '2021-03-28 10:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
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
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `n_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `c_id`, `b_id`, `f_id`, `n_id`, `r_id`, `t_id`) VALUES
(1, 'Subrata Mondol', 1, 1, 1, 1, 1, 1),
(2, 'Mamun Mia Turan', 2, 2, 1, 2, 1, 2),
(3, 'Bishawjit', 3, 3, 1, 3, 2, 2),
(4, 'Sajib', 4, 4, 1, 4, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_acc_detalis`
--
ALTER TABLE `bank_acc_detalis`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softwere`
--
ALTER TABLE `softwere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_ibfk_1` (`t_id`),
  ADD KEY `b_id` (`b_id`),
  ADD KEY `n_id` (`n_id`),
  ADD KEY `c_id` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_acc_detalis`
--
ALTER TABLE `bank_acc_detalis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client_profile`
--
ALTER TABLE `client_profile`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `client_service_charge`
--
ALTER TABLE `client_service_charge`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nid`
--
ALTER TABLE `nid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sale_promotion`
--
ALTER TABLE `sale_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_by_marketing_executive`
--
ALTER TABLE `sell_by_marketing_executive`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_log`
--
ALTER TABLE `sell_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `softwere`
--
ALTER TABLE `softwere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_service_charge`
--
ALTER TABLE `client_service_charge`
  ADD CONSTRAINT `client_service_charge_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_promotion`
--
ALTER TABLE `sale_promotion`
  ADD CONSTRAINT `sale_promotion_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `bank_acc_detalis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`n_id`) REFERENCES `nid` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`c_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
