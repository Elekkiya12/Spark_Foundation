-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 6th 2021
-- Server version: 10.4.21
-- PHP Version:  7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_bank_db`
--
CREATE DATABASE IF NOT EXISTS `tsf_bank_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `tsf_bank_db`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curr_balance` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `curr_balance`) VALUES
(1, 'Kumar', 'kumar@gmail.com', 10000),
(2, 'Dharsha Gupta', ' Dharshagupta@gmail.com',25990 ),
(3, 'RohitSharma', 'rohitsharma@gmail.com',200000 ),
(4, 'shiva Kumar','shiva@gmail.com',40000 ),
(5, 'Dayanithe', 'dayanithe@gmail.com',65000 ),
(6, 'Suganth', 'suganth@gmail.com',60000 ),
(7, 'Harsh Verma', 'harshverma@gmail.com',70000 ),
(8, 'Isla', 'isla@gmail.com',74000 ),
(9, 'Manisha', 'manisharajput@gmail.com',90010 ),
(10, 'Diya Shree', 'diya@gmail.com', 95000);
-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
CREATE TABLE IF NOT EXISTS `transfers` (
  `sno` int(50) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(50) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`sno`, `sender`, `receiver`, `amount`) VALUES
(1, 'Suganth', 'Dayanithe', 4000),
(2, 'Isla', 'Harsh Verma', 1200),
(3, 'Harsh Verma', 'shiva Kumar', 3900),
(4, 'Isla', 'Manisha Rajput', 1500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
