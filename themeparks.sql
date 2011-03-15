-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2011 at 02:37 PM
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
  `url` blob,
  `about` blob,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `general_info`
--

INSERT INTO `general_info` (`park_id`, `City`, `State`, `Zipcode`, `adult_price`, `children_price`, `Phone_Number`, `Park_Name`, `url`, `about`) VALUES
(1, 'Hershey', 'PA', '17033', '53.95', '32.95', '717-534-3900', 'Hershey Park', 0x7777772e686572736865797061726b2e636f6d, 0x48657273686579205061726b206973206c6f636174656420696e20486572736865792c2050656e6e73796c76616e6961206e6561722074686520486572736865792043686f636f6c61746520466163746f72792e20546865207061726b20776173206f70656e65642061732061206c65697375726520666f7220656d706c6f796565732c2062757420697420776173207468656e206d616465207075626c69632e204974206973206d616465207570206f66206e696e65207468656d656420617265617320616e6420696e636c75646573206d6f7265207468656e20363020726964657320616e642061747472616374696f6e732c20696e636c7564696e6720546865204b697373696e6720546f7765722e),
(2, 'Williamsburg', 'VA', '23185', '63.99', '53.99', '800-343-7946', 'Busch Gardens', 0x7777772e627573636867617264656e732e636f6d2f626777, 0x42757363682047617264656e732069732061207468656d657061726b206c6f63617465642033206d696c6573206f757473696465206f662057696c6c69616d73627572672e20546865207061726b2069732073657061726174656420696e746f20636f756e747269657320616e642062617365642061726f756e642074686520686973746f7279206f6620746865206f6c6420776f726c64204575726f7065616e20636f756e74726965732e),
(3, 'Sandusky', 'OH', '44870', '46.99', '21.00', '419-627-2350', 'Cedar Point', 0x7777772e6365646172706f696e742e636f6d, 0x436564617220506f696e74206973206c6f636174656420696e2053616e6475736b792c204f68696f2e204974206973206b6e6f776e20666f722069747320746872696c6c2072696465732c20616e6420697320746865206f6e6c79207061726b20746f20636f6e7461696e20666f757220726f6c6c6572636f617374657273206f7665722032303020666565742e20497420616c736f20686173206d6f7265207269646573207468616e20616e79206f74686572207468656d657061726b2e204d65616e2053747265616b206973207468652074616c6c65737420776f6f64656e20726f6c6c6572636f617374657220696e2074686520776f726c642c20616e64206974206973206c6f636174656420617420436564617220506f696e742e),
(4, 'Orlando', 'FL', '32819', '82.00', '74.00', '407-363-8000', 'Islands of Adventure', 0x687474703a2f2f7777772e756e6976657273616c6f726c616e646f2e636f6d2f416d7573656d656e745f5061726b732f49736c616e64735f6f665f416476656e747572652f69736c616e64735f6f665f616476656e747572652e61737078, 0x49736c616e6473206f6620416476656e74757265206973207269676874206e65787420646f6f7220746f20556e6976657273616c2053747564696f732e20546865207061726b20696e636c756465732073697820646966666572656e742049736c616e64732e20546865207468656d65206f6620746865207061726b2069732061206a6f75726e6579206f66206578706c6f726174696f6e2e204d6f7265206f6620746865207269646573206f6620556e6976657273616c20617265206c6f636174656420696e2049736c616e6473206f6620416476656e747572652e),
(5, 'Orlando', 'FL', '32819', '82.00', '74.00', '407-363-8000', 'Universal Studios', 0x7777772e756e6976657273616c6f726c616e646f2e636f6d, 0x556e6976657273616c2053747564696f73206973206c6f636174656420696e204f726c616e646f2c20466c6f726964612e20546865207468656d65206f6620746865207061726b206973206261736564206f6666206f66207468652073747564696f73206d6f7669657320616e642074656c65766973696f6e2073686f77732e20546865207061726b2069732073657420757020696e746f20736978207468656d65642061726561732c20616c6c6f77696e6720796f7520746f2072756e20696e746f20736f6d65206f6620796f7572206661766f72697465206368617261637465727320696e636c7564696e673a20537069646572204d616e2c205468652048756c6b2c205468652043617420696e20746865204861742c20616e6420536872656b2e),
(6, 'Santa Claus', 'IN', '47579', '42.95', '32.95', '812-937-4401', 'Holiday World', 0x7777772e686f6c69646179776f726c642e636f6d, 0x486f6c6964617920576f726c6420697320612066616d696c79206f776e656420616e64206f70657261746564207468656d657061726b206c6f636174656420696e2053616e746120436c6175732c20496e6469616e612e20546865207061726b206973207468656d6564206f6e20686f6c69646179733a204368726973746d61732c2048616c6c6f7765656e2c205468616e6b73676976696e672c20616e642074686520466f75727468206f66204a756c792e204974206973206b6e6f776e20666f722069747320726f6c6c6572636f61737465727320616e6420616c736f206861732074686520776f726c642773206c6f6e6765737420776174657220636f61737465722e),
(7, 'Mason', 'OH', '45040', '51.99', '51.99', '513-754-5700', 'Kings Island', 0x7777772e76697369746b696e677369736c616e642e636f6d, 0x4b696e67732049736c616e64206973206c6f6361746564203234206d696c6573206f757473696465206f662043696e63696e617474692c204f68696f2e204974206973206f6e65206f6620746865206d6f73742076697369746564207468656d657061726b7320696e2074686520556e69746564205374617465732e2054686520426561737420616e642074686520536f6e206f6620746865204265617374206172652074776f206f6620746865207269646573206d6f737420696e66616d6f757320636f6173746572732074686174206861766520626f746820736574206d616e79207265636f7264732073696e636520746865697220617070656172616e6365732e),
(8, 'Jackson', 'NJ', '08527', '59.99', '34.99', '732-928-1821', 'Six Flags Great Adve', 0x7777772e736978666c6167732e636f6d2f6772656174616476656e74757265, 0x53697820466c61677320477265617420416476656e74757265206973206c6f636174656420696e204a61636b736f6e20546f776e736869702c204e6577204a65727365792e20546865207061726b20616c736f20696e636c756465733a2053697820466c6167732057696c642053616661726920616e6420487572726963616e6520486172626f72205761746572205061726b2e2054686572652061726520656c6576656e207468656d656420617265617320696e20746865207061726b2c20666f7572206f6620776869636820612064657369676e656420666f72206368696c6472656e2e),
(9, 'Orlando', 'FL', '32830', '82.00', '74.00', '407-939-6244', 'Disney World', 0x6469736e6579776f726c642e6469736e65792e676f2e636f6d, 0x4469736e657920576f726c6420697320746865206d6f737420766973697465642072656372656174696f6e616c207265736f727420696e2074686520556e69746564205374617465732e20497420696e636c7564657320666f7572207468656d657061726b732c2074776f207761746572207061726b732c20616e64207477656e74792d7468726565207468656d6564207265736f727420686f74656c732e20497420686173206265656e206d616b696e6720647265616d7320636f6d6520747275652073696e636520313937312c207769746820746865206f70656e696e67206f66204d61676963204b696e67646f6d2e),
(10, 'Doswell', 'VA', '23047', '42.99', '34.99', '804-876-5000', 'Kings Dominion', 0x6b696e6773646f6d696e696f6e2e636f6d, 0x4b696e677320446f6d696e696f6e2069732061203430302d6163726520616d7573656d656e74207061726b2026207761746572207061726b2e20497420686173206f6e65206f6620746865206c61726765737420726f6c6c6572636f617374657220636f6c6c656374696f6e73206f6e20746865204561737420436f6173742e204b696e677320446f6d696e696f6e20697320616c736f2076657279206b696420667269656e646c792e20497420696e636c756465733a20506c616e657420536e6f6f70792c205761746572576f726b732c20616e64204b69645a76696c6c652e),
(11, 'Upper Marlboro', 'MD', '20721', '49.99', '34.99', '301-249-1500', 'Six Flags America', 0x7777772e736978666c6167732e636f6d2f616d6572696361, 0x53697820466c61677320416d6572696361206973206c6f636174656420696e204d6172796c616e642c2061626f7574203330206d696c65732066726f6d2042616c74696d6f72652e20546865206e616d6520666f722074686973207061726b207761732063686f73656e206265636175736520697420697320736f20636c6f736520746f20746865206e6174696f6e2773206361706974616c2e20546865726520617265206e696e65207468656d65642073656374696f6e7320696e636c7564696e673a204f6c646520426f73746f6e2c204c6f6f6e65792054756e6573204d6f76696520546f776e2c20536f75746877657374205465727269746f72792c204e616e7475636b65742c20476f7468616d20436974792c20616e6420487572726963616e6520486172626f722e);

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
