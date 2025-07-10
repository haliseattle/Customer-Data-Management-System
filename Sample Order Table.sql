--•	A stored procedure to contain the code which executes the transaction
--•	Two tables which will be written to within the transaction
--•	The two tables will store the time and date of the operation
--•	The two tables will have primary keys
--•	The two tables will store a string passed into the stored procedure via parameter
--•	A random fail condition of 25% chance to simulate something requiring a rollback
--•	An error should be thrown if the transaction fails

-- concerned that the request for the shipper to ship the product and the registering of 
--a purchase will get out of sync 

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE SampleOrder(
	[ID] INT NOT NULL IDENTITY(1, 1),
	[Message] NVARCHAR (255) NOT NULL,
	[OperationDate] DATETIME NOT NULL,

CONSTRAINT [PK_SampleOrder] PRIMARY KEY ClUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
	


