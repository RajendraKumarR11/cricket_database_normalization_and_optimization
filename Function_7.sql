#Function (7) : players_with_four_wicket_records_in_selective_innings()
#Description: Accepts 'number_of_four_wicket_records' and 'number_of_innings' as input parameters
#and returns  the concatenated list of player names(inner concatenation of 
#first name and last name), who had obtained more than particular nunber of 'four-wicket-record' 
#in more than particualar number of innings given as input.
#Joins used: Tables 'player' and 'playerbowlingstatistics' are joined using 'Player_ID'.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `players_with_four_wicket_records_in_selective_innings`
(number_of_4_wicket_records int, number_of_innings int) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE player_names text;
  
select group_concat( distinct (concat_ws (' ', p.First_Name, p.Last_Name))) INTO player_names
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerbowlingstatistics pb
where p.Player_ID = pb.Player_ID and pb.Innings_Bowled_In >= number_of_innings 
and pb.Four_Wickets_in_An_Innings >= number_of_4_wicket_records;

   RETURN player_names;

END$$
DELIMITER ;

# Function call for players_with_four_wicket_records_in_selective_innings() with '5' 
# four-wicket records and '100' innings  as input
select cricket_socialmediaanalysis.players_with_four_wicket_records_in_selective_innings(5, 100) as 'Player Names';