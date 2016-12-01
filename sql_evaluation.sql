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