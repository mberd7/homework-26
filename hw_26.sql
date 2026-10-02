#თუ არ გაქვთ შექმნილი, შექმენით მონაცემთა ბაზა სახელად hw_26  და შეასრულეთ შემდეგი დავალებები:
CREATE DATABASE IF NOT EXISTS hw_26;
USE hw_26;


# დაწერეთ SQL, რომელიც შექმნის Authors ცხრილს, რომელსაც ექნება პირველადი გასაღები

CREATE TABLE Authors(
  AuthorID  INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(100) NOT NULL,
  LastName VARCHAR(100) NOT NULL
);

# დაწერეთ SQL, რომელიც შექმნის Books ცხრილს, სადაც გექნებათ მეორადი გასაღები AuthorID 
CREATE TABLE Books(
  BookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(200) NOT NULL,
  Price DECIMAL(10,2),
  AuthorID INT,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);


# დაწერეთ SQL Author და Books ცხრილებისთვის სადაც შექმნით მინიმუმ 5 ჩანაწერს
INSERT INTO Authors (FirstName, LastName) 
VALUES 
('Gala', 'Galaktionov'),
('Aka', 'Morchiladze'),
('Nodar', 'Dumbadze'),
('Otar', 'Chiladze'),
('Jemali', 'Karchkhadze');

INSERT INTO Books (Title, Price, AuthorID) 
VALUES 
('Daia', 25.00, 1),
('Santa Esperanza', 30.00, 2),
('Me, Bebuia, Iliko da Ilarioni', 18.50, 3),
('Avelumi', 22.00, 4),
('Apolon', 19.90, 5);



# დაწერეთ SQL Books ცხრილისთვის სადაც გამოიყენებთ update ბრძანებას და გაანახლებთ კონკრეტული ჩანაწერის ერთ-ერთი ველის მნიშვნელობას
UPDATE Books
SET Price = 28.00
WHERE BookID =1;


# დაწერეთ SQL, რომელიც დაბეჭდავს გაერთიანებულ ცხრილებს
SELECT
    Books.BookID,
    Books.Title,
    Books.Price,
    Authors.FirstName,
    Authors.LastName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID;
# წაშალეთ ყველა ჩანაწერი Author და Books ცხრილიდან
DELETE FROM Books;
DELETE FROM Authors;

# წაშალეთ Author და Books ცხრილები
DROP TABLE Books;
DROP TABLE Authors;