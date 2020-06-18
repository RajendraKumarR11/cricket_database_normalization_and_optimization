-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: cricket_socialmediaanalysis
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `teambowlingstatistics`
--

DROP TABLE IF EXISTS `teambowlingstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teambowlingstatistics` (
  `Avg_Runs_Per_Wicket_Bowling` double DEFAULT NULL,
  `Avg_Runs_Per_Six_Balls_Bowling` double DEFAULT NULL,
  `Number_Of_Team_Innings_Bowling` int(11) DEFAULT NULL,
  `Highest_Team_Score_Bowling` int(11) DEFAULT NULL,
  `Lowest_Completed_Score_Bowling` int(11) DEFAULT NULL,
  `Team_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Team_ID`),
  UNIQUE KEY `index_teambowling_id` (`Team_ID`),
  CONSTRAINT `teambowlingstatistics_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teambowlingstatistics`
--

LOCK TABLES `teambowlingstatistics` WRITE;
/*!40000 ALTER TABLE `teambowlingstatistics` DISABLE KEYS */;
INSERT INTO `teambowlingstatistics` VALUES (26.1,4.64,104,417,54,'afghanistan'),(27,4.65,912,481,45,'australia'),(33.75,5.05,354,391,44,'bangladesh'),(30.27,4.78,714,398,45,'england'),(30.62,4.93,940,438,58,'india'),(29.76,4.94,134,411,91,'ireland'),(29.85,4.77,741,408,69,'newzealand'),(28.75,4.72,890,444,64,'pakistan'),(26.9,4.73,592,434,43,'southafrica'),(30.87,4.91,822,414,35,'srilanka'),(29.26,4.64,780,439,43,'westindies'),(35.6,5.05,515,418,58,'zimbabwe');
/*!40000 ALTER TABLE `teambowlingstatistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 23:48:29
