CREATE PROCEDURE NewSID
AS
BEGIN
    DECLARE @NewSID CHAR(20);
    SET @NewSID = CONVERT(CHAR(20), NEWID());
    SELECT @NewSID AS NewSID;
END;
GO
