-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 28, 2018 at 03:04 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistik`
--
DROP DATABASE IF EXISTS `logistik`;
CREATE DATABASE IF NOT EXISTS `logistik` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `logistik`;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `order_id` varchar(64) NOT NULL,
	`carrier` char(64) NOT NULL,
  `tracking_id` char(64) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(64) NOT NULL,
	PRIMARY KEY(`tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `shipping` (
	`order_id`, `carrier`, `tracking_id`, `last_updated`, `status`
    )
    VALUES 
    ('12345676', 'FEDUP', 'EI0016565778','2019-03-07 08:51:14','Shipped from warehouse'),
    ('12345677', 'FEDUP', 'EI0032455472','2019-03-07 08:54:20','Shipped from warehouse'),
    ('12345677', 'UPZ', '1Z3046985069', '2019-03-07 11:17:49','In Transit')
    ;

COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
