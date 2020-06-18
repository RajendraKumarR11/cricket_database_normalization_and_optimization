#Index (2) : upvote_count_index
#Description: Included index on 'Up_vote_Count' field in redditpost table
#Displays the player names from a selective teams, whose reddit posts in total had obtained more
#10 up votes.
#Joins used:
#1. Tables player and redditpost are joined using Player_ID.
#1. Tables player and team are joined using Team_ID.
 
#Query to check Before/After using Index:
select sum(rp.Up_vote_Count) as 'Total Up votes', p.First_Name, p.Last_Name
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.redditpost rp, 
cricket_socialmediaanalysis.team t
where p.Team_ID = t.Team_ID and rp.Player_ID = p.Player_ID and t.Team_Name in ('Pakistan', 'India', 'West Indies', 'Australia',
'Bangladesh')
group by p.Player_ID
having  sum(rp.Up_vote_Count) >= 10 ; 

#Explain query
explain select sum(rp.Up_vote_Count) as 'Total Up votes', p.First_Name, p.Last_Name
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.redditpost rp, 
cricket_socialmediaanalysis.team t
where p.Team_ID = t.Team_ID and rp.Player_ID = p.Player_ID and t.Team_Name in ('Pakistan', 'India', 'West Indies', 'Australia',
'Bangladesh')
group by p.Player_ID
having  sum(rp.Up_vote_Count) >= 10 ; 

#Creation of index:
CREATE INDEX upvote_count_index ON cricket_socialmediaanalysis.redditpost (Up_vote_Count);

