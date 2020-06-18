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
-- Temporary view structure for view `player_reddit_popularity`
--

DROP TABLE IF EXISTS `player_reddit_popularity`;
/*!50001 DROP VIEW IF EXISTS `player_reddit_popularity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `player_reddit_popularity` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Total_Popularity_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reddit_post_count_of_india_team_per_day`
--

DROP TABLE IF EXISTS `reddit_post_count_of_india_team_per_day`;
/*!50001 DROP VIEW IF EXISTS `reddit_post_count_of_india_team_per_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `reddit_post_count_of_india_team_per_day` AS SELECT 
 1 AS `Post_Date`,
 1 AS `Number_Of_Posts`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `players_with_more_runs_than_all_australian_players`
--

DROP TABLE IF EXISTS `players_with_more_runs_than_all_australian_players`;
/*!50001 DROP VIEW IF EXISTS `players_with_more_runs_than_all_australian_players`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `players_with_more_runs_than_all_australian_players` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Runs_Scored`,
 1 AS `Team_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `player_twitter_popularity`
--

DROP TABLE IF EXISTS `player_twitter_popularity`;
/*!50001 DROP VIEW IF EXISTS `player_twitter_popularity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `player_twitter_popularity` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Total_Popularity_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_fielders_per_team`
--

DROP TABLE IF EXISTS `top_fielders_per_team`;
/*!50001 DROP VIEW IF EXISTS `top_fielders_per_team`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `top_fielders_per_team` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Field_Dismissals`,
 1 AS `Team_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `players_with_more_than_12_year_tenure`
--

DROP TABLE IF EXISTS `players_with_more_than_12_year_tenure`;
/*!50001 DROP VIEW IF EXISTS `players_with_more_than_12_year_tenure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `players_with_more_than_12_year_tenure` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Tenure`,
 1 AS `Team_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `team_tweet_count`
--

DROP TABLE IF EXISTS `team_tweet_count`;
/*!50001 DROP VIEW IF EXISTS `team_tweet_count`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `team_tweet_count` AS SELECT 
 1 AS `Team_Name`,
 1 AS `Tweet_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allround_players`
--

DROP TABLE IF EXISTS `allround_players`;
/*!50001 DROP VIEW IF EXISTS `allround_players`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `allround_players` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Team_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `hashtag_count_attached_to_player`
--

DROP TABLE IF EXISTS `hashtag_count_attached_to_player`;
/*!50001 DROP VIEW IF EXISTS `hashtag_count_attached_to_player`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `hashtag_count_attached_to_player` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Number_Of_Hashtags`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `teams_with_strong_bowlers`
--

DROP TABLE IF EXISTS `teams_with_strong_bowlers`;
/*!50001 DROP VIEW IF EXISTS `teams_with_strong_bowlers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `teams_with_strong_bowlers` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Player_Bowling_Average`,
 1 AS `Team_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `player_reddit_popularity`
--

/*!50001 DROP VIEW IF EXISTS `player_reddit_popularity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_reddit_popularity` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,(sum(`post`.`Up_vote_Count`) + sum(`post`.`Comments_Count`)) AS `Total_Popularity_Count` from (`player` `p` join `redditpost` `post` on((`p`.`Player_ID` = `post`.`Player_ID`))) group by `p`.`First_Name`,`p`.`Last_Name` order by `Total_Popularity_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reddit_post_count_of_india_team_per_day`
--

/*!50001 DROP VIEW IF EXISTS `reddit_post_count_of_india_team_per_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reddit_post_count_of_india_team_per_day` AS select cast(`post`.`Created_Time` as date) AS `Post_Date`,count(`post`.`Post_ID`) AS `Number_Of_Posts` from ((`redditpost` `post` join `player` `p` on((`post`.`Player_ID` = `p`.`Player_ID`))) join `team` `te` on((`te`.`Team_ID` = `p`.`Team_ID`))) where (`te`.`Team_Name` = 'India') group by `Post_Date` order by `Post_Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `players_with_more_runs_than_all_australian_players`
--

/*!50001 DROP VIEW IF EXISTS `players_with_more_runs_than_all_australian_players`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `players_with_more_runs_than_all_australian_players` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,`batst`.`Runs_Scored` AS `Runs_Scored`,`t`.`Team_Name` AS `Team_Name` from ((`playerbattingstatistics` `batst` join `player` `p` on((`p`.`Player_ID` = `batst`.`Player_ID`))) join `team` `t` on((`p`.`Team_ID` = `t`.`Team_ID`))) where `batst`.`Runs_Scored` > all (select `batst`.`Runs_Scored` from ((`playerbattingstatistics` `batst` join `player` `p` on((`p`.`Player_ID` = `batst`.`Player_ID`))) join `team` `t` on(((`p`.`Team_ID` = `t`.`Team_ID`) and (`t`.`Team_Name` = 'Australia'))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `player_twitter_popularity`
--

/*!50001 DROP VIEW IF EXISTS `player_twitter_popularity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_twitter_popularity` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,(sum(`t`.`Retweet_Count`) + sum(`t`.`Favourite_Count`)) AS `Total_Popularity_Count` from (`player` `p` join `tweet` `t` on((`p`.`Player_ID` = `t`.`Player_ID`))) group by `p`.`First_Name`,`p`.`Last_Name` order by `Total_Popularity_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_fielders_per_team`
--

/*!50001 DROP VIEW IF EXISTS `top_fielders_per_team`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_fielders_per_team` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,max((`pfs`.`Catches_Taken` + `pfs`.`Stumpings_Made`)) AS `Field_Dismissals`,`t`.`Team_Name` AS `Team_Name` from ((`player` `p` join `playerfieldingstatistics` `pfs` on((`p`.`Player_ID` = `pfs`.`Player_ID`))) join `team` `t` on((`p`.`Team_ID` = `t`.`Team_ID`))) group by `t`.`Team_Name` order by `Field_Dismissals` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `players_with_more_than_12_year_tenure`
--

/*!50001 DROP VIEW IF EXISTS `players_with_more_than_12_year_tenure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `players_with_more_than_12_year_tenure` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,(`p`.`Career_End` - `p`.`Career_Start`) AS `Tenure`,`t`.`Team_Name` AS `Team_Name` from (`player` `p` join `team` `t` on((`p`.`Team_ID` = `t`.`Team_ID`))) where ((`p`.`Career_End` - `p`.`Career_Start`) > 12) order by `p`.`First_Name`,`p`.`Last_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `team_tweet_count`
--

/*!50001 DROP VIEW IF EXISTS `team_tweet_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `team_tweet_count` AS select `te`.`Team_Name` AS `Team_Name`,count(`t`.`Tweet_ID`) AS `Tweet_Count` from ((`tweet` `t` join `player` `p` on((`t`.`Player_ID` = `p`.`Player_ID`))) join `team` `te` on((`te`.`Team_ID` = `p`.`Team_ID`))) group by `te`.`Team_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allround_players`
--

/*!50001 DROP VIEW IF EXISTS `allround_players`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allround_players` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,`t`.`Team_Name` AS `Team_Name` from (`player` `p` join `team` `t` on((`p`.`Team_ID` = `t`.`Team_ID`))) where `p`.`Player_ID` in (select `bowlst`.`Player_ID` from `playerbowlingstatistics` `bowlst` where (((`bowlst`.`Runs_Conceded` / (`bowlst`.`Balls_Bowled` / 6)) <= 5.0) and `bowlst`.`Player_ID` in (select `batst`.`Player_ID` from `playerbattingstatistics` `batst` where ((`batst`.`Runs_Scored` / (`batst`.`Innings_Batted` - `batst`.`Not_Outs`)) > 30)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hashtag_count_attached_to_player`
--

/*!50001 DROP VIEW IF EXISTS `hashtag_count_attached_to_player`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hashtag_count_attached_to_player` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,count(`ht`.`Name`) AS `Number_Of_Hashtags` from ((`twitterhashtag` `ht` join `tweet` `t` on((`t`.`Tweet_ID` = `ht`.`Tweet_ID`))) join `player` `p` on((`p`.`Player_ID` = `t`.`Player_ID`))) group by `p`.`First_Name`,`p`.`Last_Name` order by `Number_Of_Hashtags` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teams_with_strong_bowlers`
--

/*!50001 DROP VIEW IF EXISTS `teams_with_strong_bowlers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teams_with_strong_bowlers` AS select `p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,(`bowst`.`Runs_Conceded` / `bowst`.`Wickets_Taken`) AS `Player_Bowling_Average`,`t`.`Team_Name` AS `Team_Name` from ((`player` `p` join `team` `t` on((`p`.`Team_ID` = `t`.`Team_ID`))) join `playerbowlingstatistics` `bowst` on((`bowst`.`Player_ID` = `p`.`Player_ID`))) where (((`bowst`.`Runs_Conceded` / `bowst`.`Wickets_Taken`) <= 30.0) and ((`bowst`.`Runs_Conceded` / `bowst`.`Wickets_Taken`) <> 0) and exists(select 1 from `teambowlingstatistics` `tbowst` where ((`tbowst`.`Team_ID` = `t`.`Team_ID`) and (`tbowst`.`Avg_Runs_Per_Wicket_Bowling` <= 40.0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 23:48:32
