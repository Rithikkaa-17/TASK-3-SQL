CREATE DATABASE SALES;

USE SALES;

CREATE TABLE Cus
(
	CustomerID int PRIMARY KEY,
	FirstName varchar(255) NOT NULL,
	LastName varchar(255) NOT NULL,
	DOB date NOT NULL,
	Email varchar(255) NOT NULL,
	Password varchar(255) NOT NULL,
	Contact varchar(255) NOT NULL
);

CREATE TABLE Coun
(
	CountryID int PRIMARY KEY,
	CountryName varchar(255) NOT NULL
);

CREATE TABLE Pro
(
	ProvinceID int PRIMARY KEY,
	ProvinceName varchar(255) NOT NULL
);

CREATE TABLE Town
(
	CityID int  PRIMARY KEY,
	CityName varchar(255) NOT NULL
);

CREATE TABLE Cat
(
	CategoryID int PRIMARY KEY,
	CategoryName varchar(255) NOT NULL
);


CREATE TABLE Cour
(
	CourierID int PRIMARY KEY,
	Name varchar(255) NOT NULL,
	Contact varchar(255) NOT NULL
);
INSERT INTO Cus (CustomerID, FirstName, LastName, DOB, Email, Password, Contact) VALUES
(1, 'Ravi', 'Kumar', TO_DATE('1990-03-15', 'YYYY-MM-DD'), 'ravi.kumar@example.com', 'pass123', '9876543210'),
(2, 'Priya', 'Sharma', TO_DATE('1992-07-20', 'YYYY-MM-DD'), 'priya.sharma@example.com', 'pass456', '9876543211'),
(3, 'Amit', 'Verma', TO_DATE('1985-11-02', 'YYYY-MM-DD'), 'amit.verma@example.com', 'pass789', '9876543212');
INSERT INTO Coun (CountryID, CountryName) VALUES
(1, 'India'),
(2, 'USA'),
(3, 'Canada');
INSERT INTO Pro (ProvinceID, ProvinceName) VALUES
(1, 'Tamil Nadu'),
(2, 'California'),
(3, 'Ontario');
INSERT INTO Town (CityID, CityName) VALUES
(1, 'Chennai'),
(2, 'San Francisco'),
(3, 'Toronto');
INSERT INTO Cat (CategoryID, CategoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home Appliances');
INSERT INTO Cour (CourierID, Name, Contact) VALUES
(1, 'BlueDart', '1800101010'),
(2, 'FedEx', '1800202020'),
(3, 'Delhivery', '1800303030');

SELECT * FROM Cus;

SELECT * FROM Cus
WHERE DOB > TO_DATE('1990-01-01', 'YYYY-MM-DD');


SELECT * FROM Cus
ORDER BY FirstName;

SELECT EXTRACT(YEAR FROM DOB) AS BirthYear, COUNT(*) AS TotalCustomers
FROM Cus
GROUP BY EXTRACT(YEAR FROM DOB)
ORDER BY BirthYear;

SELECT Town.CityName, Pro.ProvinceName
FROM Town
INNER JOIN Pro ON Town.CityID = Pro.ProvinceID;


SELECT Town.CityName, Pro.ProvinceName
FROM Town
LEFT JOIN Pro ON Town.CityID = Pro.ProvinceID;

SELECT ROUND(AVG(TRUNC(MONTHS_BETWEEN(SYSDATE, DOB)/12))) AS AvgAge FROM Cus;


SELECT COUNT(*) AS TotalCouriers FROM Cour;


SELECT MIN(DOB) AS Youngest, MAX(DOB) AS Oldest FROM Cus;

SELECT * FROM Cus
WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, DOB)/12) > (
  SELECT AVG(TRUNC(MONTHS_BETWEEN(SYSDATE, DOB)/12)) FROM Cus
);

CREATE OR REPLACE VIEW CustomerSummary AS
SELECT FirstName || ' ' || LastName AS FullName, Email, Contact
FROM Cus;

SELECT * FROM CustomerSummary;

CREATE INDEX idx_email ON Cus(Email);

CREATE INDEX idx_dob ON Cus(DOB);