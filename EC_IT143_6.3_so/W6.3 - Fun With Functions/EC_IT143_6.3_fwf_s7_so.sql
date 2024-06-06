-- EC_IT143_6.3_fwf_s7_so.sql
-- Testing the function with cases expected to return 0 results.

-- Testing with single names (should not return any results)
SELECT dbo.fn_GetFirstName('SingleName') AS FirstName
WHERE dbo.fn_GetFirstName('SingleName') = 'SingleName';

-- Testing with an empty string (should not return any results)
SELECT dbo.fn_GetFirstName('') AS FirstName
WHERE dbo.fn_GetFirstName('') = '';
