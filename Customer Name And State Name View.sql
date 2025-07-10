--�View the actual state name along with the customer name.

CREATE VIEW CustomerNameAndStateName AS
SELECT c.FirstName, c.LastName, st.Name
FROM Customers c
INNER JOIN USStates st ON st.Code = c.State
