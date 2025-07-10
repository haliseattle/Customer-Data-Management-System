--�	Create a stored procedure for adding a new customer.
Use CustomerInventoryDB
GO

CREATE PROCEDURE AddNewCustomer
	@FirstName NVARCHAR(255) ,
	@LastName NVARCHAR(255),
	@Address NVARCHAR(255),
	@City NVARCHAR(255),
	@State NCHAR(2),
	@USZipCode NCHAR (5),
	@HomePhone NCHAR(14) NULL,
	@MobilePhone NCHAR(14) NULL
AS
INSERT INTO Customers
VALUES(@FirstName,@LastName,@Address,@City,@State,@USZipCode,@HomePhone,@MobilePhone)