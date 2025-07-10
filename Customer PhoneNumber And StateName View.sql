USE CustomerInventoryDB
GO
--�	Revising the SELECT in the view above OR make a new view to contain the information 

CREATE VIEW CustomerPhoneNumberAndStateName AS
SELECT c.FirstName, c.LastName,c.MobilePhone,c.HomePhone,st.Code, st.Name
FROM Customers c
INNER JOIN USStates st ON st.Code = c.State
WHERE State IN ('WA', 'OR', 'CA');