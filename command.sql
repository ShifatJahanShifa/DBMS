select * from tab;
describe departments;
select * from departments;
select department_id from departments;
select department_id,manager_id from departments;
describe dual;
select * from dual;
select 2+2 from dual;
select 2-2 from dual;
select 2*2 from dual;
select 2/2 from dual;
describe employees;
select last_name,salary from employees;
select last_name,salary,salary*12 from employees;
select last_name,salary,salary*12 annual_salary from employees;
select last_name,salary,salary*12 "ANNUAL SALARY" from employees;
select commission_pct from employees;
select last_name,salary,12*(salary+salary*commission_pct) "ANNUAL SALARY" from employees;
select last_name,salary,12*(salary+salary*NVL(commission_pct,0)) "ANNUAL SALARY" from employees;
select last_name || ' is a ' || job_id AS "EMPLOYEE DETAILS" from employees;
select last_name || ' is a ' || job_id "EMPLOYEE DETAILS" from employees;