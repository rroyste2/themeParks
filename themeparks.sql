-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2011 at 03:32 PM
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
-- Table structure for table `familyrides`
--

CREATE TABLE IF NOT EXISTS `familyrides` (
  `family_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) DEFAULT NULL,
  `Park` varchar(20) DEFAULT NULL,
  `Length_min` int(3) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`family_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `familyrides`
--

INSERT INTO `familyrides` (`family_id`, `Name`, `Park`, `Length_min`, `Type`) VALUES
(1, 'Dumbo the Flying Ele', 'Disney World', 2, 'Spinning'),
(2, 'Mad Tea Party', 'Disney World', 2, 'Spinning'),
(3, 'Space Mountain', 'Disney World', 3, 'Thrill Ride'),
(4, 'Astro Orbiter', 'Disney World', 2, 'Spinning'),
(5, 'Big Thunder Mountain RailRoad', 'Disney World', 3, 'Thrill Ride'),
(6, 'HallowSwings', 'Holiday World', 2, 'Swings'),
(7, 'Gobbler Getaway', 'Holiday World', 3, 'Interactive'),
(8, 'Scooby Doo and the Haunted Mansion', 'Kings Dominion', 5, 'Interactive'),
(9, 'Avalanche', 'Kings Dominion', 2, 'Rollercoaster'),
(10, 'Ghoster Coaster', 'Kings Dominion', 1, 'Rollercoaster'),
(11, 'The Cat in the Hat', 'Islands of Adventure', 5, 'Interactive'),
(12, 'The Amazing Adventures of Spider Man', 'Islands of Adventure', 7, '3D'),
(13, 'Grover''s Alpine Express', 'Busch Gardens', 2, 'Rollercoaster'),
(14, 'Dry Gulch Railroad', 'Hershey Park', 6, 'Thrill Ride');

-- --------------------------------------------------------

--
-- Table structure for table `general_info`
--

CREATE TABLE IF NOT EXISTS `general_info` (
  `park_id` int(11) NOT NULL AUTO_INCREMENT,
  `City` varchar(20) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zipcode` varchar(10) DEFAULT NULL,
  `adult_price` decimal(5,2) DEFAULT NULL,
  `children_price` decimal(5,2) DEFAULT NULL,
  `Phone_Number` varchar(13) DEFAULT NULL,
  `Park_Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `general_info`
--

INSERT INTO `general_info` (`park_id`, `City`, `State`, `Zipcode`, `adult_price`, `children_price`, `Phone_Number`, `Park_Name`) VALUES
(1, 'Hershey', 'PA', '17033', '53.95', '32.95', '717-534-3900', 'Hershey Park'),
(2, 'Williamsburg', 'VA', '23185', '63.99', '53.99', '800-343-7946', 'Busch Gardens'),
(3, 'Sandusky', 'OH', '44870', '46.99', '21.00', '419-627-2350', 'Cedar Point'),
(4, 'Orlando', 'FL', '32819', '82.00', '74.00', '407-363-8000', 'Islands of Adventure'),
(5, 'Orlando', 'FL', '32819', '82.00', '74.00', '407-363-8000', 'Universal Studios'),
(6, 'Santa Claus', 'IN', '47579', '42.95', '32.95', '812-937-4401', 'Holiday World'),
(7, 'Mason', 'OH', '45040', '51.99', '51.99', '513-754-5700', 'Kings Island'),
(8, 'Jackson', 'NJ', '08527', '59.99', '34.99', '732-928-1821', 'Six Flags Great Adve'),
(9, 'Orlando', 'FL', '32830', '82.00', '74.00', '407-939-6244', 'Disney World'),
(10, 'Doswell', 'VA', '23047', '42.99', '34.99', '804-876-5000', 'Kings Dominion'),
(11, 'Upper Marlboro', 'MD', '20721', '49.99', '34.99', '301-249-1500', 'Six Flags America');

-- --------------------------------------------------------

--
-- Table structure for table `rollercoaster`
--

CREATE TABLE IF NOT EXISTS `rollercoaster` (
  `coaster_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Park` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Speed_mph` int(5) DEFAULT NULL,
  `Height_ft` int(4) DEFAULT NULL,
  `Length_min` int(3) DEFAULT NULL,
  PRIMARY KEY (`coaster_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `rollercoaster`
--

INSERT INTO `rollercoaster` (`coaster_id`, `Name`, `Park`, `Type`, `Speed_mph`, `Height_ft`, `Length_min`) VALUES
(1, 'Intimidator 305', 'Kings Dominion', 'Steel', 90, 305, 3),
(2, 'Apollo''s Chariot', 'Busch Gardens', 'Steel', 73, 210, 2),
(3, 'Alpengeist', 'Busch Gardens', 'Steel', 67, 195, 3),
(4, 'Corkscrew', 'Cedar Point', 'Steel', 48, 85, 2),
(5, 'Iron Dragon', 'Cedar Point', 'Steel', 40, 76, 2),
(6, 'Blue Streak', 'Cedar Point', 'Wooden', 40, 78, 1),
(7, 'Dragon Challenge - Chinese Fir', 'Islands of Adventure', 'Steel', 63, 125, 2),
(8, 'Dragon Challenge - Hungrarian ', 'Islands of Adventure', 'Steel', 57, 125, 2),
(9, 'The Incredible Hulk', 'Islands of Adventure', 'Steel', 67, 110, 2),
(10, 'Revenge of the Mummy', 'Universal Studios', 'Steel', 45, 0, 3),
(11, 'Flight of Fear', 'Kings Dominion', 'Steel', 54, 74, 2),
(12, 'The Beast', 'Kings Island', 'Wooden', 65, 110, 4),
(13, 'The Son of the Beast', 'Kings Island', 'Wooden', 78, 218, 3),
(14, 'Kingda Ka', 'Six Flags Great Adve', 'Steel', 128, 456, 1),
(15, 'The Voyage', 'Holiday World', 'Wooden', 67, 173, 2),
(16, 'The Raven', 'Holiday World', 'Wooden', 50, 110, 1),
(17, 'The Legend', 'Holiday World', 'Wooden', 65, 116, 2),
(18, 'Comet', 'Hershey Park', 'Wooden', 50, 96, 1),
(19, 'Fahrenheit', 'Hershey Park', 'Steel', 58, 121, 2),
(20, 'Lightning Racer', 'Hershey Park', 'Steel', 50, 90, 1),
(21, 'Sooperdooperlooper', 'Hershey Park', 'Steel', 45, 57, 1),
(22, 'Volcano', 'Kings Dominion', 'Steel', 70, 155, 2),
(23, 'Drop Zone', 'Kings Dominion', 'Drop Tower', 72, 272, 2),
(24, 'Anaconda', 'Kings Dominion', 'Steel', 50, 128, 2);

-- --------------------------------------------------------

--
-- Table structure for table `waterrides`
--

CREATE TABLE IF NOT EXISTS `waterrides` (
  `water_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Park` varchar(20) DEFAULT NULL,
  `Length_min` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`water_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `waterrides`
--

INSERT INTO `waterrides` (`water_id`, `Name`, `Park`, `Length_min`) VALUES
(1, 'Shenandoah Log Flume', 'Kings Dominion', '3.40'),
(2, 'Escape from Pompeii', 'Busch Gardens', '2.10'),
(3, 'Thunder Canyon', 'Cedar Point', '2.30'),
(4, 'Penguin''s Blizzard R', 'Six Flags America', '2.41'),
(5, 'Congo Rapids', 'Six Flags Great Adve', '4.00'),
(6, 'Jurassic Park River ', 'Islands of Adventure', '5.50'),
(7, 'White Water Canyon', 'Kings Island', '5.20'),
(8, 'Congo Falls', 'Kings Island', '3.10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
