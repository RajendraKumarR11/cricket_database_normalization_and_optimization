#Function (9) : allround_players_from_team()
#Description: Accepts 'teamname' as input parameter
#and returns the names of players belonging to that team, who have a batting average(computed through formula) more than 30 and 
#bowling economy rate(computed through formula)  less than equal to 5.0 and not equal to 0
#Joins used: 
#1.Tables 'player' and 'playerbattingstatistics' are joined using 'Player_ID'.
#2.Tables 'player' and 'playerbowlingstatistics' are joined using 'Player_ID'.
#3.Tables 'player' and 'team' are joined using 'Team_ID'.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `allround_players_from_team`(teamname text) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE player_names text;
  
select group_concat( distinct (concat_ws (' ', p.First_Name, p.Last_Name))) INTO player_names
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.team t, 
cricket_socialmediaanalysis.playerbattingstatistics pb, cricket_socialmediaanalysis.playerbowlingstatistics pbow
where p.Team_ID = t.Team_ID and p.Player_ID = pb.Player_ID and p.Player_ID = pbow.Player_ID and
pb.Runs_Scored/(pb.Innings_Batted - pb.Not_Outs)> 30 and pbow.Runs_Conceded/(pbow.Balls_Bowled / 6) <= 5.0 and
pbow.Runs_Conceded/(pbow.Balls_Bowled / 6) != 0 and t.Team_Name like teamname;

   RETURN player_names;

END$$
DELIMITER ;

# Function call for allround_players_from_team() with 'Pakistan' input
select cricket_socialmediaanalysis.allround_players_from_team('Pakistan') as 'Player Names';

drop function cricket_socialmediaanalysis.allround_players_from_team;