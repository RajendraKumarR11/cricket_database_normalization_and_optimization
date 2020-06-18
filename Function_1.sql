#Function (1) : number_of_tweets()
#Description: Accepts username as input and returns the total number of tweets made by the user.
#Joins used: Tables 'tweet' and 'twitteruser' are joined usimg 'User_ID'.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `number_of_tweets`(user_name text) RETURNS int
    READS SQL DATA
BEGIN
  DECLARE number_of_tweets INT;

  SELECT count(t.Tweet_ID) INTO number_of_tweets
  FROM cricket_socialmediaanalysis.tweet t, cricket_socialmediaanalysis.twitteruser u
  WHERE t.User_ID = u.User_ID and u.User_Name = user_name;

  RETURN number_of_tweets;
END$$
DELIMITER ;

# Function call for number_of_tweets() with user name 'Cricket World'
select cricket_socialmediaanalysis.number_of_tweets('Cricket World') as 'Number of Tweets';

