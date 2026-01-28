-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth

SELECT StudentId, FirstName, LastName FROM Student ORDER BY DateOfBirth ASC
