#View of Use case (1) 
#Description: Displaying players with most twitter popularity count(Retweet count plus Favourite count)
#Precondition: Only Players, who are playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Steps: Find the tweets related to players and then calculate the popularity count (Retweet count plus Favourite count) of each tweet, thereby summing up the total for every player.
#Response: Return the list of players and their popularity count.


#Displaying the top 50 popular tweet ids, calculated in terms of sum of retweet count and favourite count
create view player_twitter_popularity as (select p.First_Name,p.Last_Name, (SUM(t.Retweet_Count) + SUM(t.Favourite_Count)) as "Total_Popularity_Count"
from cricket_socialmediaanalysis.player p
INNER join cricket_socialmediaanalysis.tweet t
on p.Player_ID = t.Player_ID
group by p.First_Name, p.Last_Name
order by Total_Popularity_Count DESC);

#Executing view:
select * from player_twitter_popularity;