select round(45.923,2),round(45.923,0),round(45.923,-1) from dual;
select trunc(45.923,2),trunc(45.923,0),trunc(45.923,-1) from dual;
select mod(salary,5000) from employees where job_id='SA_REP';