--�Phone list as a stored procedure since views can�t be sorted. 
--After this step will have both a view for the infos above and a 
--sorted stored procedure to output the actual phone list as a report.

CREATE PROCEDURE CustomerPhoneList
AS
    SELECT  FirstName, LastName, COALESCE(MobilePhone,HomePhone) AS PhoneNumber
    FROM Customers 
    ORDER BY LastName, FirstName
