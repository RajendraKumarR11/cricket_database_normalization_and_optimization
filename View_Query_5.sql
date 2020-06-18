#View of Use case (5) 
#Description: Displaying number of hashtags used in tweets against each player, thereby assessing the social media popularity of the player from the stored data.
#Precondition: Only Players, who are playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Steps: Find the hashtags related to  tweets , which are again related to players, thereby summing the number of hashtags per player.
#Response: Return the list of players with their related hashtag count from the stored data..

create view hashtag_count_attached_to_player as (select  p.First_Name, p.Last_Name, count(ht.Name) as "Number_Of_Hashtags"
from cricket_socialmediaanalysis.twitterhashtag ht
inner join cricket_socialmediaanalysis.tweet t
on t.Tweet_ID = ht.Tweet_ID 
inner join cricket_socialmediaanalysis.player p
on p.Player_ID = t.Player_ID
group by p.First_Name, p.Last_Name
order by Number_Of_Hashtags DESC);

#Executing view:
select * from hashtag_count_attached_to_player;