-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 04:25 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `ms`
--

CREATE TABLE `ms` (
  `sno` int(11) NOT NULL,
  `roomname` text NOT NULL,
  `msg` text NOT NULL,
  `ip` text NOT NULL,
  `stime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms`
--

INSERT INTO `ms` (`sno`, `roomname`, `msg`, `ip`, `stime`) VALUES
(1, 'megh1612', 'hello world ', '132', '0000-00-00 00:00:00'),
(2, 'megh123', 'hellow', '1234', '2021-04-15 16:03:07'),
(3, 'meghansh1612', '', '', '2021-04-15 16:05:05'),
(4, 'meghansh1612', '', '', '2021-04-15 16:05:30'),
(5, 'meghansh1612', '', '', '2021-04-15 16:07:06'),
(6, 'meghansh1612', '', '', '2021-04-15 16:07:36'),
(7, 'meghansh1612', '', '', '2021-04-15 16:08:35'),
(8, 'meghansh1612', '', '', '2021-04-15 16:08:37'),
(9, 'meghansh1612', '', '', '2021-04-15 16:08:38'),
(10, 'meghansh1612', '', '::1', '2021-04-15 16:20:59'),
(11, 'meghansh1612', '', '::1', '2021-04-15 16:27:12'),
(12, 'meghansh1612', '', '::1', '2021-04-15 16:29:45'),
(13, 'meghansh1612', '', '::1', '2021-04-15 16:30:26'),
(14, 'meghansh1612', '', '::1', '2021-04-15 16:30:36'),
(15, 'meghansh1612', '', '::1', '2021-04-15 16:31:28'),
(16, 'meghansh1612', 'helllo world', '::1', '2021-04-15 20:16:35'),
(17, 'meghansh1612', 'hello world 252', '::1', '2021-04-15 20:19:14'),
(18, 'meghansh1612', 'testing123', '::1', '2021-04-15 20:21:23'),
(19, 'meghansh1612', 'testing101', '::1', '2021-04-15 20:22:54'),
(20, 'meghansh1612', 'hello', '::1', '2021-04-15 20:50:13'),
(21, 'meghansh1612', 'hellp', '::1', '2021-04-15 20:55:18'),
(22, 'meghansh1612', 'hello', '::1', '2021-04-15 21:05:55'),
(23, 'meghansh1612', 'hello', '::1', '2021-04-15 21:07:38'),
(24, 'm1213', 'hellp', '::1', '2021-04-15 21:10:44'),
(25, 'm1213', 'wlwefwff', '::1', '2021-04-15 21:12:19'),
(26, 'm1213', 'hello ', '::1', '2021-04-15 21:32:25'),
(27, 'm1213', 'hwllll', '::1', '2021-04-15 21:54:30'),
(28, 'm1213', 'hello ', '::1', '2021-04-15 22:10:55'),
(29, 'm1213', 'hi my name is meghansh ', '::1', '2021-04-15 22:11:10'),
(30, 'm1213', 'hi my name 2132', '::1', '2021-04-15 22:11:52'),
(31, 'm1213', '1234566788', '::1', '2021-04-15 22:12:33'),
(32, 'm1213', 'gggggggg', '::1', '2021-04-15 22:12:48'),
(33, 'ppp1234', 'jjlhlhlkhlkhlkhl', '::1', '2021-04-15 22:16:00'),
(34, 'pop12', 'helllo ', '::1', '2021-04-17 00:03:20'),
(35, 'pop12', 'hi ', '::1', '2021-04-17 00:03:38'),
(36, 'pop12', 'ypes', '::1', '2021-04-17 00:03:51'),
(37, 'rangeeli20', 'hello', '::1', '2021-04-17 11:53:39'),
(38, 'rangeeli20', 'rangeeli 2.0', '::1', '2021-04-17 11:53:47'),
(39, 'rangeeli20', 'wjbwouowofw', '::1', '2021-04-17 11:54:10'),
(40, 'rangeeli20', 'kmwkkmpmppm', '::1', '2021-04-17 11:54:16'),
(41, 'rangeeli21', 'wfwefl', '::1', '2021-04-17 11:55:40'),
(42, 'bsc21', 'cwdownoiinowin', '::1', '2021-04-17 11:57:45'),
(43, 'bsc21', 'kcbkbwbf', '::1', '2021-04-17 11:58:05'),
(44, 'bsc21', 'cwn wjjwnf', '::1', '2021-04-17 11:58:09'),
(45, 'bsc21', 'grjghkjh', '::1', '2021-04-17 12:01:49'),
(46, 'puspakisetting1', 'hello brother', '::1', '2021-04-29 00:40:23'),
(47, 'puspakisetting1', 'hello buddy', '::1', '2021-04-29 00:40:47'),
(48, 'puspakisetting1', 'ki haal chaal ', '::1', '2021-04-29 00:40:54'),
(49, 'puspakisetting1', 'wwfljnflfnflwf', '::1', '2021-04-29 00:41:45'),
(50, 'puspakisetting1', 'fwdkfjfwljfn', '::1', '2021-04-29 00:41:46'),
(51, 'puspakisetting1', 'mmlfknff', '::1', '2021-04-29 00:41:47'),
(52, 'puspakisetting1', 'kljfnefef', '::1', '2021-04-29 00:41:48'),
(53, 'puspakisetting1', 'ejfln', '::1', '2021-04-29 00:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `s.no` int(11) NOT NULL,
  `roomname` text NOT NULL,
  `stime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`s.no`, `roomname`, `stime`) VALUES
(1, 'meghansh123', '2021-04-14 20:56:08'),
(10, 'meghansh1612', '2021-04-14 22:54:23'),
(11, 'm1213', '2021-04-15 21:10:28'),
(12, 'ppp1234', '2021-04-15 22:15:47'),
(13, 'Genral1', '2021-04-17 00:00:44'),
(14, 'megh1612', '2021-04-17 00:02:01'),
(15, 'pop12', '2021-04-17 00:03:13'),
(16, 'rangeeli20', '2021-04-17 11:52:53'),
(17, 'bsc21', '2021-04-17 11:56:05'),
(18, 'puspakisetting1', '2021-04-29 00:40:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ms`
--
ALTER TABLE `ms`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`s.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ms`
--
ALTER TABLE `ms`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
