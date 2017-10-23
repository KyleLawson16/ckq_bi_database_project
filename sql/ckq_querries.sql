/* Queries that list out all table data for all four tables */

select *
from Sales

select *
from Customers

select *
from Employees

select *
from Vehicles



/* Show each sale made by each employee */

select E.FirstName,
	E.LastName,
	S.SaleID,
	S.SaleTotal
from Employees as E
inner join Sales as S
	on S.EmployeeID = E.EmployeeID



/* Show each vehicle that was part of a sale totalling over $20,000 */

select V.Make,
	V.Model,
	S.SaleTotal
from Sales as S
left outer join Vehicles as V
	on V.VehicleID = S.VehicleID