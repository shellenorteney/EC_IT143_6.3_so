-- EC_IT143_6.3_fwf_s1_so.sql

-- This script is focused on the question: How to extract the first name from a full contact name?

-- Example of a full name: 'John Doe'
-- We aim to extract 'John' from 'John Doe'

SELECT LEFT('John Doe', CHARINDEX(' ', 'John Doe') - 1) AS FirstName;
