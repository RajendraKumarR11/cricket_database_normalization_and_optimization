#Index (5) : runs_scored_index
#Description: Included index on 'Runs_Scored' field in playerbattingstatistics table
#Displays the player names from all teams, who had scored more than all players of australia and also more than 2000.
#Joins used:
#1. Tables player and playerbattingstatistics are joined using Player_ID.
#2. Tables player and team are joined using Team_ID.

#Query to check Before/After using Index:
select p.First_Name, p.Last_Name,batst.Runs_Scored, t.Team_Name
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
inner join cricket_socialmediaanalysis.team team
on p.Team_ID = team.Team_ID
where team.Team_Name = 'Australia')
and batst.Runs_Scored >= 2000 ;

#Explain Query:
explain select p.First_Name, p.Last_Name,batst.Runs_Scored, t.Team_Name
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
inner join cricket_socialmediaanalysis.team team
on p.Team_ID = team.Team_ID
where team.Team_Name = 'Australia')
and batst.Runs_Scored >= 2000 ;

#Creation of index:
CREATE INDEX runs_scored_index ON cricket_socialmediaanalysis.playerbattingstatistics (Runs_Scored);

