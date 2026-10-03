create database HR_Employee_Analysis;

use HR_Employee_Analysis;
Select * from employee_records_cleaned;
select count(*)
from employee_records_cleaned;

-- Question 1 — Total Workforce
-- Business Question
-- How many employees are in the organization?

select count(distinct Employee_ID) as Total_Employees
from employee_records_cleaned;

-- Question 2 — Employee Distribution by Department
-- Business Question
-- How many employees work in each department?

select Department, count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Department
order by Employee_Count desc;

-- 3 — Employee Distribution by Country
-- Business Question
-- How is the workforce distributed across different countries?

select Country, count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Country
order by Employee_Count desc;

-- Q.4 — Employee Distribution by Position
-- Business Question
-- How many employees are working in each position?

select Position, count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Position
order by Employee_Count desc;

-- Q.5 — Overall Average Salary
-- Business Question
-- What is the average salary of employees across the organization?

select round(avg(Salary), 2) as Average_Salary
from employee_records_cleaned;

-- Q. 6 — Average Salary by Department
-- Business Question
-- What is the average salary in each department?

select Department,
       round(avg(Salary), 2) as Average_Salary
from employee_records_cleaned
group by Department
order by Average_Salary desc;

-- Q. 7 — Average Salary by Position
-- Business Question
-- What is the average salary for each employee position?

select Position,
       round(avg(Salary), 2) as Average_Salary
from employee_records_cleaned
group by Position
order by Average_Salary desc;

-- Q. 8 — Highest-Paid Employees
-- Business Question
-- Who are the highest-paid employees in the organization?
select Employee_ID,
       Employee_Name,
       Department,
       Position,
       Salary
from employee_records_cleaned
order by Salary desc
limit 10;

-- Q. 9 — Lowest-Paid Employees
-- Business Question
-- Who are the lowest-paid employees in the organization?
select Employee_ID,
       Employee_Name,
       Department,
       Position,
       Salary
from employee_records_cleaned
order by Salary asc
limit 10;

-- Q. 10 — Salary Range by Department
-- Business Question
-- How does the salary range vary across departments?\
select Department,
       round(min(Salary), 2) as Minimum_Salary,
       round(max(Salary), 2) as Maximum_Salary,
       round(avg(Salary), 2) as Average_Salary
from employee_records_cleaned
group by Department
order by Average_Salary desc;

-- Q.11 — Average Age by Department
-- Business Question
-- What is the average age of employees in each department?
select Department,
       round(avg(Age), 2) as Average_Age
from employee_records_cleaned
group by Department
order by Average_Age desc;

-- Q.12 — Employee Distribution by Age Group
-- Business Question
-- How is the workforce distributed across different age groups?
select Age_Group,
       count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Age_Group
order by Employee_Count desc;

-- Q.13 — Average Tenure by Department
-- Business Question
-- What is the average employee tenure in each department?
select Department,
       round(avg(Tenure_Years), 2) as Average_Tenure
from employee_records_cleaned
group by Department
order by Average_Tenure desc;

-- Q.14 — Employee Distribution by Tenure Group
-- Business Question
-- What is the distribution of employees across different tenure groups?

select * from employee_records_cleaned;
select Tenure_Years,
       count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Tenure_Years
order by Employee_Count desc;

-- Q.15 — Employees Joined by Year
-- Business Question
-- What is the number of employees who joined the organization in each year?

select Joining_Year,
       count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Joining_Year
order by Joining_Year;

-- Q.16 — Employees Joined by Month
-- Business Question
-- What is the number of employees who joined the organization in each month?

select Joining_Month,
       Joining_Month_Name,
       count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Joining_Month, Joining_Month_Name
order by Joining_Month;

-- Q.17 — Department-wise Hiring by Year
-- Business Question
-- How many employees joined each department in each year?

select Joining_Year,
       Department,
       count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Joining_Year, Department
order by Joining_Year, Employee_Count desc;

-- Q.18 — Country-wise Hiring
-- Business Question
-- How many employees joined the organization from each country?

select Country,
       count(distinct Employee_ID) as Employee_Count
from employee_records_cleaned
group by Country
order by Employee_Count desc;

-- Q.19 — Department Performance Summary
-- Business Question
-- How do departments compare in terms of employee count, average salary, average age, and average tenure?
select Department,
       count(distinct Employee_ID) as Employee_Count,
       round(avg(Salary), 2) as Average_Salary,
       round(avg(Age), 2) as Average_Age,
       round(avg(Tenure_Years), 2) as Average_Tenure
from employee_records_cleaned
group by Department
order by Employee_Count desc;

-- Q.20 — Position Salary & Workforce Summary
-- Business Question
-- How do different positions compare in terms of employee count, average salary, and salary range?

select Position,
       count(distinct Employee_ID) as Employee_Count,
       round(avg(Salary), 2) as Average_Salary,
       round(min(Salary), 2) as Minimum_Salary,
       round(max(Salary), 2) as Maximum_Salary
from employee_records_cleaned
group by Position
order by Average_Salary desc;