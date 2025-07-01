show databases;
use booksdb;

-- Insert into Authors
INSERT INTO authors (Name, Genre, TotalNumbersOfBooks)
VALUES 
  ('J.K. Rowling', 'com', 4),
  ('George R.R. Martin', 'drama', 6),
  ('Haruki Murakami', NULL, 3);  -- Missing country
  
select * from authors;  

-- Insert into Books
INSERT INTO Books (Title, AuthorID, Publisher, Year, Genre)
VALUES 
  ('Harry Potter and the Philosopher\'s Stone', 1, 'Bloomsbury', 1997, 'Fantasy'),
  ('Game of Thrones', 2, 'Bantam Books', 1996, 'Fantasy'),
  ('Kafka on the Shore', 3, 'Vintage', NULL, 'Magical Realism'); -- Missing year
  
select * from books;  

-- Insert into Members
INSERT INTO Members (Name, Email, Phone, JoinDate)
VALUES 
  ('Alice', 'alice@example.com', '9999999999', '2024-01-15'),
  ('Bob', NULL, '8888888888', '2024-02-10'),       -- Missing email
  ('Charlie', 'charlie@example.com', NULL, NULL);  -- Missing phone & date

select * from Members;

-- Insert into Staff
INSERT INTO staff (Name, Role)
VALUES 
  ('David', 'Librarian'),
  ('Eva', 'Assistant');
  
select * from staff;

-- Insert into Borrow
INSERT INTO borrow (BookID, MemberID, BorrowDate, ReturnDate, StaffID)
VALUES 
  (1, 1, '2024-03-01', '2024-03-15', 1),
  (2, 2, '2024-03-05', NULL, 2),  -- Book not returned yet
  (3, 3, '2024-03-10', '2024-03-25', 1);
  
select * from borrow ; 


-- Disable safe updates for the current session
SET SQL_SAFE_UPDATES = 0;

-- UPDATE: Add missing year for Kafka on the Shore
UPDATE books
SET Year = 2002
WHERE Title = 'Kafka on the Shore';

select * from books;

-- UPDATE: Add missing email for Bob
UPDATE Members
SET Email = 'bob@example.com'
WHERE Name = 'Bob';

UPDATE Members 
SET Phone = 777777777
WHERE Name =  'Charlie';

select * from members;



-- DELETE: Remove member with NULL join date (assume it was test data)
-- Delete borrow records related to members with NULL JoinDate
DELETE FROM Borrow
WHERE MemberID IN (
    SELECT MemberID FROM Members WHERE JoinDate IS NULL
);

-- Now delete the members
DELETE FROM Members
WHERE JoinDate IS NULL;


-- DELETE: Remove borrow eJoinDatentry with return date still NULL (book lost)
DELETE FROM Borrow
WHERE ReturnDate IS NULL;


-- (Optional) Turn safe updates back on
-- SET SQL_SAFE_UPDATES = 1 ; 

