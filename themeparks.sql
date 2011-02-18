-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2011 at 07:38 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `themeparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_info`
--

CREATE TABLE IF NOT EXISTS `general_info` (
  `City` varchar(20) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zipcode` varchar(10) DEFAULT NULL,
  `adult_price` decimal(3,2) DEFAULT NULL,
  `children_price` decimal(3,2) DEFAULT NULL,
  `Phone_Number` varchar(13) DEFAULT NULL,
  `Park_Name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_info`
--

INSERT INTO `general_info` (`City`, `State`, `Zipcode`, `adult_price`, `children_price`, `Phone_Number`, `Park_Name`) VALUES
('Doswell', 'VA', '23047', '9.99', '9.99', '800-876-5338', NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Kings Dominion'),
('Williamsburg', 'VA', '23185', '9.99', '9.99', '800-343-7946', 'Busch Gardens'),
('Sandusky', 'OH', '44870', '9.99', '9.99', '419-627-2350', 'Cedar Point'),
('Orlando', 'FL', '32819', '9.99', '9.99', '407-363-8000', 'Islands of Adventure'),
('Orlando', 'FL', '32819', '9.99', '9.99', '407-363-8000', 'Universal Studios'),
('Santa Claus', 'IN', '47579', '9.99', '9.99', '812-937-4401', 'Holiday World'),
('Mason', 'OH', '45040', '9.99', '9.99', '513-754-5700', 'Kings Island'),
('Jackson', 'NJ', '08527', '9.99', '9.99', '732-928-1821', 'Six Flags Great Adve');

-- --------------------------------------------------------

--
-- Table structure for table `rollercoaster`
--

CREATE TABLE IF NOT EXISTS `rollercoaster` (
  `Name` varchar(30) DEFAULT NULL,
  `Park` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Speed_mph` int(5) DEFAULT NULL,
  `Height_ft` int(4) DEFAULT NULL,
  `Length_min` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rollercoaster`
--

INSERT INTO `rollercoaster` (`Name`, `Park`, `Type`, `Speed_mph`, `Height_ft`, `Length_min`) VALUES
('Intimidator 305', 'Kings Dominion', 'Steel', 90, 305, 3),
('Apollo''s Chariot', 'Busch Gardens', 'Steel', 73, 210, 2),
('Alpengeist', 'Busch Gardens', 'Steel', 67, 195, 3),
('Corkscrew', 'Cedar Point', 'Steel', 48, 85, 2),
('Iron Dragon', 'Cedar Point', 'Steel', 40, 76, 2),
('Blue Streak', 'Cedar Point', 'Wooden', 40, 78, 1),
('Dragon Challenge - Chinese Fir', 'Islands of Adventure', 'Steel', 63, 125, 2),
('Dragon Challenge - Hungrarian ', 'Islands of Adventure', 'Steel', 57, 125, 2),
('The Incredible Hulk', 'Islands of Adventure', 'Steel', 67, 110, 2),
('Revenge of the Mummy', 'Universal Studios', 'Steel', 45, 0, 3),
('Flight of Fear', 'Kings Dominion', 'Steel', 54, 74, 2),
('The Beast', 'Kings Island', 'Wooden', 65, 110, 4),
('The Son of the Beast', 'Kings Island', 'Wooden', 78, 218, 3),
('Kingda Ka', 'Six Flags Great Adve', 'Steel', 128, 456, 1),
('The Voyage', 'Holiday World', 'Wooden', 67, 173, 2),
('The Raven', 'Holiday World', 'Wooden', 50, 110, 1),
('The Legend', 'Holiday World', 'Wooden', 65, 116, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
