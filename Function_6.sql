#Function (6) : players_with_hundrerds_in_selective_innings()
#Description: Accepts 'number_of_hundreds' and 'number_of_innings' as input parameters
#and returns  the concatenated list of player names(inner concatenation of 
#first name and last name), who had scored more than particular nunber of hundrerds in more than particualar number
#of matches given as input.
#Joins used: Tables 'player' and 'playerbattingstatistics' are joined using 'Player_ID'.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `players_with_hundrerds_in_selective_innings`(number_of_hundreds int, 
number_of_innings int) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE player_names text;
  
select group_concat( distinct (concat_ws (' ', p.First_Name, p.Last_Name))) INTO player_names
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerbattingstatistics pb
where p.Player_ID = pb.Player_ID and pb.Innings_Batted >= number_of_innings and pb.Hundreds_Scored >= number_of_hundreds;

   RETURN player_names;

END$$
DELIMITER ;

# Function call for players_with_hundrerds_in_selective_innings() with '20' hundreds and '100' innings  as input
select cricket_socialmediaanalysis.players_with_hundrerds_in_selective_innings(20, 100) as 'Player Names';
