-- EC_IT143_6.3_fwf_s5_so.sql
-- Creating a scalar function to extract the first name from a full name.

CREATE FUNCTION dbo.fn_GetFirstName (@FullName NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN LEFT(@FullName, CHARINDEX(' ', @FullName) - 1)
END
GO

-- Testing the function
SELECT dbo.fn_GetFirstName('John Doe') AS FirstName;
SELECT dbo.fn_GetFirstName('Jane Smith') AS FirstName;
SELECT dbo.fn_GetFirstName('Alice Johnson') AS FirstName;
