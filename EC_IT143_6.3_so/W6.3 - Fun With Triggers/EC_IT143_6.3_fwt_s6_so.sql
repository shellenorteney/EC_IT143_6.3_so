-- EC_IT143_6.3_fwt_s6_so.sql
-- This script is focused on the question: How to keep track of who last modified a record?

-- We need to add a column to track the user who last modified the record.

ALTER TABLE [dbo].[t_w3_schools_customers]
ADD LastModifiedBy NVARCHAR(100);
