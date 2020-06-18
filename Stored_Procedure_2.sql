#stored Procedure (2) : player_specific_reddit_posts_made_on_selected_date()
#Description: Consists of postdate as input parameter and returns the list of all reddit posts made on the 
#input date, which is categorised with player name.
#Joins used: Tables 'player' and 'redditpost' are joined using 'Player_ID'.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `player_specific_reddit_posts_made_on_selected_date`(IN postdate date)
    READS SQL DATA
BEGIN
     SELECT (concat_ws (' ', p.First_Name, p.Last_Name)), post.Content_Title
     FROM cricket_socialmediaanalysis.redditpost post, cricket_socialmediaanalysis.player p
     WHERE p.Player_ID = post.Player_ID
     AND post.Created_Time between (postdate) and timestamp (postdate, '23:59:59');
     
END$$
DELIMITER ;

# Procedure call for player_specific_reddit_posts_made_on_selected_date() with '2019-03-02' as input parameter
Call player_specific_reddit_posts_made_on_selected_date ('2019-03-02');

