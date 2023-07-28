-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 02:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tgms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '2 Wheeler', 500, 1, 0, '2022-04-28 15:28:30', '2023-07-28 08:07:20'),
(2, '4 Wheeler', 1000, 1, 0, '2022-04-28 15:28:39', '2023-07-28 08:07:32'),
(3, '6 Wheeler', 1500, 1, 0, '2022-04-28 15:28:43', '2023-07-28 08:07:41'),
(4, '10 Wheeler', 2000, 1, 0, '2022-04-28 15:28:49', '2023-07-28 08:07:50'),
(5, '12 Wheeler', 3000, 1, 0, '2022-04-28 15:29:21', '2023-07-28 08:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `recipient_list`
--

CREATE TABLE `recipient_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `vehicle_name` text NOT NULL,
  `vehicle_registration` text NOT NULL,
  `owner` text NOT NULL,
  `toll_id` int(30) NOT NULL,
  `cost` float(12,2) NOT NULL DEFAULT 0.00,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipient_list`
--

INSERT INTO `recipient_list` (`id`, `user_id`, `category_id`, `vehicle_name`, `vehicle_registration`, `owner`, `toll_id`, `cost`, `date_created`, `date_updated`) VALUES
(6, 1, 2, 'Montero', 'GBN-0623', 'Mark Cooper', 1, 150.00, '2022-04-28 16:32:02', '2022-04-28 16:32:02'),
(7, 1, 3, 'Wing Van', 'CDM-0715', 'George Wilson', 2, 200.00, '2022-04-28 16:58:49', '2022-04-28 16:58:49'),
(8, 1, 3, 'Wing Van', 'XYZ-1014', 'George Wilson', 2, 480.00, '2022-04-29 11:03:42', '2022-04-29 11:03:42'),
(9, 2, 4, 'Wing Van', 'QWE-1234', 'Sample', 1, 135.00, '2022-04-29 11:08:59', '2022-04-29 11:08:59'),
(10, 1, 2, 'Mercedes', 'LSR-42232', 'User Usman', 2, 1000.00, '2023-07-28 10:33:39', '2023-07-28 10:33:39'),
(11, 2, 4, 'Camry', 'Axus 123', 'Daniel Mins', 1, 2000.00, '2023-07-28 11:10:35', '2023-07-28 11:10:35'),
(12, 4, 2, 'Linda Hahn', 'In architecto qui at', 'Veda Kaufman', 4, 1000.00, '2023-07-28 11:14:19', '2023-07-28 11:14:19'),
(13, 1, 5, 'Jeep', 'Da-234', 'Dela Don', 3, 3000.00, '2023-07-28 13:26:33', '2023-07-28 13:26:33'),
(14, 4, 4, 'Rigel Mcneil', 'Dolor magni delectus', 'Bianca Sandoval', 4, 2000.00, '2023-07-28 13:27:30', '2023-07-28 13:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Toll Gate Management System'),
(6, 'short_name', 'TGMS - PHP'),
(11, 'logo', 'uploads/logo.png?v=1651131091'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1651131093');

-- --------------------------------------------------------

--
-- Table structure for table `toll_list`
--

CREATE TABLE `toll_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toll_list`
--

INSERT INTO `toll_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'First Gate ', 1, 0, '2022-04-28 15:48:39', '2023-07-28 08:08:17'),
(2, 'Second Gate', 1, 0, '2022-04-28 15:48:43', '2023-07-28 08:08:25'),
(3, 'Odenigwe Gate', 1, 0, '2022-04-28 15:49:19', '2023-07-28 08:08:38'),
(4, 'Hilltop Gate', 1, 0, '2022-04-28 15:49:28', '2023-07-28 08:08:50'),
(5, 'test', 1, 1, '2022-04-28 15:49:46', '2022-04-28 15:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `toll_id` int(30) DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `toll_id`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, NULL, '2021-01-20 14:02:37', '2022-04-13 15:24:24'),
(2, 'Claire', 'C', 'Blake', 'cblake', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/avatars/2.png?v=1651131001', NULL, 2, 1, '2022-04-28 15:30:01', '2023-07-28 10:48:50'),
(4, 'Kameko', 'Glenna Grimes', 'Hansen', 'dennis', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 2, 4, '2023-07-28 11:13:45', '2023-07-28 11:13:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipient_list`
--
ALTER TABLE `recipient_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `toll_gate_id` (`toll_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toll_list`
--
ALTER TABLE `toll_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toll_id` (`toll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recipient_list`
--
ALTER TABLE `recipient_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `toll_list`
--
ALTER TABLE `toll_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipient_list`
--
ALTER TABLE `recipient_list`
  ADD CONSTRAINT `category_id_fk_rl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `toll_id_fk_rl` FOREIGN KEY (`toll_id`) REFERENCES `toll_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk_rl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `toll_id_fk_ul` FOREIGN KEY (`toll_id`) REFERENCES `toll_list` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
