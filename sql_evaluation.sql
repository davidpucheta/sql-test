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

