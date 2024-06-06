-- EC_IT143_6.3_fwf_s4_so.sql
-- Testing the solution for extracting first names.

-- Using Google and Stack Overflow, found that CHARINDEX and LEFT are suitable for this task.

-- Test with multiple names
SELECT LEFT('Emily Davis', CHARINDEX(' ', 'Emily Davis') - 1) AS FirstName;
SELECT LEFT('Michael Brown', CHARINDEX(' ', 'Michael Brown') - 1) AS FirstName;
SELECT LEFT('Chris Martin', CHARINDEX(' ', 'Chris Martin') - 1) AS FirstName;
