#Function (4) : player_names_attached_to_reddit_posts_on_selected_day()
#Description: Accepts date as input and returns the concatenated list of player names(inner concatenation of 
#first name and last name), about whom reddit posts were posted on that particualr day.
#Joins used:  Tables 'redditpost' and 'player' are joined using 'Player_ID'.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `player_names_attached_to_reddit_posts_on_selected_day`(dateofconcern datetime) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE player_names text;

select group_concat( distinct (concat_ws (' ', p.First_Name, p.Last_Name))) INTO player_names 
from cricket_socialmediaanalysis.redditpost r, cricket_socialmediaanalysis.player p
where r.Player_ID = p.Player_ID and 
r.Created_Time between (dateofconcern) and timestamp (dateofconcern, '23:59:59');

   RETURN player_names;

END$$
DELIMITER ;

# Function call for player_names_attached_to_reddit_posts_on_selected_day() with '2019-02-24' as input
select cricket_socialmediaanalysis.player_names_attached_to_reddit_posts_on_selected_day('2019-02-24') as 'Player Names';
