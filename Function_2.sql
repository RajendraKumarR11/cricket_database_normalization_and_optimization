#Function (2) : number_of_reddit_posts()
#Description: Accepts user_id as input and returns the total number of reddit posts made by the user.
#Joins used: Table 'redditpost' is alone used.

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `number_of_reddit_posts`(user_id varchar(256)) RETURNS int
    READS SQL DATA
BEGIN
  DECLARE number_of_reddit_posts INT;

  SELECT count(p.Post_ID) INTO number_of_reddit_posts
  FROM cricket_socialmediaanalysis.redditpost p
  WHERE p.User_ID = user_id;

  RETURN number_of_reddit_posts;
END$$
DELIMITER ;

# Function call for number_of_tweets() with user name 'Cricket World'
select cricket_socialmediaanalysis.number_of_reddit_posts('CricketMatchBot') as 'Number of reddit posts';

