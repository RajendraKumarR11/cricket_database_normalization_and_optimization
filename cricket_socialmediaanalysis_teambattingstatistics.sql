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
-- Table structure for table `teambattingstatistics`
--

DROP TABLE IF EXISTS `teambattingstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teambattingstatistics` (
  `Avg_Runs_Per_Wicket_Batting` double DEFAULT NULL,
  `Avg_Runs_Per_Six_Balls_Batting` double DEFAULT NULL,
  `Number_Of_Team_Innings_Batting` int(11) DEFAULT NULL,
  `Highest_Team_Score_Batting` int(11) DEFAULT NULL,
  `Lowest_Completed_Score_Batting` int(11) DEFAULT NULL,
  `Team_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Team_ID`),
  UNIQUE KEY `index_teambatting_id` (`Team_ID`),
  CONSTRAINT `teambattingstatistics_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teambattingstatistics`
--

LOCK TABLES `teambattingstatistics` WRITE;
/*!40000 ALTER TABLE `teambattingstatistics` DISABLE KEYS */;
INSERT INTO `teambattingstatistics` VALUES (26.66,4.72,105,338,58,'afghanistan'),(33.98,4.98,909,434,70,'australia'),(25.14,4.52,352,329,58,'bangladesh'),(30.76,4.87,716,481,86,'england'),(33.48,5.04,942,418,54,'india'),(26.98,4.81,137,331,77,'ireland'),(29.08,4.8,735,402,64,'newzealand'),(30.47,4.81,901,399,43,'pakistan'),(35.47,5.1,597,439,69,'southafrica'),(29.56,4.89,815,443,43,'srilanka'),(29.93,4.74,779,372,54,'westindies'),(25.22,4.49,513,351,35,'zimbabwe');
/*!40000 ALTER TABLE `teambattingstatistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 23:48:30
