create database bankloans;



use bankloan;
select * from loan_table;


#1 YEAR WISE LOAN AMOUNT STATUS
SELECT 
    YEAR(issue_d) AS issue_year,
    SUM(loan_amnt) AS total_loan_amount
FROM 
    loan_table
GROUP BY 
    issue_year
ORDER BY 
    issue_year;
    
#2 GRADE AND SUBGRADE WISE REVOL_BAL
SELECT 
    grade,
    sub_grade,
    SUM(revol_bal) AS total_revol_bal
FROM 
    loan_table
GROUP BY 
    grade, sub_grade
ORDER BY 
    grade, sub_grade;
    
# Total payment for verified status vs total payment for non verified status

UPDATE loan_table
SET verification_status = REPLACE(verification_status, 'Source Verified', 'Verified')
WHERE verification_status = 'Source Verified';

select
      verification_status,sum(total_pymnt)
from
    loan_table
group by
        verification_status
order by
	verification_status;
    
#4 state_wise and month_wise loan status
select
      month(issue_d),loan_status,count(loan_status)
from
    loan_table
group by
        month(issue_d),loan_status
order by
        month(issue_d);
        
#5 TOP 10 States for loan amount
SELECT 
    addr_state,
    SUM(loan_amnt) AS total_loan_amount
FROM 
    loan_table
GROUP BY 
    addr_state
ORDER BY 
    total_loan_amount DESC
LIMIT 10;
        
#6 Bottom 5 states
SELECT 
    addr_state,
    SUM(loan_amnt) AS total_loan_amount
FROM 
    loan_table
GROUP BY 
    addr_state
ORDER BY 
    total_loan_amount ASC
LIMIT 10;

#7 Home Ownership vs last pymnt date
select
      home_ownership,count(last_pymnt_d)
from
    loan_table
group by
        home_ownership
order by
        home_ownership desc;
