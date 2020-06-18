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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `Team_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Team_Name` text COLLATE utf8_unicode_ci,
  `Rank` int(11) DEFAULT NULL,
  `Points` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Team_Matches_Played` int(11) DEFAULT NULL,
  `Matches_Won` int(11) DEFAULT NULL,
  `Matches_Lost` bigint(20) DEFAULT NULL,
  `Matches_Tied` int(11) DEFAULT NULL,
  `Matches_With_No_Result` int(11) DEFAULT NULL,
  PRIMARY KEY (`Team_ID`),
  KEY `team_matches_played_index` (`Team_Matches_Played`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('afghanistan','Afghanistan',10,2394,67,106,55,48,1,2),('australia','Australia',6,3980,100,919,557,319,9,34),('bangladesh','Bangladesh',7,3608,93,355,118,230,0,7),('england','England',1,6918,126,721,360,328,8,25),('india','India',2,7000,121,953,492,412,9,40),('ireland','Ireland',12,904,39,139,61,68,3,7),('newzealand','New Zealand',3,5188,113,750,338,366,6,40),('pakistan','Pakistan',5,4370,102,902,477,398,8,19),('southafrica','South Africa',4,4985,111,600,370,208,6,16),('srilanka','Sri Lanka',8,4426,78,831,379,410,5,37),('westindies','West Indies',9,2899,72,788,388,363,10,27),('zimbabwe','Zimbabwe',11,2497,52,517,134,365,7,11);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
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
