----�	Create the table for the customers, and include constraints.
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Customers'))
BEGIN;
    DROP TABLE [Customers];
END;
GO

CREATE TABLE [Customers] (
	[ID] INT NOT NULL IDENTITY(1, 1),
	[FirstName] NVARCHAR(255) NOT NULL,
	[LastName] NVARCHAR(255),
	[Address] NVARCHAR(255),
	[City] NVARCHAR(255),
	[State] NCHAR(2) FOREIGN KEY REFERENCES USStates(Code),
	[USZipCode] NCHAR (5),
	[HomePhone] NCHAR(14) NULL,
	[MobilePhone] NCHAR(14) NULL,
	PRIMARY KEY ([ID])
);

GO