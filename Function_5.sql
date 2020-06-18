#Function (5) : dates_of_team_tweets()
#Description: Accepts team name as input and returns the concatenated list of dates(extracting only date from datetime stamp),
#on which twwets were made about players from the input team.
#Joins used:  
#1.Tables 'tweet' and 'player' are joined using 'Player_ID'.
#2.Tables 'player' and 'team' are joined using 'Team_ID'.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `dates_of_team_tweets`(teamname text) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE dates text;
  
select group_concat(DISTINCT(Date(t.Created_Time))) INTO dates
from cricket_socialmediaanalysis.tweet t, cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.team team
where t.Player_ID = p.Player_ID and team.Team_ID = p.Team_ID and team.Team_Name like teamname;

   RETURN dates;

END$$
DELIMITER ;

# Function call for player_names_attached_to_reddit_posts_on_selected_day() with '2019-02-24' as input
select cricket_socialmediaanalysis.dates_of_team_tweets('India') as 'Dates on which tweets were posted';

