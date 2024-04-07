-- SQLite
SELECT Id, Name, Gender, Address, Email, Dob
FROM Authors;

--- insert 
INSERT INTO Authors
values(Null,'ram','M','dang','hero@gmail.com','2055');

SELECT * FROM Authors
SELECT * FROM AuthorDetails
SELECT * FROM Publishers
Select * FROM Books

INSERT INTO Book
VALUES(1, 'java', '1st', '500', '10', '2000');
INSERT INTO Book
VALUES(2, 'advance java', '2nd', '2300', '10', '2002');
INSERT INTO Book
VALUES(3, 'DBMS', '1st', '3000', '21', '2008');

---Relate book and author
SELECT a.Name, a.email, b.title
FROM Authors a 
INNER JOIN Book b ON a.Id = b.Id

DROP TABLE Book
create table Books 
(
    Id integer PRIMARY KEY, 
    Title text not null, 
    Edition text not null,
    Price real null, 
    ISBN text null, 
    Published text not null
);

drop table Authors;

CREATE TABLE Authors(
    Id integer PRIMARY KEY,
    Name nvarchar(350),
    Gender char(1),
    Address nvarchar(200),
    Email nvarchar(200),
    Dob varchar(100),
    BookId integer,
    FOREIGN KEY(BookId) REFERENCES Books(Id)
);

INSERT INTO Books
VALUES (NULL, 'Machine Learning', 'III', 1000.50, 'AB234234FGHD', '2012/12/23');

INSERT INTO Authors
VALUES (NULL, 'Tom B. Erichsen', 'F', 'Norway', 'tom@gmail.com', '1960/12/23', 1);

INSERT INTO Authors
VALUES (NULL, 'Sandip Chaudhary', 'M', 'Dang, Nepal', 'sandip@gmail.com', '2000/12/23', 1);

--- relate book and author name
SELECT Books.Title, Authors.Name
FROM Books
JOIN Authors ON Books.Id = Authors.BookId;




