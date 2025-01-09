-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 06:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `administratorID` int(50) NOT NULL,
  `administratorEmail` varchar(255) NOT NULL,
  `administratorPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`administratorID`, `administratorEmail`, `administratorPassword`) VALUES
(1, 'LIM.YING.XIANG@student.mmu.edu.my', '5566'),
(2, 'yxlim040904@gmail.com', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `administrator_otp`
--

CREATE TABLE `administrator_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator_otp`
--

INSERT INTO `administrator_otp` (`id`, `email`, `otp`, `created_at`, `expires_at`, `is_verified`) VALUES
(54, 'LIM.YING.XIANG@student.mmu.edu.my', '797100', '2024-12-01 21:43:44', '2024-12-01 21:58:44', 1),
(55, 'yxlim040904@gmail.com', '799832', '2024-12-01 22:03:39', '2024-12-01 22:18:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agentID` int(50) NOT NULL,
  `agentEmail` varchar(255) NOT NULL,
  `agentPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agentID`, `agentEmail`, `agentPassword`) VALUES
(1, 'LIM.YING.XIANG@student.mmu.edu.my', '1234'),
(2, 'yxlim040904@gmail.com', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `agent_otp`
--

CREATE TABLE `agent_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent_otp`
--

INSERT INTO `agent_otp` (`id`, `email`, `otp`, `created_at`, `expires_at`, `is_verified`) VALUES
(54, 'LIM.YING.XIANG@student.mmu.edu.my', '801895', '2024-12-01 21:36:45', '2024-12-01 21:51:45', 1),
(55, 'yxlim040904@gmail.com', '364350', '2024-12-01 22:23:56', '2024-12-01 22:38:56', 0),
(56, 'yxlim040904@gmail.com', '003766', '2024-12-01 22:23:56', '2024-12-01 22:38:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(50) NOT NULL,
  `customerEmail` varchar(255) NOT NULL,
  `customerPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerEmail`, `customerPassword`) VALUES
(14, 'LIM.YING.XIANG@student.mmu.edu.my', '3ewq'),
(16, 'sinehaanehaa2003@gmail.com', 'Chardtdcg'),
(17, 'yxlim040904@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `customer_otp`
--

CREATE TABLE `customer_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_otp`
--

INSERT INTO `customer_otp` (`id`, `email`, `otp`, `created_at`, `expires_at`, `is_verified`) VALUES
(54, 'LIM.YING.XIANG@student.mmu.edu.my', '412841', '2024-12-01 20:18:39', '2024-12-01 20:33:39', 1),
(55, 'LIM.YING.XIANG@student.mmu.edu.my', '920483', '2024-12-01 20:20:05', '2024-12-01 20:35:05', 1),
(56, 'yxlim040904@gmail.com', '440288', '2024-12-01 20:21:16', '2024-12-01 20:36:16', 1),
(57, 'yxlim040904@gmail.com', '344784', '2024-12-01 20:26:52', '2024-12-01 20:41:52', 1),
(58, 'yxlim040904@gmail.com', '026776', '2024-12-01 20:28:29', '2024-12-01 20:43:29', 1),
(59, 'yxlim040904@gmail.com', '530516', '2024-12-01 20:30:20', '2024-12-01 20:45:20', 1),
(60, 'yxlim040904@gmail.com', '548038', '2024-12-01 20:33:12', '2024-12-01 20:48:12', 1),
(61, 'yxlim040904@gmail.com', '568593', '2024-12-01 20:35:35', '2024-12-01 20:50:35', 1),
(62, 'yxlim040904@gmail.com', '430085', '2024-12-01 20:37:17', '2024-12-01 20:52:17', 1),
(63, 'yxlim040904@gmail.com', '851952', '2024-12-01 20:44:56', '2024-12-01 20:59:56', 1),
(64, 'LIM.YING.XIANG@student.mmu.edu.my', '859073', '2024-12-01 20:49:09', '2024-12-01 21:04:09', 0),
(65, 'LIM.YING.XIANG@student.mmu.edu.my', '114819', '2024-12-01 20:49:41', '2024-12-01 21:04:41', 1),
(66, 'LIM.YING.XIANG@student.mmu.edu.my', '985991', '2024-12-01 20:56:34', '2024-12-01 21:11:34', 1),
(67, 'LIM.YING.XIANG@student.mmu.edu.my', '321200', '2024-12-01 20:58:46', '2024-12-01 21:13:46', 1),
(68, 'LIM.YING.XIANG@student.mmu.edu.my', '240499', '2024-12-01 21:00:34', '2024-12-01 21:15:34', 1),
(69, 'LIM.YING.XIANG@student.mmu.edu.my', '316765', '2024-12-01 21:11:52', '2024-12-01 21:26:52', 1),
(70, 'yxlim040904@gmail.com', '463056', '2024-12-01 21:15:00', '2024-12-01 21:30:00', 1),
(71, 'LIM.YING.XIANG@student.mmu.edu.my', '767538', '2024-12-01 21:15:57', '2024-12-01 21:30:57', 1),
(72, 'yxlim040904@gmail.com', '162264', '2024-12-01 21:21:10', '2024-12-01 21:36:10', 1),
(73, 'sinehaanehaa2003@gmail.com', '065462', '2024-12-02 01:03:36', '2024-12-02 01:18:36', 1),
(74, 'yxlim040904@gmail.com', '879148', '2024-12-02 03:12:14', '2024-12-02 03:27:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `underwriter`
--

CREATE TABLE `underwriter` (
  `underwriterID` int(50) NOT NULL,
  `underwriterEmail` varchar(255) NOT NULL,
  `underwriterPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `underwriter`
--

INSERT INTO `underwriter` (`underwriterID`, `underwriterEmail`, `underwriterPassword`) VALUES
(1, 'LIM.YING.XIANG@student.mmu.edu.my', '7788'),
(2, 'yxlim040904@gmail.com', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `underwriter_otp`
--

CREATE TABLE `underwriter_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `underwriter_otp`
--

INSERT INTO `underwriter_otp` (`id`, `email`, `otp`, `created_at`, `expires_at`, `is_verified`) VALUES
(1, 'LIM.YING.XIANG@student.mmu.edu.my', '960073', '2024-11-29 17:19:35', '2024-11-29 10:34:35', 0),
(2, 'yxlim040904@gmail.com', '609336', '2024-11-29 17:20:27', '2024-11-29 10:35:27', 0),
(3, 'yxlim040904@gmail.com', '067623', '2024-11-29 17:25:41', '2024-11-29 10:40:41', 0),
(4, 'yxlim040904@gmail.com', '429339', '2024-11-29 17:28:34', '2024-11-29 10:43:34', 0),
(5, 'yxlim040904@gmail.com', '432074', '2024-11-29 17:37:19', '2024-11-29 10:52:19', 0),
(6, 'yxlim040904@gmail.com', '991874', '2024-11-29 17:41:32', '2024-11-29 17:56:32', 1),
(7, 'yxlim040904@gmail.com', '989337', '2024-11-29 17:41:57', '2024-11-29 17:56:57', 0),
(8, 'LIM.YING.XIANG@student.mmu.edu.my', '030880', '2024-11-29 17:42:25', '2024-11-29 17:57:25', 1),
(9, 'yxlim040904@gmail.com', '735830', '2024-11-29 17:47:10', '2024-11-29 18:02:10', 1),
(10, 'yxlim040904@gmail.com', '731016', '2024-11-29 17:48:05', '2024-11-29 18:03:05', 0),
(11, 'yxlim040904@gmail.com', '847901', '2024-11-29 17:54:23', '2024-11-29 18:09:23', 0),
(12, 'LIM.YING.XIANG@student.mmu.edu.my', '917714', '2024-11-29 17:57:45', '2024-11-29 18:12:45', 1),
(13, 'yxlim040904@gmail.com', '429601', '2024-11-30 09:45:18', '2024-11-30 10:00:18', 1),
(14, 'LIM.YING.XIANG@student.mmu.edu.my', '895720', '2024-11-30 09:45:53', '2024-11-30 10:00:53', 0),
(15, 'LIM.YING.XIANG@student.mmu.edu.my', '877578', '2024-11-30 09:46:39', '2024-11-30 10:01:39', 0),
(16, 'LIM.YING.XIANG@student.mmu.edu.my', '228664', '2024-11-30 09:47:32', '2024-11-30 10:02:32', 0),
(17, 'LIM.YING.XIANG@student.mmu.edu.my', '221151', '2024-11-30 09:48:52', '2024-11-30 10:03:52', 0),
(18, 'LIM.YING.XIANG@student.mmu.edu.my', '386061', '2024-11-30 09:53:44', '2024-11-30 10:08:44', 0),
(19, 'yxlim040904@gmail.com', '106245', '2024-11-30 09:54:13', '2024-11-30 10:09:13', 0),
(20, 'yingxiangwork@gmail.com', '487039', '2024-11-30 09:55:00', '2024-11-30 10:10:00', 0),
(21, 'LIM.YING.XIANG@student.mmu.edu.my', '138342', '2024-11-30 09:55:46', '2024-11-30 10:10:46', 0),
(22, 'LIM.YING.XIANG@student.mmu.edu.my', '673329', '2024-11-30 10:08:26', '2024-11-30 10:23:26', 0),
(23, 'LIM.YING.XIANG@student.mmu.edu.my', '140484', '2024-11-30 10:10:15', '2024-11-30 03:25:15', 0),
(24, 'LIM.YING.XIANG@student.mmu.edu.my', '543482', '2024-11-30 10:16:42', '2024-11-30 03:31:42', 0),
(25, 'yxlim040904@gmail.com', '682378', '2024-11-30 10:17:35', '2024-11-30 03:32:35', 0),
(26, 'LIM.YING.XIANG@student.mmu.edu.my', '546146', '2024-11-30 10:24:36', '2024-11-30 03:39:36', 0),
(27, 'LIM.YING.XIANG@student.mmu.edu.my', '387010', '2024-11-30 10:27:42', '2024-11-30 10:42:42', 0),
(28, 'yxlim040904@gamil.com', '746024', '2024-11-30 10:28:34', '2024-11-30 10:43:34', 0),
(29, 'LIM.YING.XIANG@student.mmu.edu.my', '197935', '2024-11-30 10:31:06', '2024-11-30 10:46:06', 0),
(30, 'LIM.YING.XIANG@student.mmu.edu.my', '583650', '2024-11-30 10:33:09', '2024-11-30 10:48:09', 0),
(31, 'yxlim040904@gmail.com', '769468', '2024-11-30 10:34:00', '2024-11-30 10:49:00', 0),
(32, 'yxlim040904@gmail.com', '620261', '2024-11-30 10:34:19', '2024-11-30 10:49:19', 1),
(33, 'LIM.YING.XIANG@student.mmu.edu.my', '206280', '2024-12-01 18:12:31', '2024-12-01 18:27:31', 0),
(34, 'LIM.YING.XIANG@student.mmu.edu.my', '879496', '2024-12-01 18:23:10', '2024-12-01 18:38:10', 0),
(35, 'LIM.YING.XIANG@student.mmu.edu.my', '348295', '2024-12-01 18:23:51', '2024-12-01 18:38:51', 0),
(36, 'LIM.YING.XIANG@student.mmu.edu.my', '645096', '2024-12-01 18:25:47', '2024-12-01 18:40:47', 0),
(37, 'LIM.YING.XIANG@student.mmu.edu.my', '842129', '2024-12-01 11:36:32', '2024-12-01 11:51:32', 0),
(38, 'LIM.YING.XIANG@student.mmu.edu.my', '284182', '2024-12-01 11:37:11', '2024-12-01 11:52:11', 0),
(39, 'LIM.YING.XIANG@student.mmu.edu.my', '310229', '2024-12-01 11:40:10', '2024-12-01 11:55:10', 0),
(40, 'LIM.YING.XIANG@student.mmu.edu.my', '502227', '2024-12-01 11:45:31', '2024-12-01 12:00:31', 0),
(41, 'LIM.YING.XIANG@student.mmu.edu.my', '372857', '2024-12-01 11:50:47', '2024-12-01 12:05:47', 0),
(42, 'LIM.YING.XIANG@student.mmu.edu.my', '618571', '2024-12-01 11:52:19', '2024-12-01 12:07:19', 0),
(43, 'LIM.YING.XIANG@student.mmu.edu.my', '303989', '2024-12-01 11:53:40', '2024-12-01 12:08:40', 0),
(44, 'LIM.YING.XIANG@student.mmu.edu.my', '625218', '2024-12-01 11:54:30', '2024-12-01 12:09:30', 0),
(45, 'LIM.YING.XIANG@student.mmu.edu.my', '964455', '2024-12-01 11:56:56', '2024-12-01 12:11:56', 0),
(46, 'LIM.YING.XIANG@student.mmu.edu.my', '256909', '2024-12-01 19:00:35', '2024-12-01 19:15:35', 0),
(47, 'LIM.YING.XIANG@student.mmu.edu.my', '011627', '2024-12-01 19:01:23', '2024-12-01 19:16:23', 0),
(48, 'LIM.YING.XIANG@student.mmu.edu.my', '473372', '2024-12-01 19:03:20', '2024-12-01 19:18:20', 0),
(49, 'LIM.YING.XIANG@student.mmu.edu.my', '864150', '2024-12-01 19:10:16', '2024-12-01 19:25:16', 1),
(50, 'yxlim040904@gmail.com', '960544', '2024-12-01 19:11:03', '2024-12-01 19:26:03', 1),
(51, 'LIM.YING.XIANG@student.mmu.edu.my', '192143', '2024-12-01 19:44:30', '2024-12-01 19:59:30', 1),
(52, 'LIM.YING.XIANG@student.mmu.edu.my', '902227', '2024-12-01 19:44:37', '2024-12-01 19:59:37', 0),
(53, 'yxlim040904@gmail.com', '781669', '2024-12-01 19:47:45', '2024-12-01 20:02:45', 1),
(54, 'LIM.YING.XIANG@student.mmu.edu.my', '098279', '2024-12-01 21:48:20', '2024-12-01 22:03:20', 1),
(55, 'yxlim040904@gmail.com', '917740', '2024-12-01 22:25:04', '2024-12-01 22:40:04', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`administratorID`);

--
-- Indexes for table `administrator_otp`
--
ALTER TABLE `administrator_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agentID`);

--
-- Indexes for table `agent_otp`
--
ALTER TABLE `agent_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `customer_otp`
--
ALTER TABLE `customer_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `underwriter`
--
ALTER TABLE `underwriter`
  ADD PRIMARY KEY (`underwriterID`);

--
-- Indexes for table `underwriter_otp`
--
ALTER TABLE `underwriter_otp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `administratorID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `administrator_otp`
--
ALTER TABLE `administrator_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agent_otp`
--
ALTER TABLE `agent_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_otp`
--
ALTER TABLE `customer_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `underwriter`
--
ALTER TABLE `underwriter`
  MODIFY `underwriterID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `underwriter_otp`
--
ALTER TABLE `underwriter_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
