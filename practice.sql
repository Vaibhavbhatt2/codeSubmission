1. From the following table return complete information about the employees.


Sample table: employees

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001


Output:
	SELECT * FROM employees;

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001


2. From the following table, write a SQL query to find the salaries of all employees. Return salary.

Output: SELECT salary FROM Employee;

salary
---------
 6000.00
 2750.00
 2550.00
 2957.00
 3100.00
 3100.00
  900.00
 1700.00
 1350.00
 1350.00
 1600.00
 1200.00
 1050.00
 1400.00

3. From the following table, write a SQL query to find the unique designations of the employees. Return job name.

Output: SELECT DISTINCT job_name FROM employee;
 

job_name
-----------
 CLERK
 SALESMAN
 MANAGER
 PRESIDENT
 ANALYST

4. From the following table, write a SQL query to list the employees’ name, increased their salary by 15%, and expressed as number of Dollars.

Output: select emp_name, concat ('$',1.15*salary) as "salary" from employee;


 emp_name |  Salary
----------+----------
 KAYLING  | $  6,900
 BLAZE    | $  3,163
 CLARE    | $  2,933
 JONAS    | $  3,401
 SCARLET  | $  3,565
 FRANK    | $  3,565
 SANDRINE | $  1,035
 ADELYN   | $  1,955
 WADE     | $  1,553
 MADDEN   | $  1,553
 TUCKER   | $  1,840
 ADNRES   | $  1,380
 JULIUS   | $  1,208
 MARKER   | $  1,610

5. From the following table, write a SQL query to list the employee's name and job name as a format of "Employee & Job".

Output:Select concat(name, ' ' ,job) as "EMPLOYEE & Job" from EMPLOYEE;

 Employee & Job
---------------------
 KAYLING   PRESIDENT
 BLAZE   MANAGER
 CLARE   MANAGER
 JONAS   MANAGER
 SCARLET   ANALYST
 FRANK   ANALYST
 SANDRINE   CLERK
 ADELYN   SALESMAN
 WADE   SALESMAN
 MADDEN   SALESMAN
 TUCKER   SALESMAN
 ADNRES   CLERK
 JULIUS   CLERK
 MARKER   CLERK


6. Write a query in SQL to produce the output of employees as follows. 
Employee
JONAS(manager).

Output: select concat(name, '(',job,)') as "employee" from employee;

 Employee & Job
---------------------
 KAYLING   PRESIDENT
 BLAZE   MANAGER
 CLARE   MANAGER
 JONAS   MANAGER
 SCARLET   ANALYST
 FRANK   ANALYST
 SANDRINE   CLERK
 ADELYN   SALESMAN
 WADE   SALESMAN
 MADDEN   SALESMAN
 TUCKER   SALESMAN
 ADNRES   CLERK
 JULIUS   CLERK
 MARKER   CLERK


7. From the following table, write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date.

Output:  select emp_id,emp_name,salary,DATE_FORMAT(hire_date,'%M %d,%Y') as 'hire_date' from employee;

 emp_id | emp_name | salary  |      hire_date
--------+----------+---------+-------------------
  68319 | KAYLING  | 6000.00 | NOVEMBER  18,1991
  66928 | BLAZE    | 2750.00 | MAY       01,1991
  67832 | CLARE    | 2550.00 | JUNE      09,1991
  65646 | JONAS    | 2957.00 | APRIL     02,1991
  67858 | SCARLET  | 3100.00 | APRIL     19,1997
  69062 | FRANK    | 3100.00 | DECEMBER  03,1991
  63679 | SANDRINE |  900.00 | DECEMBER  18,1990
  64989 | ADELYN   | 1700.00 | FEBRUARY  20,1991
  65271 | WADE     | 1350.00 | FEBRUARY  22,1991
  66564 | MADDEN   | 1350.00 | SEPTEMBER 28,1991
  68454 | TUCKER   | 1600.00 | SEPTEMBER 08,1991
  68736 | ADNRES   | 1200.00 | MAY       23,1997
  69000 | JULIUS   | 1050.00 | DECEMBER  03,1991
  69324 | MARKER   | 1400.00 | JANUARY   23,1992

8. From the following table, write a SQL query to count the number of characters except the spaces for each employee name. Return employee name length.
output: SELECT length(trim(emp_name)) FROM employees;


length
--------
      7
      5
      5
      5
      7
      5
      8
      6
      4
      6
      6
      6
      6
      6
