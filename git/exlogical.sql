#--//first question--p
SELECT title FROM books WHERE released_year < 1980;


#--//second question--f

SELECT title FROM books WHERE author_lname ='Eggers'  || author_lname= 'Chabon';

#--//third question.--p

SELECT title, author_lname, author_fname FROM books WHERE author_lname LIKE 'Lahiri' && released_year > 2000 ORDER BY released_year ASC ;


# fourth queston.p

SELECT title , pages FROM books WHERE pages BETWEEN 100 AND 200 ORDER BY pages ASC;

# fifth queston


SELECT title ,author_lname FROM books WHERE author_lname LIKE 'C%' || 'S%';


#sixth queston

SELECT title , author_lname , CASE 
                                    WHEN title LIKE "%stories%" THEN 'Short stories' WHEN title LIKE "%Just Kids%" THEN 'memoir' WHEN title LIKE "%Staggering%" THEN 'memoir' ELSE 'Novel' END AS TYPE FROM books;                           s



#bonusALTER

SELECT author_fname, author_lname , CASE 
WHEN COUNT(*) = 1 THEN '1 book' 
ELSE CONCAT(COUNT(*),' books') END AS COUN FROM books GROUP BY author_fname,author_lname;
