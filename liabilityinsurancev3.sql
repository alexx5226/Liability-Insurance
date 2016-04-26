-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2016 at 10:27 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `liabilityinsurancev3`
--

-- --------------------------------------------------------

--
-- Table structure for table `liabilityinsurance`
--

CREATE TABLE IF NOT EXISTS `liabilityinsurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cubage` int(11) NOT NULL DEFAULT '0',
  `year` int(4) NOT NULL DEFAULT '0',
  `price` float(7,2) NOT NULL DEFAULT '0.00',
  `Date_Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cubyear` (`cubage`,`year`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `liabilityinsurance`
--

INSERT INTO `liabilityinsurance` (`id`, `cubage`, `year`, `price`, `Date_Time`) VALUES
(1, 1000, 1983, 317.53, '2016-01-01 00:00:00'),
(2, 1100, 2016, 335.89, '2016-02-04 00:00:00'),
(3, 1500, 2010, 331.81, '2016-03-11 00:00:00'),
(4, 2000, 2003, 396.07, '2016-03-24 00:00:00'),
(5, 2500, 2007, 557.23, '2016-04-09 00:00:00'),
(6, 3300, 2002, 620.47, '2016-04-19 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
