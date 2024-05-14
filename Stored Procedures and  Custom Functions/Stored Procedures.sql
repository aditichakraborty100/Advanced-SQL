Create Database YOUTUBE;
Use YOUTUBE;
Show tables;
Select * from youtube_mysql;
-- Stored Procedures
DELIMITER $$
Create Procedure Getvideobycategory(IN CategoryName varchar(60))
BEGIN 
Select videoId,Channelname,Duration,Category,No_views,No_Comments,Rating
from youtube_mysql
Where Category = CategoryName;
End $$
DELIMITER ;
-- Call Stored Procedure
Call Getvideobycategory("Comedy");
Call Getvideobycategory("Entertainment");
Call getvideobycategory("Pets & Animals");