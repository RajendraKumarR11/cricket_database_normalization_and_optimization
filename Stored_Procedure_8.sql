#stored Procedure (8) : players_with_more_wicktets_than_all_players_of_selected_team()
#Description: Consists of teamname as input parameter and returns the list of all players from all teams
#with wickets more than the wickets taken by the all players from team mentioned in the input parameter
#Joins used: 
#1.  Tables 'team' and 'player' are joined using 'Team_ID' 
#2.  Tables 'playerbowlingstatistics' and 'player' are joined using 'Player_ID' 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `players_with_more_wicktets_than_all_players_of_selected_team`(IN teamname text)
    READS SQL DATA
BEGIN
select p.First_Name, p.Last_Name,pbow.Wickets_Taken, t.Team_Name
from cricket_socialmediaanalysis.playerbowlingstatistics pbow 
inner join cricket_socialmediaanalysis.player p 
on p.Player_ID = pbow.Player_ID
inner join cricket_socialmediaanalysis. team t
on p.Team_ID = t.Team_ID
where pbow.Wickets_Taken > all
(select pbow.Wickets_Taken
from cricket_socialmediaanalysis.playerbowlingstatistics pbow
inner join cricket_socialmediaanalysis.player p 
on p.Player_ID = pbow.Player_ID
inner join cricket_socialmediaanalysis.team t
on p.Team_ID = t.Team_ID
where t.Team_Name = teamname);

END$$
DELIMITER ;

# Procedure call for 'players_with_more_wicktets_than_all_players_of_selected_team()' with 'Sri Lanka' as input parameter
Call players_with_more_wicktets_than_all_players_of_selected_team ('Sri Lanka');



