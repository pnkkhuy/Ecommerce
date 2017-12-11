-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- ----------------------------
-- Table structure for `persistent_logins`
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `series` varchar(64) COLLATE utf8_bin NOT NULL,
  `token` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `AccountID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `FullName` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BillingAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ShipAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `DateEntered` datetime NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive = 0 => Not Active\nIsActive = 1 => Active\n',
  PRIMARY KEY (`AccountID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'khanhhuy215@gmail.com','123456','Admin','Phan Nhật Khánh Huy','125 KP 3 Mai Chí Thọ - Phường An Phú - Quận 2 - TP Hồ Chí Minh','0932082309','125 KP 3 Mai Chí Thọ - Phường An Phú - Quận 2 - TP Hồ Chí Minh','125 KP 3 Mai Chí Thọ - Phường An Phú - Quận 2 - TP Hồ Chí Minh','2017-11-16 21:07:21',1),(2,'ShipperTest1@gmail.com','123456','Shipper','Shipper Test 1','TP Hồ Chí Minh','0888888','',NULL,'2017-11-16 21:07:21',1),(3,'UserTest1@gmail.com','123456','User','User Test 1','TP Hồ Chí Minh','086898658','TP Hồ Chí Minh','TP Hồ Chí Minh','2017-11-16 21:07:21',1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `ImageID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Path` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Decription` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `CategoryID` bigint(20) DEFAULT NULL,
  `ProductID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` bigint(20) DEFAULT NULL,
  `ProductID` bigint(20) DEFAULT NULL,
  `Price` decimal(13,4) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Discount` decimal(13,4) DEFAULT NULL,
  `Total` decimal(13,4) DEFAULT NULL,
  `ShipDate` datetime DEFAULT NULL,
  `BillDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`OrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `AccountID` bigint(20) DEFAULT NULL,
  `OrderDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiredDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperID` bigint(20) DEFAULT NULL,
  `Log` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Status 	=> ''Watting - Unpaid''\n		=> ''Shipped''\n		=> ''Shipped - Unpaid''\n',
  `Status` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Status 	=> ''Watting - UnPaid''\n		=> ''Shipped - UnPaid''\n		=> ''Shipped - Completed''\n',
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n		=>	''1 - is Active''',
  PRIMARY KEY (`OrderID`),
  KEY `fk_Orders_Accounts_idx` (`AccountID`,`ShipperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ProductID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ProductDescription` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `SupplierID` bigint(20) DEFAULT NULL,
  `CategoryID` bigint(20) DEFAULT NULL,
  `QuantityPerUnit` int(11) DEFAULT NULL,
  `UnitPrice` decimal(13,4) DEFAULT NULL,
  `AvailableSize` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AvailableColors` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Size` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Discount` decimal(13,4) DEFAULT NULL,
  `UnitWeight` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOnStock` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOnOrder` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `SupplierID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ContactName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-23 18:02:15
