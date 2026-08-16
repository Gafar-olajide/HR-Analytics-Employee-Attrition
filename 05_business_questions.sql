/*
===============================================================================
Project : HR Employee Attrition Analysis
Author  : Gafar Olajide
Tool    : MySQL
Dataset : IBM HR Analytics Employee Attrition & Performance
Script  : 05_business_questions.sql

Purpose:
Answer key HR business questions related to employee attrition, workforce
composition, compensation, engagement, and retention.
===============================================================================
*/

USE hr_analytics;
---

-- =============================================================================
# SECTION 1 — ATTRITION OVERVIEW
## Business Question 1
### Which gender has the highest attrition rate?
-- =============================================================================
SELECT
    Gender,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Attrition_Rate
FROM employee_attrition
GROUP BY Gender
ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
## Business Question 2
### Which age group experiences the highest attrition?
-- =============================================================================
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '55+'
    END AS Age_Group,

    COUNT(*) AS Total_Employees,

    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,

    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY Age_Group

ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
## Business Question 3
### Which department loses the most employees?
-- =============================================================================
SELECT
    Department,

    COUNT(*) AS Total_Employees,

    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,

    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY Department

ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
## Business Question 4
### Which job role has the highest attrition?
-- =============================================================================
SELECT
    JobRole,

    COUNT(*) AS Total_Employees,

    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,

    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY JobRole

ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
## Business Question 5
### Which job level experiences the highest turnover?
-- =============================================================================
SELECT
    JobLevel,

    COUNT(*) AS Total_Employees,

    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,

    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY JobLevel

ORDER BY JobLevel;
---

-- =============================================================================
# SECTION 2 — COMPENSATION ANALYSIS
## Business Question 6
### Does salary influence attrition?
-- =============================================================================
SELECT

CASE
    WHEN MonthlyIncome <=5000 THEN 'Up to 5K'
    WHEN MonthlyIncome<=10000 THEN '5K-10K'
    WHEN MonthlyIncome<=15000 THEN '10K-15K'
    ELSE '15K+'
END AS Salary_Slab,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY Salary_Slab

ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
# SECTION 3 — EMPLOYEE SATISFACTION
## Business Question 7
### Does Job Satisfaction affect attrition?
-- =============================================================================
SELECT

JobSatisfaction,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY JobSatisfaction

ORDER BY JobSatisfaction;
---

-- =============================================================================
## Business Question 8
### Environment Satisfaction
-- =============================================================================
SELECT

EnvironmentSatisfaction,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY EnvironmentSatisfaction

ORDER BY EnvironmentSatisfaction;
---

-- =============================================================================
## Business Question 9
### Work-Life Balance
-- =============================================================================
SELECT

WorkLifeBalance,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY WorkLifeBalance

ORDER BY WorkLifeBalance;
---

-- =============================================================================
# SECTION 4 — WORKPLACE ENGAGEMENT
## Business Question 10
### Does overtime increase attrition?
-- =============================================================================
SELECT

OverTime,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY OverTime

ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
## Business Question 11
### Does business travel affect attrition?
-- =============================================================================
SELECT

BusinessTravel,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY BusinessTravel

ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
# SECTION 5 — CAREER PROGRESSION
## Business Question 12
### Which tenure group has the highest attrition?
-- =============================================================================
SELECT

CASE

WHEN YearsAtCompany<=2 THEN '0-2 Years'

WHEN YearsAtCompany<=5 THEN '3-5 Years'

WHEN YearsAtCompany<=10 THEN '6-10 Years'

ELSE '10+ Years'

END AS Tenure_Group,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY Tenure_Group

ORDER BY Attrition_Rate DESC;
---

-- =============================================================================
# Business Question 13
### Does stock option level influence attrition?
-- =============================================================================
SELECT

StockOptionLevel,

COUNT(*) AS Total_Employees,

SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate

FROM employee_attrition

GROUP BY StockOptionLevel

ORDER BY StockOptionLevel;
---
