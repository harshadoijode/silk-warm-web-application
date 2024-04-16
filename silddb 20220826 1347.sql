-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gfgc_silkworm
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gfgc_silkworm;
USE gfgc_silkworm;

--
-- Table structure for table `gfgc_silkworm`.`adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE `adminlogin` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`adminlogin`
--

/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;


--
-- Table structure for table `gfgc_silkworm`.`bread`
--

DROP TABLE IF EXISTS `bread`;
CREATE TABLE `bread` (
  `filename` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `diesease` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`bread`
--

/*!40000 ALTER TABLE `bread` DISABLE KEYS */;
INSERT INTO `bread` (`filename`,`name`,`description`,`diesease`,`price`,`id`) VALUES 
 ('cat2.jpg','abcd','description','diesease','1000',1),
 ('bird3.jpg','Coocoon','nice cookoon','light diesease','2000',2),
 ('about-1.jpg','bread mysore','fast growing silk worm','diesease','2000',3);
/*!40000 ALTER TABLE `bread` ENABLE KEYS */;


--
-- Table structure for table `gfgc_silkworm`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`name`,`address`,`phone`,`password`,`id`) VALUES 
 ('Ramesh','shimoga','993993993','ramesh@123',1),
 ('varsha','shimoga','9902597591','varsha123',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_silkworm`.`dealer`
--

DROP TABLE IF EXISTS `dealer`;
CREATE TABLE `dealer` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`dealer`
--

/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
INSERT INTO `dealer` (`name`,`address`,`phone`) VALUES 
 ('dealer','shimoga','9933993939');
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_silkworm`.`experts`
--

DROP TABLE IF EXISTS `experts`;
CREATE TABLE `experts` (
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`experts`
--

/*!40000 ALTER TABLE `experts` DISABLE KEYS */;
INSERT INTO `experts` (`name`,`username`,`password`) VALUES 
 ('ravi','ravi@gmail.com','ravi123');
/*!40000 ALTER TABLE `experts` ENABLE KEYS */;


--
-- Table structure for table `gfgc_silkworm`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `feedback` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`feedback`) VALUES 
 ('ravish','nice web site'),
 ('varsha','i got profit');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `gfgc_silkworm`.`question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `quest` text,
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`question`
--

/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`quest`,`answer`) VALUES 
 ('where can get good seeds','buy from shop');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;


--
-- Table structure for table `gfgc_silkworm`.`sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `filename` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `qty` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fphone` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_silkworm`.`sales`
--

/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`filename`,`name`,`description`,`qty`,`price`,`id`,`fphone`) VALUES 
 ('header.jpg','silk bread','well processed','1000','2000',5,'993993888'),
 ('header.jpg','silk bread','well processed','1000','2000',4,'993993993'),
 ('header.png','mysore silk','well processed description','500','2300',6,'9902597591');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
