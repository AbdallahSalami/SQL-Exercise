SELECT * FROM students ;

1- SELECT Name FROM students;

2- SELECT * FROM students WHERE Age > 30;

3- SELECT Name FROM students WHERE Age = 30 AND Gender = 'F';

4- SELECT Points FROM students WHERE Name = 'Alex';

5- INSERT INTO students VALUES ( 7, "Abdallah" , 25 , "M" , 1000 ) ;

SELECT * FROM students ;

6- UPDATE students SET Points = Points + 50  WHERE Name = 'Basma';

SELECT * FROM students;

7- UPDATE students SET Points = Points - 4 WHERE Name = 'Alex';

SELECT * FROM students ;  








----------------
graduates table (if you want):
---------------
9-CREATE TABLE graduates (
ID  Integer  PRIMARY KEY AUTOINCREMENT NOT NULL,
Name Text  NOT NULL  UNIQUE ,
Age Integer ,
Gender Text ,
Points Integer , 
Graduation Text 
);

10-INSERT Into graduates VALUES (1,"Layal" , 18 , "F" , 350 , "graduates");
SELECT * FROM graduates;


SELECT * FROM students;
delete FROM students where Name="Layal";
SELECT * FROM students;


SELECT * FROM graduates;

------------------------------------------------------------------------
join:
----

14- SELECT employees.Name AS EmployeeName, companies.Name AS CompanyName, companies.Date AS CompanyDate
FROM employees
JOIN companies ON employees.company = CompanyName;


15- SELECT employees.Name AS EmployeeName
FROM employees
JOIN companies ON employees.company = companies.Name
WHERE companies.Date < 2000;

16- SELECT companies.Name AS CompanyName
FROM employees
JOIN companies ON employees.company = CompanyName
WHERE employees.Role = 'Graphic Designer';


