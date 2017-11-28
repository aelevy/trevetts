CREATE DATABASE IF NOT EXISTS House;

USE House;

CREATE TABLE IF NOT EXISTS People
(
  ID int NOT NULL,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Age int
);

INSERT INTO People (ID,FirstName,LastName,Age)
VALUES ('1', 'Andrew', 'Levy', '25'),
('2','Jared','Keels','25'),
('3','Liz', 'Yarborough', '24');

CREATE TABLE IF NOT EXISTS Pets
(
  ID int NOT NULL,
  Name varchar(50) NOT NULL,
  Type varchar(50) NOT NULL,
  OwnerName varchar(50) NOT NULL
);

INSERT INTO Pets (ID,Name,Type,OwnerName)
VALUES  ('1','Lilly','Dog','Liz'),
('2','Wrangler', 'Dog', 'Jared'),
('3', 'Lady', 'Dog', 'Andrew');

ALTER TABLE People
ADD PetName varchar(50);

UPDATE People
INNER JOIN Pets ON People.FirstName = Pets.OwnerName
SET People.PetName = Pets.Name;
