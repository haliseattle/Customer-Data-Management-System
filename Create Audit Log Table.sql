--�	Make an audit table for this task to track
--o	the table affected 
--o	what was done 
--o	who did it 
--o	the date it was done in both UTC and local time
--o	the name of the database affected


CREATE TABLE [AuditLog] (
	AuditID INT NOT NULL IDENTITY(1,1),
	TableName NVARCHAR(255) NOT NULL,
	AuditType NVARCHAR(255) NOT NULL, 
	UpdatedBy NVARCHAR(255) NOT NULL,
	AuditDateAsUTC DATETIME NOT NULL,
	AuditDateAsLocal DATETIME NOT NULL,
	DatabaseName NVARCHAR(255) NOT NULL, 
	PRIMARY KEY (AuditID)
);
GO