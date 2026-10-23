CREATE DATABASE student1;
USE student1;

CREATE TABLE students (
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50),
grade CHAR(2)
);

INSERT INTO students VALUES
(1, "Ram Sharma", 20 , "Kathmandu", "A"),
(2, "Sita Rai" , 22 , "Pokhara", "B"),
(3, "Hari Magar", 19 , "Kathmandu", "A"),
(4, "Gita Magar", 21 , "Chitwan", "B"),
(5, "Krishna Gurung", 23 , "Pokhara", "B");

SELECT*FROM students;
CREATE TABLE courses (
course_id INT PRIMARY KEY, 
course_name VARCHAR(50),
student_id INT,
fee DECIMAL(10,2)
);

INSERT INTO courses VALUES
(101,"Math", 1, 5000),
(102, "Science", 1, 6000),
(103, "English", 2, 4500),
(104, "History", 2, 4000),
(105, "Math", 3 , 5000),
(106, "Computer", 5, 7000);

SELECT * FROM courses;

INSERT INTO students VALUES (6, "Bikash Adhikari", 24, "Lalitput", "A");

INSERT INTO students (student_id, name , age , city)
VALUES (7, "Anita KC", 20, "Bhaktapur");

INSERT INTO students VALUES
(8, "Deepak Oli", 22, "Kathmandu", "B"),
(9, "Mina Pandey", 19, "Pokhara", "C");


SELECT * FROM students;


SELECT name, city FROM students;


SELECT * FROM students WHERE city  = "Kathmandu";


SELECT name, age , grade FROM students
WHERE age > 20 AND grade = "A";

SELECT name, age FROM students ORDER BY age DESC;

SELECT DISTINCT city FROM students;

SELECT * FROM students WHERE name LIKE "r%";

SELECT * FROM students WHERE city IN ("Kathmandu", "Pokhara");

SELECT name , age FROM students WHERE age BETWEEN 20 AND 22;

UPDATE students SET grade = "A" WHERE student_id = 4 ;

SELECT * FROM students;

UPDATE students SET grade = "B" WHERE city = "Pokhara" ;

DELETE FROM students WHERE student_id = 9;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50),
grade CHAR(2)
);


INSERT INTO students VALUES
(1, "Ram Sharma", 20 , "Kathmandu" , "A"),
(2, "Sita Rai" , 22 , "Pokhara" , "B"),
(3, "Hari Thapa", 19 , "Kathmandu", "A"),
(4, "Gita Magar", 21 , "Chitwan" , "C"),
(5, "Krishna Gurung" , 23 , "Pokhara" , "B");

SELECT * FROM students;

DROP TABLE IF EXISTS courses;

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(50),
student_id INT,
fee DECIMAL(10,2)
);
INSERT INTO courses VALUES
(101, "Math", 1, 5000),
(102, "Science", 1, 6000),
(103, "English" , 2, 4500),
(104, "History" , 2, 4000),
(105, "Math" , 3, 5000),
(106, "Computer", 5, 7000);

SELECT * FROM courses;

SELECT *
FROM students AS s
INNER JOIN courses AS c
ON s.student_id = c.student_id 


SELECT *
FROM students AS s
LEFT JOIN courses AS c 
ON s.student_id = c.student_id;

SELECT *
FROM students AS s
RIGHT JOIN courses AS c
ON s.student_id = c.student_id;


SELECT *
FROM students AS s
LEFT JOIN courses AS c
ON s.student_id = c.student_id

UNION

SELECT *
FROM students AS s
RIGHT JOIN courses AS c
ON s.student_id = c.student_id

SELECT COUNT(*) AS total_students FROM students;

SELECT grade , COUNT(*) AS student_count
FROM students
GROUP BY grade;

SELECT SUM(fee) AS total_fees FROM courses;

SELECT course_name , SUM(fee) AS total_collection
FROM courses GROUP BY course_name;

SELECT AVG(age) AS avg_age FROM students;

SELECT city , AVG(age) AS avg_age
FROM students GROUP BY city;

SELECT MIN(age) AS youngest, MAX(age) AS oldest FROM students;

SELECT course_name, MIN(fee) AS min_fee, MAX(fee) AS max_fee
FROM courses GROUP BY course_name;

SELECT
	city,
	COUNT(*) AS total_students,
	SUM(age) AS sum_age,
	AVG(age) AS avg_age,
	MIN(age) AS youngest,
	MAX(age) AS oldest
FROM students
GROUP BY city;


SELECT city, COUNT(*) AS total
FROM students
GROUP BY city
HAVING COUNT(*) > 1 ;

SELECT city, COUNT(*) AS total
FROM students
WHERE age >= 20 
GROUP BY city
HAVING COUNT(*) > 1; 


SELECT
	s.student_id,
    s.name,
    COUNT(c.course_id) AS courses_enrolled,
    SUM(C.fee) AS total_fees_paid
	FROM students AS s
LEFT JOIN courses AS c ON s.student_id = c.student_id
GROUP BY s.student_id, s.name
ORDER BY total_fees_paid DESC;

SELECT 
	s.city,
    COUNT(c.course_id) AS total_courses,
    SUM(c.fee) AS total_revenue
FROM students AS s
LEFT JOIN courses AS c ON s.student_id = c.stident_id
GROUP BY s.city
ORDER BY total_revenue DESC;