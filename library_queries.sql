-- Select the database 'library'.
USE library;

-- Which books are currently borrowed?
SELECT * FROM borrowing;

-- Which books are currently reserved?
SELECT * FROM reservation;

-- Select all the books and their authors.
-- Most authors have written more then one book. Some books have multiple authors.
-- That's why, books and authors are connected via the table 'authorship'.
SELECT b.book_title, a.author_first_name, a.author_last_name
FROM authorship AS aship
INNER JOIN book AS b
ON aship.book_id = b.book_id
INNER JOIN author AS a
ON aship.author_id = a.author_id
ORDER BY a.author_last_name, a.author_first_name;

-- Let's find all the books, that have more two or more authors.
SELECT aship.book_id, b.book_title, COUNT(*) AS number_of_authors
FROM authorship AS aship
INNER JOIN book AS b
ON aship.book_id = b.book_id
GROUP BY b.book_id
HAVING number_of_authors > 1
ORDER BY number_of_authors DESC;

-- Who has written the most books?
SELECT a.author_first_name, a.author_last_name, COUNT(aship.author_id) AS number_of_books
FROM author AS a
INNER JOIN authorship AS aship
ON a.author_id = aship.author_id
GROUP BY aship.author_id
HAVING number_of_books =
(SELECT COUNT(author_id) FROM authorship
GROUP BY author_id ORDER BY COUNT(author_id) DESC LIMIT 1);

-- How many books do the different genres include?
SELECT g.genre_category, COUNT(ga.genre_id) AS number_of_books
FROM genre as g
INNER JOIN genre_affiliation as ga
on g.genre_id = ga.genre_id
GROUP BY ga.genre_id
ORDER BY number_of_books DESC;

-- What is the average time books are borrowed?
SELECT AVG(DATEDIFF(return_date, borrow_date)) AS average_borrow_time
FROM returned_book;

-- Who has exceeded the library's loan period the most?
SELECT DATEDIFF(rb.return_date, rb.borrow_date) as borrow_days, rb.member_id, m.member_first_name, m.member_last_name
FROM member as m
INNER JOIN returned_book as rb
ON m.member_id = rb.member_id
WHERE DATEDIFF(rb.return_date, rb.borrow_date) = 
(SELECT MAX(DATEDIFF(return_date, borrow_date))
FROM returned_book);

-- How often were the books borrowed?
SELECT rb.book_id, b.book_title, COUNT(rb.book_id) AS number_of_borrowing
FROM returned_book as rb
INNER JOIN book as b
ON rb.book_id = b.book_id
GROUP BY rb.book_id
ORDER BY number_of_borrowing DESC, b.book_title ASC;


