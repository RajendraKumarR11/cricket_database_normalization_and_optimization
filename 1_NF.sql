#Player table data
select *
from cricket_socialmediaanalysis.player;

#player table - null value check in primary key column (Player_ID)
select *
from cricket_socialmediaanalysis.player p
where p.Player_ID is NULL;

#Player table - number of records with Player_ID as primary key
select count((p.Player_ID)) as 'Count'
from cricket_socialmediaanalysis.player p;

#Player table - number of distinct records with Player_ID as primary key
select count(distinct(p.Player_ID)) as 'Count'
from cricket_socialmediaanalysis.player p;

#playerbattingstatistics table data
select *
from cricket_socialmediaanalysis.playerbattingstatistics;

#playerbattingstatistics table - null value check in primary key column (Player_ID)
select *
from cricket_socialmediaanalysis.playerbattingstatistics pbs
where pbs.Player_ID is NULL;

#playerbattingstatistics table - number of records with Player_ID as primary key
select count(pbs.Player_ID) as 'Count'
from cricket_socialmediaanalysis.playerbattingstatistics pbs;

#Player table - number of distinct records with Player_ID as primary key
select count(distinct(pbs.Player_ID)) as 'Count'
from cricket_socialmediaanalysis.playerbattingstatistics pbs;

#playerbowlingstatistics table data
select *
from cricket_socialmediaanalysis.playerbowlingstatistics;

#playerbowlingstatistics table - null value check in primary key column (Player_ID)
select *
from cricket_socialmediaanalysis.playerbowlingstatistics pobs
where pobs.Player_ID is NULL;

#playerbowlingstatistics table - number of records with Player_ID as primary key
select count(pbos.Player_ID) as 'Count'
from cricket_socialmediaanalysis.playerbowlingstatistics pbos;

#playerbowlingstatistics table - number of distinct records with Player_ID as primary key
select count(distinct(pbos.Player_ID)) as 'Count'
from cricket_socialmediaanalysis.playerbowlingstatistics pbos;

#playerfieldingstatistics table data
select *
from cricket_socialmediaanalysis.playerfieldingstatistics;

#playerfieldingstatistics table - null value check in primary key column (Player_ID)
select *
from cricket_socialmediaanalysis.playerfieldingstatistics pfs
where pfs.Player_ID is NULL;

#playerfieldingstatistics table - number of records with Player_ID as primary key
select count(pfs.Player_ID) as 'Count'
from cricket_socialmediaanalysis.playerfieldingstatistics pfs;

#playerfieldingstatistics table - number of distinct records with Player_ID as primary key
select count(distinct(pfs.Player_ID)) as 'Count'
from cricket_socialmediaanalysis.playerfieldingstatistics pfs;

#team table data
select *
from cricket_socialmediaanalysis.team;

#team table - null value check in primary key column (Team_ID)
select *
from cricket_socialmediaanalysis.team t
where t.Team_ID is NULL;

#team table - number of records with Team_ID as primary key
select count(t.Team_ID) as 'Count'
from cricket_socialmediaanalysis.team t;

#team table - number of distinct records with Team_ID as primary key
select count(distinct(t.Team_ID)) as 'Count'
from cricket_socialmediaanalysis.team t;

#teambattingstatistics table data
select *
from cricket_socialmediaanalysis.teambattingstatistics;

#teambattingstatistics table - null value check in primary key column (Team_ID)
select *
from cricket_socialmediaanalysis.teambattingstatistics tbs
where tbs.Team_ID is NULL;

#teambattingstatistics table - number of records with Team_ID as primary key
select count(tbs.Team_ID) as 'Count'
from cricket_socialmediaanalysis.teambattingstatistics tbs;

#teambattingstatistics table - number of distinct records with Team_ID as primary key
select count(distinct(tbs.Team_ID)) as 'Count'
from cricket_socialmediaanalysis.teambattingstatistics tbs;

#teambowlingstatistics table data
select *
from cricket_socialmediaanalysis.teambowlingstatistics;

#teambowlingstatistics table - null value check in primary key column (Team_ID)
select *
from cricket_socialmediaanalysis.teambowlingstatistics tbos
where tbos.Team_ID is NULL;

