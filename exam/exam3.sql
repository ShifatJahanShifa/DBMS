select trunc((sysdate-hire_date)/365,0) yaer,
trunc(mod((sysdate-hire_date),365)/30,0) month, 
trunc(mod(mod((sysdate-hire_date),365),30),0) day
from employees;