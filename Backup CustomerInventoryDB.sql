--�	Back up the database.
BACKUP DATABASE CustomerInventoryDB 
TO DISK = 'C:\SQL_Backups\CustomerInventoryDB_HAFSA_ALI.Bak'  
   WITH FORMAT,  
      MEDIANAME = 'C_SQL_Backups',  
      NAME = 'Full Backup of CustomerInventoryDB';  
GO  