USE CustomerInventoryDB
GO

---------------------------------STEP 3 Tests-----------------------------------------------------------------
--� Review the data inserted with a SQL command to get all rows and columns.
SELECT *
FROM USStates

--� Write a query to inspect the states that begin with 'A'.
SELECT *
FROM USStates
WHERE Name LIKE 'A%'

--�	Write a query to inspect the states that begin with 'A' and sort it in ascending order.
SELECT *
FROM USStates
WHERE Name LIKE 'A%'
ORDER BY Name ASC

---------------------------------STEP 4 Tests-----------------------------------------------------------------
----�	Write a query to return all the information that was inserted.
SELECT * 
FROM Customers

--�	Write a query to list all customers sorted by last name in descending order.
SELECT * 
FROM Customers
ORDER BY LastName DESC

--Write a query to list all customers, and ensure it only returns their first and last names.
SELECT FirstName, LastName
FROM Customers

-------------------------------STEP 6&7 Tests-----------------------------------------------------------------
--�	Verify that the view works, and remove * (if used) as this is production now
--�	Run the whichever statement to verify we are getting what we need for the client.
SELECT *
FROM CustomersInWestCoast
SELECT *
FROM CustomerNameAndStateName
SELECT *
FROM CustomerPhoneNumberAndStateName

-------------------------------STEP 8 Tests-------------------------------------------------------------------
--EXEC CustomerPhoneList

-------------------------------STEP 9 Tests-------------------------------------------------------------------
--�	Test the newly created view. (Notice that order by works fine on the view. We just can't make a view by default.)
SELECT *
FROM CustomerAndStateName 

---------------------------------STEP 10 Tests-----------------------------------------------------------------
--�	Test the newly created stored procedure to ensure it does add a customer correctly
--�	Verify the stored procedure worked.

EXEC AddNewCustomer 
@FirstName = 'Jamila',
@LastName = 'Sun',
@Address = '1224 Sunny Lane Ave',
@City = 'Pamona',
@State = 'California',
@USZipCode = '84927',
@HomePhone = '(828)474-2722',
@MobilePhone = '(830)028-7282';

SELECT * 
FROM Customers
WHERE FirstName = 'Jamila'

-------------------------------STEP 12 Tests-----------------------------------------------------------------
--�	Run the stored procedure from earlier. You should see 2 "1 row affected" messages in the messages window
--�	Verify that the trigger wrote the proper information to the AuditLog table 

EXEC AddNewCustomer 
@FirstName = 'Jon',
@LastName = 'Snow',
@Address = '9432 Snowy Ave SW',
@City = 'Spokane',
@State = 'Washington',
@USZipCode = '78234',
@HomePhone = '(322)213-5531',
@MobilePhone = '(532)324-1343';

-------------------------------STEP 13 Tests-----------------------------------------------------------------
--�	Test that the index we created is being used by SQL Server to answer the query 
--for LastName only and for LastName with FirstName and Address.

SELECT LastName
FROM Customers

SELECT LastName, FirstName, Address
FROM Customers

-------------------------------STEP 15&16 Tests-----------------------------------------------------------------
--�	Test the newly created schema to make sure it works properly.
EXEC TestTransaction
@TheMessageToSave =  N'Default Message'
SELECT * 
FROM SampleOrder
SELECT * 
FROM SampleShippingRequest





