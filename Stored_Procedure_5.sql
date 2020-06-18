#stored Procedure (5) : team_specific_tweet_count()
#Description: Consists of teamname as input parameter and numberoftweets as output parameter.
#where number of tweets posted against the input team is calculated and passed to the output parameter.
#Joins used: 
#1. Tables 'tweet' and 'player' are joined using 'Player_ID'.
#2.  Tables 'team' and 'player' are joined using 'Team_ID' 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `team_specific_tweet_count`(IN teamname text , OUT numberoftweets INT)
    READS SQL DATA
BEGIN
   select count(t.Tweet_ID) into numberoftweets
   from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.team team, cricket_socialmediaanalysis.tweet t
   where t.Player_ID = p.Player_ID and p.Team_ID = team.Team_ID and team.Team_Name like teamname;
	
END$$
DELIMITER ;

# Procedure call for team_specific_tweet_count() with 'West Indies' as input parameter
Call team_specific_tweet_count ('West Indies', @tweetcount);
select @tweetcount as 'Number of tweets'

