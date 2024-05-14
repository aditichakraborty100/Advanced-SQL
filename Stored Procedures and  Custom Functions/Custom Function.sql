Show databases;
Create database Youtube1; 
Use Youtube1;
Select * from youtube_mysql;
-- Function ( Avg rating)
DELIMITER $$
Create Function GetAvg_rating(Channel2 varchar (300))
RETURNS DECIMAL(3,2)
Deterministic
Begin
Declare AvgRating Decimal(3,2);
Select Avg(Rating) INTO AvgRating
From youtube_mysql
Where Channelname = Channel2;
Return AvgRating;
END$$
DELIMITER ;


--  call Function 

Select Channelname,GetAvg_rating(Channelname) as AvgRating 
from youtube_mysql
where Channelname ="EvilSquirrelPictures";

