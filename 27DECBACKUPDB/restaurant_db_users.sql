CREATE DATABASE  IF NOT EXISTS `restaurant_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `img` longblob,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_role` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `users_chk_1` CHECK ((`user_role` between 0 and 1))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@test.com',NULL,'admin','$2a$10$MJZennBG2cJGB/PYsNWnF.l8gfh6TjPNda4NQd/9uXCmYjVOY1Tpi',0),(2,'rohan@test.com',NULL,'Rohan','$2a$10$VxdxdySBKGZNvCID5ao/HeWVlBQQD2V027aBgYS54zp/dMRbI8UMO',1),(3,'ganesh@gmail.com',NULL,'Ganesh','$2a$10$YDDlFyRI1gwcmrlP.OR93Ocr928wZ6QUB12Qcx5GX16a/0wYXTpva',1),(4,'manasa@test.com',NULL,'manasa','$2a$10$ce4t71..CvgU6clSVXa7cuf67MvSpXoxHx7sP.uI3OvVP3AhoV0qy',1),(5,'sampada@test.com',NULL,'sampada','$2a$10$NHI9qDcgOY4ZTYg5BABHJePAXsJZKMIhRd07X/XQuVzBRAW2krM26',1),(6,'vishakha@test.com',NULL,'vishakha','$2a$10$2tmalAlCuDWXnkg4aJsEvuS9xdKntMg/bJMOCvWj7OK0vk3GhQqMO',1),(7,'sanket@test.com',NULL,'sanket','$2a$10$P2bR2mNFxbf3GLcOJJYjyuKQCQZAlY6B.JKTDg2fKQ5EfthGMOVmi',1),(8,'amit@test.com',NULL,'amit','$2a$10$HtZ4g5ojE.arcBo9YNSrJuhlMMcWpttjDTM/OPJw5ROFZ.5Hs/xJu',1),(9,'dipesh@test.com',NULL,'Dipesh','$2a$10$mabZh1g2luEF5H6iAaLEIecpW8rNp.uAokzcfq/v8HNRdN4pKAyLu',1),(10,'nivida@gmail.com',NULL,'nivida','$2a$10$u3X8Ww1At230TvoHwlFMAe/PkXRvr/EPS5F3YwcBm.Em3RL/vTAcO',1),(11,'pratik@test.com',NULL,'pratik','$2a$10$GrVPpYgbxwcJbaRNK5eQO.yic42/G/kqTRbuvx5YWG2oM2c27NX.W',1),(12,'rohit@test.com',NULL,'rohit','$2a$10$Qcg8L5FBJp4B0ILHjJvg..5GI3lfU1SzeIpTIR9XHIDhK..jvqdLm',1),(13,'pranay@test.com',NULL,'pranay','$2a$10$dFSfdMqiaZ3aSSzitDW48ey0pZvIAfXHXkbEezOzVSR8l/R/rkd2m',1),(14,'abc@test.com',NULL,'abc','$2a$10$soUEinTr9DXOZdNhi4aPoe.vagzPx2HCIO8cQ02Z./yb8at/63V8C',1),(15,'Roshan@test.com',NULL,'roshan','$2a$10$TX.HutwtSKOilAVcMapzOODnNCYy8soXrRXT6zeYKUHnN0F5Z6Z3e',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27 11:33:45
