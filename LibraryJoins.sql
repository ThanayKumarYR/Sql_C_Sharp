--CREATE DATABASE LibraryDB;
--USE LibraryDB;

---- Authors table
--CREATE TABLE Authors (
--    AuthorID INT PRIMARY KEY IDENTITY,
--    Name NVARCHAR(100)
--);

---- Books table
--CREATE TABLE Books (
--    BookID INT PRIMARY KEY IDENTITY,
--    Title NVARCHAR(255),
--    AuthorID INT,
--    Genre NVARCHAR(50),
--    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
--);

---- BookCopies table
--CREATE TABLE BookCopies (
--    CopyID INT PRIMARY KEY IDENTITY,
--    BookID INT,
--    IsAvailable BIT,
--    FOREIGN KEY (BookID) REFERENCES Books(BookID)
--);

---- Members table
--CREATE TABLE Members (
--    MemberID INT PRIMARY KEY IDENTITY,
--    Name NVARCHAR(100),
--    Email NVARCHAR(255)
--);

---- Loans table
--CREATE TABLE Loans (
--    LoanID INT PRIMARY KEY IDENTITY,
--    CopyID INT,
--    MemberID INT,
--    LoanDate DATE,
--    ReturnDate DATE,
--    FOREIGN KEY (CopyID) REFERENCES BookCopies(CopyID),
--    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
--);

---- Insert dummy data into Authors table
--INSERT INTO Authors (Name) VALUES
--('J.K. Rowling'),
--('Stephen King'),
--('Harper Lee');

---- Insert dummy data into Books table
--INSERT INTO Books (Title, AuthorID, Genre) VALUES
--('Harry Potter and the Philosopher''s Stone', 1, 'Fantasy'),
--('The Shining', 2, 'Horror'),
--('To Kill a Mockingbird', 3, 'Fiction');

---- Insert dummy data into BookCopies table
--INSERT INTO BookCopies (BookID, IsAvailable) VALUES
--(1, 1),
--(1, 1),
--(2, 1),
--(3, 1),
--(3, 1);

---- Insert dummy data into Members table
--INSERT INTO Members (Name, Email) VALUES
--('John Doe', 'john@example.com'),
--('Jane Smith', 'jane@example.com');

---- Insert dummy data into Loans table
--INSERT INTO Loans (CopyID, MemberID, LoanDate, ReturnDate) VALUES
--(1, 1, '2024-04-01', '2024-04-15'),
--(2, 2, '2024-04-05', NULL),
--(3, 1, '2024-04-10', NULL);

select b.Title, bc.IsAvailable 
from Books b
inner join BookCopies bc
on b.BookId = bc.BookId;

select * from books;
select * from bookcopies;

select top 2 m.name, b.title, a.Name
from members m 
join loans l 
on m.MemberID = l.MemberID
join BookCopies bc 
on l.CopyID = bc.CopyID
join Books b
on bc.bookid = b.bookid
join Authors a
on a.AuthorID = b.AuthorID;