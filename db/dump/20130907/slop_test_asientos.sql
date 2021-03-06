CREATE DATABASE  IF NOT EXISTS `slop_test` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `slop_test`;
-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: slop_test
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
  `debe` decimal(12,2) DEFAULT NULL,
  `haber` decimal(12,2) DEFAULT NULL,
  `cuenta_id` int(11) DEFAULT NULL,
  `transaccion_id` int(11) DEFAULT NULL,
  `cuota_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `empresa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_asientos_on_transaccion_id` (`transaccion_id`),
  KEY `index_asientos_on_cuota_id` (`cuota_id`),
  KEY `index_asientos_on_empresa_id` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asientos`
--

LOCK TABLES `asientos` WRITE;
/*!40000 ALTER TABLE `asientos` DISABLE KEYS */;
INSERT INTO `asientos` VALUES (102,'2013-09-04',NULL,333.33,4,8,62,'2013-09-05 23:11:52','2013-09-05 23:11:52','CUOTA: 1 (dadqs)',5),(103,'2013-09-04',333.33,NULL,4,8,62,'2013-09-05 23:11:52','2013-09-05 23:11:52','RESULTADO X CUOTA: 1 (dadqs)',5),(104,'2013-10-04',NULL,333.33,4,8,63,'2013-09-05 23:11:52','2013-09-05 23:11:52','CUOTA: 2 (dadqs)',5),(105,'2013-10-04',333.33,NULL,4,8,63,'2013-09-05 23:11:52','2013-09-05 23:11:52','RESULTADO X CUOTA: 2 (dadqs)',5),(106,'2013-11-04',NULL,333.34,4,8,64,'2013-09-05 23:11:52','2013-09-05 23:11:52','CUOTA: 3 (dadqs)',5),(107,'2013-11-04',333.34,NULL,4,8,64,'2013-09-05 23:11:52','2013-09-05 23:11:52','RESULTADO X CUOTA: 3 (dadqs)',5),(108,'2013-09-04',NULL,33.33,4,7,65,'2013-09-06 00:16:07','2013-09-06 00:16:07','CUOTA: 1 (hola)',5),(109,'2013-09-04',33.33,NULL,4,7,65,'2013-09-06 00:16:07','2013-09-06 00:16:07','RESULTADO X CUOTA: 1 (hola)',5),(110,'2013-10-04',NULL,33.33,4,7,66,'2013-09-06 00:16:07','2013-09-06 00:16:07','CUOTA: 2 (hola)',5),(111,'2013-10-04',33.33,NULL,4,7,66,'2013-09-06 00:16:07','2013-09-06 00:16:07','RESULTADO X CUOTA: 2 (hola)',5),(112,'2013-11-04',NULL,33.34,4,7,67,'2013-09-06 00:16:07','2013-09-06 00:16:07','CUOTA: 3 (hola)',5),(113,'2013-11-04',33.34,NULL,4,7,67,'2013-09-06 00:16:08','2013-09-06 00:16:08','RESULTADO X CUOTA: 3 (hola)',5),(114,'2013-09-04',200.00,NULL,4,6,NULL,'2013-09-06 00:16:19','2013-09-06 00:16:19','chau',5),(115,'2013-09-04',NULL,66.67,4,6,68,'2013-09-06 00:16:19','2013-09-06 00:16:19','CUOTA: 1 (chau)',5),(116,'2013-10-04',NULL,66.67,4,6,69,'2013-09-06 00:16:19','2013-09-06 00:16:19','CUOTA: 2 (chau)',5),(117,'2013-11-04',NULL,66.66,4,6,70,'2013-09-06 00:16:19','2013-09-06 00:16:19','CUOTA: 3 (chau)',5),(118,'2013-09-04',100.00,NULL,4,5,NULL,'2013-09-06 00:16:32','2013-09-06 00:16:32','sarlanda',5),(119,'2013-09-04',NULL,33.33,4,5,71,'2013-09-06 00:16:32','2013-09-06 00:16:32','CUOTA: 1 (sarlanda)',5),(120,'2013-10-04',NULL,33.33,4,5,72,'2013-09-06 00:16:32','2013-09-06 00:16:32','CUOTA: 2 (sarlanda)',5),(121,'2013-11-04',NULL,33.34,4,5,73,'2013-09-06 00:16:32','2013-09-06 00:16:32','CUOTA: 3 (sarlanda)',5),(122,'2013-09-05',50.00,NULL,4,9,NULL,'2013-09-06 00:16:44','2013-09-06 00:16:44','BLA',5),(123,'2013-09-05',NULL,25.00,4,9,74,'2013-09-06 00:16:44','2013-09-06 00:16:44','CUOTA: 1 (BLA)',5),(124,'2013-10-05',NULL,25.00,4,9,75,'2013-09-06 00:16:44','2013-09-06 00:16:44','CUOTA: 2 (BLA)',5),(125,'2013-09-05',100.00,NULL,4,10,NULL,'2013-09-06 00:22:09','2013-09-06 00:22:09','',5),(126,'2013-09-05',NULL,100.00,4,10,76,'2013-09-06 00:22:10','2013-09-06 00:22:10','CUOTA: 1 ()',5);
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

-- Dump completed on 2013-09-07 10:56:55
