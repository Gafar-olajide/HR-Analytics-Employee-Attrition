/*
===============================================================================
Project : HR Employee Attrition Analysis
Author  : Gafar Olajide
Tool    : MySQL
Dataset : IBM HR Analytics Employee Attrition & Performance
Script  : 06_advanced_sql_analysis.sql

Purpose:
Perform advanced SQL analysis using CTEs, Window Functions, Ranking Functions,
and business intelligence techniques to uncover deeper workforce insights.
===============================================================================
*/

USE hr_analytics;
---

-- =============================================================================
# SECTION 1 — Department Salary Ranking
## Business Question
### Which departments pay the highest average salary?
-- =============================================================================
SELECT
    Department,
    ROUND(AVG(MonthlyIncome),2) AS Average_Salary,
    RANK() OVER(
        ORDER BY AVG(MonthlyIncome) DESC
    ) AS Salary_Rank
FROM employee_attrition
GROUP BY Department;
---

-- =============================================================================
# SECTION 2 — Highest Paid Employees
-- =============================================================================
SELECT
    EmployeeNumber,
    Department,
    JobRole,
    MonthlyIncome,
    DENSE_RANK() OVER(
        ORDER BY MonthlyIncome DESC
    ) AS Income_Rank
FROM employee_attrition
LIMIT 20;
---

-- =============================================================================
# SECTION 3 — Salary Compared to Department Average
-- =============================================================================
WITH DepartmentSalary AS
(
SELECT

EmployeeNumber,
Department,
JobRole,
MonthlyIncome,

ROUND(
AVG(MonthlyIncome)
OVER(PARTITION BY Department),2
) AS Department_Average

FROM employee_attrition
)

SELECT *,
MonthlyIncome-Department_Average
AS Salary_Difference

FROM DepartmentSalary;
---

-- =============================================================================
# SECTION 4 — Employees Above Department Average
-- =============================================================================
WITH SalaryCTE AS
(
SELECT

EmployeeNumber,
Department,
MonthlyIncome,

AVG(MonthlyIncome)
OVER(PARTITION BY Department)
AS AvgSalary

FROM employee_attrition
)

SELECT *

FROM SalaryCTE

WHERE MonthlyIncome>AvgSalary;
---

-- =============================================================================
# SECTION 5 — Department Attrition Ranking
-- =============================================================================
SELECT

Department,

COUNT(*) AS Employees,

SUM(CASE WHEN Attrition='Yes'
THEN 1 ELSE 0 END)
AS Employees_Left,

ROUND(
SUM(CASE WHEN Attrition='Yes'
THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate,

RANK() OVER(
ORDER BY
ROUND(
SUM(CASE WHEN Attrition='Yes'
THEN 1 ELSE 0 END)
*100.0/COUNT(*),2)
DESC
)
AS Attrition_Rank

FROM employee_attrition

GROUP BY Department;
---

-- =============================================================================
# SECTION 6 — Running Total of Monthly Income
-- =============================================================================
SELECT

EmployeeNumber,

MonthlyIncome,

SUM(MonthlyIncome)
OVER(
ORDER BY EmployeeNumber
)
AS Running_Total

FROM employee_attrition;
---

-- =============================================================================
# SECTION 7 — Average Salary by Job Level
-- =============================================================================
WITH JobLevelSalary AS
(
SELECT

JobLevel,

ROUND(AVG(MonthlyIncome),2)
AS Average_Salary

FROM employee_attrition

GROUP BY JobLevel
)

SELECT

JobLevel,
Average_Salary,

ROUND(
AVG(Average_Salary)
OVER(),2
)
AS Company_Average

FROM JobLevelSalary;
---

-- =============================================================================
# SECTION 8 — Percent of Workforce per Department
-- =============================================================================
SELECT

Department,

COUNT(*) AS Employees,

ROUND(
COUNT(*)*100.0/
SUM(COUNT(*))
OVER(),2
)
AS Workforce_Percentage

FROM employee_attrition

GROUP BY Department;
---

-- =============================================================================
# SECTION 9 — Attrition Compared to Company Average
-- =============================================================================
WITH AttritionSummary AS
(
SELECT

Department,

ROUND(
SUM(CASE WHEN Attrition='Yes'
THEN 1 ELSE 0 END)
*100.0/COUNT(*),2)
AS AttritionRate

FROM employee_attrition

GROUP BY Department
)

SELECT *,

ROUND(
AVG(AttritionRate)
OVER(),2)
AS CompanyAverage

FROM AttritionSummary;
---

-- =============================================================================
# SECTION 10 — Top 5 Highest Paid Employees in Each Department
-- =============================================================================
WITH RankedEmployees AS
(
SELECT

EmployeeNumber,
Department,
JobRole,
MonthlyIncome,

ROW_NUMBER()
OVER(
PARTITION BY Department
ORDER BY MonthlyIncome DESC
)
AS Ranking

FROM employee_attrition
)

SELECT *

FROM RankedEmployees

WHERE Ranking<=5

ORDER BY Department,Ranking;
---
