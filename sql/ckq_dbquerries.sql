/* Team Name: CKQ Dealership Members: Chris Post, Kyle Lawson, Quang Tran */

use CKQDealership

/* Queries that list out all table data for all four tables */

select *
from Sales

select *
from Customers

select *
from Employees

select *
from Vehicles

/** Aggregate function: Find the Total Number of Sales and the Total Sale for each car brand in the year 2016 **/

SELECT V.Make AS 'Car Brand', COUNT(S.VehicleID) AS 'Number of Sales', SUM(S.SaleTotal) AS 'Total Sale'
FROM Vehicles AS V 
INNER JOIN SALES AS S ON V.VehicleID = S.VehicleID
WHERE YEAR(S.SaleDate) = 2016
GROUP BY V.Make;


/* Show each sale made by each employee ( Inner Join )*/

select E.FirstName,
	E.LastName,
	S.SaleID,
	S.SaleTotal
from Employees as E
inner join Sales as S
	on S.EmployeeID = E.EmployeeID;


/* Show each vehicle that was part of a sale totalling over $20,000 ( Outer Join ) A left outer join is necessary here
because it allows the query to show a sales total for sales made where the VehicleID was NULL. With an inner join
instead, the company would be unable to see all 10 sales. */

select V.Make,
	V.Model,
	S.SaleTotal
from Sales as S
left outer join Vehicles as V
	on V.VehicleID = S.VehicleID;


/** A Query that uses Subqueries: Employees who have below average sales. **/

SELECT E.FirstName, E.LastName, SUM(S.SaleTotal) AS Total_Sales
FROM Employees AS E 
INNER JOIN Sales AS S ON E.EmployeeID = S.EmployeeID
GROUP BY E.FirstName, E.LastName
HAVING SUM(S.SaleTotal) < (SELECT AVG(S.SaleTotal) FROM Sales AS S);
