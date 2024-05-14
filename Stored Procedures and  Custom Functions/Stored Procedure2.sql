Create Database Youtube3;
Use Youtube3;
Select * from youtube_mysql;
-- Stored Procedure
DELIMITER $$
Create Procedure Getvideobycategory90(IN Category01 varchar(300))
BEGIN
Select * From youtube_mysql
where Category= Category01;
END $$
DELIMITER ;

-- Call stored Procedure 
Call  Getvideobycategory90 ('Entertainment');

-- 
DELIMITER $$ 
Create Procedure GetBYChannelname44(IN Channel70 varchar (300))
BEGIN 
SELECT VideoId,Channelname,Duration,Category,No_Views,No_comments,Rating
From youtube_mysql
Where Channelname = Channel70;
END$$
DELIMITER ;

Call GetBYChannelname44('EvilSquirrelPictures');

-- Insert In Stored Procedure
DELIMITER $$
Create Procedure Addnew_video22(IN VideoId Varchar(100),
Channelname varchar(100),
Duration INT,
Category varchar(100),
No_Views INT,
No_Comments INT,
Rating DECIMAL(3,2))
BEGIN
INSERT INTO youtube_mysql(VideoId,Channelname,Duration,Category,No_Views,No_comments,Rating)
values(VideoId,Channelname,Duration,Category,No_Views,No_comments,Rating);
END$$
DELIMITER ;


Call Addnew_video22 ("MMM","CCC",234,"COMEDY",34,6,2.66);
Select * from youtube_mysql;
