-- single & s.v;
--select employee_id,last_name,salary,department_id
--from employees
--where employee_id=&employee_num;

--select last_name,salary*12,department_id
--from employees
--where job_id='&job_title';

--select employee_id,last_name,&col_name
--from &table_name
--where &condition
--order by &order_col desc;

select employee_id,last_name,&&column_name
from employees
order by &&column_name;