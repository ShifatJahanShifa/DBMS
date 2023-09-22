select last_name,(sysdate-hire_date)/7 weeks
from employees
where department_id=90;

select sysdate+5 from dual;
select sysdate-5 from dual;

-- task was akjon employee koto year, koto month,koto din kaaj korse ta dekhano
select last_name, trunc((sysdate-hire_date)/365,0) year,
trunc(mod((sysdate-hire_date),365)/30,0) month,
trunc(mod(mod((sysdate-hire_date),365),30),0) day
from employees;