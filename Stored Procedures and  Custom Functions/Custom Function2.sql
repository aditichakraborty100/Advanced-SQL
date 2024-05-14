Use Youtube1;
Select * from youtube_mysql;
-- FUNCTIONS
DELIMITER $$
Create Function MAXRating(Channel00 varchar(300))
Returns Decimal(3,2)
Deterministic
Begin
Declare MaxRating Decimal(3,2);
Select Max(Rating) INTO MaxRating
From youtube_mysql
Where Channelname = Channel00;
Return MaxRating;
END$$
DELIMITER ;

Select Channelname,MAXRating(Channelname) as MaxRating 
from youtube_mysql;
Select Channelname,MaxRating(Channelname) as MaxRating
from youtube_mysql
where Channelname='hggh22';
