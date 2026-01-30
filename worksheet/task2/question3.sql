-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT DepartmentName, COUNT(Enrolment.EnrolmentID) AS TotalEnrolments FROM Department LEFT JOIN Course ON Department.DepartmentID = Course.DepartmentID LEFT JOIN Enrolment ON Course.CourseID = Enrolment.CourseID GROUP BY DepartmentName;


