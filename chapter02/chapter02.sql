--listing 2.1 
SELECT * FROM teachers;

--listing 2.2 
SELECT last_name, first_name, salary FROM teachers;

--listing 2.3 
SELECT DISTINCT school FROM teachers;

--listing 2.4 
SELECT DISTINCT school, salary
FROM teachers;

--listing 2.5 
SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;

--Listing 2-6
SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;

--Listing 2-7
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';

SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';

SELECT school
FROM teachers
WHERE school != 'F.D. Roosevelt HS';

SELECT first_name, last_name, hire_date
FROM teachers
WHERE hire_date < '2000-01-01';

SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500;

SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

--Listing 2-8
SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

--Listing 2-9
SELECT *
FROM teachers
WHERE school = 'Myers Middle School'
AND salary < 40000;

SELECT *
FROM teachers
WHERE last_name = 'Cole'
OR last_name = 'Bush';

SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND (salary < 38000 OR salary > 40000);

--Listing 2-10
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;