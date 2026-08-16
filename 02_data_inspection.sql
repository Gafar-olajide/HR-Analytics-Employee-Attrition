/*
===============================================================================
Project : HR Employee Attrition Analysis
Author  : Gafar Olajide
Tool    : MySQL
Dataset : IBM HR Analytics Employee Attrition & Performance
Script  : 02_data_inspection.sql

Purpose:
Data Inspection
===============================================================================
*/

USE hr_analytics;

-- =============================================================================
# Table Structure
-- =============================================================================
DESCRIBE employee_attrition;

-- =============================================================================
# Missing Values
-- =============================================================================
SELECT *
FROM employee_attrition
WHERE Age IS NULL;

-- =============================================================================
# Duplicate Employees
-- =============================================================================
SELECT EmployeeNumber,
       COUNT(*) AS occurrences
FROM employee_attrition
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;

-- =============================================================================
# Unique Departments
-- =============================================================================
SELECT DISTINCT Department
FROM employee_attrition;

-- =============================================================================
# Unique Job Roles
-- =============================================================================
SELECT DISTINCT JobRole
FROM employee_attrition;

-- =============================================================================
# Unique Education Fieldss
-- =============================================================================
SELECT DISTINCT EducationField
FROM employee_attrition;






