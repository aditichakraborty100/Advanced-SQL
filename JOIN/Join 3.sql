Use aditi;
show tables;

select * from books;
Select * from  genres;
select * from authors;



-- Inner join 
Select a.Author_Name, b.Title 
from authors a
inner join Books b
On a.Author_Id = b. Author_Id;

-- Left join 
-- Inner join 
Select a.Author_Name, b.Title , g.Genre_Name
from authors a
inner join Books b
On a.Author_Id = b. Author_Id
left join Genres g
on b.Genre_Id = g.Genre_Id;

-- Right Join 
Select a. Author_Name , b.Title, g.Genre_Name
From Authors a 
Right join books b
On a.Author_Id = b.Author_Id 
Right join Genres g
On B.Genre_Id = g.Genre_ID ;

