#View of Use case (9) 
#Description: Displaying the list of players and their respective teams, who had been in the team for more than 15 years for the teams to consider swapping chances for younger players.
#Precondition: Only Players, who have playing in present time(Career End = 2018, as per database) and have played greater than or equal to 100 matches are considered.
#Steps: Numerical operation(difference) is performed between ‘Career End’ and ‘Career Start; columns of Player table and is connected with team table to extract the team information
#Response: Return the list of all players, their tenure in the team and their team name.

create view players_with_more_than_12_year_tenure as (select p.First_Name,p.Last_Name, (p.Career_End - p. Career_Start ) as "Tenure", t.Team_Name
from cricket_socialmediaanalysis.player p
inner join cricket_socialmediaanalysis.team t
on p.Team_ID = t.Team_ID 
where (p.Career_End - p. Career_Start ) > 12
order by p.First_Name, p.Last_Name);

#Executing view:
select * from players_with_more_than_12_year_tenure;