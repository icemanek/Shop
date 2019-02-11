CREATE DATABASE  IF NOT EXISTS `Checkout` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Checkout`;
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: Checkout
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text,
  `imageUrl` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (1,'Płyta główna','https://images.morele.net/i1064/4184035_0_i1064.jpg','MSI','B350M PRO-VD',269,'mainboard'),(2,'Procesor','https://images.morele.net/i1064/978219_1_i1064.jpg','Intel','I7-8700K',1959,'procesory'),(3,'RAM','https://images.morele.net/i1064/5246289_0_i1064.jpeg','Ballistix','Sport LT, DDR4, 16 GB,3000MHz, CL16 (BLS2K8G4D30BESBK)',509,'ram'),(4,'Obudowa','https://images.morele.net/i1064/5669278_0_i1064.jpg','IN WIN','Z-Tower',24456,'obudowy'),(5,'Zasilacz','https://images.morele.net/i1064/4151092_15_i1064.jpg','Corsair','AX Series 1600i',2285,'zasilacze'),(6,'Zasilacz','https://images.morele.net/i1064/787639_0_i1064.jpeg','EVGA','SuperNova 1600 P2, 1600W, 80 PLUS Platinum',2017,'zasilacze'),(7,'Zasilacz','https://images.morele.net/i1064/714914_0_i1064.jpeg','Super Flower','Leadex Platinum 2000W',2159,'zasilacze'),(8,'Procesor','https://images.morele.net/i1064/5645369_0_i1064.jpg','Intel','Core i9-9980XE 3Ghz, 23.75MB, Box',9301,'procesory'),(9,'Procesor','https://images.morele.net/i1064/4676076_13_i1064.jpg','AMD','Ryzen Threadripper 2990WX',7899,'procesory'),(10,'Płyta główna','https://images.morele.net/i1064/5670248_0_i1064.jpg','Asus','ROG RAMPAGE VI EXTREME OMEGA',3139,'mainboard'),(11,'Płyta główna','https://images.morele.net/i1064/1088784_0_i1064.jpg','Asus','X99-E-10G WS (90SW05Z0-M0EAY0)',2656,'mainboard'),(12,'RAM','https://images.morele.net/i1064/1438577_0_i1064.jpg','Corsair','Vengeance LPX, DDR4, 128 GB,3800MHz, CL19 (CMK128GX4M8X3800C19)',8212,'ram'),(13,'RAM','https://images.morele.net/i1064/1347525_0_i1064.jpg','G.Skill','Trident Z RGB, DDR4, 128 GB,3200MHz, CL15 (F4-3200C15Q2-128GTZR)\nLiczba modułów: 8',7657,'ram'),(14,'Obudowa','https://images.morele.net/i1064/4023233_0_i1064.jpg','IN-WIN','Winbot biało niebieski',17815,'obudowy'),(15,'Obudowa','https://images.morele.net/i1064/1103091_0_i1064.jpg','IN-WIN','H-Frame 2.0, 1065W (H-Frame 2.0 green/black)',6602,'obudowy');
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11  9:59:31
