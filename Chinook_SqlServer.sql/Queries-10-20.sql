--10.
SELECT COUNT(InvoiceLineId) AS LineItemCountInvoiceId37
	FROM InvoiceLine
	WHERE InvoiceId = 37;

--11.
SELECT COUNT(InvoiceLineId) AS LineItemCount
	FROM InvoiceLine
	GROUP BY InvoiceId;

--12.
SELECT i.InvoiceLineId, t.[Name]
	FROM InvoiceLine i
	INNER JOIN Track t ON i.TrackId = t.TrackId;

--13.
SELECT i.InvoiceLineId, t.[Name], t.Composer
	FROM InvoiceLine i
	INNER JOIN Track t ON i.TrackId = t.TrackId;

--14.
SELECT COUNT(il.InvoiceLineId) AS LineItemCountByCountry, i.BillingCountry
	FROM InvoiceLine il
	INNER JOIN Invoice i ON il.InvoiceId = i.InvoiceId
	GROUP BY i.BillingCountry;

--15.
SELECT COUNT(t.TrackId) AS NumberOfTracks, p.[Name]
	FROM Track t
	INNER JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
	INNER JOIN Playlist p ON pt.PlaylistId = p.PlaylistId
	GROUP BY p.[name];

--16.
SELECT t.[name], m.[Name], a.Title
	FROM Track t
		INNER JOIN Genre g ON t.GenreId = g.GenreId
		INNER JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
		INNER JOIN Album a ON t.AlbumId = a.AlbumId;

--17.		
SELECT COUNT(il.InvoiceLineId) AS LineItemCount, i.[InvoiceId]
	FROM InvoiceLine il
	INNER JOIN Invoice i ON il.InvoiceId = i.InvoiceId
	GROUP BY i.InvoiceId;

--18.
SELECT COUNT(i.InvoiceId) AS NumberOfSales, e.FirstName, e.LastName
	FROM Invoice i
	INNER JOIN Customer c ON i.CustomerId = c.CustomerId
	INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId
	GROUP BY e.EmployeeId, e.FirstName, e.LastName;

--19.
--Order results in descending order and then take the first result--