# print the no. of books in the database

SELECT sum(title) FROM books;


# print out how many books were released in each year.ALTER

SELECT released_year, count(*) FROM books GROUP BY released_year;

SELECT released_year, count(title) FROM books GROUP BY released_year;

# printout totoal number of books in stockALTER

SELECT Sum(stock_quantity) FROM books;


# find avrage relaeased yera fro each author


SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_fname,author_lname ORDER BY released_year;

# find the full naem of the author who wrote the longest book.

SELECT author_fname, author_lname, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT CONCAT(author_fname," ",author_lname," wrote longest book of ", pages," pages" ) AS 'longest books' FROM books where pages = (SELECT MAX(pages) FROM books);



#LAST QUESTION 

SELECT released_year AS 'year',COUNT(title) AS "# books",AVG(pages) AS 'avg pages' FROM books GROUP BY released_year ORDER BY released_year ASC;