9. From the following table, write a SQL query to find the employee ID, salary, and commission of all the employees.
Output: select emp_id, salary,commission from employee;

 emp_id | salary  | commission
--------+---------+------------
  68319 | 6000.00 |
  66928 | 2750.00 |
  67832 | 2550.00 |
  65646 | 2957.00 |
  67858 | 3100.00 |
  69062 | 3100.00 |
  63679 |  900.00 |
  64989 | 1700.00 |     400.00
  65271 | 1350.00 |     600.00
  66564 | 1350.00 |    1500.00
  68454 | 1600.00 |       0.00
  68736 | 1200.00 |
  69000 | 1050.00 |
  69324 | 1400.00 |


10. From the following table, write a SQL query to find the unique department with jobs. Return department ID, Job name. 
output: select distinct dep_id,job_name from employee;

dep_id | job_name
--------+-----------
   3001 | MANAGER
   2001 | ANALYST
   3001 | SALESMAN
   1001 | MANAGER
   1001 | PRESIDENT
   2001 | MANAGER
   2001 | CLERK
   1001 | CLERK
   3001 | CLERK
11. From the following table, write a SQL query to find those employees who do not belong to the department 2001. Return complete information about the employees.
output: select * from employee where dep_id not in (2001);

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001

12. From the following table, write a SQL query to find those employees who joined before 1991. Return complete information about the employees. 
output: select * from employee where hire_date<('1991-1-1');
 
emp_id | emp_name | job_name | manager_id | hire_date  | salary | commission | dep_id
--------+----------+----------+------------+------------+--------+------------+--------
  63679 | SANDRINE | CLERK    |      69062 | 1990-12-18 | 900.00 |            |   2001

13. From the following table, write a SQL query to calculate the average salary of employees who work as analysts. Return average salary.
output :  select avg(salary) from employee where job_name='ANALYST';

          avg
-----------------------
 3100.0000000000000000

14. From the following table, write a SQL query to find the details of the employee ‘BLAZE’.
output: select * from employee where emp_name='BLAZE';

emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
15. From the following table, write a SQL query to identify employees whose commissions exceed their salaries. Return complete information about the employees.  

output: select * from employee where commission > salary;

emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66564 | MADDEN   | SALESMAN |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001

16. From the following table, write a SQL query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase. Return complete information about the employees. 

output: select * from employee where (1.25* salary)>3000;

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001

17. From the following table, write a SQL query to find the names of the employees whose length is six. Return employee name.

output: SELECT emp_name FROM employees WHERE length(emp_name)=6;

 emp_name
----------
 ADELYN
 MADDEN
 TUCKER
 ADNRES
 JULIUS
 MARKER
18. From the following table, write a SQL query to find out which employees joined in the month of January. Return complete information about the employees. 
output: SELECT * FROM employees WHERE to_char(hire_date, 'mon')='jan';

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  69324 | MARKER   | CLERK    |      67832 | 1992-01-23 | 1400.00 |            |   1001


19. From the following table, write a SQL query to separate the names of employees and their managers by the string 'works for'.  
output: SELECT e.emp_name || ' works for ' || m.emp_name FROM employees e, employees m WHERE e.manager_id = m.emp_id;

  ?column?
--------------------------
 BLAZE works for KAYLING
 CLARE works for KAYLING
 JONAS works for KAYLING
 SCARLET works for JONAS
 FRANK works for JONAS
 SANDRINE works for FRANK
 ADELYN works for BLAZE
 WADE works for BLAZE
 MADDEN works for BLAZE
 TUCKER works for BLAZE
 ADNRES works for SCARLET
 JULIUS works for BLAZE
 MARKER works for CLARE

20. From the following table, write a SQL query to find those employees whose designation is ‘CLERK’. Return complete information about the employees.
output: SELECT * FROM employees WHERE job_name = 'CLERK';

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  63679 | SANDRINE | CLERK    |      69062 | 1990-12-18 |  900.00 |            |   2001
  68736 | ADNRES   | CLERK    |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK    |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK    |      67832 | 1992-01-23 | 1400.00 |            |   1001

21. From the following table, write a SQL query to identify employees with more than 27 years of experience. Return complete information about the employees. 
SELECT * FROM employees WHERE EXTRACT(YEAR FROM age(CURRENT_DATE, hire_date)) > 27;

emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  64989 | ADELYN   | SALESMAN |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  65679 | SANDRINE | CLERK    |      69062 | 1990-12-18 | 900.00  |            |   2001

