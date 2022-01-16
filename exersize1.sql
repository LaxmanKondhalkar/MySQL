-- aswer for first quesetion 
SELECT title AS 'title' FROM  books WHERE title LIKE '%Stories%';

-- second quesion find the longest books in book table

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;


-- 3rd quesiton print a summary containing the titile and year , for the 3
-- most recent books

SELECT CONCAT(title," - ",released_year) AS 'summary' FROM books
ORDER BY released_year DESC LIMIT 3;


--  4th quesiton find all the books with an author last name which contain space
-- ' ' character.

SELECT title, author_lname FROM books WHERE author_lname LIKE  '% %';


-- 5th quesiton find the 3 books with the lowest stock select titile year and stock

SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity,title ASC LIMIT 3;

-- 6th quesiton print titile and author_lname , sorted first by author_lname and then by titile

SELECT title, author_lname FROM books ORDER BY author_lname,title ASC;

-- 7th quesion
SELECT UPPER( CONCAT('MY FAVORITE AUTHOR IS ',
       author_fname,' ',author_lname,'!')) AS 'yell' FROM books
       ORDER BY author_lname ASC;
 
 
  SELECT title, released_year FROM books WHERE released_year
  BETWEEN 2000 AND 2010 ORDER BY released_year;
  
   SELECT title, released_year FROM books
 WHERE released_year NOT BETWEEN 2000 AND 2010 ORDER BY released_year;
 
 
 SELECT title, released_year FROM books 
 WHERE released_year NOT IN (2000,2010) ORDER BY released_year;


   SELECT title, released_year FROM books 
 WHERE released_year IN (2000,2010) ORDER BY released_year;


