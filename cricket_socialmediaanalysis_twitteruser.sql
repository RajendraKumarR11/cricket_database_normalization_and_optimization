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
-- Table structure for table `twitteruser`
--

DROP TABLE IF EXISTS `twitteruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `twitteruser` (
  `User_ID` bigint(20) NOT NULL,
  `User_Name` text COLLATE utf8_unicode_ci,
  `User_Screen_Name` text COLLATE utf8_unicode_ci,
  `Followers_Count` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitteruser`
--

LOCK TABLES `twitteruser` WRITE;
/*!40000 ALTER TABLE `twitteruser` DISABLE KEYS */;
INSERT INTO `twitteruser` VALUES (19389647,'Cricket World','Cricket_World',51764),(20430744,'Mark Posniak','mposniak',1147),(38259856,'Noura von Briesen','vonbreeezy',172),(46560481,'TJK','TJK98',130),(57329732,'Dom the BDM','DomSheahan',562),(62265673,'Swamp Rabbit Cafe','swamprabbitcafe',5998),(79716718,'Devarchit','Devarchit',1528),(82072251,'News from Bangladesh','banglanews_eng',87999),(84031296,'pete childs','petespocketfull',516),(86342593,'Ken Borland','KenBorland',3561),(129594482,'Arthur_S','allanholloway',2579),(206159864,'A AL Noman','NOMANNJ',221),(230877272,'Javis Financial','javisfinancial',1035),(244189221,'sanket_srivastava','sanketsriv',189),(248720269,'Kelly Jameson','kj_amplified',180),(250849390,'ठाकुर','Oboy_vilsy',341),(285468331,'Michael Shean','MjShean',300),(308902604,'Rj Salman Khan','RjSalmanKhan',226),(340461135,'kirstie.','kirstiee_morkel',223),(400744698,'Brittany Rae','_BRM_',408),(465442029,'Pranaybolla','Pranaybolla',56),(518610762,'Deepak Singh Bariha','Deepaksbariha',221),(558312027,'HR Gopala Krishna','hrgopal',316),(743163426,'Muhammad Mudussir','mudussir_khawer',1469),(813697111,'seyed haider ali','SeyedHaider',17),(1147055137,'Joshi','joshi_bp',175),(1209525692,'Sportskeeda Cricket','SK__Cricket',7949),(1283962488,'NEHA❤VIRAT','NehasVirat',455),(1354224234,'BoyBounce™','BounceMusicc',14207),(1421770333,'Faisal Hafeez','fhafeez64',802),(1693751191,'Sajid Hussain','Sajiology',152),(1714386565,'#HBLPSL #PSLT20 #PSL4','ThePSL_SCORE',44574),(1895912737,'Fazal Aslam','Faxal_Aslam',6638),(2181682574,'Ayush Rungta','Ayushrungta22',33),(2238442790,'Maury hodgens','Rockgolfpro',61),(2316178969,'Eb Badu™️✨','_itsEbae',2307),(2793648636,'Ankit tiwari #EliminateSeparatists','ankitanky707',694),(2837689815,'The Boss Lady Enterprises','thebossladyent',220),(2867385798,'Yash Brahmbhatt','YashMBrahmbhatt',52),(3016528877,'Scott Pryde','sk_pryde',507),(3311551130,'Avinash','pandaramvijayn1',518),(3408932446,'ObscureCricketStats','ObscureCricStat',548),(4062263602,'Marcus Rashvest','daleyblindshow',839),(4648802300,'robin','luqmanazli_',352),(712956294467072000,'RidgeAD','PRidge_AD',757),(715424840761487362,'Albertus conner','ConnerAlbertus',652),(719263741775384576,'981thebreeze','981thebreeze',910),(721678525892177924,'Zubayed Rashid','get2hridoy',664),(735695411063623680,'Haeam , voice of GOD','emailtohchandr2',307),(746928002743799808,'Tanveer Hussain','TANVIR_HS',374),(752088435305943044,'#modijifirekbar','prasad_11_1984',135),(754559756128452612,'Shoaib Jahangir','CH_shoaibhanjra',535),(755082855688962048,'Rahul Majumdar','RahulM45_',8160),(759284212700680192,'Jithiń Jv Jŕ','JithinJvJr',338),(771323403257188352,'Rennie O Mathews','Rennie_Mathews',197),(782633371050479617,'Soniya Tanna','tanna_soniya',90),(828430504559046660,'⏅','pokeyoons',941),(842757876745682944,'Aman','A3m1a2n',14),(854933481540861953,'thecricketblog','thecricblogger',116),(903625083704418304,'Neyati♏️#SreeFam #NainSree','Jenwinget5',190),(947897503709405184,'Bangladesh Cricket FC','BDCricketFC',64),(949161388475371521,'Christina  Simone Mathews (nee Olie)','mathews_simone',24),(953632699587137536,'Jawad','Jawad_Ali_12',211),(957614521765392384,'Rakshith','RakshithBJ2',289),(959585929823338496,'Dr. Seuss Savior Connery & My wife\' Cris','seusssalazar',371),(981434972270743555,'Times Now Sports','timesnowsports',1905),(990289219305312257,'Pleasantly Pink','ReginaRed4',3494),(1038261072715636736,'Nikhil Kashyap','Nikhil_Ksyp',31),(1057814945960771584,'- Niranjan -','Lost_InUrDreamz',54),(1079748515226619905,'Sarcasm Is The Answer To Stupidity','sarcasm_to',17),(1102980537281593345,'Joanna Granahan-Smith','GranahanSmith',0),(1102990801766924292,'LWithstandley','LWithstandley',2);
/*!40000 ALTER TABLE `twitteruser` ENABLE KEYS */;
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
