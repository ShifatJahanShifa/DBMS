-- sorting
-- type-01
select last_name,job_id,department_id,salary,hire_date
from employees
order by hire_date;

-- type-02
select last_name,job_id,department_id,salary,hire_date
from employees
order by job_id desc;

--type-03
select last_name,job_id,department_id,salary, salary*12 annualS
from employees
order by annualS desc;


--type-04
select last_name,job_id,department_id,salary,hire_date
from employees
order by 3 desc;

--type-05
select last_name,department_id,salary
from employees
order by department_id,salary desc;

--type-06 ( extra )
-- output e dekhabo last_name, dept_id, salary, annual salary jader dept_id 60 theke 90 , salary >10000, dept asc and beshi salary wala manush age
select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) annualS
from employees
where department_id between 60 and 90 and salary>=10000
order by department_id,salary desc;

