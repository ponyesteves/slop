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
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,'1','ACTIVO',0,NULL,NULL),(2,'1.1','ACTIVO CORRIENTE',0,NULL,NULL),(3,'1.1.1','CAJA',0,NULL,NULL),(4,'1.1.1.0','SALDOS INICIALES',1,NULL,NULL),(5,'1.1.1.1','CAJA GENERAL $',1,NULL,NULL),(6,'1.1.2','BANCOS',0,NULL,NULL),(7,'1.1.2.3','GALICIA CA',1,NULL,NULL),(8,'1.1.2.2','BBVA CA',1,NULL,NULL),(9,'1.1.2.1','BBVA CTA CTE',1,NULL,NULL),(10,'1.1.2.4','PROV CA',1,NULL,NULL),(11,'1.1.3','CREDITOS',0,NULL,NULL),(12,'1.1.3.1','POR COBRAR',2,NULL,NULL),(13,'1.1.4','AHORROS',0,NULL,NULL),(14,'1.1.4.1','CAJA GRIS $',1,NULL,NULL),(15,'1.1.4.2','CAJA GRIS U$S',1,NULL,NULL),(16,'1.1.4.3','CAJA GRIS UY',1,NULL,NULL),(17,'1.1.4.4','CAJA GRIS REAIS',1,NULL,NULL),(18,'1.2','ACTIVO NO CORRIENTE',0,NULL,NULL),(19,'1.2.1','BIENES DE USO',0,NULL,NULL),(20,'1.2.1.1','RODADOS',3,NULL,NULL),(21,'2','PASIVO',0,NULL,NULL),(22,'2.1','PASIVO CORRIENTE',0,NULL,NULL),(23,'2.1.2','DEUDAS',0,NULL,NULL),(24,'2.1.2.1','BBVA VISA',2,NULL,NULL),(25,'2.1.2.2','BBVA MASTER',2,NULL,NULL),(26,'2.1.2.3','GALICIA VISA',2,NULL,NULL),(27,'2.1.2.4','PROV VISA',2,NULL,NULL),(28,'2.1.2.5','HSBC VISA',2,NULL,NULL),(29,'2.1.2.5','SERVICIOS A PAGAR',2,NULL,NULL),(30,'3','PATRIMONIO',0,NULL,NULL),(31,'3.1.0.1','CAPITAL',4,NULL,NULL),(32,'4','INGRESOS',0,NULL,NULL),(33,'4.1.1.1','SUELDO JOSE',5,NULL,NULL),(34,'4.1.1.2','SUELDO FLO',5,NULL,NULL),(35,'4.1.1.3','VET',5,NULL,NULL),(36,'4.1.1.4','SLOP',5,NULL,NULL),(37,'4.1.1.5','BENDITO CAMINO',5,NULL,NULL),(38,'4.1.1.6','REGALOS',5,NULL,NULL),(39,'5','EGRESOS',0,NULL,NULL),(40,'5.1','CASA',0,NULL,NULL),(41,'5.1.1.1','ALQUILER',5,NULL,NULL),(42,'5.1.1.2','SUPERMERCADO',5,NULL,NULL),(43,'5.1.1.3','SERVICIOS',5,NULL,NULL),(44,'5.2','AUTO',0,NULL,NULL),(45,'5.2.1.1','AUTO',5,NULL,NULL),(46,'5.3','GENERALES',0,NULL,NULL),(47,'5.3.1.1','VIAJES',5,NULL,NULL),(48,'5.3.1.2','REGALOS',5,NULL,NULL),(49,'5.3.1.3','GENERALES',5,NULL,NULL),(50,'5.3.1.5','ALMUERZOS',5,NULL,NULL),(51,'5.3.1.6','EDUCACION',5,NULL,NULL),(52,'5.3.1.7','EXTRA ORDINARIOS',5,NULL,NULL),(53,'5.3.1.8','ENTRETENIMIENTO',5,NULL,NULL);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-31 11:59:37
