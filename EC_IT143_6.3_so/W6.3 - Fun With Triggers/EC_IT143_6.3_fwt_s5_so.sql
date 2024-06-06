-- EC_IT143_6.3_fwt_s5_so.sql
-- Testing the after-update trigger to ensure it updates LastModifiedDate.

-- Update a record to trigger the after-update trigger
UPDATE [dbo].[t_w3_schools_customers]
SET CustomerName = 'Updated Name'
WHERE CustomerID = 1;

-- Check if LastModifiedDate is updated
SELECT CustomerID, CustomerName, LastModifiedDate
FROM [dbo].[t_w3_schools_customers]
WHERE CustomerID = 1;
