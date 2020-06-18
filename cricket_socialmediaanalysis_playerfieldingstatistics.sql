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
-- Table structure for table `playerfieldingstatistics`
--

DROP TABLE IF EXISTS `playerfieldingstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `playerfieldingstatistics` (
  `Innings_Fielded` int(11) DEFAULT NULL,
  `Catches_Taken` int(11) DEFAULT NULL,
  `Stumpings_Made` int(11) DEFAULT NULL,
  `Player_ID` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Player_ID`),
  KEY `stumpings_made_index` (`Stumpings_Made`),
  CONSTRAINT `playerfieldingstatistics_ibfk_1` FOREIGN KEY (`Player_ID`) REFERENCES `player` (`Player_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerfieldingstatistics`
--

LOCK TABLES `playerfieldingstatistics` WRITE;
/*!40000 ALTER TABLE `playerfieldingstatistics` DISABLE KEYS */;
INSERT INTO `playerfieldingstatistics` VALUES (218,171,5,'abdevilliers'),(199,50,0,'admathews'),(188,118,29,'brmtaylor'),(276,119,0,'chgayle'),(102,33,0,'cjchibhabha'),(110,54,0,'damiller'),(106,49,0,'dawarner'),(118,28,0,'dwsteyn'),(209,72,0,'echigumbura'),(185,67,0,'ejgmorgan'),(123,65,0,'fduplessis'),(165,83,0,'hmamla'),(204,71,0,'hmasakadza'),(119,153,25,'jcbuttler'),(118,56,0,'jeroot'),(188,77,0,'jpduminy'),(124,55,0,'kjo\'brien'),(167,56,0,'mahmudullah'),(200,57,0,'mashrafemortaza'),(111,29,0,'mmorkel'),(207,50,0,'mnsamuels'),(201,78,0,'mohammadhafeez'),(104,50,0,'mohammadnabi'),(324,307,112,'msdhoni'),(197,164,42,'mushfiqurrahim'),(99,90,14,'njo\'brien'),(96,39,0,'prstirling'),(143,51,0,'rajadeja'),(192,69,0,'rgsharma'),(57,18,0,'scwilliams'),(113,55,0,'sdhawan'),(194,45,0,'shakibalhasan'),(272,94,0,'shoaibmalik'),(223,102,0,'skraina'),(108,62,0,'spdsmith'),(185,46,0,'tamimiqbal'),(214,103,0,'vkohli'),(117,57,0,'wtsporterfield'),(224,49,0,'wutharanga');
/*!40000 ALTER TABLE `playerfieldingstatistics` ENABLE KEYS */;
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
