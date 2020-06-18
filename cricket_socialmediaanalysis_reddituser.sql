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
-- Table structure for table `reddituser`
--

DROP TABLE IF EXISTS `reddituser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reddituser` (
  `User_ID` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Total_Number_Of_Posts` int(11) DEFAULT NULL,
  `Total_Post_Score` int(11) DEFAULT NULL,
  `Total_Number_Of_Comments_Made` int(11) DEFAULT NULL,
  `Total_Comment_Score` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reddituser`
--

LOCK TABLES `reddituser` WRITE;
/*!40000 ALTER TABLE `reddituser` DISABLE KEYS */;
INSERT INTO `reddituser` VALUES ('__Rudolph_Hitler__',88,8798,100,555),('_rickjames',100,4005,100,775),('1stPhoton',4,74,100,527),('adusumir',100,2481,100,411),('adxx12in',74,5644,100,593),('AIienreborn',100,9644,100,933),('Aislabie',100,6698,100,506),('amu1996',4,3,2,-9),('ap_100',4,1278,4,345),('appgeek',56,731,100,992),('aravind318',15,824,100,502),('ArchipelagoMind',81,12353,100,1470),('Artaxerxes_IV',71,2154,100,748),('aussiespinnerfanpage',1,6,86,153),('Batman007700',4,32,57,254),('BE3N',100,2541,100,534),('Because-shit',100,57676,92,560),('behind_th_glass',100,2691,100,310),('Ben_Bonsey',3,8,1,1),('benjaneson',100,127223,100,3425),('Benny4318',24,2822,100,1610),('blueflagged',100,5835,100,457),('CakesnCricket',50,245,100,430),('colonel-almagro',4,689,19,71),('ColonelFogsworth',100,3472,100,639),('coolseraz',100,5204,100,2262),('coverdriveshot',100,4386,100,495),('cricketfan27488',65,2016,100,1112),('Cricketloverbybirth',100,7080,100,794),('CricketMatchBot',100,2609,100,131),('Devildev11',17,135,100,734),('dhruvchouhan',20,6647,75,2180),('digi23',100,8635,100,599),('Doj123monk',19,338,13,28),('EpiDeMic522',36,906,100,1193),('FailingtoFail',10,388,38,384),('FarmFun',22,931,100,537),('fleetintelligence',100,4006,100,584),('Foothill_r34',56,857,100,429),('formergophers',46,1969,100,724),('gobsmacked3',5,29,18,40),('Greenhaagen',23,944,100,951),('guyhutookatit8',39,1520,100,404),('Gvoid_',70,10892,100,675),('HarryMX',60,5571,100,4306),('Heyheyhey781',11,424,100,921),('hganjoo153',1,57,0,0),('Hikikomori79',13,1067,15,41),('honestiptv',27,41,36,29),('iamfz',76,4616,100,768),('iHaveFourSlowerBalls',23,2110,100,966),('IMadeThisInClass',18,263,100,413),('Impossibletoresistme',6,457,100,375),('ithisem',9,73,100,400),('jedimomos',34,2893,100,662),('Jill_Sandwich98',1,2,7,3),('justice-wargrave',18,488,100,5303),('jxsingh',15,4121,19,353),('Khattak00',96,2936,20,24),('Killing_Medusa',3,25,100,855),('King1003',100,51560,100,529),('KingKthe9',3,2,48,493),('kutteykabacha',100,5212,100,2363),('Look_Alive',100,26612,100,1398),('mac19thecook',80,14232,100,475),('madaboutsports',22,968,31,59),('makeimpact',64,6054,100,228),('mammary_man',16,404,100,376),('Mellow__Martian',100,5111,100,193),('MGsquare',100,5039,100,484),('Mikolaj_Kopernik',100,3015,100,535),('mojambowhatisthescen',100,12838,100,3953),('mr_I_cant_meme',100,120650,100,250),('myredditreg',1,0,43,67),('naughty_ningen',100,7148,100,566),('NiallH22',100,4599,100,688),('NihiloEx',100,62198,100,1103),('notingelsetodo',100,1309,100,447),('Octaldude',93,3576,100,412),('okaywhat22',100,14346,100,1537),('oxygenballad',6,249,64,519),('OzFootball',100,4186,45,1436),('polopiko',100,15977,100,470),('PonderousIdo',100,2299,100,395),('prashant_foodie',18,599,100,1021),('pringle_8642',70,15428,100,479),('quietcrisp',27,11813,100,6531),('rammittal180',29,1545,100,495),('RealityF',100,4518,100,743),('Roflopter',3,35,100,365),('RohitSharma264',51,35432,48,116),('rokkmrt3',6,1416,27,178),('sajdx1',100,17254,100,565),('sam-sepiol',52,1444,100,917),('SepulchreOfAzrael',100,5863,100,577),('SexMan69x',17,96,100,429),('shoppingbagdrizzyy',12,2963,100,679),('sidechaincompression',81,2477,100,361),('silver565',67,1736,100,430),('simbbbaaa',40,1104,100,272),('skepticallyskeptic1',100,17988,100,576),('Snack_Sized_Denzel',2,4,12,201),('space_pirate65',64,7179,100,1167),('tailendertripe',100,8269,100,1286),('TaylorSwiftIsGod_01',35,3286,100,457),('that_introverted_guy',100,29430,100,1682),('TheFedoraKnight',100,22218,100,735),('TheJeck',100,21818,100,3401),('themaratha',100,2473,100,475),('thepokemonchef',22,350,100,658),('Transitionals',92,1274,100,822),('turtlemons',100,3684,100,1132),('Ukgamer125',100,16073,100,772),('VaastavB',51,836,100,1826),('vickyaheer',5,14,2,3),('yashsq',4,178,39,174);
/*!40000 ALTER TABLE `reddituser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 23:48:32
