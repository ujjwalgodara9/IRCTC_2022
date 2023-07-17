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
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengers` (
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Age` int NOT NULL,
  `PNR` int NOT NULL,
  `UserId` bigint NOT NULL,
  PRIMARY KEY (`PNR`),
  KEY `UserId` (`UserId`),
  KEY `pass_pnr_index` (`PNR`),
  CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`PNR`) REFERENCES `Tickets` (`PNR`),
  CONSTRAINT `passengers_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `User` (`UserID`),
  CONSTRAINT `passengers_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES ('Johnathan Stewart','male',76,12344,4),('Doug Rose','male',86,12345,2),('arvind','Female',7,13370,1),('Harvey','Male',16,23746,3),('John','Male',65,32180,4),('Bryce','Female',54,32290,5),('Alexander','Male',46,34122,6),('Ruth','Female',84,37715,8),('Phillip','Male',79,39079,9),('Julianna','Female',58,41550,10),('Marjorie','Female',78,42510,11),('Emery','Female',60,43407,12),('Tony','Male',71,44901,13),('Brad','Male',24,44944,14),('Stacy','Female',66,49429,15),('djfld','male',32,49430,22),('douglas','male',44,49431,30);
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 14:26:46
