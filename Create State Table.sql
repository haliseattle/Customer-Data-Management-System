--• Make a table which will hold all of the 51 entries.
--•	Make sure to set the any constraints (PRIMARY KEY, UNIQUE, Length, etc.)
--•	Insert the state information. 

CREATE TABLE [dbo].[USStates] (
    [Code] NCHAR (2) NOT NULL,
    [Name] VARCHAR (30) NULL,
	[CapitalCity] VARCHAR (30) NULL

CONSTRAINT [PK_USStates] PRIMARY KEY CLUSTERED (
		[Code] ASC
)
);
GO


