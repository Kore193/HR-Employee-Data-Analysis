# HR-Employee-Data-Analysis
HR employee data analysis using Python, SQL, and Excel to analyze workforce, salary, hiring, and employee trends.

## Project Overview

This project analyzes employee data to understand workforce distribution, salary patterns, employee demographics, hiring trends, and tenure across different departments, positions, and countries.

The project follows an end-to-end data analysis workflow using Python, SQL, and Excel, starting from data auditing and cleaning through exploratory analysis, business analysis, and reporting.

---

## Business Objective

The main objective of this project is to analyze employee data and answer practical HR and management questions such as:

- How is the workforce distributed across departments and countries?
- Which departments have higher average salary levels?
- Which positions have the highest salary levels?
- Which departments have a large workforce but relatively lower average salaries?
- Which countries have a large workforce but lower average salaries?
- Which departments have higher employee tenure?
- Which positions have wider salary ranges?
- How has employee hiring changed over the years?
- Which departments have experienced greater workforce growth?
- How are salary levels related to employee tenure?

---

## Dataset

The dataset contains **30,000 employee records** with the following fields:

| Column | Description |
|---|---|
| Employee_ID | Unique employee identifier |
| Employee_Name | Employee name |
| Age | Employee age |
| Country | Employee country |
| Department | Employee department |
| Position | Employee position |
| Salary | Employee salary |
| Joining_Date | Employee joining date |

Additional derived columns were created during data preparation:

- Joining Year
- Joining Month
- Joining Month Name
- Tenure Years
- Age Group

---

## Tools & Technologies

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn
- **SQL**
  - MySQL
- **Excel**
  - PivotTables
  - PivotCharts
  - Excel formulas
  - Business reporting
- **Jupyter Notebook**
- **Git & GitHub**

---

## Project Workflow

### 1. Data Audit & Cleaning

The dataset was examined for:

- Missing values
- Duplicate records
- Unique employee IDs
- Data types
- Categorical values
- Numerical distributions

Data preparation included:

- Converting joining dates into datetime format
- Cleaning text fields
- Creating joining year and month fields
- Calculating employee tenure
- Creating age groups

---

### 2. Exploratory Data Analysis

Python was used to explore:

- Workforce distribution
- Employee demographics
- Salary distribution
- Department and position patterns
- Country-level workforce trends
- Hiring trends
- Employee tenure

Visualizations were created using Matplotlib and Seaborn.

---

### 3. SQL Business Analysis

MySQL was used to perform business-oriented analysis including:

- Total workforce analysis
- Department and country workforce distribution
- Average salary analysis
- Salary ranges
- Age and tenure analysis
- Hiring trends
- Department-level workforce and salary summaries
- Position-level salary analysis

---

### 4. Excel Business Analysis & Dashboard

Excel was used to create HR reports and a dashboard using:

- KPI cards
- PivotTables
- PivotCharts
- Salary and workforce comparisons
- Department analysis
- Country analysis
- Hiring trends
- Business-focused HR questions

The dashboard provides a summarized view of important workforce and salary metrics.

---

## Key Metrics

The dataset contains:

- **30,000** employees
- **6** departments
- **6** positions
- **10** countries
- Average salary: **89,826.14**
- Average employee age: **40.98 years**
- Average tenure: **5.0 years**

---

## Project Structure

```text
HR-Employee-Data-Analysis/
│
├── data/
│   ├── employee_records.csv
│   └── employee_records_cleaned.csv
│
├── notebooks/
│   ├── 01_Data_Audit_and_Cleaning.ipynb
│   └── 02_HR_Exploratory_Data_Analysis.ipynb
│
├── sql/
│   └── HR_Employee_Analysis.sql
│
├── excel/
│   └── HR_Employee_Analysis.xlsx
│
└── README.md
