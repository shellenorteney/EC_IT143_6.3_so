-- EC_IT143_6.3_fwf_s2_so.sql
-- This script documents the journey to finding the answer to extracting the first name.

-- Current understanding:
-- Use the CHARINDEX function to find the position of the first space.
-- Use the LEFT function to extract characters from the start up to the space.

-- Next step:
-- Write a more comprehensive query that can handle varying names.

SELECT LEFT('Jane Smith', CHARINDEX(' ', 'Jane Smith') - 1) AS FirstName;
SELECT LEFT('John Doe', CHARINDEX(' ', 'John Doe') - 1) AS FirstName;
SELECT LEFT('Alice Johnson', CHARINDEX(' ', 'Alice Johnson') - 1) AS FirstName;
