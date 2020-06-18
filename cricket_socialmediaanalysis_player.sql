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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player` (
  `Player_ID` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `Career_Start` bigint(20) DEFAULT NULL,
  `Career_End` int(11) DEFAULT NULL,
  `Matches_Played` int(11) DEFAULT NULL,
  `Team_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `First_Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Last_Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Player_ID`),
  KEY `Team_ID` (`Team_ID`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('abdevilliers',2005,2018,223,'southafrica','AB','de Villiers '),('admathews',2008,2018,203,'srilanka','AD','Mathews '),('brmtaylor',2004,2018,188,'zimbabwe','BRM','Taylor '),('chgayle',1999,2018,281,'westindies','CH','Gayle '),('cjchibhabha',2005,2018,103,'zimbabwe','CJ','Chibhabha '),('damiller',2010,2018,112,'southafrica','DA','Miller '),('dawarner',2009,2018,106,'australia','DA','Warner '),('dwsteyn',2006,2018,119,'southafrica','DW','Steyn '),('echigumbura',2004,2018,210,'zimbabwe','E','Chigumbura '),('ejgmorgan',2009,2018,189,'england','EJG','Morgan '),('fduplessis',2011,2018,124,'southafrica','F','du Plessis '),('hmamla',2008,2018,169,'southafrica','HM','Amla '),('hmasakadza',2001,2018,204,'zimbabwe','H','Masakadza '),('jcbuttler',2012,2018,122,'england','JC','Buttler '),('jeroot',2013,2018,121,'england','JE','Root '),('jpduminy',2004,2018,192,'southafrica','JP','Duminy '),('kjo\'brien',2006,2018,128,'ireland','KJ','O\'Brien '),('mahmudullah',2007,2018,168,'bangladesh','Mahmudullah',''),('mashrafemortaza',2001,2018,200,'bangladesh','Mashrafe','Mortaza '),('mmorkel',2007,2018,114,'southafrica','M','Morkel '),('mnsamuels',2000,2018,207,'westindies','MN','Samuels '),('mohammadhafeez',2003,2018,203,'pakistan','Mohammad','Hafeez '),('mohammadnabi',2009,2018,106,'afghanistan','Mohammad','Nabi '),('msdhoni',2004,2018,329,'india','MS','Dhoni '),('mushfiqurrahim',2006,2018,198,'bangladesh','Mushfiqur','Rahim '),('njo\'brien',2006,2018,103,'ireland','NJ','O\'Brien '),('prstirling',2008,2018,100,'ireland','PR','Stirling '),('rajadeja',2009,2018,144,'india','RA','Jadeja '),('rgsharma',2007,2018,193,'india','RG','Sharma '),('scwilliams',2005,2018,122,'zimbabwe','SC','Williams '),('sdhawan',2010,2018,115,'india','S','Dhawan '),('shakibalhasan',2006,2018,195,'bangladesh','Shakib','Al Hasan '),('shoaibmalik',1999,2018,274,'pakistan','Shoaib','Malik '),('skraina',2005,2018,226,'india','SK','Raina '),('spdsmith',2010,2018,108,'australia','SPD','Smith '),('tamimiqbal',2007,2018,186,'bangladesh','Tamim','Iqbal '),('vkohli',2008,2018,216,'india','V','Kohli '),('wtsporterfield',2006,2018,122,'ireland','WTS','Porterfield '),('wutharanga',2005,2018,231,'srilanka','WU','Tharanga ');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
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
