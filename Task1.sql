
-- Create the database 
CREATE DATABASE BooksDB;
SHOW databases;
USE BooksDB;


-- Create Authors Table
create table Authors (
   AuthorID int auto_increment primary key,
   Name varchar(255) Not null,
   Genre varchar(50),
   TotalNumbersOfBooks int
); 

-- Create Books Table

create table Books (
BookID int auto_increment primary key,
Title varchar(255) not null,
AuthorID int,
Publisher varchar(255),
Year int,
Genre Varchar(50),
foreign key (AuthorID) references Authors(AuthorID)
);


alter table Authors
Add column TotalNumbersOfBooks int;


select * from Authors;

-- Create Members Table
create table Members (
    MemberID int auto_increment primary key,
    Name varchar(100),
    Email varchar(100) unique,
    Phone varchar(15),
    JoinDate date,
    MembershipEndDate date
);

-- Create Staff Table 
create table Staff(
StaffID int auto_increment primary key,
name varchar(100),
role varchar(50)
);


-- Create Borrow Table
create table Borrow(
BorrowID int auto_increment primary key,
BookID int,
MemberID int,
BorrowDate date,
ReturnDate date,
StaffID int,
foreign key (BookID) references Books(BookID),
foreign key (MemberID) references Members(MemberID),
foreign key (StaffID) references Staff(StaffID)

); 






 

