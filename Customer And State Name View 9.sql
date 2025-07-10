--�	Place a join on the two tables, Customers and USStates.

CREATE VIEW CustomerAndStateName AS
SELECT c.FirstName, c.LastName,COALESCE(c.MobilePhone,c.HomePhone) as PhoneNumber, st.Name
FROM Customers c
INNER JOIN USStates st ON st.Code = c.State
WHERE State IN ('WA', 'OR', 'CA');

