#View of Use case (2) 
#Description: Displaying players with most  reddit popularity count(Up vote count plus Comments count)
#Precondition: Only Players, who are playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Also, posts under r/Cricket channel were alone considered for evaluation.
#Steps: Find the posts related to players and then calculate the popularity count (Up vote count plus Comment count) of each post, thereby summing up the total for every player.
#Response: Return the list of players and their popularity count.


create view player_reddit_popularity as (select p.First_Name,p.Last_Name, (SUM(post.Up_vote_Count) + SUM(post.Comments_Count)) as "Total_Popularity_Count"
from cricket_socialmediaanalysis.player p
inner join cricket_socialmediaanalysis.redditpost post
on p.Player_ID = post.Player_ID
group by p.First_Name, p.Last_Name
order by Total_Popularity_Count DESC);

#Executing view:
select * from player_reddit_popularity;