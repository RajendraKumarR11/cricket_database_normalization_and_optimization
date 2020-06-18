#Function (8) : team_winning_rate_opinion()
#Description: Accepts teamname as input and returns the team winning rate opinion based on the below logic
# 'Good' ---> If matches won is greater than matches lost
# 'Average' --> If matches won is equal to matches lost
# 'Poor' ---> If matches won is less than matches lost

#Joins used: None.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `team_winning_rate_opinion`(teamname text) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE team_winning_rate INT;
  DECLARE team_winning_rate_opinion text;
  
  select (t.Matches_Won - t.Matches_Lost) INTO team_winning_rate
  from cricket_socialmediaanalysis.team t where t.Team_Name like teamname;
  
  IF team_winning_rate > 0 THEN
      SET team_winning_rate_opinion = 'Good';

   ELSEIF team_winning_rate < 0 THEN
      SET team_winning_rate_opinion = 'Poor';

   ELSE
      SET team_winning_rate_opinion = 'Average';

   END IF;
RETURN team_winning_rate_opinion;

END$$
DELIMITER ;

# Function call for players_with_four_wicket_records_in_selective_innings() with '5' 
# four-wicket records and '100' innings  as input
select cricket_socialmediaanalysis.team_winning_rate_opinion('New Zealand') as 'Team winning rate opinion';















