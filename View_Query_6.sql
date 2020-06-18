#View of Use case (6) 
#Description: Displaying the list of players and their respective teams, who have a batting average greater than 30 and bowling economy rate less than 5, so that they can be classified for all round performance and put up in all round rankings.
#Precondition: Only Players, who are playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Steps: Find the players who have batting average greater than 30 in a subquery. Then use the list to find the players who have bowling economy rate less than 5.0 in another subquery. Then use this restricted list to find which team the player belongs to.
#Response: Return the list of all round players and their team name.

create view allround_players as (select p.First_Name,p.Last_Name,t.Team_Name
from cricket_socialmediaanalysis.player p
inner join cricket_socialmediaanalysis.team t
on p.Team_ID = t.Team_ID
where p.Player_ID in

(select bowlst.Player_ID
from cricket_socialmediaanalysis.playerbowlingstatistics bowlst
where (bowlst.Runs_Conceded/(bowlst.Balls_Bowled / 6) <= 5.0) and 
bowlst.Player_ID in

(select batst.Player_ID
from cricket_socialmediaanalysis.playerbattingstatistics batst
where (batst.Runs_Scored/(batst.Innings_Batted - batst.Not_Outs)> 30))));

#Executing view:
select * from allround_players;

