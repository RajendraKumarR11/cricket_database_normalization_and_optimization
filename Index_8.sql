#Index (8) : ducks_scored_index
#Description: Included index on 'Ducks_Scored' field in playerbattingstatistics table
#Displays the count of efficient batsmen within every team, who had scored very less numebr of ducks in their matches played.
#Joins used:
#1. Tables player and playerbattingstatistics are joined using Player_ID.
#2. Tables player and team are joined using Team_ID.

#Query to check Before/After using Index:
select count(p.Player_ID) as 'Count of Efficient Batsmen', t.Team_Name
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.team t, 
cricket_socialmediaanalysis.playerbattingstatistics pb
where p.Team_ID = t.Team_ID and 
p.Player_ID = pb.Player_ID and
p.player_ID in (
select pbs.Player_ID
from cricket_socialmediaanalysis.playerbattingstatistics pbs
where pbs.Ducks_Scored < 10)
and (pb.Innings_Batted - pb.Ducks_Scored )<=100
group by t.Team_Name; 

#Explain Query:
explain select count(p.Player_ID) as 'Count of Efficient Batsmen', t.Team_Name
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.team t, 
cricket_socialmediaanalysis.playerbattingstatistics pb
where p.Team_ID = t.Team_ID and 
p.Player_ID = pb.Player_ID and
p.player_ID in (
select pbs.Player_ID
from cricket_socialmediaanalysis.playerbattingstatistics pbs
where pbs.Ducks_Scored < 10)
and (pb.Innings_Batted - pb.Ducks_Scored )<=100
group by t.Team_Name; 

#Creation of index:
CREATE INDEX ducks_scored_index ON cricket_socialmediaanalysis.playerbattingstatistics (Ducks_Scored);
