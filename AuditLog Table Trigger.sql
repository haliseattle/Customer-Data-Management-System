----�	Test the INSERT for the table. 

USE CustomerInventoryDB
GO

CREATE TRIGGER CustomerInsertTrigger
ON Customers
AFTER INSERT
AS
    -- Insert or update operation
	INSERT INTO AuditLog(
		TableName,
		AuditType, 
		UpdatedBy,
		AuditDateAsUTC,
		AuditDateAsLocal,
		DatabaseName 
	)

	VALUES (
		'Customers',
		'INSERT',
		SUSER_NAME(),
		GETUTCDATE(),
		GETDATE(),
		'CustomerInventoryDB'
	);

        
              
    
