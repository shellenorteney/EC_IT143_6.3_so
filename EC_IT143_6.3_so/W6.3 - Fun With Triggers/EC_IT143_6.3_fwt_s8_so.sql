-- EC_IT143_6.3_fwt_s8_so.sql
-- Testing the after-update trigger to ensure it updates LastModifiedBy.

-- Update a record to trigger the after-update trigger
UPDATE [dbo].[t_w3_schools_customers]
SET CustomerName = 'Another Update'
WHERE CustomerID = 1;

-- Check if LastModifiedDate and LastModifiedBy are updated
SELECT CustomerID, CustomerName, LastModifiedDate, LastModifiedBy
FROM [dbo].[t_w3_schools_customers]
WHERE CustomerID = 1;
