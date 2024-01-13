-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 12, 2024 at 03:09 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tricipay`
--

-- --------------------------------------------------------

--
-- Table structure for table `ridetbl`
--

DROP TABLE IF EXISTS `ridetbl`;
CREATE TABLE IF NOT EXISTS `ridetbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `route` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `driver` int NOT NULL,
  `passenger` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ridetbl`
--

INSERT INTO `ridetbl` (`id`, `route`, `date`, `driver`, `passenger`, `status`) VALUES
(20, 1, '2023-05-15 23:21:30', 3, 3, ''),
(22, 1, '2024-06-06 14:25:42', 2, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `routestbl`
--

DROP TABLE IF EXISTS `routestbl`;
CREATE TABLE IF NOT EXISTS `routestbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `dest` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `map` blob,
  `fare` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routestbl`
--

INSERT INTO `routestbl` (`id`, `start`, `dest`, `map`, `fare`) VALUES
(1, 'brgy. malusak', 'tanza', NULL, 25),
(2, 'brgy. malusak', 'tampus', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `salestbl`
--

DROP TABLE IF EXISTS `salestbl`;
CREATE TABLE IF NOT EXISTS `salestbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` int NOT NULL,
  `route` int NOT NULL,
  `driver_id` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `driver_income` int NOT NULL,
  `ride_id` int DEFAULT NULL,
  `passenger` int NOT NULL,
  `ref` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salestbl`
--

INSERT INTO `salestbl` (`id`, `total`, `route`, `driver_id`, `driver_income`, `ride_id`, `passenger`, `ref`, `Date`) VALUES
(2, 25, 2, '1', 24, NULL, 0, '1702824978780', '2023-12-17 22:56:18'),
(3, 25, 1, '2', 24, 22, 1, '1704714768026', '2024-01-08 19:52:48'),
(4, 25, 1, '3', 24, 20, 1, '1704716203162', '2024-01-08 20:16:43'),
(5, 25, 1, '3', 24, 20, 1, '1704716227744', '2024-01-08 20:17:07'),
(6, 25, 1, '2', 24, 22, 4, '1704716239781', '2024-01-08 20:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
CREATE TABLE IF NOT EXISTS `usertbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `route` int DEFAULT NULL,
  `pic` blob,
  `fullname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`id`, `role`, `username`, `password`, `route`, `pic`, `fullname`) VALUES
(1, 'admin', 'admin', 'admin321', NULL, NULL, 'admin'),
(2, 'driver', 'karding', 'karding321', 1, NULL, 'Karding Manalo'),
(3, 'driver', 'pedro', 'pedro321', 1, NULL, 'Pedro Reyes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
