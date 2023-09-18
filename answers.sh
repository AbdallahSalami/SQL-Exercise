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


-------------------------------------------------------
Count & Filter:
-----------------
18- SELECT Name
FROM students
WHERE Points = (SELECT MAX(Points) FROM students);

19- SELECT AVG(Points) AS AveragePoints
FROM students;

20- SELECT COUNT(*) AS NumberOfStudents
FROM students
WHERE Points = 500;

21-SELECT Name
FROM students
WHERE Name LIKE '%s%';

22- SELECT Name, Points
FROM students
ORDER BY Points DESC;

-------------------------
step3 sql exucte backup
-----------------------

BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "students" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	TEXT,
	"Gender"	TEXT,
	"Points"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "graduates" (
	"ID"	Integer NOT NULL,
	"Name"	Text NOT NULL UNIQUE,
	"Age"	Integer,
	"Gender"	Text,
	"Points"	Integer,
	"Graduation"	Text,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "students" VALUES (1,'Alex','21','M',196);
INSERT INTO "students" VALUES (2,'Basma','25','F',350);
INSERT INTO "students" VALUES (3,'Hasan','30','M',150);
INSERT INTO "students" VALUES (5,'Robert','34','M',500);
INSERT INTO "students" VALUES (6,'Jana','33','F',500);
INSERT INTO "students" VALUES (7,'Abdallah','25','M',1000);
INSERT INTO "graduates" VALUES (1,'Layal',18,'F',350,'graduates');
COMMIT;
----------------------------    