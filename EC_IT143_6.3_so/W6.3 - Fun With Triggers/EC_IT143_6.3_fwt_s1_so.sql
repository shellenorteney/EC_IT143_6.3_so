-- EC_IT143_6.3_fwt_s1_so.sql
-- This script is focused on the question: How to keep track of when a record was last modified?

-- We need to add a column to track the last modified date.

ALTER TABLE [dbo].[t_w3_schools_customers]
ADD LastModifiedDate DATETIME;
