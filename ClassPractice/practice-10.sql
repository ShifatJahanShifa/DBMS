-- find department_id, department_name, employee_id, manager_id
select department_id, department_name, employee_id, manager_id 
from departments natural join employees; 

select d.department_id, department_name, employee_id, e.manager_id
from departments d join employees e on
e.department_id=d.department_id and e.manager_id=d.manager_id;

select department_name || ' department''s manager id: ' || manager_id
from departments;

select department_id from employees;
select distinct department_id from employees;