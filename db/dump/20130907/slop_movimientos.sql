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
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `rodeo_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `kilos` int(11) DEFAULT NULL,
  `tipo_acc_id` int(11) DEFAULT NULL,
  `origen_id` int(11) DEFAULT NULL,
  `establecimiento_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_movimientos_on_category_id` (`category_id`),
  KEY `index_movimientos_on_estado_id` (`estado_id`),
  KEY `index_movimientos_on_rodeo_id` (`rodeo_id`),
  KEY `index_movimientos_on_tipo_acc_id` (`tipo_acc_id`),
  KEY `index_movimientos_on_user_id` (`user_id`),
  KEY `index_movimientos_on_origen_id` (`origen_id`),
  KEY `index_movimientos_on_establecimiento_id` (`establecimiento_id`),
  KEY `index_movimientos_on_empresa_id` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (167,'2013-04-01','LOTE 1 SALDO INICIAL',1,1,1,'2013-07-26 21:54:16','2013-07-26 21:54:16',NULL,128,450,1,NULL,10,6),(168,'2013-04-01','LOTE 2 SALDO INICIAL',1,1,1,'2013-07-26 21:54:46','2013-07-26 21:54:46',NULL,83,450,1,NULL,10,6),(169,'2013-04-01','SALDO INICIAL',1,2,2,'2013-07-26 21:55:31','2013-07-26 21:56:05',NULL,27,400,1,NULL,10,6),(170,'2013-04-01','SALDO INCIAL',1,2,6,'2013-07-26 21:55:56','2013-07-26 21:56:13',NULL,31,320,1,NULL,10,6),(171,'2013-04-15','LOTE 1',2,1,1,'2013-07-26 22:00:33','2013-07-26 22:00:33',NULL,110,450,5,NULL,10,6),(172,'2013-04-15','LOTE 1 PREÑADA VJ PARA VENTA',11,1,1,'2013-07-26 22:02:00','2013-07-26 22:02:12',NULL,6,450,5,NULL,10,6),(173,'2013-04-15','LOTE 2',2,1,1,'2013-07-26 22:03:14','2013-07-26 22:03:14',NULL,66,450,5,NULL,10,6),(174,'2013-04-15','LOTE 2 PREÑADA VJ PARA VENTA',11,1,1,'2013-07-26 22:03:38','2013-07-26 22:03:38',NULL,5,450,5,NULL,10,6),(175,'2013-04-15','LOTE 1',3,1,1,'2013-07-26 22:03:59','2013-07-26 22:04:25',NULL,12,450,5,NULL,10,6),(176,'2013-04-15','LOTE 2\r\n',3,1,1,'2013-07-26 22:04:19','2013-07-26 22:04:19',NULL,12,450,5,NULL,10,6),(177,'2013-04-15','',2,2,2,'2013-07-26 22:05:02','2013-07-26 22:05:02',NULL,23,400,5,NULL,10,6),(178,'2013-04-15','',3,2,2,'2013-07-26 22:05:31','2013-07-26 22:06:48',NULL,4,400,5,NULL,10,6),(179,'2013-04-15','',2,2,6,'2013-07-26 22:06:10','2013-07-26 22:06:10',NULL,19,320,5,NULL,10,6),(180,'2013-04-15','REPO',3,2,6,'2013-07-26 22:06:35','2013-07-26 22:06:35',NULL,11,320,5,NULL,10,6),(182,'2013-06-06','VACA VACIA',3,1,1,'2013-07-31 22:38:33','2013-08-21 15:31:19',NULL,11,450,12,NULL,10,6),(183,'2013-06-01','VACAS DE CHIQUITO',2,1,1,'2013-07-31 22:39:17','2013-08-21 15:31:37',NULL,7,450,9,NULL,10,6),(184,'2013-06-01','VACA DE CHIQUITO',3,1,1,'2013-07-31 22:39:38','2013-08-21 15:31:28',NULL,1,450,9,NULL,10,6),(185,'2013-06-06','',2,1,1,'2013-07-31 22:43:27','2013-08-21 15:31:09',NULL,3,450,12,NULL,10,6),(186,'2013-06-06','VENTA REMATE DE LALOR',11,1,1,'2013-07-31 22:46:51','2013-08-21 15:31:50',NULL,11,450,12,NULL,10,6),(187,'2013-04-01','HAY TERNERAS DE FELA Y ALFREDO',12,2,3,'2013-08-01 00:25:43','2013-08-01 00:25:43',NULL,72,280,1,NULL,10,6),(188,'2013-04-01','TERNERAS DE LOS LOPEZ',12,2,8,'2013-08-01 00:27:22','2013-08-01 00:27:52',NULL,3,280,1,NULL,10,6),(193,'2013-07-20','2 NEGROS\r\n2 COLORADOS',6,1,9,'2013-08-01 03:56:29','2013-08-01 03:57:02',NULL,4,50,2,NULL,10,6),(194,'2013-07-20','',4,1,1,'2013-08-01 03:56:29','2013-08-21 15:32:09',NULL,4,450,3,NULL,10,6),(206,'2013-08-03','',10,1,7,'2013-08-03 22:48:34','2013-08-03 22:48:34',NULL,10,650,1,NULL,11,7),(207,'2013-08-03','',9,2,7,'2013-08-03 22:50:05','2013-08-03 22:50:05',NULL,2,600,1,NULL,11,7),(208,'2013-08-03','',6,1,9,'2013-08-03 22:51:07','2013-08-03 22:51:07',NULL,1,50,2,NULL,11,7),(209,'2013-08-03',NULL,4,1,2,'2013-08-03 22:51:08','2013-08-03 22:51:08',NULL,1,NULL,3,NULL,11,7),(210,'2013-08-03','',7,1,9,'2013-08-03 22:51:19','2013-08-03 22:51:19',NULL,1,50,6,NULL,11,7),(211,'2013-08-03','',8,1,9,'2013-08-03 22:51:25','2013-08-03 22:51:25',NULL,1,50,7,NULL,11,7),(212,'2013-01-01','',1,1,1,'2013-08-03 22:58:03','2013-08-03 22:58:03',NULL,10,450,1,NULL,12,NULL),(213,'2013-04-03','',2,1,1,'2013-08-03 22:58:47','2013-08-03 22:58:47',NULL,9,450,5,NULL,12,NULL),(214,'2013-04-03','',3,1,1,'2013-08-03 22:58:55','2013-08-03 22:58:55',NULL,1,450,5,NULL,12,NULL),(215,'2013-08-03','',6,1,9,'2013-08-03 22:59:13','2013-08-03 22:59:13',NULL,9,50,2,NULL,12,NULL),(216,'2013-08-03',NULL,4,1,1,'2013-08-03 22:59:13','2013-08-03 22:59:13',NULL,9,NULL,3,NULL,12,NULL),(217,'2013-12-03','',7,1,9,'2013-08-03 22:59:25','2013-08-03 22:59:25',NULL,8,50,6,NULL,12,NULL),(218,'2013-08-03','',6,1,9,'2013-08-03 23:00:20','2013-08-03 23:00:20',NULL,1,NULL,4,NULL,12,NULL),(219,'2013-08-06','',1,2,1,'2013-08-06 16:59:58','2013-08-06 16:59:58',NULL,10,450,1,NULL,11,7),(220,'2013-08-06','',2,2,1,'2013-08-06 17:00:20','2013-08-06 17:00:20',NULL,9,450,5,NULL,11,7),(221,'2013-08-06','',3,2,1,'2013-08-06 17:00:28','2013-08-06 17:00:28',NULL,1,450,5,NULL,11,7),(222,'2013-08-09','',2,1,1,'2013-08-09 18:56:13','2013-08-09 18:56:13',NULL,4,450,5,NULL,11,7),(223,'2013-08-16','',1,1,6,'2013-08-17 00:39:18','2013-08-17 00:39:18',NULL,25,320,10,NULL,12,8),(227,'2013-08-17','',1,1,7,'2013-08-17 00:44:36','2013-08-17 00:44:36',NULL,2,600,10,NULL,12,8),(228,'2013-08-17','',1,1,5,'2013-08-17 00:45:00','2013-08-17 00:45:00',NULL,1,350,10,NULL,12,8),(230,'2013-08-17','',10,1,7,'2013-08-17 00:46:29','2013-08-17 00:46:29',NULL,1,600,8,NULL,12,8),(231,'2013-08-17','',10,1,7,'2013-08-17 00:47:19','2013-08-17 00:47:19',NULL,1,600,8,NULL,12,8),(235,'2013-08-17','',2,1,6,'2013-08-17 00:51:52','2013-08-17 00:51:52',NULL,23,320,5,NULL,12,8),(236,'2013-08-17','',5,1,6,'2013-08-17 00:53:06','2013-08-17 00:53:06',NULL,2,320,8,NULL,12,8),(237,'2013-08-17','',5,1,6,'2013-08-17 00:53:20','2013-08-17 00:53:20',NULL,2,NULL,12,NULL,12,8),(238,'2013-08-17','',6,1,9,'2013-08-17 00:54:00','2013-08-17 00:54:00',NULL,22,50,2,NULL,12,8),(239,'2013-08-17',NULL,4,1,6,'2013-08-17 00:54:00','2013-08-17 00:54:00',NULL,22,NULL,3,NULL,12,8),(240,'2013-08-17','',4,1,6,'2013-08-17 00:55:03','2013-08-17 00:55:03',NULL,22,320,8,NULL,12,8),(241,'2013-08-17','',3,1,6,'2013-08-17 00:56:13','2013-08-17 00:56:13',NULL,1,320,8,NULL,12,8),(242,'2013-08-17','',12,1,3,'2013-08-17 00:57:24','2013-08-17 00:57:24',NULL,22,280,8,NULL,12,8),(244,'2013-08-17','',12,1,3,'2013-08-17 00:59:49','2013-08-17 00:59:49',NULL,22,NULL,12,NULL,12,8),(245,'2013-08-17','',1,1,2,'2013-08-17 01:00:27','2013-08-17 01:00:27',NULL,22,400,8,NULL,12,8),(246,'2013-08-17','',1,1,2,'2013-08-17 01:00:40','2013-08-17 01:00:40',NULL,1,400,8,NULL,12,8),(247,'2013-08-17','',1,1,7,'2013-08-17 01:02:23','2013-08-17 01:02:23',NULL,1,600,8,NULL,12,8),(248,'2013-08-17','',2,1,2,'2013-08-17 01:02:54','2013-08-17 01:02:54',NULL,22,400,5,NULL,12,8),(249,'2013-08-17','',3,1,2,'2013-08-17 01:03:08','2013-08-17 01:03:08',NULL,1,400,8,NULL,12,8),(250,'2013-08-17','',3,1,2,'2013-08-17 01:03:59','2013-08-17 01:03:59',NULL,1,NULL,13,NULL,12,8),(251,'2013-08-17','',6,1,9,'2013-08-17 01:05:01','2013-08-17 01:05:28',NULL,22,50,2,NULL,12,8),(252,'2013-08-17',NULL,4,1,2,'2013-08-17 01:05:01','2013-08-17 01:05:01',NULL,22,NULL,3,NULL,12,8),(253,'2013-08-17','',12,2,10,'2013-08-17 01:08:18','2013-08-17 01:08:18',NULL,11,280,8,NULL,12,8),(255,'2013-08-17','',12,2,11,'2013-08-17 01:09:10','2013-08-17 01:09:10',NULL,11,280,8,NULL,12,8),(256,'2013-08-17','',1,1,1,'2013-08-17 01:09:45','2013-08-17 01:09:45',NULL,22,450,8,NULL,12,8),(257,'2013-08-17','',12,2,10,'2013-08-17 01:10:25','2013-08-17 01:10:25',NULL,11,NULL,12,NULL,12,8),(258,'2013-08-15','CABEZA',6,1,9,'2013-08-21 21:24:15','2013-08-21 21:24:15',NULL,55,50,2,NULL,10,6),(259,'2013-08-15',NULL,4,1,1,'2013-08-21 21:24:15','2013-08-21 21:24:15',NULL,55,NULL,3,NULL,10,6),(260,'2013-08-15','CABEZA',6,2,9,'2013-08-21 21:25:53','2013-08-21 21:25:53',NULL,5,50,2,NULL,10,6),(261,'2013-08-15',NULL,4,2,2,'2013-08-21 21:25:53','2013-08-21 21:25:53',NULL,5,NULL,3,NULL,10,6),(262,'2013-01-01','',1,1,1,'2013-09-03 21:32:32','2013-09-03 21:32:32',NULL,10,450,1,NULL,10,9);
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-07 10:56:54
