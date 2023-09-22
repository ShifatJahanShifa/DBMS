-- case conversion function
select employee_id,last_name,department_id
from employees
where lower(last_name)='higgins';
select lower('Hello World') from dual;
select upper(last_name) from employees;
select initcap(job_id) from employees;


-- character manipulation function
select concat('hello ','world') from dual;
select substr('helloworld',3,5) from dual;
select length('helloworld') from dual;
select instr('helloworld','l') from dual;
select lpad(salary,10,'*') from employees;
select rpad(employee_id,5,'/') from employees;
select replace('jack and jue','j','Bl') from dual;
select last_name,replace(last_name,'s','*') from employees;
select trim('h' from 'helloworld') from dual;
select last_name,trim('s' from last_name) from employees;
select concat(first_name,last_name) name,job_id,length(last_name),instr(last_name,'a') "contains a?"
from employees
where substr(job_id,4)=upper('rep');
--try
select concat(first_name,last_name) name,employee_id
from employees
order by name desc;
select job_id,instr(job_id,'REP')
from employees;