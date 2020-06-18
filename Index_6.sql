#Index (6) : runs_scored_index
#Description: Included index on 'Wickets_Taken' field in playerbowlingstatistics table
#Displays the player names from all teams, who had taken more wicketsthan all players of australia and england 
#  and also more than 10.
#Joins used:
#1. Tables player and playerbowlingstatistics are joined using Player_ID.
#2. Tables player and team are joined using Team_ID.

#Query to check Before/After using Index:
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
inner join cricket_socialmediaanalysis.team team
on p.Team_ID = team.Team_ID
where team.Team_Name in  ('Australia', 'England'))
and pbow.Wickets_Taken >= 10;

#Explain Query:
explain select p.First_Name, p.Last_Name,pbow.Wickets_Taken, t.Team_Name
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
inner join cricket_socialmediaanalysis.team team
on p.Team_ID = team.Team_ID
where team.Team_Name in  ('Australia', 'England'))
and pbow.Wickets_Taken >= 10;

#Creation of index:
CREATE INDEX wickets_taken_index ON cricket_socialmediaanalysis.playerbowlingstatistics (Wickets_Taken);
