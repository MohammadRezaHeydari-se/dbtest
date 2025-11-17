-- Skapa en ny databas med namnet School
CREATE DATABASE School;

-- Byt till den nyss skapade databasen
USE School;

-- Skapa en tabell med namnet Students
CREATE TABLE Students (
StudentID INT AUTO_INCREMENT PRIMARY KEY ,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
BirthDate DATE,
Email NVARCHAR(100),
Class NVARCHAR(50),
Score DECIMAL(5, 2)
);

-- Lägg till några exempelrader i Students-tabellen
INSERT INTO Students (FirstName, LastName, BirthDate, Email, Class, Score) VALUES
('Anna', 'Andersson', '2005-04-12', 'anna.andersson@example.org', '9A', 88.5),
('Berit', 'Berg', '2004-05-23', 'berit.berg@example.org', '10B', 92.0),
('Carl', 'Carlsson', '2006-06-14', 'carl.carlsson@example.org', '8C', 76.5),
('David', 'Danielsson', '2005-07-30', 'david.danielsson@example.org', '9A', 81.0),
('Emma', 'Eriksson', '2005-02-11', 'emma.eriksson@example.org', '9B', NULL),
('Oscar', 'Olsson', '2004-06-30', 'oscar.olsson@example.org', '10A', 45.0);

-- Skapa en tabell med namnet Teachers
CREATE TABLE Teachers (
TeacherID INT AUTO_INCREMENT PRIMARY KEY,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
Email NVARCHAR(100),
Salary DECIMAL(10, 2)
);

-- Lägg till några exempelrader i Teachers-tabellen
INSERT INTO Teachers (FirstName, LastName, Email, Salary) VALUES
('Emma', 'Eriksson', 'emma.eriksson@example.org', 45000.00),
('Oscar', 'Olsson', 'oscar.olsson@example.org', 47000.00),
('Sara', 'Svensson', 'sara.svensson@example.org', 43000.00),
('Lukas', 'Larsson', 'lukas.larsson@example.org', 46000.00);