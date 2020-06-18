#stored Procedure (10) : teams_with_selected_average_and_winnablity_in_least_matches()
#Description: With 'battingstatslimit and 'bowlingstatslimit' as input parameters and 
#'teamname' as output parameter, the procedure looks out for the team which has 'Avg_Runs_Per_Wicket_Batting' greater 
#than or equal to the imput 'battingstatslimit' and 'Avg_Runs_Per_Wicket_Bowling' less than or equal to 
#input 'bowlingstatslimit' in least number of matches and displays its winnability opinion predicted by logic written within 
#function team_winning_rate_opinion() (a function is called during procedure execution)

#Joins used: 
#1.  Tables 'teambattingstatistics' and 'team' are joined using 'Team_ID' 
#2.  Tables 'teambowlingstatistics' and 'team' are joined using 'Team_ID' 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `teams_with_selected_average_and_winnablity_in_least_matches`(IN battingstatslimit float, 
IN bowlingstatslimit float, OUT teamname text)
    READS SQL DATA

BEGIN
    select t.Team_Name into teamname
    from cricket_socialmediaanalysis.team t, cricket_socialmediaanalysis.teambattingstatistics tb, 
    cricket_socialmediaanalysis.teambowlingstatistics tbo
    where t.Team_ID =tb.Team_ID and t.Team_ID = tbo.Team_ID and tb.Avg_Runs_Per_Wicket_Batting >= battingstatslimit
    and tbo.Avg_Runs_Per_Wicket_Bowling <= bowlingstatslimit
    order by t.Team_Matches_Played
    LIMIT 1;

END$$
DELIMITER ;

# Procedure call for 'teams_with_selected_average_and_winnablity_in_least_matches()' with 30 and 30 as input parameters with 
#putput parameter 'teamname' given as input for function 'team_winning_rate_opinion()'
Call cricket_socialmediaanalysis.teams_with_selected_average_and_winnablity_in_least_matches (30,30, @teamname);
select @teamname as 'Team Name', cricket_socialmediaanalysis.team_winning_rate_opinion(@teamname) as 'Winnability Opinion' ;



