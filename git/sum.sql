SELECT author_fname, author_lname, Sum(pages) FROM books GROUP BY author_lname, author_fname;

    