22. From the following table, write a SQL query to find those employees whose salaries are less than 3500. Return complete information about the employees.
output: SELECT * FROM employees WHERE salary <3500;
emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST  |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST  |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK    |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK    |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK    |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK    |      67832 | 1992-01-23 | 1400.00 |            |   1001

23. From the following table, write a SQL query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary. 
output: SELECT emp_name,job_name, salary FROM employees WHERE job_name = 'ANALYST';
 
emp_name | job_name | salary
----------+----------+---------
 SCARLET  | ANALYST  | 3100.00
 FRANK    | ANALYST  | 3100.00
24.From the following table, write a SQL query to identify those employees who joined the company in 1991. Return complete information about the employees.
output: SELECT * FROM employees WHERE to_char(hire_date,'YYYY') = '1991';

emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001


25. From the following table, write a SQL query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.  

output: SELECT e.emp_id, e.emp_name, e.hire_date, e.salary FROM employees e WHERE hire_date <'1991-04-01';
 
emp_id | emp_name | hire_date  | salary
--------+----------+------------+---------
  63679 | SANDRINE | 1990-12-18 |  900.00
  64989 | ADELYN   | 1991-02-20 | 1700.00
  65271 | WADE     | 1991-02-22 | 1350.00

26. From the following table, write a SQL query identify the employees who do not report to a manager. Return employee name, job name.

SELECT e.emp_name,
       e.job_name
FROM employees e
WHERE manager_id IS NULL;

 emp_name     | job_name
--------------+--------------
  KAYLING     | PRESIDENT
27. From the following table, write a SQL query to find the employees who joined on the 1st of May 1991. Return complete information about the employees

SELECT *
FROM employees
WHERE hire_date = '1991-05-01';
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001

28. From the following table, write a SQL query to identify the experience of the employees who work under the manager whose ID number is 68319. Return employee ID, employee name, salary, experience.
SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE manager_id=68319;
Sample Output:

 emp_id | emp_name | salary  |       Experience
--------+----------+---------+-------------------------
  66928 | BLAZE    | 2750.00 | 26 years 8 mons 29 days
  67832 | CLARE    | 2550.00 | 26 years 7 mons 21 days
  65646 | JONAS    | 2957.00 | 26 years 9 mons 28 days

29. From the following table, write a SQL query to find out which employees earn more than 100 per day as a salary. Return employee ID, employee name, salary, and experience.
SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE (salary/30)>100;
Sample Output:

 emp_id | emp_name | salary  |       Experience
--------+----------+---------+-------------------------
  68319 | KAYLING  | 6000.00 | 26 years 2 mons 12 days
  67858 | SCARLET  | 3100.00 | 20 years 9 mons 11 days
  69062 | FRANK    | 3100.00 | 26 years 1 mon 27 days

30. From the following table, write a SQL query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name.  
SELECT emp_name
FROM employees
WHERE hire_date + interval '96 months' > '1999-12-31';
Sample Output:

 emp_name     
--------------
  ADNRES      
  MARKER      
  SCARLET 

31. From the following table, write a SQL query to identify the employees whose salaries are odd. Return complete information about the employees.
SELECT *
FROM employees
WHERE mod(salary,2) = 1;
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001

32. From the following table, write a SQL query to identify employees whose salaries contain only three digits. Return complete information about the employees. 

SELECT *
FROM employees
WHERE length(TRIM(TO_CHAR(salary,'9999'))) = 3;
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001

33. From the following table, write a SQL query to find those employees who joined in the month of APRIL. Return complete information about the employees. 

SELECT *
FROM employees
WHERE to_char(hire_date,'MON') LIKE 'APR%';
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST  |      65646 | 1997-04-19 | 3100.00 |            |   2001


34. From the following table, write a SQL query to find out which employees joined the company before the 19th of the month. Return complete information about the employees.  

SELECT *
FROM employees
WHERE to_char(hire_date,'DD') < '19';
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001

35. From the following table, write a SQL query to identify those employees who have been working as a SALESMAN and month portion of the experience is more than 10. Return complete information about the employees.

SELECT *
FROM employees
WHERE job_name = 'SALESMAN'
  AND EXTRACT(MONTH
              FROM age(CURRENT_DATE, hire_date)) > 10;
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  64989 | ADELYN   | SALESMAN |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001

36. From the following table, write a SQL query to find those employees of department id 3001 or 1001 and joined in the year 1991. Return complete information about the employees.

