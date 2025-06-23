# Elevate_labs_Task1

🎯 Objective
Create a well-structured database schema for managing books, members, borrowing records, and staff in a library.

🧩 Entities and Relationships
Entity	Attributes
Books	BookID, Title, AuthorID, Publisher, Year, Genre
Authors	AuthorID, Name, Country, Genre, NumberBooksWritten
Members	MemberID, Name, Email, Phone, JoinDate, membershipEndDate
Staff	StaffID, Name, Role
Borrow	BorrowID, BookID, MemberID, BorrowDate, ReturnDate, StaffID

🔗 Relationships
A book has one author (Many-to-One)
A member can borrow many books
A staff member manages the issue/return process

ER Diagram Explanation:
Authors (1) ⟶ (M) Books
Members (1) ⟶ (M) Borrow
Books (1) ⟶ (M) Borrow
Staff (1) ⟶ (M) Borrow

ER Diagram Image
![image](https://github.com/user-attachments/assets/a4f5f3e0-d9aa-4843-8f70-f665d9caa1f8)


✅ Outcome
You now have a normalized and relational schema ready.

This schema supports data consistency and enforces referential integrity.
You can build queries like:
Books borrowed by a specific member
Books written by a particular author
Staff handling the most borrow transactions



