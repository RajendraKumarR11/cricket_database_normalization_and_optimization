#stored Procedure (1) : player_specific_tweets_made_on_selected_date()
#Description: Consists of tweetdate as input parameter and returns the list of all tweets made on the 
#input date, which is categorised with player name.
#Joins used: Tables 'player' and 'tweet' are joined using 'Player_ID'.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `player_specific_tweets_made_on_selected_date`(IN tweetdate date)
    READS SQL DATA
BEGIN
     SELECT (concat_ws (' ', p.First_Name, p.Last_Name)) as 'Player Name', t.Content
     FROM cricket_socialmediaanalysis.tweet t, cricket_socialmediaanalysis.player p
     WHERE p.Player_ID = t.Player_ID
     AND t.Created_Time between (tweetdate) and timestamp (tweetdate, '23:59:59');
     
END$$
DELIMITER ;

# Procedure call for player_specific_tweets_made_on_selected_date() with '2019-03-02' as input parameter
Call player_specific_tweets_made_on_selected_date ('2019-03-02');

drop procedure player_specific_tweets_made_on_selected_date;
