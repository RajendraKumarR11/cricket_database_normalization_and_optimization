#stored Procedure (5) : player_not_out_percentage()
#Description: Consists of teamname as input parameter and numberoftweets and returns the not out precentage of players in the 
#team from highest to lowest
#Joins used: 
#1.  Tables 'team' and 'player' are joined using 'Team_ID' 
#2.  Tables 'playerbattingstatistics' and 'player' are joined using 'Player_ID' 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `player_not_out_percentage`(IN teamname text)
    READS SQL DATA
BEGIN
   select concat_ws (' ', p.First_Name, p.Last_Name) as 'Player Name',  concat ((pb.Not_Outs/pb.Innings_Batted)*100, '%') as 'Not Out Percentage'
   from cricket_socialmediaanalysis.playerbattingstatistics pb, cricket_socialmediaanalysis.player p,
   cricket_socialmediaanalysis.team t
   where pb.Player_ID = p.Player_ID and p.Team_ID = t.Team_ID and t.Team_Name like teamname 
   order by ((pb.Not_Outs/pb.Innings_Batted)*100) DESC;
	
END$$
DELIMITER ;

# Procedure call for 'player_not_out_percentage()' with 'England' as input parameter
Call player_not_out_percentage ('England');



