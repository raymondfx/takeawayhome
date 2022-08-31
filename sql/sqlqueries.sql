-- Write an SQL query to fetch “FIRST_NAME” from employee table using the alias name as <WORKER_NAME>.
Select FIRST_NAME AS WORKER_NAME from Employee;

-- Write an SQL query to fetch unique values of DEPARTMENT from employee table.
Select distinct DEPARTMENT from Employee;
-- Write an SQL query to show the last 5 record from a table.
SELECT * FROM Employee WHERE EMPLOYEE_ID <=5
UNION
SELECT * FROM (SELECT * FROM Employee E order by E.EMPLOYEE_ID DESC) AS E1 WHERE E1.EMPLOYEE_ID <=5;

-- Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
Select RTRIM(FIRST_NAME) from Employee;

-- Write an SQL query to print the name of employees who have highest salary in each department

SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Employee group by DEPARTMENT) as TempNew 
Inner Join Employee t on TempNew.DEPARTMENT=t.DEPARTMENT and TempNew.TotalSalary=t.Salary;

-- Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length

Select distinct DEPARTMENT from Employee;
-- Write an SQL query to print all Worker details from the Worker table order FIRST_NAME Ascending and DEPARTMENT Descending.

Select * from Employee order by FIRST_NAME asc,DEPARTMENT desc;

-- Write an SQL query to fetch the names of workers who earn the highest salary.

SELECT FIRST_NAME, SALARY from Employee WHERE SALARY=(SELECT max(SALARY) from Employee);

-- Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets
Select * from Employee where FIRST_NAME like '_____h';