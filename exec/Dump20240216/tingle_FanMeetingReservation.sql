-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: database-2.cdtjyhbp1uqs.ap-northeast-2.rds.amazonaws.com    Database: tingle
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `FanMeetingReservation`
--

DROP TABLE IF EXISTS `FanMeetingReservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FanMeetingReservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `orderAt` datetime(6) DEFAULT NULL,
  `fanMeeting_id` bigint DEFAULT NULL,
  `fanMeetingType_id` bigint DEFAULT NULL,
  `star_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKek2w0t6i3fvgraaymn9o8o9gy` (`fanMeeting_id`),
  KEY `FK3jk910i8ul8lvjmndyhbs5a14` (`fanMeetingType_id`),
  KEY `FKtqj7dp20m00x87gkdtsrffwa8` (`star_id`),
  KEY `FK3ogqos0kjuan4nwqwnwhhrdc6` (`user_id`),
  CONSTRAINT `FK3jk910i8ul8lvjmndyhbs5a14` FOREIGN KEY (`fanMeetingType_id`) REFERENCES `FanMeetingType` (`id`),
  CONSTRAINT `FK3ogqos0kjuan4nwqwnwhhrdc6` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKek2w0t6i3fvgraaymn9o8o9gy` FOREIGN KEY (`fanMeeting_id`) REFERENCES `FanMeeting` (`id`),
  CONSTRAINT `FKtqj7dp20m00x87gkdtsrffwa8` FOREIGN KEY (`star_id`) REFERENCES `star` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FanMeetingReservation`
--

LOCK TABLES `FanMeetingReservation` WRITE;
/*!40000 ALTER TABLE `FanMeetingReservation` DISABLE KEYS */;
INSERT INTO `FanMeetingReservation` VALUES (1,'2024-02-16 03:36:41.304919',3,1,3,1),(2,'2024-02-16 03:58:57.348966',4,1,1,3),(3,'2024-02-16 05:13:09.637881',5,1,5,4),(4,'2024-02-16 09:23:53.318636',7,2,7,NULL),(5,'2024-02-16 09:23:54.448984',7,1,7,6),(6,'2024-02-16 09:23:56.657638',7,1,7,NULL),(7,'2024-02-16 09:24:10.534867',7,1,7,10),(8,'2024-02-16 09:24:23.624815',7,1,7,NULL),(9,'2024-02-16 09:24:43.523127',7,2,7,NULL),(10,'2024-02-16 09:43:03.150686',9,1,10,3),(11,'2024-02-16 09:43:29.148773',9,2,10,1),(12,'2024-02-16 09:43:43.951714',9,3,10,8),(13,'2024-02-16 10:00:33.428618',10,1,3,7),(14,'2024-02-16 10:00:36.580826',10,1,3,4),(15,'2024-02-16 10:00:53.472844',10,2,3,10),(16,'2024-02-16 10:00:58.436347',10,3,3,12),(17,'2024-02-16 10:05:26.886365',11,1,3,7),(18,'2024-02-16 10:05:53.193034',11,1,3,10),(19,'2024-02-16 10:10:10.240744',12,3,3,7),(20,'2024-02-16 10:10:13.603080',12,2,3,10),(21,'2024-02-16 10:10:39.135712',12,3,3,4),(22,'2024-02-16 10:14:30.544300',13,2,3,10),(23,'2024-02-16 10:16:45.705179',14,3,3,10),(24,'2024-02-16 10:18:20.722949',15,1,3,10),(25,'2024-02-16 10:38:57.039320',17,2,3,1);
/*!40000 ALTER TABLE `FanMeetingReservation` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 14:51:07
