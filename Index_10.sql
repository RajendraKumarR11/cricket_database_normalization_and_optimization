#Index (10) : not_outs_index
#Description: Included index on 'Not_outs' field in playerbattingstatistics table
#Picks up the batsmen with a good nout out percentage, who can be considered for 'middle-order' batting position.
#First sets a limit of greater than or equal to 20 for 'Not_outs' value and then computes the notout percentage and checks
#if the percentage is greater than or equa to 25. Pics up the batsmen, who satisfy this condition.
#Joins used:
#1. Tables player and playerbattingstatistics are joined using Player_ID.
#2. Tables player and team are joined using Team_ID.

#Query to check Before/After using Index:
select concat_ws (' ', p.First_Name, p.Last_Name) as 'Player Name' , t.Team_Name, concat((pbs.Not_outs/pbs.Innings_Batted)*100, '%') as 'Not-out Percentage'
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerbattingstatistics pbs, 
cricket_socialmediaanalysis.team t
where p.Player_ID = pbs.Player_ID
and pbs.Not_Outs >=20
and (pbs.Not_outs/pbs.Innings_Batted)*100 >=25
and t.Team_ID = p.Team_ID
order by p.First_Name;

#Explain Query:
explain select concat_ws (' ', p.First_Name, p.Last_Name) as 'Player Name' , t.Team_Name, concat((pbs.Not_outs/pbs.Innings_Batted)*100, '%') as 'Not-out Percentage'
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerbattingstatistics pbs, 
cricket_socialmediaanalysis.team t
where p.Player_ID = pbs.Player_ID
and pbs.Not_Outs >=20
and (pbs.Not_outs/pbs.Innings_Batted)*100 >=25
and t.Team_ID = p.Team_ID
order by p.First_Name;

#Creation of index:
CREATE INDEX not_outs_index ON cricket_socialmediaanalysis.playerbattingstatistics (Not_outs);
