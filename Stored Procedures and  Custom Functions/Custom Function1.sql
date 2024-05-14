use youtube1;
select* from youtube_mysql;
-- Functions
DELIMITER $$
Create Function getminrating( Channel1 varchar(300))
Returns Decimal (3.1)
DETERMINISTIC
BEGIN
Declare minrating Decimal(3,2);
SELECT MIN(Rating) INTO minrating 
from youtube_mysql
Where Channelname = Channel1;
Return minrating; 
END$$
DELIMITER ;


Select Channelname,getminrating(Channelname) as minrating
from youtube_mysql
Where Channelname = "HannahMileyFanatic";
