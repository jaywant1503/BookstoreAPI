CREATE DATABASE BookStore 

GO 

USE BookStore 

GO 

CREATE TABLE Author 
  ( 
     Id   BIGINT IDENTITY(1, 1) NOT NULL, 
     NAME NVARCHAR(50) NOT NULL, 
     PRIMARY KEY (Id) 
  ) 

GO 

CREATE TABLE AuthorContact 
  ( 
     AuthorId      BIGINT NOT NULL, 
     ContactNumber NVARCHAR(15) NULL, 
     Address       NVARCHAR(100) NULL, 
     PRIMARY KEY (AuthorId), 
     FOREIGN KEY (AuthorId) REFERENCES Author(Id) 
  ) 

GO 

CREATE TABLE BookCategory 
  ( 
     Id   BIGINT IDENTITY(1, 1) NOT NULL, 
     NAME NVARCHAR(50) NOT NULL, 
     PRIMARY KEY (Id) 
  ) 

GO 

CREATE TABLE Publisher 
  ( 
     Id   BIGINT IDENTITY(1, 1) NOT NULL, 
     NAME NVARCHAR(100) NOT NULL, 
     PRIMARY KEY (Id) 
  ) 

GO 

CREATE TABLE Book 
  ( 
     Id          BIGINT IDENTITY(1, 1) NOT NULL, 
     Title       NVARCHAR(100) NOT NULL, 
     CategoryId  BIGINT NOT NULL, 
     PublisherId BIGINT NOT NULL, 
     PRIMARY KEY (Id), 
     FOREIGN KEY (CategoryId) REFERENCES BookCategory(Id), 
     FOREIGN KEY (PublisherId) REFERENCES Publisher(Id) 
  ) 

GO 

CREATE TABLE BookAuthors 
  ( 
     BookId   BIGINT NOT NULL, 
     AuthorId BIGINT NOT NULL 
     PRIMARY KEY (BookId, AuthorId), 
     FOREIGN KEY (BookId) REFERENCES Book(Id), 
     FOREIGN KEY (AuthorId) REFERENCES Author(Id) 
  )
  
  
  INSERT INTO BookCategory
VALUES
('Fantasy Fiction'),
('Spirituality'),
('Fiction'),
('Science Fiction')

INSERT INTO Publisher
VALUES
('HarperCollins'),
('New World Library'),
('Oneworld Publications')

INSERT INTO Author
VALUES
('Paulo Coelho'),
('Eckhart Tolle'),
('Amie Kaufman'),
('Jay Kristoff')

INSERT INTO AuthorContact
VALUES
(1, '111-222-3333', '133 salas 601 / 602, Rio de Janeiro 22070-010. BRAZIL'),
(2, '444-555-6666', '933 Seymour St, Vancouver, BC V6B 6L6, Canada'),
(3, '777-888-9999', 'Mentone 3194. Victoria. AUSTRALIA'),
(4, '222-333-4444', '234 Collins Street, Melbourne, VIC, AUSTRALIA')

INSERT INTO Book
VALUES
('The Alchemist', 1, 1),
('The Power of Now', 2, 2),
('Eleven Minutes', 3, 1),
('Illuminae', 4, 3)

INSERT INTO BookAuthors
VALUES
(1,1),
(2,2),
(3,1),
(4,3),
(4,4)


