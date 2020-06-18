#Function (10) : predict_player_type()
#Description: Accepts firstname and lastname of the player as input and returns the player type based on the below logic
# 'Allrounder' ---> If batting average(computed by a formmula) is greater than 30 and bowling economy rate(computed by a formula) 
# is less than or equal to 5.

# 'Bowler' --> If batting average(computed by a formmula) is less than 20 and bowling economy rate(computed by a formula) 
# is lesser than or equal to 6 or not equal to 0

#'Batsman' --> Failure of above two cases
#Tables used:
#1.Tables 'player' and 'playerbattingstatistics' are joined using 'Player_ID'.
#2.Tables 'player' and 'playerbowlingstatistics' are joined using 'Player_ID'.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `predict_player_type`(firstname varchar(50), lastname varchar(50)) RETURNS text
    READS SQL DATA
BEGIN
  DECLARE batting_average double;
  DECLARE bowling_economy_rate double;
  DECLARE player_type text;
  
  select (pb.Runs_Scored/(pb.Innings_Batted - pb.Not_Outs)) , (pbow.Runs_Conceded/(pbow.Balls_Bowled / 6))
  INTO batting_average, bowling_economy_rate
  from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerbattingstatistics pb, 
  cricket_socialmediaanalysis.playerbowlingstatistics pbow
  where p.Player_ID = pb.Player_ID  and p.Player_ID = pbow.Player_ID 
  and p.Last_Name = lastname and p.First_Name = firstname;
  
 # select (pbow.Runs_Conceded/(pbow.Balls_Bowled / 6)) INTO bowling_economy_rate
  #from cricket_socialmediaanalysis.player p, cricket_socialmediaanalysis.playerbowlingstatistics pbow
  #where p.Player_ID = pbow.Player_ID  and p.Last_Name like lastname and p.First_Name like firstname;
  
  IF batting_average > 30.0 and bowling_economy_rate <= 5.0 THEN
      SET player_type = 'Allrounder';

   ELSEIF batting_average < 20.0 and (bowling_economy_rate <=6.0 or bowling_economy_rate != 0.0) THEN
      SET player_type = 'Bowler';

   ELSEIF batting_average > 20.0 THEN
      SET player_type = 'Batsman' ;
   
   ELSE
      SET player_type = 'Invalid Input';

   END IF;
RETURN player_type;

END$$
DELIMITER ;

# Function call for predict_player_type() with 'm' and 'morkel' as input parameters
select cricket_socialmediaanalysis.predict_player_type('m', 'morkel') as 'Player Type';













