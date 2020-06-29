CREATE DATABASE  IF NOT EXISTS `springmvcbasicfree` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springmvcbasicfree`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: springmvcbasicfree
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'cong','2020-12-12 00:00:00','cong','2020-12-13 00:00:00','the-thao','the thao'),(2,'bang','2020-12-12 00:00:00','cong','2020-12-14 00:00:00','thoi-su','thoi su');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new`
--

DROP TABLE IF EXISTS `new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `content` text,
  `shortdescription` text,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n64e68925ltftar1nwdaqhaa` (`category_id`),
  CONSTRAINT `FK_n64e68925ltftar1nwdaqhaa` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new`
--

LOCK TABLES `new` WRITE;
/*!40000 ALTER TABLE `new` DISABLE KEYS */;
INSERT INTO `new` VALUES (1,'admin','2020-06-29 05:00:58','admin','2020-06-29 05:00:58','Là một trận bóng tuyệt vời','là một trận đá bóng hay.',NULL,'Arsenal 2-0 MU',1),(2,'admin','2020-06-29 05:17:17','admin','2020-06-29 05:17:17','Covid 19 phải bị ngăn chặn','Covid 19 rất nguy hiểm',NULL,'Covid 19',2),(3,'admin','2020-06-29 05:17:42','admin','2020-06-29 05:17:42','sfsfdsfdsf','sfđfdsf',NULL,'Covid 20',2),(4,'admin','2020-06-29 05:18:15','admin','2020-06-29 05:18:15','sfsdfsdfdsfd','gágsggdsfds',NULL,'ARS vs CHEL',1),(5,'admin','2020-06-29 05:18:46','admin','2020-06-29 05:18:46','sàdfsdfsdfds','sgdsfdsfds',NULL,'Chán vl',2),(7,'admin','2020-06-29 13:51:40','admin','2020-06-29 13:51:40','sdfdsfsdfdsfsdfsdf','xcvxvxvdsgsdf',NULL,'Arsenal 8-2 MU',1);
/*!40000 ALTER TABLE `new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,NULL,NULL,NULL,'ADMIN','Quản trị'),(2,NULL,NULL,NULL,NULL,'USER','Người dùng');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,NULL,NULL,'admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'admin'),(2,NULL,NULL,NULL,NULL,'dvc','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'DoVanCong'),(3,NULL,NULL,NULL,NULL,'dvb','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'DoVanBang');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `userid` bigint(20) NOT NULL,
  `roleid` bigint(20) NOT NULL,
  KEY `FK_jpkvqqgndeonhr2alguthv64e` (`roleid`),
  KEY `FK_jwv62hhuqojjk7pot7kaex3e1` (`userid`),
  CONSTRAINT `FK_jpkvqqgndeonhr2alguthv64e` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_jwv62hhuqojjk7pot7kaex3e1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,2),(3,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'springmvcbasicfree'
--

--
-- Dumping routines for database 'springmvcbasicfree'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-29 18:56:21
