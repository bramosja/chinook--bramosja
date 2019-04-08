--1.
SELECT CustomerId, FirstName, LastName, Country
	FROM Customer
	WHERE Country = 'USA';

--2.
SELECT CustomerId, FirstName, LastName, Country
	FROM Customer
	WHERE Country = 'Brazil';

--3.
SELECT InvoiceId, c.FirstName, c.LastName, i.InvoiceDate, i.BillingCountry
	FROM Invoice I
	INNER JOIN Customer c
	ON i.CustomerId = c.CustomerId
	WHERE c.Country = 'Brazil';

--4.
SELECT e.FirstName, e.LastName
	FROM Employee e
	Where e.Title LIKE '%Sale%';

--5.
SELECT DISTINCT BillingCountry
	FROM Invoice;

--6.
SELECT i.InvoiceId, e.FirstName, e.LastName 
	FROM Invoice i
	INNER JOIN Customer c ON i.CustomerId = c.CustomerId
	Inner JOIN Employee e ON c.SupportRepId = e.EmployeeId;

--7.
SELECT i.Total, c.FirstName, c.LastName, i.BillingCountry, e.EmployeeId, e.FirstName, e.LastName
	FROM Invoice i
	INNER JOIN Customer c ON i.CustomerId = c.CustomerId
	INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId;

--8.
SELECT SUM(i.InvoiceId)
	FROM Invoice i
	WHERE i.InvoiceDate BETWEEN '20110101 00:00:00 AM'
		AND '20090101 00:00:00 AM';

--9.
SELECT SUM(i.InvoiceId)
	FROM Invoice i
	WHERE i.InvoiceDate BETWEEN '20110101 00:00:00 AM'
		AND '20090101 00:00:00 AM';