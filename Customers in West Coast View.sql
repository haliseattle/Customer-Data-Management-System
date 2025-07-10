--�	View all clients living in WA, OR, and CA in one view. 

CREATE VIEW CustomersInWestCoast AS
SELECT ID, FirstName, LastName, Address, City, State, USZipCode 
FROM Customers
WHERE State IN ('WA', 'OR', 'CA');
GO