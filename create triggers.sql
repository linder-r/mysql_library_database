-- Select database 'library'.
USE library;

-- The trigger 'delete_borrowing_update_returned_book' 
-- will delete a book from the borrowing table, 
-- when the book is returned to the library.

-- Delete trigger if it exists.
DROP TRIGGER IF EXISTS delete_from_borrowing;
-- Create new trigger 'delete_borrowing_update_returned_book'.
DELIMITER //
CREATE TRIGGER delete_borrowing_update_returned_book
BEFORE DELETE
ON borrowing FOR EACH ROW
BEGIN
INSERT INTO returned_book (member_id, book_id, borrow_date, due_date) VALUES
(old.member_id, old.book_id, old.borrow_date, old.due_date);
END // 
DELIMITER ;

-- Before a book can be borrowed from the library,
-- it needs to be checked if the book is reserved by another library member.
-- If this is the case, the book can not be borrowed.
-- The trigger 'befor_borrowing_check_reservation' 
-- will check for a reservation
-- and display a error message, if a reservation is found.
 
-- Delete trigger if it exists.
DROP TRIGGER IF EXISTS befor_borrowing_check_reservation;
-- Create new trigger 'befor_borrowing_check_reservation'.
DELIMITER $$
CREATE TRIGGER befor_borrowing_check_reservation
BEFORE INSERT
ON borrowing FOR EACH ROW
BEGIN
DECLARE reserved INT;
SELECT count(*) INTO reserved FROM reservation WHERE book_id = new.book_id AND member_id = new.member_id;
IF reserved = 1 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Borrowing not possible. This book is reserved for a different library member.';
END IF; 
END $$
DELIMITER ;