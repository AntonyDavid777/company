-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: vechile
-- ------------------------------------------------------
-- Server version	8.4.6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vechile_info`
--

DROP TABLE IF EXISTS `vechile_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vechile_info` (
  `vechile_id` int NOT NULL AUTO_INCREMENT,
  `vechile_type` varchar(20) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `engine_cc` decimal(5,2) DEFAULT NULL,
  `fule_type` varchar(50) DEFAULT NULL,
  `recommended_oil` varchar(50) DEFAULT NULL,
  `oil_quantity` decimal(4,2) DEFAULT NULL,
  `oil_quantity_unit` varchar(10) DEFAULT NULL,
  `oil_change_interval` int DEFAULT NULL,
  `mileage_kmpl` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`vechile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vechile_info`
--

LOCK TABLES `vechile_info` WRITE;
/*!40000 ALTER TABLE `vechile_info` DISABLE KEYS */;
INSERT INTO `vechile_info` VALUES (1,'bike','honda','shine 125',123.94,'petrol','10W30',1.00,'litre',6000,60.00),(2,'bike','honda','SP 125',123.94,'petrol','10W30',1.00,'litre',6000,65.00),(3,'bike','honda','Unicorn',162.71,'petrol','10W30',1.20,'litre',6000,50.00),(4,'bike','honda','Hornet 2.0',184.40,'petrol','10W30',1.20,'litre',6000,45.00),(5,'bike','honda','CB200X',184.40,'petrol','10W30',1.20,'litre',6000,43.00),(6,'bike','honda','Livo',109.51,'petrol','10W30',1.00,'litre',6000,60.00),(7,'bike','honda','CD 110 Dream',109.51,'petrol','10W30',1.00,'litre',6000,65.00),(8,'bike','honda','CB350RS',348.36,'petrol','10W30',2.80,'litre',6000,35.00),(9,'bike','honda','Hness CB350',348.36,'petrol','10W30',2.80,'litre',6000,35.00),(10,'bike','hero','Splendor Plus',97.20,'petrol','10W30',0.90,'litre',5000,70.00),(11,'bike','hero','HF Deluxe',97.20,'petrol','10W30',0.90,'litre',5000,68.00),(12,'bike','hero','Passion Plus',97.20,'petrol','10W30',0.90,'litre',5000,65.00),(13,'bike','hero','Passion XTEC',110.00,'petrol','10W30',1.00,'litre',6000,60.00),(14,'bike','hero','Glamour',124.70,'petrol','10W30',1.00,'litre',6000,58.00),(15,'bike','hero','Super Splendor',124.70,'petrol','10W30',1.00,'litre',6000,60.00),(16,'bike','hero','Xtreme 160R',163.20,'petrol','10W30',1.20,'litre',6000,50.00),(17,'bike','hero','Xpulse 200 4V',199.60,'petrol','10W30',1.40,'litre',6000,40.00),(18,'bike','tvs','Raider 125',124.80,'petrol','10W30',1.10,'litre',6000,67.00),(19,'bike','tvs','Apache RTR 160',159.70,'petrol','10W30',1.30,'litre',6000,45.00),(20,'bike','tvs','Apache RTR 200 4V',197.75,'petrol','10W30',1.20,'litre',6000,40.00),(21,'bike','tvs','Sport',109.70,'petrol','10W30',1.00,'litre',5000,70.00),(22,'bike','tvs','Star City Plus',109.70,'petrol','10W30',1.00,'litre',5000,68.00),(23,'bike','tvs','Ronin',225.90,'petrol','10W30',1.70,'litre',6000,42.00),(24,'bike','tvs','Jupiter',113.30,'petrol','10W30',0.80,'litre',5000,55.00),(25,'bike','tvs','NTORQ 125',124.80,'petrol','10W30',0.90,'litre',5000,50.00);
/*!40000 ALTER TABLE `vechile_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-08  0:39:36
