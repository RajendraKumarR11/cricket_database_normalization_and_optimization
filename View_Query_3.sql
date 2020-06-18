#View of Use case (3) 
#Description: Displaying tweet count per team from the stored tweets information, thereby accessing team popularity in social media.
#Precondition: Only team with Players, who are playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Steps: Find the tweets related to players and then relate it to teams, thereby summing the tweets per team.
#Response: Return the list of teams with their related tweet count.

create view team_tweet_count as (select te.Team_Name,count(Tweet_ID) as "Tweet_Count"
from cricket_socialmediaanalysis.tweet t
inner join cricket_socialmediaanalysis.player p
on t.Player_ID = p.Player_ID
inner join cricket_socialmediaanalysis.team te
on te.Team_ID = p.Team_ID
group by te.Team_Name);

#Executing view:
select * from team_tweet_count;

