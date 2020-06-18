#Index (7) : team_matches_played_index
#Description: Included index on 'Team_Matches_Played' field in team table
# Displays the names of all teams, which contain senior players and have played considerable number of matches.
#Joins used:
#1. Tables player and team are joined using Team_ID.

#Query to check Before/After using Index:
select t.Team_Name
from cricket_socialmediaanalysis.team t
where t.Team_ID in 
(select team.Team_ID
from cricket_socialmediaanalysis.team team, cricket_socialmediaanalysis.player p
where  team.Team_ID = p.Team_ID and 
team.Team_Matches_Played - p.Matches_Played <=700)
and t.Team_Matches_Played >=800;

#Explain Query:
explain select t.Team_Name
from cricket_socialmediaanalysis.team t
where t.Team_ID in 
(select team.Team_ID
from cricket_socialmediaanalysis.team team, cricket_socialmediaanalysis.player p
where  team.Team_ID = p.Team_ID and 
team.Team_Matches_Played - p.Matches_Played <=700)
and t.Team_Matches_Played >=800;

#Creation of index:
CREATE INDEX team_matches_played_index ON cricket_socialmediaanalysis.team (Team_Matches_Played);

