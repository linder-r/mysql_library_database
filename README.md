# mysql_library_database
A reprository to practice database design --- A MySQL database for a public library

The goal of this project is to create a simple MySQL database for a public library.

## The database consists of 11 tables:
1. **'book'**: All the books in the library
2. **'member'**: All the library members
3. **'borrowing'**: The borrowing connection between 'book' and 'member'
4. **'reservation'**: The reservation connection between 'book' ans 'member'
5. **'fee'**: Open fees of the library members
6. **'publisher'**: All the publishers of the books
7. **'genre'**: All the genres the books belong to
8. **'genre_affiliation'**: The  genre connection between 'book' and 'genre'
9. **'author'**: All the books authors
10. **'authorship'**: The author connection between 'book' and 'author'
11. **'returned_book'**: Record of all the books that have been borrowed

## The repository contains six files:

1. ### er-diagram_library_db.png
*Entity-relation-diagram of the 'library' database.*

2. ### er-diagram_library_db.mwb
*MySQL-Workbench file of the entity-relation-diagram of the 'library' database.*

3. ### database_library_dump.sql
*This file contains the setup and the data of database 'library'.*

4. ### create triggers.sql
*This file creates two triggers. Both triggers are also contained in the code of the file 'database_library_dump.sql'.*
- *The trigger 'delete_borrowing_update_returned_book' will delete a book from the borrowing table, when the book is returned to the library.*
- *The trigger 'befor_borrowing_check_reservation' will check for a reservation (from another library member) before a book can be borrowed.*

5. ### create_stored_procedures.sql
*This file creates two stored procedure. Both procedures are also contained in the code of the file 'database_library_dump.sql'.*
- *The stored procedure 'get_overdue_borrowings()' will retrieve all the borrowings that have exceeded the due_date.*
- *The stored procedure 'get_fees()' will calculate the library fees for overdue books.*

6. ### library_queries.sql
*This file contains a couple of advanced queries of the 'library' database. (Who has written the most books? What is the average time books are borrowed? How often were the books borrowed? ...)*
