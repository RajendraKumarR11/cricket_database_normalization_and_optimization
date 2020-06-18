#Function (3) : players_attached_to_a_hashtag()
#Description: Accepts hashtag name as input and returns the concatenated list of player names(inner concatenation of 
#first name and last name), about whom tweets were posted with the input hashtag.
#Joins used: 
#1. Tables 'tweet' and 'twitterhashtag' are joined using 'Tweet_ID'
#2. Tables 'tweet' and 'player' are joined using 'Player_ID'.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `players_attached_to_a_hashtag`(hashtag_name text) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE player_names text;

select group_concat( distinct (concat_ws (' ', p.First_Name, p.Last_Name))) INTO player_names
from cricket_socialmediaanalysis.tweet t, cricket_socialmediaanalysis.twitterhashtag h, 
cricket_socialmediaanalysis.player p
where t.Tweet_ID = h.Tweet_ID and t.Player_ID = p.Player_ID
and h.Name='Cricket';

  RETURN player_names;
END$$
DELIMITER ;

# Function call for players_attached_to_a_hashtag() with popular hashtag name 'cricket'
select cricket_socialmediaanalysis.players_attached_to_a_hashtag('cricket') as 'Player Names';
