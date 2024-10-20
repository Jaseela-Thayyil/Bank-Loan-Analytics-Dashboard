use excelr;
#checking if there is any duplicates

select id,member_id,count(*)
      from bank_loan
      group by id,member_id
      having count(*)>1;
      
#checking if there is any null values      
select
      count(*) as total_rows,
      sum(case when id is null or id=''then 1 else 0 end) as null_id,
      sum(case when member_id is null or member_id='' then 1 else 0 end) as null_member_id,
      sum(case when loan_amount is null or loan_amount='' then 1 else 0 end) as null_loan_amount,
      sum(case when funded_amount is null or funded_amount ='' then 1 else 0 end) as null_funded_amount,
      sum(case when term is null or term ='' then 1 else 0 end) as null_term,
      sum(case when interest_rate is null or interest_rate ='' then 1 else 0 end) as null_interest_rate,
      sum(case when grade is null or grade =''then 1 else 0 end) as null_grade,
      sum(case when sub_grade is null or sub_grade='' then 1 else 0 end) as null_sub_grade,
      sum(case when employee_title is null or employee_title='' then 1 else 0 end) as null_employee_title,
      sum(case when verification_status is null or verification_status =''then 1 else 0 end) as null_verification_status,
      sum(case when home_ownership is null or home_ownership =''then 1 else 0 end) as null_HO,
      sum(case when loan_status is null or loan_status =''then 1 else 0 end) as null_loan_status,
      sum(case when purpose is null or purpose =''then 1 else 0 end) as null_purpose,
      sum(case when state is null or state =''then 1 else 0 end) as null_state,
      sum(case when `dept to income ratio` is null then 1 else 0 end) as null_dept_to_income_ratio,
      sum(case when revol_bal is null then 1 else 0 end) as null_revol_balance,
      sum(case when out_prncp is null then 1 else 0 end) as null_out_prncp ,
      sum(case when total_pymnt is null then 1 else 0 end) as null_total_pymnt,
      sum(case when last_pymnt_amnt is null then 1 else 0 end) as null_last_pymnt_amnt
      from bank_loan;
   
   # replacing empty cells with default values
   set sql_safe_updates =0;
   update bank_loan
   set employee_title="unknown"
   where employee_title is null or employee_title = '';
   
   select employee_title from bank_loan;
   
#1, Year wise loan amount Stats
#Issue date column is in text data type-so should convert it to date data type
alter table bank_loan modify column issue_date date;   #error code1292 comes so we should update date column 

UPDATE bank_loan
SET issue_date = STR_TO_DATE(issue_date, '%d-%m-%Y')
WHERE issue_date LIKE '__-__-____';   # this is to change values in the column to a date format

alter table bank_loan 
modify column issue_date date;  #changed the data type from text to date

select year(issue_date) as yea_r,  concat("$",format(round(sum(Loan_amount)/1000000,2),2),"M") as Total_Loan_Amount 
       from bank_loan 
       group by yea_r
       order by yea_r;


#2, Grade and sub grade wise revol_bal

select grade,sub_grade, concat("$",format(round(sum(revol_bal)/1000000,2),2),"M") as Total_revolve_balance 
       from bank_loan 
       group by grade,sub_grade
       order by grade,sub_grade;
       
#3, Total Payment for Verified Status Vs Total Payment for Non Verified Status
 # convert "source verified" value to "verified"
 
 update bank_loan
 set verification_status="verified"
 where verification_status = "source verified";
 
 select Verification_status,
		round(sum(total_pymnt),2) as total_payment,
        concat("$",format(round(sum(total_pymnt)/1000000,2),2),"M") as Payment_in_million, 
	   concat(round((sum(total_pymnt)/(select sum(total_pymnt) from bank_loan)*100),2),"%") as percentage 
		from bank_loan group by verification_status;
   
#4 State wise and month wise loan status
  #1 statewise loan status
  
  select state,loan_status,count(id) as total_loan_applications,
         concat("$",round(sum(funded_amount)/1000,2),"K") as total_loan_funded_in_K
         from bank_loan 
         group by state,loan_status 
         order by state;
  
  #2 monthwise loan status       
  
  select monthname(issue_date) as month_,loan_status,count(id) as total_loan_applications, 
         concat("$",round(sum(funded_amount)/1000,2),"K") as total_loan_funded_in_K 
         from bank_loan 
         group by month_,loan_status 
         order by month_;
         
#5 Home ownership Vs last payment date stats

select home_ownership,concat("$",format(round(sum(last_pymnt_amnt)/1000000,2),2),"M") as last_payment_amount,
       concat(round(sum(last_pymnt_amnt)/(select sum(last_pymnt_amnt) from bank_loan)*100,2),"%")  as percentage from bank_loan 
       group by home_ownership 
       order by last_payment_amount desc;
         