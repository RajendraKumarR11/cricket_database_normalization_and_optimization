#View of Use case (4) 
#Description: Displaying number of reddit posts per day for a particular cricket team given as input(India in this case). The resulting date can be correlated with important cricketing events related to the respective team on that day, leading to increased social media presence.
#Precondition: Only Team with  Players, who are playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Also, posts under r/Cricket channel were alone considered for evaluation.
#Steps: Find the posts related to players, who belong to the team given in input and sum up the reddit posts per day, displaying the per day breakdown for the team
#Input: Any cricket team available under ‘team’ table.
#Response: Return the per day breakdown of number of reddit posts for the input team.

create view reddit_post_count_of_india_team_per_day as (select DATE(post.Created_Time) as "Post_Date", count(post.Post_ID)  'Number_Of_Posts'
from cricket_socialmediaanalysis.redditpost post
inner join cricket_socialmediaanalysis.player p
on post.Player_ID = p.Player_ID
inner join cricket_socialmediaanalysis.team te
on te.Team_ID = p.Team_ID
where te.Team_Name = "India"
group by Post_Date
order by Post_Date);

#Executing view:
select * from reddit_post_count_of_india_team_per_day;