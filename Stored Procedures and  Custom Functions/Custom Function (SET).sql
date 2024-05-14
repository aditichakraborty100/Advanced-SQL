Use youtube1;
Select* from youtube_mysql;
DELIMITER $$
Create function Getdurationinminutes1( DurationInSeconds INT)
RETURNS int
deterministic
Begin
Declare Durationinminutes int;
Set Durationinminutes = DurationInSeconds DIV 60;
Return Durationinminutes ;
END $$
DELIMITER ;

Select VideoId, Channelname,Getdurationinminutes1(Duration) as Durationinminutes, Category
From youtube_mysql
where Category = "Music";

Select VideoId, Channelname,Getdurationinminutes1(Duration) as Durationinminutes, Category
From youtube_mysql;
