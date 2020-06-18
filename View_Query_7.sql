#View of Use case (7) 
#Description: Displaying the list of players from all teams, who have scored more runs than all players of a particular team(Australia is used in this case). 
#Precondition: Only Players, who are playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Steps: First total runs scored by Australian players is written with a subquery and is compared with total runs scored by all players of other teams using the ‘ALL’ clause.
#Response: Return the list of all players, who have score more runs than every other player in Australia.

create view players_with_more_runs_than_all_australian_players as (select p.First_Name, p.Last_Name,batst.Runs_Scored, t.Team_Name
from cricket_socialmediaanalysis.playerbattingstatistics batst 
inner join cricket_socialmediaanalysis.player p 
on p.Player_ID = batst.Player_ID
inner join cricket_socialmediaanalysis. team t
on p.Team_ID = t.Team_ID
where batst.Runs_Scored > all
(select batst.Runs_Scored
from cricket_socialmediaanalysis.playerbattingstatistics batst 
inner join cricket_socialmediaanalysis.player p 
on p.Player_ID = batst.Player_ID
inner join cricket_socialmediaanalysis. team t
on p.Team_ID = t.Team_ID
and t.Team_Name = "Australia"));

#Executing view:
select * from players_with_more_runs_than_all_australian_players;
