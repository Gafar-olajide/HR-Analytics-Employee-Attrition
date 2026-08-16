/*
===============================================================================
Project : HR Employee Attrition Analysis
Author  : Gafar Olajide
Tool    : MySQL
Dataset : IBM HR Analytics Employee Attrition & Performance
Script  : 04_exploratory_data_analysis.sql

Purpose:
Explore the workforce and identify key employee trends before performing
advanced attrition analysis.
===============================================================================
*/

USE hr_analytics;
---

-- =============================================================================
# Section 1 — Employee Overview
## Business Question 1
### How many employees does the company have?
-- =============================================================================
SELECT
    COUNT(*) AS Total_Employees
FROM employee_attrition;
---

-- =============================================================================
## Business Question 2
### How many employees have left?
-- =============================================================================
SELECT
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition = 'Yes';
---

-- =============================================================================
## Business Question 3
### How many employees are still with the company?
-- =============================================================================
SELECT
    COUNT(*) AS Active_Employees
FROM employee_attrition
WHERE Attrition = 'No';
---

-- =============================================================================
## Business Question 4
### What is the overall attrition rate?
-- =============================================================================
SELECT
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employee_attrition;
---

-- =============================================================================
## Business Question 5
### Average Employee Age
-- =============================================================================
SELECT
    ROUND(AVG(Age),1) AS Average_Age
FROM employee_attrition;
---

-- =============================================================================
## Business Question 6
### Average Monthly Income
-- =============================================================================
SELECT
    ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employee_attrition;
---

-- =============================================================================
# Section 2 — Workforce Demographics
## Gender Distribution
-- =============================================================================
SELECT
    Gender,
    COUNT(*) AS Total_Employees,
    ROUND(COUNT(*)*100.0/
    (SELECT COUNT(*) FROM employee_attrition),2)
    AS Percentage
FROM employee_attrition
GROUP BY Gender;
---

-- =============================================================================
## Age Distribution
-- =============================================================================
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '55+'
    END AS Age_Group,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY Age_Group
ORDER BY Age_Group;
---

-- =============================================================================
## Marital Status Distribution
-- =============================================================================
SELECT
    MaritalStatus,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY MaritalStatus
ORDER BY Total_Employees DESC;
---

-- =============================================================================
## Education Level
-- =============================================================================
SELECT
    Education,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY Education
ORDER BY Education;
---

-- =============================================================================
## Education Field
-- =============================================================================
SELECT
    EducationField,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY EducationField
ORDER BY Total_Employees DESC;
---

-- =============================================================================
# Section 3 — Organization Structure
## Employees by Department
-- =============================================================================
SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY Department
ORDER BY Total_Employees DESC;
---

-- =============================================================================
## Employees by Job Role
-- =============================================================================
SELECT
    JobRole,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY JobRole
ORDER BY Total_Employees DESC;
---

-- =============================================================================
## Employees by Job Level
-- =============================================================================
SELECT
    JobLevel,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY JobLevel;
---

-- =============================================================================
# Section 4 — Compensation
## Average Salary by Department
-- =============================================================================
SELECT
    Department,
    ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM employee_attrition
GROUP BY Department
ORDER BY Avg_Salary DESC;
---

-- =============================================================================
## Average Salary by Job Role
-- =============================================================================
SELECT
    JobRole,
    ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM employee_attrition
GROUP BY JobRole
ORDER BY Avg_Salary DESC;
---

-- =============================================================================
# Section 5 — Work Environment
## Overtime Distribution
-- =============================================================================
SELECT
    OverTime,
    COUNT(*) AS Employees
FROM employee_attrition
GROUP BY OverTime;
---

-- =============================================================================
## Business Travel
-- =============================================================================
SELECT
    BusinessTravel,
    COUNT(*) AS Employees
FROM employee_attrition
GROUP BY BusinessTravel;
---


