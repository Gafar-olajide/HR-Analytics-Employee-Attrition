/*
===============================================================================
Project : HR Employee Attrition Analysis
Author  : Gafar Olajide
Tool    : MySQL
Dataset : IBM HR Analytics Employee Attrition & Performance
Script  : 03_data_cleaning.sql

Purpose:
Validate data quality and prepare the dataset for exploratory analysis.
===============================================================================
*/

USE hr_analytics;

-- =============================================================================
# Step 1: Checking for NULL values in every column
-- =============================================================================
SELECT
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Nulls,
    SUM(CASE WHEN Attrition IS NULL THEN 1 ELSE 0 END) AS Attrition_Nulls,
    SUM(CASE WHEN BusinessTravel IS NULL THEN 1 ELSE 0 END) AS BusinessTravel_Nulls,
    SUM(CASE WHEN Department IS NULL THEN 1 ELSE 0 END) AS Department_Nulls,
    SUM(CASE WHEN EmployeeNumber IS NULL THEN 1 ELSE 0 END) AS EmployeeNumber_Nulls,
    SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 ELSE 0 END) AS MonthlyIncome_Nulls,
    SUM(CASE WHEN JobRole IS NULL THEN 1 ELSE 0 END) AS JobRole_Nulls
FROM employee_attrition;

-- =============================================================================
# Step 2: Checking for impossible ages
-- =============================================================================
SELECT *
FROM employee_attrition
WHERE Age < 18
   OR Age > 60;

-- =============================================================================
# Step 3: Checking for negative salaries
-- =============================================================================
SELECT *
FROM employee_attrition
WHERE MonthlyIncome < 0;

-- =============================================================================
# Step 4: Checking working years consistency
-- =============================================================================
SELECT *
FROM employee_attrition
WHERE YearsAtCompany > TotalWorkingYears;

-- =============================================================================
# Step 5: Checking current role consistency
-- =============================================================================
SELECT *
FROM employee_attrition
WHERE YearsInCurrentRole > YearsAtCompany;

-- =============================================================================
# Step 6: Checking manager tenure consistency
-- =============================================================================
SELECT *
FROM employee_attrition
WHERE YearsWithCurrManager > YearsAtCompany;

-- =============================================================================
# Step 7: Checking promotion consistency
-- =============================================================================
SELECT *
FROM employee_attrition
WHERE YearsSinceLastPromotion > YearsAtCompany;