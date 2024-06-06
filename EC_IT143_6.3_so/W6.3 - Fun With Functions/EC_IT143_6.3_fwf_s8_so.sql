-- EC_IT143_6.3_fwf_s8_so.sql
-- This script is focused on the question: How to extract the last name from a full contact name?

-- Example of a full name: 'John Doe'
-- We aim to extract 'Doe' from 'John Doe'

SELECT SUBSTRING('John Doe', CHARINDEX(' ', 'John Doe') + 1, LEN('John Doe')) AS LastName;
