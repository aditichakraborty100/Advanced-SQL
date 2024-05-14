-- Stored Procedure Example:2
Use Youtube;
Show tables;
Select * from youtube_mysql;
DELIMITER $$
Create Procedure Addnewvideo22(
IN VideoId Varchar(50),
IN Channelname varchar(60),
IN Duration int,
IN Category varchar(60),
IN No_Views Int,
IN No_Comments Int,
Rating Decimal(3,2))
BEGIN
INSERT INTO youtube_mysql (VideoID,Channelname,Duration,Category,No_views,No_Comments,Rating)
Values(VideoID,Channelname,Duration,Category,No_views,No_Comments,Rating);
END $$
DELIMITER ;

Call Addnewvideo22 ("ABC","XYV",165,"Comedy",70,45,3.22);
