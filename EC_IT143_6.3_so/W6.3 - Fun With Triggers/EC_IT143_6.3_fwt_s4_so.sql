-- EC_IT143_6.3_fwt_s4_so.sql
-- Creating an after-update trigger to update LastModifiedDate.

CREATE TRIGGER trg_UpdateLastModifiedDate
ON [dbo].[t_w3_schools_customers]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[t_w3_schools_customers]
    SET LastModifiedDate = GETDATE()
    FROM [dbo].[t_w3_schools_customers] t
    INNER JOIN inserted i ON t.CustomerID = i.CustomerID;
END;
GO
