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
-- Table structure for table `playerbattingstatistics`
--

DROP TABLE IF EXISTS `playerbattingstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `playerbattingstatistics` (
  `Innings_Batted` int(11) DEFAULT NULL,
  `Not_Outs` int(11) DEFAULT NULL,
  `Runs_Scored` int(11) DEFAULT NULL,
  `Highest_Innings_Score` int(11) DEFAULT NULL,
  `Balls_Faced` int(11) DEFAULT NULL,
  `Hundreds_Scored` int(11) DEFAULT NULL,
  `Scores_Of_Fifty_Or_More` int(11) DEFAULT NULL,
  `Ducks_Scored` int(11) DEFAULT NULL,
  `Player_ID` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Player_ID`),
  KEY `runs_scored_index` (`Runs_Scored`),
  KEY `ducks_scored_index` (`Ducks_Scored`),
  KEY `not_outs_index` (`Not_Outs`),
  CONSTRAINT `playerbattingstatistics_ibfk_1` FOREIGN KEY (`Player_ID`) REFERENCES `player` (`Player_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerbattingstatistics`
--

LOCK TABLES `playerbattingstatistics` WRITE;
/*!40000 ALTER TABLE `playerbattingstatistics` DISABLE KEYS */;
INSERT INTO `playerbattingstatistics` VALUES (213,39,9427,176,9308,25,52,7,'abdevilliers'),(173,46,5380,139,6451,2,37,13,'admathews'),(187,15,6156,145,8085,10,36,14,'brmtaylor'),(276,17,9672,215,11274,23,48,23,'chgayle'),(103,2,2389,99,3784,0,16,7,'cjchibhabha'),(100,28,2780,139,2737,5,12,8,'damiller'),(104,4,4343,179,4498,14,17,2,'dawarner'),(48,12,361,60,545,0,1,7,'dwsteyn'),(195,26,4289,117,5376,2,19,17,'echigumbura'),(176,27,5813,124,6310,10,36,11,'ejgmorgan'),(119,15,4693,185,5298,10,29,3,'fduplessis'),(166,11,7696,159,8618,26,36,4,'hmamla'),(203,4,5604,178,7618,5,34,15,'hmasakadza'),(101,21,3176,129,2715,6,18,11,'jcbuttler'),(115,19,4946,133,5722,13,29,4,'jeroot'),(174,39,5016,150,5959,4,27,7,'jpduminy'),(117,15,3172,142,3548,2,16,5,'kjo\'brien'),(145,38,3637,128,4784,3,20,8,'mahmudullah'),(146,25,1714,51,1947,0,1,15,'mashrafemortaza'),(45,17,239,32,321,0,0,9,'mmorkel'),(196,26,5606,133,7463,10,30,11,'mnsamuels'),(202,14,6153,140,8143,11,34,18,'mohammadhafeez'),(95,11,2435,116,2763,1,12,5,'mohammadnabi'),(278,77,9999,183,11435,9,67,9,'msdhoni'),(184,31,5346,144,6881,6,32,10,'mushfiqurrahim'),(101,9,2581,109,3638,1,18,3,'njo\'brien'),(98,2,3346,177,3720,7,16,9,'prstirling'),(97,33,1982,87,2329,0,10,5,'rajadeja'),(187,31,7454,264,8406,21,37,12,'rgsharma'),(55,6,1586,105,2402,1,12,6,'scwilliams'),(114,6,4935,137,5234,15,25,3,'sdhawan'),(183,24,5577,134,6863,7,40,10,'shakibalhasan'),(246,40,7284,143,8910,9,43,13,'shoaibmalik'),(194,35,5615,116,6005,5,36,14,'skraina'),(94,12,3431,164,3973,8,19,5,'spdsmith'),(184,8,6450,154,8254,11,44,16,'tamimiqbal'),(208,37,10232,183,11016,38,48,12,'vkohli'),(120,3,3722,139,5356,11,15,9,'wtsporterfield'),(219,17,6926,174,9108,15,37,17,'wutharanga');
/*!40000 ALTER TABLE `playerbattingstatistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 23:48:31
