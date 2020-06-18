#Removal of calculated columns from playerbattingstatistics
#Formulas using existing columns:
#Batting Average = Runs_Scored / (Innings_Batted - Not_Outs) --> Same result as 'Batting_Average' 
#Batting Strike rate = (Runs_Scored * 100) / Balls_Faced --> Same result as 'Batting_Strike_Rate'

select  pb.Player_ID, pb.Runs_Scored,pb.Innings_Batted,pb.Not_Outs, pb.Batting_Average,
pb.Runs_Scored/(pb.Innings_Batted - pb.Not_Outs),
pb.Batting_Strike_Rate, (pb.Runs_Scored * 100)/pb.Balls_Faced
from cricket_socialmediaanalysis.playerbattingstatistics pb
order by pb.runs_scored DESC;

#Dropping columns 'Batting_Average' and 'Batting_Strike_Rate' from playerbattingstatistics
ALTER TABLE cricket_socialmediaanalysis.playerbattingstatistics
DROP Batting_Average, DROP Batting_Strike_Rate;

#After dropping columns 'Batting_Average' and 'Batting_Strike_Rate' from playerbattingstatistics
select *
from cricket_socialmediaanalysis.playerbattingstatistics;

#Removal of calculated columns from playerbowlingstatistics
#Formulas using existing columns:
#Bowling Average = Runs_Conceded / Wickets_Taken --> Same result as 'Bowling_Average' 
#Bowling Strike rate = Balls_Bowled/Wickets_Taken --> Same result as 'Bowling_Strike_Rate'
#Economy Rate = Runs_Conceded / (Balls_Bowled / 6) --> Same result as 'Economy_Rate'

select pb.Player_ID, pb.Runs_Conceded,pb.Wickets_Taken, pb.Bowling_Average, pb.Runs_Conceded/pb.Wickets_Taken,
pb.Bowling_Strike_Rate, pb.Balls_Bowled/pb.Wickets_Taken, pb.Economy_Rate,
( pb.Runs_Conceded/(pb.Balls_Bowled / 6))
from cricket_socialmediaanalysis.playerbowlingstatistics pb
order by pb.Wickets_Taken DESC;

#Dropping columns 'Bowling_Average', 'Bowling_Strike_Rate' and 'Economy_Rate' from playerbowlingstatistics
ALTER TABLE cricket_socialmediaanalysis.playerbowlingstatistics
DROP Bowling_Average, DROP Bowling_Strike_Rate, DROP Economy_Rate;

#After Dropping columns 'Bowling_Average', 'Bowling_Strike_Rate' and 'Economy_Rate' from playerbowlingstatistics
select *
from cricket_socialmediaanalysis.playerbowlingstatistics;

#Removal of calculated columns from playerfieldingstatistics
#Formulas using existing columns:
#Dismissals per Innings = Fielding_Dismissals_Made / Innings_Fielded --> Same result as 'Dismissals_Per_Innings' 

select pf.Player_ID, pf.Dismissals_Per_Innings, pf.Fielding_Dismissals_Made/pf.Innings_Fielded
from cricket_socialmediaanalysis.playerfieldingstatistics pf
order by pf.Fielding_Dismissals_Made;

#Dropping columns 'Dismissals_Per_Innings' from playerfieldingstatistics
ALTER TABLE cricket_socialmediaanalysis.playerfieldingstatistics
DROP Dismissals_Per_Innings;

#After Dropping columns 'Dismissals_Per_Innings' from playerfieldingstatistics
select *
from cricket_socialmediaanalysis.playerfieldingstatistics;

#Removal of calculated columns from playerfieldingstatistics
#Formulas using existing columns:
#Fielding Dismissals Made = Catches_Taken + Stumpings_Made --> Same result as 'Fielding_Dismissals_Made' 

select pf.Player_ID, pf.Fielding_Dismissals_Made, pf.Catches_Taken + pf.Stumpings_Made
from cricket_socialmediaanalysis.playerfieldingstatistics pf;

#Dropping columns 'Fielding_Dismissals_Made' from playerfieldingstatistics
ALTER TABLE cricket_socialmediaanalysis.playerfieldingstatistics
DROP Fielding_Dismissals_Made;

#After Dropping columns 'Fielding_Dismissals_Made' from playerfieldingstatistics
select *
from cricket_socialmediaanalysis.playerfieldingstatistics;