SELECT *
FROM employees
WHERE to_char (hire_date,'YYYY') IN ('1991')
  AND (dep_id = 3001
       OR dep_id =1001) ;
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001

37. From the following table, write a SQL query to find the employees who are working for the department ID 1001 or 2001. Return complete information about the employees.

SELECT *
FROM employees
WHERE dep_id=1001
  OR dep_id=2001;
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001

38. From the following table, write a SQL query to find those employees whose designation is ‘CLERK’ and work in the department ID 2001. Return complete information about the employees.

SELECT *
FROM employees
WHERE job_name ='CLERK'
  AND dep_id = 2001;
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  63679 | SANDRINE | CLERK    |      69062 | 1990-12-18 |  900.00 |            |   2001
  68736 | ADNRES   | CLERK    |      67858 | 1997-05-23 | 1200.00 |            |   2001

39. From the following table, write a query in SQL to find those employees where 
 1. the employees receive some commission which should not be more than the salary and annual salary including commission is below 34000.
 2. Designation is ‘SALESMAN’ and working in the department ‘3001’. Return employee ID, employee name, salary and job name.

SELECT emp_id,
       emp_name,
       salary,
       job_name
FROM employees
WHERE 12*(salary+commission) < 34000
  AND commission IS NOT NULL
  AND commission < salary
  AND job_name = 'SALESMAN'
  AND dep_id = 3001;
Sample Output:

 emp_id | emp_name | salary  | job_name
--------+----------+---------+----------
  64989 | ADELYN   | 1700.00 | SALESMAN
  65271 | WADE     | 1350.00 | SALESMAN
  68454 | TUCKER   | 1600.00 | SALESMAN

40. From the following table, write a SQL query to find those employees who are either CLERK or MANAGER. Return complete information about the employees. 

SELECT *
FROM employees
WHERE job_name IN ('CLERK','MANAGER');
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001
  63679 | SANDRINE | CLERK    |      69062 | 1990-12-18 |  900.00 |            |   2001
  68736 | ADNRES   | CLERK    |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK    |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK    |      67832 | 1992-01-23 | 1400.00 |            |   1001

41. From the following table, write a SQL query to identify those employees who joined in any month other than February. Return complete information about the employees.

SELECT *
FROM employees
WHERE to_char(hire_date,'MONTH') NOT LIKE 'FEB%';
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001

42. From the following table, write a SQL query to find those employees who joined in the year 1991. Return complete information about the employees.

SELECT *
FROM employees
WHERE hire_date BETWEEN '1991-01-01' AND '1991-12-31';
Sample Output:

  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001

43. From the following table, write a SQL query to identify the employees who joined the company in June 1991. Return complete information about the employees. 

SELECT *
FROM employees
WHERE to_char(hire_date,'mon-yyyy')='jun-1991'
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001

44. From the following table, write a SQL query to search for all employees with an annual salary between 24000 and 50000 (Begin and end values are included.). Return complete information about the employees. 

SELECT *
FROM employees
WHERE 12*salary BETWEEN 24000 AND 50000;
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST  |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST  |      65646 | 1991-12-03 | 3100.00 |            |   2001

45. From the following table, write a SQL query to identify all employees who joined the company on 1st May, 20th February, and 3rd December 1991. Return complete information about the employees. 

SELECT *
FROM employees
WHERE to_char(hire_date,'DD-MON-YY') IN ('01-MAY-91',
                                         '20-FEB-91',
                                         '03-DEC-91');
Sample Output:

emp_id |emp_name |job_name |manager_id |hire_date  |salary  |commission |dep_id |
-------|---------|---------|-----------|-----------|--------|-----------|-------|
66928  |BLAZE    |MANAGER  |68319      |1991-05-01 |2750.00 |           |3001   |
64989  |ADELYN   |SALESMAN |66928      |1991-02-20 |1700.00 |400.00     |3001   |
69000  |JULIUS   |CLERK    |66928      |1991-12-03 |1050.00 |           |3001   |
69062  |FRANK    |ANALYST  |65646      |1991-12-03 |3100.00 |           |2001   |

46. From the following table, write a SQL query to find out which employees are working under the managers 63679, 68319, 66564, or 69000. Return complete information about the employees.

SELECT *
FROM employees
WHERE manager_id IN (63679,
                     68319,
                     66564,
                     69000);
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001

