-- Select database 'library'.
USE library;

-- Create a stored procedure to retrieve all the borrowings that have exceeded the due_date.
DELIMITER $$
CREATE PROCEDURE get_overdue_borrowings()
BEGIN
SELECT book_id, 
	member_id, 
	borrow_date, 
	due_date, 
	DATEDIFF(CURRENT_DATE(), due_date) as days_overdue
FROM borrowing
WHERE DATEDIFF(CURRENT_DATE(), due_date) > 0;
END $$
DELIMITER ;

-- Call the procedure 'get_overdue_borrowings'
CALL get_overdue_borrowings;

-- We need to calculate the library fees for overdue books
-- and insert them into the table 'fee'.
-- In pratice the best way to do this would be an event statement.
-- Because this database is just for practicing, 
-- we will not use an event statement, but create a stored procedure.
-- For every 7 days the fees is 0,5 Euros.
DELIMITER $$
CREATE PROCEDURE insert_fees()
BEGIN
INSERT INTO fee(member_id, open_fee)
SELECT member_id,
SUM(ROUND((DATEDIFF(CURRENT_DATE(), due_date) / 7)) * 0.5) as open_fee
FROM borrowing
WHERE DATEDIFF(CURRENT_DATE(), due_date) > 0
GROUP BY member_id;
END $$
DELIMITER ;

-- Call the procedure 'insert_fees'.
CALL insert_fees;


