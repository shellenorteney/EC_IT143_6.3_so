-- EC_IT143_6.3_fwf_s6_so.sql
-- Comparing results of the UDF with ad hoc queries.

-- Ad hoc query result
SELECT LEFT('John Doe', CHARINDEX(' ', 'John Doe') - 1) AS FirstName;

-- UDF result
SELECT dbo.fn_GetFirstName('John Doe') AS FirstName;

-- Ad hoc query result
SELECT LEFT('Jane Smith', CHARINDEX(' ', 'Jane Smith') - 1) AS FirstName;

-- UDF result
SELECT dbo.fn_GetFirstName('Jane Smith') AS FirstName;

-- Ad hoc query result
SELECT LEFT('Alice Johnson', CHARINDEX(' ', 'Alice Johnson') - 1) AS FirstName;

-- UDF result
SELECT dbo.fn_GetFirstName('Alice Johnson') AS FirstName;
