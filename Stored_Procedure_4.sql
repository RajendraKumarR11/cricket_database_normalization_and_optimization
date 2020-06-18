#stored Procedure (4) : users_with_most_commented_reddit_posts()
#Description: Consists of number_of_users as input parameter and returns the list of reddit users(userID), 
#where number of results is controlled by the input paramater
#Joins used: Tables 'redditpost' and 'reddituser' are joined using 'User_ID'.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_with_most_commented_reddit_posts`(IN number_of_users INT)
    READS SQL DATA
BEGIN
    select sum(p.Comments_Count) as 'Total number of comments', u.User_ID
    from cricket_socialmediaanalysis.redditpost p, cricket_socialmediaanalysis.reddituser u
    where p.User_ID = u.User_ID
    group by u.User_ID
    order by sum(p.Comments_Count) DESC
    Limit number_of_users;
	
END$$
DELIMITER ;

# Procedure call for users_with_most_commented_reddit_posts() with '3' as input parameter
Call users_with_most_commented_reddit_posts (3);

