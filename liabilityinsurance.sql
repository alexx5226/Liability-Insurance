-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2016 at 08:41 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `liabilityinsurance`
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `liabilityinsurance`
--

INSERT INTO `liabilityinsurance` (`id`, `cubage`, `year`, `price`) VALUES
(1, 1000, 1983, 317.53),
(2, 1100, 2016, 335.89),
(3, 1500, 2010, 331.81),
(4, 2000, 2003, 396.07),
(5, 2500, 2007, 557.23),
(6, 3300, 2002, 620.47);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
