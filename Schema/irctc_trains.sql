-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: irctc
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trains` (
  `TrainNo` int NOT NULL,
  `Trainname` varchar(500) NOT NULL,
  `DepartureDateandtime` datetime NOT NULL,
  `TotalSeats` int NOT NULL,
  `Source` int NOT NULL,
  `Destination` int NOT NULL,
  PRIMARY KEY (`TrainNo`),
  KEY `Source_idx` (`Source`,`Destination`),
  KEY `Destination_idx` (`Destination`),
  KEY `trainno_index` (`TrainNo`),
  CONSTRAINT `trains_ibfk_1` FOREIGN KEY (`Source`) REFERENCES `stations` (`Stationcode`),
  CONSTRAINT `trains_ibfk_2` FOREIGN KEY (`Destination`) REFERENCES `stations` (`Stationcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES (11084,'MH35haEnUl','6419-05-30 17:21:41',533,1,4),(13709,'kjWy3QuRfd','8987-09-06 12:34:39',582,3,13),(16048,'VIpICiP8do','3552-09-24 02:43:12',535,2,10),(16542,'RjO8wOoOja','6992-01-19 19:16:46',563,12,10),(18385,'ZKK8hmXitp','2704-04-11 10:10:56',594,2,6),(20991,'II7PZjMF4o','9276-10-20 07:53:08',598,7,8),(21528,'sjGNJNZL0q','2983-12-27 21:42:15',553,14,1),(21772,'HWjBfCyz1p','3082-08-10 02:05:55',565,9,6),(25008,'t6NcFWk45F','5309-04-19 08:33:51',563,2,6),(25230,'AcgLrNaefI','4700-11-27 21:11:01',509,1,8),(31612,'8iJxUgQAz6','4699-03-24 06:19:05',564,12,3),(34474,'MD7A17RQ7d','8622-08-24 21:32:52',545,10,1),(42059,'b8lihjtVWH','5949-02-01 13:55:46',519,8,2),(43719,'jGq4vq0YE7','4535-10-02 00:55:57',529,5,3),(45846,'lhfIHeDBTX','3310-09-09 05:53:36',554,3,10);
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 14:26:43
