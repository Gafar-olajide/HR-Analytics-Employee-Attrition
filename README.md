# 👥 HR Analytics — Employee Attrition Analysis

## 📊 Project Overview

Employee attrition is a critical workforce challenge that can increase recruitment costs, reduce productivity, and affect organizational performance.

This project analyzes employee data to identify key patterns and factors associated with employee attrition. The analysis combines **MySQL** for data validation, exploratory analysis, business-question analysis, and advanced SQL techniques with **Microsoft Power BI** for interactive dashboard development and business storytelling.

The dataset contains **1,470 employees and 35 attributes**, covering demographics, job characteristics, compensation, satisfaction, work environment, career progression, and employee attrition.

The objective is to transform raw HR data into actionable insights that can help management understand employee turnover and identify areas where retention strategies may be required.

---

## 🎯 Business Problem

The organization is experiencing employee turnover and needs to understand:

- How significant is the current attrition problem?
- Which employee groups are most affected by attrition?
- Which departments and job roles experience the highest turnover?
- Does compensation influence employee attrition?
- Does overtime contribute to employee turnover?
- How do job satisfaction, environment satisfaction, and work-life balance relate to attrition?
- Does business travel affect employee retention?
- Which tenure groups and job levels present the greatest retention risk?
- What actionable strategies can HR management implement to improve employee retention?

This analysis addresses these questions using data-driven evidence rather than assumptions.

---

## 🔍 Analytical Objectives

The project was designed to:

1. Measure the organization's overall employee attrition rate.
2. Analyze workforce demographics and organizational structure.
3. Identify employee groups with higher attrition rates.
4. Compare attrition across departments and job roles.
5. Examine the relationship between compensation and attrition.
6. Analyze the impact of job satisfaction, environment satisfaction, and work-life balance.
7. Evaluate the relationship between overtime, business travel, and employee turnover.
8. Analyze attrition across job levels and employee tenure.
9. Compare departmental compensation and employee income.
10. Apply advanced SQL techniques to generate deeper workforce insights.
11. Build an interactive Power BI dashboard for executive-level decision-making.
12. Translate analytical findings into practical HR recommendations.

---

## 🛠️ Tools & Technologies

### Data Analysis
- **MySQL**
- SQL
- Common Table Expressions (CTEs)
- Window Functions
- Aggregate Functions
- Conditional Logic
- Ranking Functions

### Data Visualization
- **Microsoft Power BI**
- DAX
- Interactive KPI Cards
- Conditional Formatting
- Executive Dashboard Design
- Interactive Navigation

### Documentation & Portfolio
- GitHub
- PDF Documentation
- Notion Portfolio

---

## 📁 Project Structure

```text
HR-Analytics-Employee-Attrition/
│
├── README.md
│
├── SQL/
│   ├── 01_database_setup.sql
│   ├── 02_data_inspection.sql
│   ├── 03_data_cleaning.sql
│   ├── 04_exploratory_data_analysis.sql
│   ├── 05_business_questions.sql
│   └── 06_advanced_sql_analysis.sql
│
├── PowerBI/
│   └── HR Employee Attrition Dashboard.pbix
│
├── Documentation/
│   ├── Executive_Summary.pdf
│   ├── Business_Problem_Analytical_Objective.pdf
│   └── Insights_Recommendations.pdf
│
└── Images/
    ├── 01_Executive_Overview.png
    ├── 02_Attrition_Analysis.png
    ├── 03_Employee_Experience.png
    ├── 04_Compensation & Workforce.png
    └── 05_HR_Insights_Recommendations.png
```
---

## 📈 Power BI Dashboard

The Power BI dashboard consists of five analytical pages designed to provide both executive-level visibility and detailed workforce analysis.

### 1. Executive Overview

Provides a high-level view of the organization's workforce and overall attrition situation.

Key metrics include:

