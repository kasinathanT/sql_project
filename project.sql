create database project1;
select*from project1.student_performance_data;
#find the row_number of datasete and using desc order
use  project1;
select studentID,Gender,Age,studyHoursPerWeek,AttendanceRate,GPA,
row_number() over (order by GPA) as unique_row from student_performance_data;
#find the null values and not null vales are present in your dataset?
select*from project1.student_performance_data;
#null values
SELECT COUNT(*) AS null_gpa
FROM student_performance_data
WHERE GPA IS NULL;
# not null values
SELECT COUNT(*) AS null_gpa
FROM student_performance_data
WHERE GPA IS not NULL;
# find the grade in student GPA in student performance table
SELECT  studentID ,
       Gender,
       GPA,
       CASE
           WHEN GPA >= 3.00 THEN 'A'
           WHEN GPA >= 2.50 THEN 'B'
           WHEN GPA >= 2.00 THEN 'C'
           WHEN GPA >= 1.00THEN 'D'
           ELSE 'F'
       END AS grade
FROM student_performance_data ;



