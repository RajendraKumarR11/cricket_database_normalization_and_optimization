#stored Procedure (7) : players_with_more_runs_than_selected_player()
#Description: Consists of playername as input parameter and returns the list of all players from all teams
#with runs more than the runs scored by the player mentioned in the input parameter
#Joins used: 
#1.  Tables 'team' and 'player' are joined using 'Team_ID' 
#2.  Tables 'playerbattingstatistics' and 'player' are joined using 'Player_ID' 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `players_with_more_runs_than_selected_player`(IN playername text)
    READS SQL DATA
BEGIN
select p.First_Name, p.Last_Name,batst.Runs_Scored, t.Team_Name
from cricket_socialmediaanalysis.playerbattingstatistics batst 
inner join cricket_socialmediaanalysis.player p 
on p.Player_ID = batst.Player_ID
inner join cricket_socialmediaanalysis. team t
on p.Team_ID = t.Team_ID
where batst.Runs_Scored > 
(select batst.Runs_Scored
from cricket_socialmediaanalysis.playerbattingstatistics batst 
inner join cricket_socialmediaanalysis.player p 
on p.Player_ID = batst.Player_ID
where p.Last_Name = substring(playername from instr(playername, ' ') + 1)
 and p.First_Name = SUBSTRING_INDEX(playername, ' ', 1));

END$$
DELIMITER ;

# Procedure call for 'player_not_out_percentage()' with 'DA Miller' as input parameter
Call players_with_more_runs_than_selected_player ('DA Miller');



