#Index (9) : stumpings_made_index
#Description: Included index on 'Stumpings_Made' field in playerfieldingstatistics table
#Sub query picks up the list of wicketkeepers from all the teams, based on non-zero 'Stumpings_Made' value.
#Main query picks up the wicketkeeper with more than 20 stumpings and displays the stumping per match percentage.
#Joins used:
#1. Tables player and playerfieldingstatistics are joined using Player_ID.
#2. Tables player and team are joined using Team_ID.

#Query to check Before/After using Index:
select p.First_Name,p.Last_Name,t.Team_Name, concat((pf.Stumpings_Made/pf.Innings_Fielded)*100, '%') as 'Stumping per match Percentage'
from cricket_socialmediaanalysis.playerfieldingstatistics pf, cricket_socialmediaanalysis.player p, 
cricket_socialmediaanalysis.team t
where p.Player_ID = pf.Player_ID and p.Team_ID = t.Team_ID and  pf.Stumpings_Made > 20
 and p.Player_ID in (
select p.Player_ID
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerfieldingstatistics pfs
where p.Player_ID = pfs.Player_ID and
pfs.Stumpings_Made > 0);

#Explain Query:
explain select p.First_Name,p.Last_Name,t.Team_Name, concat((pf.Stumpings_Made/pf.Innings_Fielded)*100, '%') as 'Stumping per match Percentage'
from cricket_socialmediaanalysis.playerfieldingstatistics pf, cricket_socialmediaanalysis.player p, 
cricket_socialmediaanalysis.team t
where p.Player_ID = pf.Player_ID and p.Team_ID = t.Team_ID and  pf.Stumpings_Made > 20
 and p.Player_ID in (
select p.Player_ID
from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerfieldingstatistics pfs
where p.Player_ID = pfs.Player_ID and
pfs.Stumpings_Made > 0);

#Creation of index:
CREATE INDEX stumpings_made_index ON cricket_socialmediaanalysis.playerfieldingstatistics (Stumpings_Made);