#teambowlingstatistics table - number of records with Team_ID as primary key
select count(tbos.Team_ID) as 'Count'
from cricket_socialmediaanalysis.teambowlingstatistics tbos;

#teambowlingstatistics table - number of distinct records with Team_ID as primary key
select count(distinct(tbos.Team_ID)) as 'Count'
from cricket_socialmediaanalysis.teambowlingstatistics tbos;

#tweet table data
select *
from cricket_socialmediaanalysis.tweet;

#tweet table - null value check in primary key column (Tweet_ID)
select *
from cricket_socialmediaanalysis.tweet tw
where tw.Tweet_ID is NULL;

#tweet table - number of records with Tweet_ID as primary key
select count(tw.Tweet_ID) as 'Count'
from cricket_socialmediaanalysis.tweet tw;

#tweet table - number of distinct records with Tweet_ID as primary key
select count(distinct(tw.Tweet_ID)) as 'Count'
from cricket_socialmediaanalysis.tweet tw;

#twitteruser table data
select *
from cricket_socialmediaanalysis.twitteruser;

#twitteruser table - null value check in primary key column (User_Name)
select *
from cricket_socialmediaanalysis.twitteruser tu
where tu.User_Name is NULL;

#twitteruser table - number of records with User_Name as primary key
select count(tu.User_Name) as 'Count'
from cricket_socialmediaanalysis.twitteruser tu;

#twitteruser table - number of distinct records with User_Name as primary key
select count(distinct(tu.User_Name)) as 'Count'
from cricket_socialmediaanalysis.twitteruser tu;

#twitterhashtag table data
select *
from cricket_socialmediaanalysis.twitterhashtag;

#twitterhashtag table - null value check in primary key column (Hashtag_ID)
select *
from cricket_socialmediaanalysis.twitterhashtag th
where th.Hashtag_ID is NULL;

#twitterhashtag table - number of records with Hashtag_ID as primary key
select count(th.Hashtag_ID) as 'Count'
from cricket_socialmediaanalysis.twitterhashtag th;

#twitterhashtag table - number of distinct records with Hashtag_ID as primary key
select count(distinct(th.Hashtag_ID)) as 'Count'
from cricket_socialmediaanalysis.twitterhashtag th;

#redditpost table data
select *
from cricket_socialmediaanalysis.redditpost;

#redditpost table - null value check in primary key column (Post_ID)
select *
from cricket_socialmediaanalysis.redditpost rp
where rp.Post_ID is NULL;

#redditpost table - number of records with Post_ID as primary key
select count(rp.Post_ID) as 'Count'
from cricket_socialmediaanalysis.redditpost rp;

#twitterhashtag table - number of distinct records with Post_ID as primary key
select count(distinct(rp.Post_ID)) as 'Count'
from cricket_socialmediaanalysis.redditpost rp;

#reddituser table data
select *
from cricket_socialmediaanalysis.reddituser;

#reddituser table - null value check in primary key column (User_ID)
select *
from cricket_socialmediaanalysis.reddituser ru
where ru.User_ID is NULL;

#reddituser table - number of records with User_ID as primary key
select count(ru.User_ID) as 'Count'
from cricket_socialmediaanalysis.reddituser ru;

#reddituser table - number of distinct records with User_ID as primary key
select count(distinct(ru.User_ID)) as 'Count'
from cricket_socialmediaanalysis.reddituser ru;

#Addition of new columns 'FirstName' and 'Last_Name'
ALTER TABLE cricket_socialmediaanalysis.player
ADD First_Name VARCHAR(50),
ADD Last_Name VARCHAR(50);

#Splitting Player_Name into First_Nmme and Last_Name and storing into respective columns
update cricket_socialmediaanalysis.player
set 
First_Name = SUBSTRING_INDEX(Player_Name, ' ', 1),
Last_Name = substring(Player_Name from instr(Player_Name, ' ') + 1);

#Dropping Player_Name column
ALTER TABLE cricket_socialmediaanalysis.player
DROP COLUMN Player_Name;

#After dropping Player_Name column
select *
from cricket_socialmediaanalysis.player;