47. From the following table, write a SQL query to find which employees joined the company after the month of June in 1991 and within this year. Return complete information about the employees.
SELECT *
FROM employees
WHERE hire_date BETWEEN '01-JUL-91' AND '31-DEC-91';
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001

48. From the following table, write a SQL query to find those employees who joined in 90's. Return complete information about the employees. 

SELECT *
FROM employees
WHERE to_char(hire_date,'YY') >= '90'
  AND to_char(hire_date,'YY') < '99';
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001


49. From the following table, write a SQL query to find those managers who are in the department 1001 or 2001. Return complete information about the employees.


SELECT *
FROM employees
WHERE job_name = 'MANAGER'
  AND (dep_id = 1001
       OR dep_id =2001);
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001

50. From the following table, write a SQL query to identify employees who joined in the month of FEBRUARY with a salary range of 1001 to 2000 (Begin and end values are included.). Return complete information about the employees.

SELECT *
FROM employees
WHERE to_char(hire_date,'MON') = 'FEB'
  AND salary BETWEEN 1000 AND 2000;
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  64989 | ADELYN   | SALESMAN |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001

51. From the following table, write a SQL query to find those employees who joined before or after the year 1991. Return complete information about the employees.

SELECT *
FROM employees
WHERE to_char (hire_date,'YYYY') NOT LIKE '1991';
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  67858 | SCARLET  | ANALYST  |      65646 | 1997-04-19 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK    |      69062 | 1990-12-18 |  900.00 |            |   2001
  68736 | ADNRES   | CLERK    |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69324 | MARKER   | CLERK    |      67832 | 1992-01-23 | 1400.00 |            |   1001

52. From the following table, write a SQL query to find employees along with their department details. Return employee ID, employee name, job name, manager ID, hire date, salary, commission, department ID, and department name.

SELECT e.emp_id,
       e.emp_name,
       e.job_name,
       e.manager_id,
       e.hire_date,
       e.salary,
       e.commission,
       e.dep_id,
       d.dep_name
FROM employees e,
     department d
WHERE e.dep_id = d.dep_id;
Sample Output:

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id | dep_name
--------+----------+-----------+------------+------------+---------+------------+--------+----------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001 | FINANCE
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001 | MARKETING
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001 | FINANCE
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001 | AUDIT
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001 | AUDIT
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001 | AUDIT
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001 | AUDIT
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001 | MARKETING
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001 | MARKETING
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001 | MARKETING
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001 | MARKETING
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001 | AUDIT
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001 | MARKETING
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001 | FINANCE

53. From the following table, write a SQL query to identify those employees who earn 60000 or more per year or do not work as ANALYST. Return employee name, job name, (12*salary) as Annual Salary, department ID, and grade.

SELECT e.emp_name,
       e.job_name,
       (12*e.salary)"Annual Salary",
       e.dep_id,
       d.dep_name,
       s.grade
FROM employees e,
     department d,
     salary_grade s
WHERE e.dep_id = d.dep_id
  AND e.salary BETWEEN s.min_sal AND s.max_sal
  AND (((12*e.salary)>= 60000)
       OR (e.job_name != 'ANALYST'))
Sample Output:

 emp_name | job_name  | Annual Salary | dep_id | dep_name  | grade
----------+-----------+---------------+--------+-----------+-------
 SANDRINE | CLERK     |      10800.00 |   2001 | AUDIT     |     1
 ADNRES   | CLERK     |      14400.00 |   2001 | AUDIT     |     1
 JULIUS   | CLERK     |      12600.00 |   3001 | MARKETING |     1
 WADE     | SALESMAN  |      16200.00 |   3001 | MARKETING |     2
 MADDEN   | SALESMAN  |      16200.00 |   3001 | MARKETING |     2
 MARKER   | CLERK     |      16800.00 |   1001 | FINANCE   |     2
 ADELYN   | SALESMAN  |      20400.00 |   3001 | MARKETING |     3
 TUCKER   | SALESMAN  |      19200.00 |   3001 | MARKETING |     3
 BLAZE    | MANAGER   |      33000.00 |   3001 | MARKETING |     4
 CLARE    | MANAGER   |      30600.00 |   1001 | FINANCE   |     4
 JONAS    | MANAGER   |      35484.00 |   2001 | AUDIT     |     4
 KAYLING  | PRESIDENT |      72000.00 |   1001 | FINANCE   |     5

54. From the following table, write a SQL query to identify employees whose salaries are higher than their managers' salaries. Return employee name, job name, manager ID, salary, manager name, manager's salary.. 

