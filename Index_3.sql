#Index (3) : favourite_count_index
#Description: Included index on 'Favourite_Count' field in tweet table
#Displays the player names from selective teams, whose related tweets in total had obtained non zero favourite count.
#Joins used:
#1. Tables player and tweet are joined using Player_ID.
#1. Tables player and team are joined using Team_ID.
 
#Query to check Before/After using Index:
select p.First_Name, p.Last_Name, team.Team_Name,sum(t.Favourite_Count) as 'Total Favourite Count'
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.tweet t, 
cricket_socialmediaanalysis.team team
where p.Team_ID = team.Team_ID and t.Player_ID = p.Player_ID and team.Team_Name not in ('Pakistan', 'India', 'West Indies', 'Australia',
'Bangladesh')
group by p.Player_ID
having  sum(t.Favourite_Count) != 0 ;

#Explain query
explain select p.First_Name, p.Last_Name, team.Team_Name,sum(t.Favourite_Count) as 'Total Favourite Count'
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.tweet t, 
cricket_socialmediaanalysis.team team
where p.Team_ID = team.Team_ID and t.Player_ID = p.Player_ID and team.Team_Name not in ('Pakistan', 'India', 'West Indies', 'Australia',
'Bangladesh')
group by p.Player_ID
having  sum(t.Favourite_Count) != 0 ;

#Creation of index:
CREATE INDEX favourite_count_index ON cricket_socialmediaanalysis.tweet (Favourite_Count);

