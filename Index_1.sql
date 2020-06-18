#Index (1) : comments_count_index
#Description: Included index on 'Comments_Count' field in redditpost table
#Displays the player names from a particular team, whose reddit posts in total had obtained more
#50 comments.
#Joins used:
#1. Tables player and redditpost are joined using Player_ID.
#1. Tables player and team are joined using Team_ID.
 
#Query to check Before/After using Index:
select sum(rp.Comments_Count) as 'Total Comments', p.First_Name, p.Last_Name
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.redditpost rp, 
cricket_socialmediaanalysis.team t
where p.Team_ID = t.Team_ID and rp.Player_ID = p.Player_ID and t.Team_Name = 'India' 
group by p.Player_ID
having sum(rp.Comments_Count) >=50;

#Explain query
explain select sum(rp.Comments_Count) as 'Total Comments', p.First_Name, p.Last_Name
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.redditpost rp, 
cricket_socialmediaanalysis.team t
where p.Team_ID = t.Team_ID and rp.Player_ID = p.Player_ID and t.Team_Name = 'India' 
group by p.Player_ID
having sum(rp.Comments_Count) >=50;


#Creation of index:
CREATE INDEX comments_count_index ON cricket_socialmediaanalysis.redditpost (Comments_Count);

