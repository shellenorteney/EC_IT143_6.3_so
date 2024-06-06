-- EC_IT143_6.3_fwf_s3_so.sql
-- Ad hoc query to extract the first name from various full names.

-- Extracting first name from 'John Doe'
SELECT LEFT('John Doe', CHARINDEX(' ', 'John Doe') - 1) AS FirstName;

-- Extracting first name from 'Jane Smith'
SELECT LEFT('Jane Smith', CHARINDEX(' ', 'Jane Smith') - 1) AS FirstName;

-- Extracting first name from 'Alice Johnson'
SELECT LEFT('Alice Johnson', CHARINDEX(' ', 'Alice Johnson') - 1) AS FirstName;
