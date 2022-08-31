CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Employee (
	EMPLOYEE_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
    EMAIL CHAR(25),
    DEPARTMENT CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
);

INSERT INTO Employee
	(EMPLOYEE_ID, FIRST_NAME, LAST_NAME,EMAIL,DEPARTMENT,SALARY, JOINING_DATE) VALUES
		(001, 'Vishal','Rathore','vishalrathore@carepay.com','Finance', 45000,'2018-02-12'),
		(002, 'Rahul','Sarathe','rahulsarathe@carepay.com','HR', 60000, '2017-04-17'),
		(003, 'Anisha','Gour','anishagour@carepay.com','Purchase', 30000, '2017-12-20'),
		(004, 'Saksham','Mahajan','sakshammahajan@carepay.com','Finance', 60000, '2019-11-12'),
		(005, 'Riya','Agarwal','riyaagarwal@carepay.com','Finance', 45000, '2018-04-23'),
		(006, 'Ankit','Kumar','ankitkumar@carepay.com','Marketing', 50000, '2020-01-14'),
		(007, 'Nishit','Sharma','nishitsharma@carepay.com','Purchase', 48000, '2018-10-10'),
		(008, 'Samay','Raina','samayraina@carepay.com','Marketing', 36000, '2017-08-22'),
        (008, 'Aman','Singh','amansingh@carepay.com','Finance', 45000, '2017-08-12'),
        (008, 'Sarthak','Jain','sarthakjain@carepay.com','Purchase', 48000, '2018-04-08'),
        (008, 'Ashutosh','Patil','ashutoshpatil@carepay.com','PR', 50000, '2019-09-26'),
        (008, 'Harshit','Kumar','harshitkumar@carepay.com','HR', 40000, '2018-06-05'),
        (008, 'Ayush','Srivastav','ayushsrivastav@carepay.com','Purchase', 30000, '2018-08-24'),
        (008, 'Shreyansh','Deriya','shreyanshderiya@carepay.com','PR', 35000, '2017-07-13'),
        (008, 'Aryan','Sharma','aryansharma@carepay.com','Finance', 60000, '2019-10-31'),
        (008, 'Snehal','Reddy','snehalreddy@carepay.com','HR', 40000, '2019-03-28'),
        (008, 'Shubham','Mittal','shubhammittal@carepay.com','PR', 35000,'2020-02-01'),
        (008, 'Rakshit','Rao','rakshitao@carepay.com','Marketing', 36000, '2018-11-30');
