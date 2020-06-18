#stored Procedure (3) : users_with_most_retweeted_tweets()
#Description: Consists of number_of_users as input parameter and returns the list of twitters users(userID, username and user secreen name), 
#where number of results is controlled by the input paramater
#Joins used: Tables 'tweet' and 'twitteruser' are joined using 'User_ID'.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_with_most_retweeted_tweets`(IN number_of_users INT)
    READS SQL DATA
BEGIN
	 SELECT sum(t.Retweet_Count) as 'Retweet Count', u.User_ID, u.User_Name,u.User_Screen_Name
     from cricket_socialmediaanalysis.tweet t, cricket_socialmediaanalysis.twitteruser u
     where t.User_ID = u.User_ID 
     group by u.User_ID
	 order by sum(t.Retweet_Count) DESC
	 LIMIT number_of_users;
	
END$$
DELIMITER ;

# Procedure call for users_with_most_retweeted_tweets() with '2' as input parameter
Call users_with_most_retweeted_tweets (2);