SELECT w.emp_name,
       w.job_name,
       w.manager_id,
       w.salary,
       m.emp_name "Manager",
       m.emp_id,
       m.salary "Manager_Salary"
FROM employees w,
     employees m
WHERE w.manager_id = m.emp_id
  AND w.salary > m.salary;
Sample Output:

 emp_name | job_name | manager_id | salary  | Manager | emp_id | Manager_Salary
----------+----------+------------+---------+---------+--------+----------------
 SCARLET  | ANALYST  |      65646 | 3100.00 | JONAS   |  65646 |        2957.00
 FRANK    | ANALYST  |      65646 | 3100.00 | JONAS   |  65646 |        2957.00

55. From the following table, write a SQL query to find those employees whose salary is between 2000 and 5000 (Begin and end values are included.) and location is PERTH. Return employee name, department ID, salary, and commission. 

SELECT e.emp_name,
       e.dep_id,
       e.salary,
       e.commission
FROM employees e,
     department d
WHERE e.dep_id = d.dep_id
  AND d.dep_location = 'PERTH'
  AND e.salary BETWEEN 2000 AND 5000;
Sample Output:

 emp_name | dep_id | salary  | commission
----------+--------+---------+------------
 BLAZE    |   3001 | 2750.00 |

56. From the following table, write a SQL query to find the employees whose department ID is 1001 or 3001 and whose salary grade is not 4. They joined the company before 1992-12-31. Return grade, employee name.

SELECT s.grade,
       e.emp_name
FROM employees e,
     salary_grade s
WHERE e.dep_id IN (1001,
                   3001)
  AND hire_date < ('1992-12-31')
  AND (e.salary BETWEEN s.min_sal AND s.max_sal
       AND s.grade NOT IN (4));
Sample Output:

 grade | emp_name
-------+----------
     1 | JULIUS
     2 | WADE
     2 | MADDEN
     2 | MARKER
     3 | ADELYN
     3 | TUCKER
     5 | KAYLING


57. From the following table, write a SQL query to find those employees whose manager name is JONAS. Return employee id, employee name, job name, manager ID, hire date, salary, department ID, employee name. 

SELECT w.emp_id,
       w.emp_name,
       w.job_name,
       w.manager_id,
       w.hire_date,
       w.salary,
       w.dep_id,
       m.emp_name
FROM employees w,
     employees m
WHERE w.manager_id = m.emp_id
  AND m.emp_name = 'JONAS';
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | dep_id | emp_name
--------+----------+----------+------------+------------+---------+--------+----------
  67858 | SCARLET  | ANALYST  |      65646 | 1997-04-19 | 3100.00 |   2001 | JONAS
  69062 | FRANK    | ANALYST  |      65646 | 1991-12-03 | 3100.00 |   2001 | JONAS

58. From the following table, write a SQL query to find the name and salary of the employee FRANK. Salary should be equal to the maximum salary within his or her salary group.

SELECT e.emp_name,
       e.salary
FROM employees e,
     salary_grade s
WHERE e.emp_name = 'FRANK'
  AND e.salary BETWEEN s.min_sal AND s.max_sal
  AND e.salary = s.max_sal ;
Sample Output:

 emp_name | salary
----------+---------
 FRANK    | 3100.00

59. From the following table, write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions. Return complete information about the employees. 

SELECT *
FROM employees
WHERE job_name IN ('MANAGER',
                   'ANALYST')
  AND salary BETWEEN 2000 AND 5000
  AND commission IS NULL;
Sample Output:

 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST  |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST  |      65646 | 1991-12-03 | 3100.00 |            |   2001

60. From the following table, write a SQL query to search for employees working in PERTH or MELBOURNE and month part of their achieved experience is more than 10. Return employee ID, employee name, department ID, salary, and department location.

SELECT e.emp_id,
       e.emp_name,
       e.dep_id,
       e.salary,
       d.dep_location
FROM employees e,
     department d
WHERE e.dep_id = d.dep_id
  AND d.dep_location IN ('PERTH',
                         'MELBOURNE')
  AND EXTRACT(MONTH
              FROM age(CURRENT_DATE, hire_date)) > 10;
Sample Output:

 emp_id | emp_name | dep_id | salary  | dep_location
--------+----------+--------+---------+--------------
  64989 | ADELYN   |   3001 | 1700.00 | PERTH
  65271 | WADE     |   3001 | 1350.00 | PERTH

