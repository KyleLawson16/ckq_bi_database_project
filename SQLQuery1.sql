CREATE DATABASE CKQDealership;
GO

CREATE TABLE Sales(
  SaleID int NOT NULL PRIMARY KEY,
  CustomerID int NOT NULL,
  EmployeeID int NOT NULL,
  VehicleID int,
  SaleTotal float NOT NULL,
  SaleDate datetime NOT NULL);

CREATE TABLE Customers(
  CustomerID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50)NOT NULL,
  CustomerAddress varchar(50) NOT NULL,
  Age tinyint NOT NULL);


CREATE TABLE Employees(
  EmployeeID int NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Title varchar(50) NOT NULL,
  DateHired datetime NOT NULL);


CREATE TABLE Vehicles(
	VehicleID int PRIMARY KEY,
	Make varchar(50) NOT NULL,
	Model varchar(50) NOT NULL,
	YearMade smallint NOT NULL,
	Price float NOT NULL);


ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Customer 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Employee
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);

ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Vehicles 
FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID);

GO


INSERT INTO Sales (SaleID, CustomerID, EmployeeID, VehicleID, SaleTotal, SaleDate) VALUES
(1, 1, 1, 1, 14545, '2015-02-08 09:53:56.223'),
(2, 2, 2, 2, 5423, '2015-02-10 09:53:56.223'),
(3, 3, 3, NULL, 25332, '2016-03-20 09:53:56.223'),
(4, 4, 4, 4, 34012, '2016-05-02 09:53:56.223'),
(5, 5, 5, 5, 24310, '2016-05-25 09:53:56.223'),
(6, 6, 6, NULL, 18908, '2017-01-05 09:53:56.223'),
(7, 7, 7, NULL, 28093, '2017-04-12 09:53:56.223'),
(8, 8, 8, 8, 21034, '2017-05-02 09:53:56.223'),
(9, 9, 9, 9, 34123, '2017-08-22 09:53:56.223'),
(10, 10, 10, 10, 9837, '2017-10-20 09:53:56.223');

INSERT INTO Customers (CustomerID, FirstName, LastName, CustomerAddress, Age) VALUES 
(1, 'Jason', 'Lee', '60 North Greenwitch Rd', 23),
(2, 'Evan', 'Lehrman', '120 Kew Vasseur Rd', 40),
(3, 'Yating', 'Lu', '82 North Main St', 35),
(4, 'Erica', 'Fishberg', '20 South St', 28),
(5, 'Jamie', 'Traverso', '40 North St', 56),
(6, 'Kyle', 'Waldron', '52 West Rd', 42),
(7, 'Nadira', 'Zahiruddin', '10 North Main St', 59),
(8, 'Justin', 'Lee', '80 Vasseur Rd', 62),
(9, 'Christine', 'Lee', '8 South Main St', 33),
(10, 'Abbygail', 'Sardjono', '231 Forest Rd', 48);

INSERT INTO Employees(EmployeeID, FirstName, LastName, Title, DateHired) VALUES 
(1, 'Blake', 'Smith', 'Salesman', '2012-08-22 09:53:56.223'),
(2, 'Ryan', 'Post', 'Marketing', '2015-01-01 09:53:56.223'),
(3, 'Tim', 'Lawson', 'Head IT', '2009-08-24 09:53:56.223'),
(4, 'Kyle', 'Surdell', 'Secretary', '2016-03-12 09:53:56.223'),
(5, 'Christian', 'Zhi', 'Analyst', '2009-10-18 09:53:56.223'),
(6, 'Olivia', 'Andrews', 'Salesman', '2014-02-09 09:53:56.223'),
(7, 'Ava', 'Stienman', 'Salesman', '2015-12-03 09:53:56.223'),
(8, 'Emily', 'Davis', 'Salesman', '2015-08-04 09:53:56.223'),
(9, 'James', 'Chug', 'Salesman', '2016-06-24 09:53:56.223'),
(10, 'Maddie', 'Horn', 'Salesman', '2017-04-15 09:53:56.223');


INSERT INTO Vehicles(VehicleID, Make, Model, YearMade, Price) VALUES
(1, 'Lexus', 'RX350', 2009, 16200),
(2, 'Nissan', 'Altima', 2007, 6000),
(3, 'Lexus' , 'IS300', 2010, 25000),
(4, 'Audi', 'A6', 2014, 35000),
(5, 'Toyota', 'Camry', 2015, 24500),
(6, 'Toyota', 'Tundra', 2010, 20000),
(7, 'Toyota', 'Corolla', 2017, 30000),
(8, 'Toyota', 'Prius', 2014, 22000),
(9, 'Audi', 'A5', 2015, 38000),
(10, 'Toyota', 'Highlander', 2012, 10000);

GO