* Total Employees: **1,470**
* Employees Who Left: **237**
* Active Employees: **1,233**
* Overall Attrition Rate: **16.12%**
* Average Employee Age: **36.9**
* Average Monthly Income: **6,502.93**

### 2. Attrition Analysis

Examines the major employee groups and workplace factors associated with higher attrition.

The page analyzes:

* Attrition by Gender
* Attrition by Age Group
* Attrition by Department
* Attrition by Job Role
* Attrition by Job Level
* Attrition by Salary Band
* Attrition by Overtime
* Attrition by Business Travel
* Attrition by Tenure

### 3. Workforce Insights

Provides deeper analysis of workforce characteristics and employee experience.

The analysis includes:

* Workforce demographics
* Job satisfaction
* Environment satisfaction
* Work-life balance
* Stock option levels
* Employee distribution across organizational categories
* Average job satisfaction

### 4. Compensation Analysis

Examines employee compensation patterns and their relationship with workforce structure and attrition.

The analysis includes:

* Average salary by department
* Average salary by job role
* Average salary by job level
* Salary distribution
* Highest-paid employees
* Department salary comparisons
* Salary differences from departmental averages

### 5. HR Insights & Recommendations

Transforms the analytical findings into business-oriented insights and recommended HR actions.

The page highlights the most important workforce risks and provides targeted recommendations for improving employee retention.

---

## 🔎 Key Findings

The analysis identified several important attrition patterns.

### Overall Attrition

The organization has **1,470 employees**, of which **237 employees have left**, resulting in an overall attrition rate of **16.12%**.

### Age

Employees aged **18–25** have the highest attrition rate at **35.77%**, significantly above the overall company rate.

### Job Role

**Sales Representatives** have the highest job-role attrition rate at **39.76%**.

### Department

The **Sales department** has the highest departmental attrition rate at **20.63%**, compared with:

* Human Resources: **19.05%**
* Research & Development: **13.84%**

### Job Level

Employees at **Job Level 1** experience the highest attrition rate at **26.34%**.

### Compensation

Employees earning **up to 5K** have an attrition rate of **21.76%**, compared with only **3.76%** among employees earning **15K+**.

### Job Satisfaction

Employees with the lowest job satisfaction level have an attrition rate of **22.84%**, compared with **11.33%** among employees with the highest satisfaction level.

### Environment Satisfaction

Employees with the lowest environment satisfaction level experience **25.35% attrition**, substantially higher than employees at higher satisfaction levels.

### Work-Life Balance

Employees with the lowest work-life balance rating have an attrition rate of **31.25%**.

### Overtime

Employees working overtime have an attrition rate of **30.53%**, compared with **10.44%** among employees who do not work overtime.

### Business Travel

Employees who travel frequently have an attrition rate of **24.91%**, compared with **8.00%** among non-travel employees.

### Tenure

Employees with **0–2 years of tenure** have an attrition rate of **29.82%**, making early-career employees a significant retention-risk group.

### Stock Options

Employees with **no stock options** have an attrition rate of **24.41%**, compared with **9.40%** among employees with Stock Option Level 1.

---

## 💡 Business Recommendations

Based on the analytical findings, the following actions are recommended:

### 1. Strengthen Early-Career Retention

Employees with 0–2 years of tenure and employees at Job Level 1 show significantly higher attrition.

HR should strengthen:

* Onboarding programs
* Mentorship initiatives
* Career development pathways
* Early-career engagement programs
* Probation-to-permanent transition support

### 2. Review Sales Workforce Retention

Sales has the highest departmental attrition rate, while Sales Representatives have the highest job-role attrition rate.

Management should investigate:

* Sales targets and workload
* Incentive structures
* Compensation competitiveness
* Career progression
* Managerial support
* Employee engagement

### 3. Address Overtime-Related Attrition

The substantial difference between overtime and non-overtime attrition suggests that workload management should be investigated.

HR should consider:

