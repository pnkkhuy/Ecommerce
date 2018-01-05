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

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ProductID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ProductDescription` longtext CHARACTER SET utf8,
  `SupplierID` bigint(20) unsigned DEFAULT NULL,
  `CategoryID` bigint(20) unsigned DEFAULT NULL,
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
  PRIMARY KEY (`ProductID`),
  KEY `FK_products_suppliers_idx` (`SupplierID`),
  KEY `FK_products_category_idx` (`CategoryID`),
  CONSTRAINT `FK_products_category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_products_suppliers` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Giày Adidas NMD','<p><strong>Updated on August 15th, 2017: </strong>The adidas NMD XR1 &ldquo;Triple Grey&rdquo; releases on September 1st, 2017 for $150 via Foot Locker.</p>\r\n\r\n<p>What can we expect from the <a href=\"http://sneakernews.com/tag/adidas-nmd/\">adidas NMD</a> series for the remainder of the year? <a href=\"https://sneakernews.com/2017/08/14/neighborhood-adidas-nmd-r1-detailed-photos/\" target=\"_blank\">NEIGHBORHOOD</a>&lsquo;s upcoming collaboration is one of the most anticipated offerings from the three stripes but will most likely be more than limited, so if you&rsquo;re in the search for a general release that&rsquo;s clean enough for everyday wear, look no further than this <a href=\"http://sneakernews.com/tag/adidas-nmd-xr1/\">NMD XR1</a> Triple Grey.</p>\r\n\r\n<p>The <a href=\"http://sneakernews.com/tag/adidas-nmd-xr1/\">adiads NMD XR1</a> Triple Grey will release on August 31st for $170 USD featuring an all grey upper with additional ventilation and a matching Boost midsole. The supportive cage overlay gets a premium leather makeover with the same light grey shade as well. What do you think of the look? Check out more detailed shots below and grab your pair on 8/31.</p>\r\n\r\n<hr />\r\n<p><img alt=\"\" src=\"https://sneakernews.com/wp-content/uploads/2017/08/adidas-nmd-xr1-triple-grey-release-date-BY9923-01.jpg\" style=\"height:211px; width:300px\" /></p>\r\n',3,1,0,5000000.0000,'40','Trắng','40','Trắng, Đỏ',10.0000,'1500','5',NULL,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-05  9:47:41
