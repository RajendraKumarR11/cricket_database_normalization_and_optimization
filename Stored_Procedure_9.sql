#stored Procedure (9) : identify_wicketkeppers_from_all_teams()
#Description: With no input parameter, this procedure identifies all the players who had been placed as 
#'Wicketkeeprs' wothin their respective teams, based on 'Stumpings_Made' column, as wicketkeepers are the only 
#one players, who can make stumpings on field
#Joins used: 
#1.  Tables 'team' and 'player' are joined using 'Team_ID' 
#2.  Tables 'playerfieldingstatistics' and 'player' are joined using 'Player_ID' 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_wicketkeppers_from_all_teams`()
    READS SQL DATA
BEGIN
   select p.First_Name, p.Last_Name, t.Team_Name
   from cricket_socialmediaanalysis.player p,cricket_socialmediaanalysis.playerfieldingstatistics pfs,
   cricket_socialmediaanalysis.team t
   where p.Player_ID = pfs.Player_ID and p.Team_ID = t.Team_ID and 
   pfs.Stumpings_Made > 0;

END$$
DELIMITER ;

# Procedure call for 'identify_wicketkeppers_from_all_teams()' with no input parameter
Call identify_wicketkeppers_from_all_teams ();



