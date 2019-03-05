-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.40-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema lms
--

CREATE DATABASE IF NOT EXISTS lms;
USE lms;

--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`name`) VALUES 
 (7,'Desktop'),
 (8,'Laptop'),
 (9,'Mobile'),
 (10,'Speaker');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(30) NOT NULL,
  `productCode` varchar(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `unitprice` double NOT NULL,
  `totalPrice` double NOT NULL,
  `purchasedate` date NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`id`,`productName`,`productCode`,`qty`,`unitprice`,`totalPrice`,`purchasedate`,`cat_id`,`user_id`) VALUES 
 (1,'Fusitshu','LH532',100,25000,250000,'2018-12-05',8,1),
 (4,'HP','HP345',100,21000,210000,'2018-12-05',8,1),
 (5,'Asus','ASU321',50,27000,135000,'2018-12-05',8,1),
 (6,'Samsung','SMG123',200,15000,300000,'2018-12-05',9,1),
 (7,'Logitech','SP00',200,1200,24000,'2018-12-05',10,1),
 (8,'Walton','WLT123',50,12000,60000,'2018-12-05',9,1),
 (9,'Asus','AS123',50,10000,50000,'2018-12-05',9,1);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(30) NOT NULL,
  `productCode` varchar(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `unitprice` double NOT NULL,
  `totalPrice` double NOT NULL,
  `salesdate` date NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `purchase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`id`,`productName`,`productCode`,`qty`,`unitprice`,`totalPrice`,`salesdate`,`product_id`) VALUES 
 (1,'Fusitshu','lh532',5,27500,137500,'2018-12-05',1),
 (2,'HP','hp345',5,23100,115500,'2018-12-05',4),
 (3,'Fusitshu','lh532',5,27500,137500,'2018-12-05',1),
 (5,'HP','hp345',5,23100,115500,'2018-12-05',4),
 (6,'Asus','asu321',5,29700,148500,'2018-12-05',5),
 (8,'Asus','asu321',5,29700,148500,'2018-12-05',5),
 (9,'Asus','asu321',2,29700,59400,'2018-12-05',5),
 (13,'Fusitshu','LH532',2,27500,55000,'2018-12-05',1),
 (14,'Fusitshu','LH532',10,27500,275000,'2018-12-05',1),
 (15,'HP','HP345',5,23100,115500,'2018-12-05',4),
 (16,'Walton','WLT123',5,13200,66000,'2018-12-05',8),
 (17,'Asus','AS123',20,11000,220000,'2018-12-05',9),
 (18,'HP','HP345',5,23100,115500,'2018-12-05',4);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;


--
-- Definition of table `summary`
--

DROP TABLE IF EXISTS `summary`;
CREATE TABLE `summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) NOT NULL,
  `productCode` varchar(30) NOT NULL,
  `totalQty` int(11) NOT NULL,
  `soldQty` int(11) NOT NULL,
  `availableQty` int(11) NOT NULL,
  `lastUpdate` date DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `summary_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `purchase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `summary`
--

/*!40000 ALTER TABLE `summary` DISABLE KEYS */;
INSERT INTO `summary` (`id`,`productName`,`productCode`,`totalQty`,`soldQty`,`availableQty`,`lastUpdate`,`product_id`) VALUES 
 (2,'Fusitshu','LH532',100,57,43,'2018-12-05',1),
 (5,'HP','HP345',100,25,75,'2018-12-05',4),
 (6,'Asus','ASU321',50,12,38,'2018-12-05',5),
 (7,'Samsung','SMG123',200,0,200,'2018-12-05',6),
 (8,'Logitech','SP00',200,5,195,'2018-12-05',7),
 (9,'Walton','WLT123',50,5,45,'2018-12-05',8),
 (10,'Asus','AS123',50,20,30,'2018-12-05',9);
/*!40000 ALTER TABLE `summary` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `userType` varchar(30) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `regiDate` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`username`,`password`,`userType`,`firstName`,`lastName`,`email`,`mobile`,`regiDate`,`status`) VALUES 
 (1,'mhd','1234','admin','Mr.','mhd','mhd@gmail.com','01686239145','2018-12-04',0x01),
 (2,'rkb','1234','Admin','Mr.','X','x@gmail.com','0173120452','2018-12-05',0x01),
 (3,'rakib','1234','Salesman','Mr.','Rakib','rkb@gmail.com','01784452231','2018-12-05',0x01),
 (4,'hasan','123','Salesman','Mr.','Hasan','hsn@gmail.com','01731430177','2018-12-05',0x01),
 (6,'jubair','1234','Admin','Mr.','Jubair','jbr@gmail.com','01754245456','2018-12-05',0x01),
 (7,'hsn','123','Salesman','Mr.','Hasan','hsn@gmail.com','01756445665','2018-12-05',0x01);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