* Monitoring overtime frequency
* Reviewing workload allocation
* Improving staffing levels
* Introducing workload-balancing initiatives
* Monitoring burnout indicators

### 4. Improve Compensation for High-Risk Groups

Employees in the lowest salary band experience considerably higher attrition.

Management should review:

* Entry-level compensation
* Salary competitiveness
* Performance-based incentives
* Promotion-linked salary increases
* Compensation equity across comparable roles

### 5. Improve Employee Satisfaction

Low job satisfaction and environment satisfaction are associated with higher attrition.

HR should establish mechanisms for:

* Employee feedback
* Engagement surveys
* Managerial support
* Workplace improvement
* Recognition and appreciation

### 6. Strengthen Work-Life Balance

The high attrition rate among employees with the lowest work-life balance suggests the need to review workload and employee well-being.

Possible interventions include:

* Flexible work arrangements where appropriate
* Workload monitoring
* Better scheduling
* Leave utilization
* Employee well-being initiatives

### 7. Monitor Frequent Travelers

Employees who travel frequently experience higher attrition.

Management should evaluate:

* Travel workload
* Travel frequency
* Travel-related compensation
* Employee recovery time
* Support provided to frequent travelers

### 8. Establish an HR Attrition Monitoring Framework

HR should continuously monitor attrition by:

* Department
* Job role
* Age group
* Job level
* Salary band
* Tenure
* Overtime
* Satisfaction
* Business travel

This will allow management to identify emerging retention risks before they become significant workforce problems.

> **Note:** The analysis identifies associations between employee characteristics and attrition. These relationships should not automatically be interpreted as proof of causation. Further investigation may be required before implementing major HR policy changes.

---

## 🧮 SQL Analysis

MySQL was used to perform data validation, exploratory analysis, business-question analysis, and advanced workforce analytics.

### Data Validation

The analysis included:

* Row-count verification
* Dataset preview
* Table structure inspection
* Primary-key validation
* Missing-value checks
* Duplicate checks
* Category validation

### Exploratory Data Analysis

SQL was used to analyze:

* Employee demographics
* Department distribution
* Job roles
* Job levels
* Education
* Compensation
* Overtime
* Business travel
* Workforce composition

### Attrition Analysis

SQL was used to calculate attrition rates across:

* Gender
* Age group
* Department
* Job role
* Job level
* Salary band
* Job satisfaction
* Environment satisfaction
* Work-life balance
* Overtime
* Business travel
* Tenure
* Stock option level

### Advanced SQL Techniques

The project demonstrates practical use of:

* `GROUP BY`
* Aggregate Functions
* `CASE`
* Common Table Expressions (CTEs)
* `RANK()`
* `ROW_NUMBER()`
* Window Functions
* `SUM() OVER()`
* Partitioning
* Running totals
* Department-level comparisons
* Comparative salary analysis

These techniques were used to answer business-oriented questions rather than simply demonstrate SQL syntax.

---

## 📄 Documentation

Supporting project documentation is available in the `Documentation` folder.

### Executive Summary

Provides a concise overview of the project, major findings, and business significance.

### Business Problem & Analytical Objective

Defines the HR challenge addressed by the analysis and explains the analytical questions used to investigate employee attrition.

### Insights & Recommendations

Summarizes the major analytical findings and translates them into practical HR recommendations.

---

## 👤 Author

### Gafar Olajide

**Data Analyst | Business Intelligence**

I specialize in transforming raw data into actionable business insights using SQL, Power BI, Excel, and statistical analysis.

**Core Skills:**

* Data Analysis
* SQL
* Power BI
* DAX
* Excel
* Exploratory Data Analysis
* Business Intelligence
* Data Visualization
* Statistical Analysis

### Connect With Me

* **LinkedIn:** [Gafar Olajide](https://www.linkedin.com/in/gafar-olajide)
* **GitHub:** [Gafar-olajide](https://github.com/Gafar-olajide)
