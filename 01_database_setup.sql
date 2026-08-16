/*
===============================================================================
Project : HR Employee Attrition Analysis
Author  : Gafar Olajide
Tool    : MySQL
Dataset : IBM HR Analytics Employee Attrition & Performance
Script  : 01_database_setup.sql

Purpose:
Database Setup.
===============================================================================
*/

-- =============================================================================
# Database Creation
-- =============================================================================
CREATE DATABASE hr_analytics;

-- =============================================================================
# Database Selection
-- =============================================================================
USE hr_analytics;

-- =============================================================================
# Table Creation 
-- =============================================================================
CREATE TABLE employee_attrition (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 CHAR(1),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

-- =============================================================================
#  Import Verification 
-- =============================================================================
SELECT COUNT(*) AS Total_Employees
FROM employee_attrition;

-- =============================================================================
# Dataset Preview
-- =============================================================================
SELECT *
FROM employee_attrition
LIMIT 10;


