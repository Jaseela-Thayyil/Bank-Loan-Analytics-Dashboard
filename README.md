# Bank-Loan-Analytics-Dashboard
# Project Objective
The main objective of this project is to analyze customer bank loans and extract insights that can assist in financial decision-making. The analysis focuses on key metrics such as loan performance, customer behavior, and payment status. Dashboards were created using Excel, Tableau, Power BI, and SQL to visualize the results.
# Dataset Used
<a href="https://github.com/Jaseela-Thayyil/Bank-Loan-Analytics-Dashboard/blob/main/Finance_1.csv">Dataset-1</a> ,
<a href="https://github.com/Jaseela-Thayyil/Bank-Loan-Analytics-Dashboard/blob/main/Finance_2.xlsx">Dataset-2</a>
# Key Questions (KPIs):-
The following KPIs were developed to analyze loan data:

1. Year-wise Loan Amount Status: How does loan issuance vary by year and what are the trends in loan status?
2. Grade and Sub-grade-wise Revolving Balance: What is the revolving balance breakdown based on loan grade and sub-grade?
3. Total Payment for Verified vs Non-Verified Loans: How do verified loans compare to non-verified loans in terms of total payment?
4. State-wise, Month-wise Loan Status: What are the loan statuses across different states and months?
5. 5. Home Ownership vs Last Payment Date Status: How does home ownership influence the loan payment status on the last payment date?
6. Cards Created:
       Total Loan Amount ,
       Total Loan Applications ,
       Total Funded Amount ,
       Interest Rate ,
       Debt-to-Income (DTI) Ratio
   
# Process
1. Excel Dashboard

Data Cleaning: Imported the dataset into Excel ,merged and performed initial data cleaning, such as removing duplicates, handling missing values, and formatting columns for easier analysis.

Pivot Tables and Charts:

Created Pivot Tables to summarize key metrics such as loan amount by year, grade-wise revol balance, and total payments for verified vs non-verified loans.

Generated visual charts (bar charts, line charts, and pie charts) to represent the data visually.


Cards/Widgets:

Used simple formulas (SUM, COUNT, AVERAGE) to calculate KPIs like Total Loan Amount, Total Loan Applications, Total Funded Amount, Interest Rate, and DTI (Debt-to-Income Ratio).

These were displayed as cards on the dashboard for quick reference.


Dashboard Creation: Combined the Pivot Tables and visual charts into a single Excel sheet, creating a well-organized and interactive dashboard to summarize key insights.
2. Power BI Dashboard

Data Loading: Loaded the Excel dataset into Power BI using the Get Data option.

Data Transformation: Used Power Query to perform data transformations such as splitting columns, merging tables, and cleaning data before loading it into the data model.

Modeling: Established relationships between tables to create an optimized data model. This enabled the calculation of various KPIs.

Creating Visuals:

Developed interactive visuals like bar charts, line charts, and map charts to represent KPIs such as Year-wise Loan Status, State-wise Loan Status, and Home Ownership vs Payment Date.

Applied filters and slicers to allow users to dynamically explore data by loan status, state, verification status, etc.


Dashboard Layout: Organized visuals into a cohesive, interactive dashboard, allowing stakeholders to drill down into loan performance metrics at a detailed level.


#   Dashboards
The dashboards were created to provide interactive visualizations of the key KPIs:

1.Excel Dashboard: Analyzed key metrics through pivot tables and charts.

<img width="711" alt="Excel dashboard" src="https://github.com/user-attachments/assets/95d5929a-24e9-43c9-a6d4-6a4a264326fa">

2.Tableau Dashboard: Interactive visualizations for exploring loan performance.

<img width="797" alt="Tableau dashboard" src="https://github.com/user-attachments/assets/0b57cffc-cf63-4e2d-8a87-4d0331046259">

3.Power BI Dashboard: Visual reports with filters for deep-diving into loan data.

<img width="603" alt="power bi dashboard" src="https://github.com/user-attachments/assets/ce480d96-2576-4506-b45e-5ad5ed8b7871">

<img width="605" alt="powere bi dashboard overview" src="https://github.com/user-attachments/assets/705765ef-c9ee-47b3-9dbe-5910490e5424">

4.SQL Queries: Used to extract insights from the dataset for visualization.

<a href="https://github.com/Jaseela-Thayyil/Bank-Loan-Analytics-Dashboard/blob/main/bank%20loan.sql">Bank_Loan_Analytics</a>

# Insights

Loan Performance Trends: Yearly trends indicate shifts in loan issuance and repayments across different states and loan grades.

Verified vs Non-Verified Loans: Verified loans generally have higher payment completion rates compared to non-verified ones.

Home Ownership Influence: Home ownership plays a significant role in loan repayment, particularly on the last payment date.

State-wise Loan Insights: Certain states have higher loan defaults, which may correlate with other factors such as economic conditions or borrower characteristics.

# Final Conclusion

The analysis provided a comprehensive view of bank loan data, revealing patterns in loan performance, verification status, and customer behavior. Through interactive dashboards and data manipulation, we were able to draw actionable insights that can help financial institutions assess risk, improve loan approval processes, and optimize repayment strategies.

