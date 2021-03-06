CREATE DATABASE  IF NOT EXISTS `slop` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `slop`;
-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: slop
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `asientos`
--

DROP TABLE IF EXISTS `asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `debe` decimal(8,2) DEFAULT NULL,
  `haber` decimal(8,2) DEFAULT NULL,
  `cuenta_id` int(11) DEFAULT NULL,
  `transaccion_id` int(11) DEFAULT NULL,
  `cuota_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_asientos_on_transaccion_id` (`transaccion_id`),
  KEY `index_asientos_on_cuota_id` (`cuota_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asientos`
--

LOCK TABLES `asientos` WRITE;
/*!40000 ALTER TABLE `asientos` DISABLE KEYS */;
INSERT INTO `asientos` VALUES (1,'2013-08-20',333.33,NULL,9,1,1,'2013-08-20 18:16:56','2013-08-20 23:29:17',NULL),(2,'2013-08-20',NULL,1000.00,4,1,NULL,'2013-08-20 18:16:56','2013-08-20 18:16:56',NULL),(3,'2013-08-20',333.33,NULL,9,1,2,'2013-08-20 20:23:38','2013-08-20 23:29:17',NULL),(4,'2013-10-20',333.33,NULL,9,1,3,'2013-08-20 23:29:18','2013-08-20 23:29:18',NULL),(5,'2013-01-01',9000.00,NULL,8,2,4,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(6,'2013-02-01',9000.00,NULL,8,2,5,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(7,'2013-03-01',9000.00,NULL,8,2,6,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(8,'2013-04-01',9000.00,NULL,8,2,7,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(9,'2013-05-01',9000.00,NULL,8,2,8,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(10,'2013-06-01',9000.00,NULL,8,2,9,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(11,'2013-07-01',9000.00,NULL,8,2,10,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(12,'2013-08-01',9000.00,NULL,8,2,11,'2013-08-30 20:39:45','2013-08-30 20:39:45',NULL),(13,'2013-09-01',9000.00,NULL,8,2,12,'2013-08-30 20:39:46','2013-08-30 20:39:46',NULL),(14,'2013-10-01',9000.00,NULL,8,2,13,'2013-08-30 20:39:46','2013-08-30 20:39:46',NULL),(15,'2013-11-01',9000.00,NULL,8,2,14,'2013-08-30 20:39:46','2013-08-30 20:39:46',NULL),(16,'2013-12-01',9000.00,NULL,8,2,15,'2013-08-30 20:39:46','2013-08-30 20:39:46',NULL),(17,'2013-01-01',NULL,108000.00,33,2,NULL,'2013-08-30 20:39:46','2013-08-30 20:39:46',NULL);
/*!40000 ALTER TABLE `asientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-31 11:57:24
