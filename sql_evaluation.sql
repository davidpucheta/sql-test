--1 Display the character constant 'Greeting' with a column heading of 'Hello.'
select 'Greeting' as Hello

--2 Display all data from the categories tables without specifying the names of the table columns. Order the results by CategoryName
select * from categories order by CategoryName

--3 Display all employees' names, last name first, and then first name, hire date and home phone number. Order the results by employee name, last name first, and then first name
select 
	lastname,
	firstname,
	hiredate,
	homephone
FROM
	employees
ORDER BY 
	lastname,
	firstname

--4 Modify query 3 so that the column headings are as follows: 'Last Name,' 'First Name,' 'Date of Hire,' and 'Home Phone Number.'
select 
	lastname as 'Last Name',
	firstname as 'First Name',
	hiredate as 'Date of Hire',
	homephone as 'Home Phone Number'
FROM
	employees
ORDER BY 
	lastname,
	firstname

--5 Display the product name and quantity per unit, units in stock, and unit price for all products that have a unit price greater than $50. Order the results by unit price in descending order.
select 
	productname,
	quantityperunit,
	unitsinstock, 
	unitprice
where 
	unitprice > 50
order by 
	unitprice desc 

--6 Display the Name of all U.S.-based suppliers. Order the results by Name in ascending order.
select 
	companyname
from 
	suppliers
where 
	country = 'USA'
order by 
	name asc 

--7 Display the Order Id, ShipName, Order Date, and Freight of all orders that have a freight >/= 50 and </= 100; a ship country of Austria, Brazil, or France; and a Ship City that starts with an 'S.' Use, BETWEEN, IN, and LIKE for the WHERE clause conditions. Order the results by ShipName in ascending order
select 
	orderid,
	shipname,
	orderdate,
	freight
from 
	orders
where 
	freight between 50 and 100
	and shipcountry in ('Austria', 'Brazil', 'France')
	and shipcity like 'S%'
order by 
	shipname asc 

--8 Rewrite query 7 to remove the use of BETWEEN and IN, and replace with the equivalent use of =, , /= and AND and OR expressions.
select 
	orderid,
	shipname,
	orderdate,
	freight
from 
	orders
where 
	freight >= 50 and freight <= 100
	and shipcountry = 'Austria' or shipcountry = 'Brazil' or shipcountry ='France'
	and shipcity like 'S%'
order by 
	shipname asc 

