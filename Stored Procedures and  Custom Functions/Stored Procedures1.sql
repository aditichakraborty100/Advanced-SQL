Use youtube;
Select* from youtube_mysql;

DELIMITER $$
Create Procedure getchannel0021( IN Newchannel100 varchar(500))
BEGIN
SELECT VideoId,Channelname,Duration,Category,No_Views,No_Comments,Rating
from youtube_mysql
Where Channelname = Newchannel100;
END $$
DELIMITER ;

Call getchannel0021("spityogamecom");