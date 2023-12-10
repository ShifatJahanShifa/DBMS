CREATE OR REPLACE PROCEDURE query_emp(
    p_id in employees.employee_id%type,
    p_name out employees.last_name%type,
    p_salary out employees.salary%type
)

IS
BEGIN

select last_name,salary into p_name,p_salary
from employees
where employee_id=p_id;

END query_emp;
/

DECLARE 
    emp_name employees.last_name%type;
    emp_salary employees.salary%type; 
BEGIN

    query_emp(171,emp_name,emp_salary);
    dbms_output.put_line(emp_name||'earns'||to_char(emp_salary,'$999,999.00'));

END;
/