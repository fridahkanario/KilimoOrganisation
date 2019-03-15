-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2019 at 03:46 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kilimo`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `DptId` int(20) NOT NULL AUTO_INCREMENT,
  `DptName` varchar(10) DEFAULT NULL,
  `DptHead` varchar(15) DEFAULT NULL,
  `DptCurrentHead` varchar(15) DEFAULT NULL,
  `EmpId` int(11) DEFAULT NULL,
  PRIMARY KEY (`DptId`),
  UNIQUE KEY `EmpId` (`EmpId`),
  UNIQUE KEY `DptCurrentHead` (`DptCurrentHead`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DptId`, `DptName`, `DptHead`, `DptCurrentHead`, `EmpId`) VALUES
(1, 'Assuarance', 'Daniel', 'James', 2),
(2, 'Software', 'Victor', 'Ken', 1),
(3, 'Project', 'Peter', 'Ezekiel', 3),
(4, 'Hardware', 'Cedric', 'Mutua', 4),
(5, 'Hardware', 'Mutua', 'Cedric', 5),
(6, 'Hardware', 'Mutwiri', 'Silas', 6);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `EmpId` int(15) NOT NULL AUTO_INCREMENT,
  `EmpFirstName` varchar(10) DEFAULT NULL,
  `EmpSecondName` varchar(10) DEFAULT NULL,
  `EmpThirdName` varchar(10) DEFAULT NULL,
  `EmployDate` varchar(10) DEFAULT NULL,
  `EmpDesignation` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpId`, `EmpFirstName`, `EmpSecondName`, `EmpThirdName`, `EmployDate`, `EmpDesignation`) VALUES
(1, 'Fridah', 'Kanario', 'Mwika', '4/3/2019', 'Intern'),
(2, 'Lyroy', 'Jones', 'Omondi', '14/2/2019', 'Intern'),
(3, 'Ezekiel', 'Rono', 'Kiprono', '12/12/2010', 'intern'),
(4, 'Purity', 'Muthoni', 'Muthoka', '12/12/2014', 'Hr'),
(5, 'Njoki', 'Wanjiru', 'Wangui', '12/12/2015', 'Developer'),
(6, 'Kanana', 'Betty', 'Simon', '15/2/2009', 'Hardware');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

DROP TABLE IF EXISTS `hobbies`;
CREATE TABLE IF NOT EXISTS `hobbies` (
  `HobbyId` int(20) NOT NULL AUTO_INCREMENT,
  `HobbyName` varchar(20) DEFAULT NULL,
  `EmpId` int(11) DEFAULT NULL,
  PRIMARY KEY (`HobbyId`),
  KEY `fk_foreign_key_name` (`EmpId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`HobbyId`, `HobbyName`, `EmpId`) VALUES
(1, 'Swimming', 1),
(2, 'singing', 2),
(3, 'Praying', 3),
(4, 'Footbal', 4),
(5, 'Skating', 5),
(6, 'Hiking', 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
