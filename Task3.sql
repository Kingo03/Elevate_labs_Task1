use booksdb;
-- select all statement will retrieve  all data and column from the table.
select * from authors;

-- where clause use 
select * from books;
select * from books where Genre = 'Fantasy';

-- where clause use with and. 
select * from books where Genre = "Fantasy" and AuthorID = 2;

-- where clause use with or.
select  * from books where not Publisher = null or Genre = 'Magical Realism';

-- use of like in query.
select * from books;
select * from books where Publisher like 'B%';
select Genre from books where Genre like '%m';
select * from books where Publisher like 'B%' and Genre like '%m';
select Title,Publisher, Genre from books where Publisher like 'B%' and Genre like '%y';


-- where clause use with between condition.
select Title from books where Year between 1990 and 2000 ;


-- Order by
use booksdb;
select * from authors order by AuthorID desc;  

