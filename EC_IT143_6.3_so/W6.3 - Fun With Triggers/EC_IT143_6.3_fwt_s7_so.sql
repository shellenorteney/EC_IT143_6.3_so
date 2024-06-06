-- EC_IT143_6.3_fwt_s7_so.sql
-- Creating an after-update trigger to update LastModifiedBy.

CREATE TRIGGER trg_UpdateLastModifiedBy
ON [dbo].[t_w3_schools_customers]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[t_w3_schools_customers]
    SET LastModifiedDate = GETDATE(),
        LastModifiedBy = SUSER_SNAME()
    FROM [dbo].[t_w3_schools_customers] t
    INNER JOIN inserted i ON t.CustomerID = i.CustomerID;
END;
GO
