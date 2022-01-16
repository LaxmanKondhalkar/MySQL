SELECT title , author_fname FROM books WHERE author_fname LIKE '%da%';

SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';


SELECT title FROM books WHERE title LIKE '%the';


SELECT title FROM books WHERE title LIKE '%the%';


SELECT title, author_fname FROM books WHERE author_fname LIKE 'da_%';

SELECT title, author_fname FROM books WHERE author_fname LIKE '_avi%';


-- what if we hafve a title which has % sign in it and we have to find thatALTER
-- we use back slash \ right befor underscore or percentage sign just like bevlow;

SELECT title FROM books WHERE title LIKE '10\%%';

SELECT title FROM books WHERE title LIKE '\_';

