Use LibraryDB;


-- 1. Count how many books each member has borrowed
SELECT member_id, COUNT(*) AS total_borrowed
FROM Borrow
GROUP BY member_id;
-- Using COUNT() and GROUP BY to show how many books each member borrowed


-- 2. Count how many books each author has written
SELECT author_id, COUNT(book_id) AS total_books
FROM Book_Author
GROUP BY author_id;
-- Using COUNT() and GROUP BY to count total books written by each author


-- 3. Find average publication year of all books
SELECT AVG(publication_year) AS average_year
FROM Book;
-- Using AVG() to calculate average publication year of all books


-- 4. Show number of books borrowed by each member, only if they borrowed more than 1 book
SELECT member_id, COUNT(*) AS total_borrowed
FROM Borrow
GROUP BY member_id
HAVING COUNT(*) > 1;
-- GROUP BY to group by member, HAVING to filter members who borrowed more than 1 book


-- 5. Total number of borrowed books
SELECT COUNT(*) AS total_borrowed_books
FROM Borrow;
-- Simple COUNT() to get total borrowed books in the system


-- 6. Total books written by each author, only those who have written 2 or more
SELECT author_id, COUNT(book_id) AS total_books
FROM Book_Author
GROUP BY author_id
HAVING COUNT(book_id) >= 2;
-- Using GROUP BY and HAVING to filter authors who wrote at least 2 books




