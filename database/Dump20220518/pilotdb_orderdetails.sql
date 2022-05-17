-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: pilotdb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_orderdetails_idx` (`order_id`),
  KEY `fk_product_orderdetails_idx` (`product_id`),
  CONSTRAINT `fk_orders_orderdetails` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_product_orderdetails` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,100000000,1,100000000,1,316),(2,99000000,1,99000000,1,317),(3,7890000,1,7890000,2,18),(4,99000000,2,198000000,2,317),(5,100000000,1,100000000,3,316),(6,15290000,1,15290000,3,15),(7,42990000,1,42990000,13,10),(8,99000000,3,297000000,13,317),(9,15290000,1,15290000,13,15),(10,21990000,1,21990000,14,11),(11,100000000,2,200000000,14,316),(12,99000000,4,396000000,14,317),(22,6490000,1,6490000,45,354),(23,6290000,1,6290000,45,355),(24,8090000,3,24270000,45,357),(25,4590000,1,4590000,45,359),(26,21990000,1,21990000,45,7),(27,9090000,3,27270000,45,431),(28,8090000,5,40450000,45,432),(29,28490000,3,85470000,45,337),(30,6590000,4,26360000,45,433),(31,1032000,1,1032000,45,372),(32,552000,1,552000,45,374),(33,23290000,1,23290000,45,344),(34,1272000,1,1272000,45,376),(35,10990000,1,10990000,45,410),(36,12990000,1,12990000,45,411),(37,6990000,1,6990000,45,412),(38,220000,1,220000,45,380),(39,792000,1,792000,45,381),(40,10490000,1,10490000,45,350),(41,21990000,5,109950000,46,11),(42,7990000,1,7990000,47,401),(43,5990000,1,5990000,47,388),(44,5990000,1,5990000,47,391),(45,1490000,1,1490000,47,393),(46,8990000,1,8990000,47,397),(47,4490000,1,4490000,47,398),(48,18710000,1,18710000,48,323),(49,23840000,1,23840000,48,324),(50,38990000,1,38990000,48,325),(51,61990000,1,61990000,48,327),(52,41990000,1,41990000,48,328),(53,21990000,1,21990000,48,330),(54,22990000,1,22990000,48,332),(55,27490000,1,27490000,48,318),(56,29690000,1,29690000,48,335),(57,28990000,1,28990000,48,319),(58,30990000,2,61980000,49,316),(59,9990000,1,8991000,50,434),(60,99900000,1,8991000,51,434),(61,0,1,30990000,51,316),(62,8991000,1,8991000,52,434),(63,30990000,1,30990000,52,316),(64,8991000,2,17982000,53,434),(65,7990000,1,7990000,54,401),(66,8991000,2,17982000,54,434),(67,7990000,1,7990000,55,401),(68,8991000,1,8991000,55,434),(69,23840000,1,23840000,56,324),(70,10490000,1,10490000,56,350),(71,1912000,1,1912000,57,373),(72,2990000,1,2990000,57,379),(73,1290000,1,1290000,58,377),(74,2443000,1,2443000,59,378),(75,1290000,1,1290000,60,377),(76,30990000,1,30990000,60,317);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18  0:06:44