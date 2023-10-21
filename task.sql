
SQL*Plus: Release 10.2.0.1.0 - Production on Tue Jul 25 14:38:08 2023

Copyright (c) 1982, 2005, Oracle.  All rights reserved.

SQL> connect system
Enter password:
Connected.
SQL> alter user hr identified by hr account unlock;

User altered.

SQL> grant dba to hr;

Grant succeeded.

SQL> connect hr
Enter password:
Connected.
SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
REGIONS                        TABLE
COUNTRIES                      TABLE
LOCATIONS                      TABLE
DEPARTMENTS                    TABLE
JOBS                           TABLE
EMPLOYEES                      TABLE
JOB_HISTORY                    TABLE
EMP_DETAILS_VIEW               VIEW
BIN$QFspZe0ZS+Kq41gAtFeFpw==$0 TABLE
NEW                            TABLE
TEMP                           TABLE

11 rows selected.

SQL> describe employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)




SQL> select last_name,salary,12*(salary+salary*nvl(commission_pct,0)) from employees;

LAST_NAME                     SALARY 12*(SALARY+SALARY*NVL(COMMISSION_PCT,0))
------------------------- ---------- ----------------------------------------
King                           24000                                   288000






107 rows selected.





SQL> select last_name,salary,12*(salary+salary*nvl(commission_pct,0)) from employees ORDER BY AES department_id AES, ORDER BY salary DSEC;


SQL> select last_name,salary,12*(salary+salary*nvl(commission_pct,0)) from employees ORDER BY department_id,salary DESC;



107 rows selected.

SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) from employees ORDER BY department_id,salary DESC;




LAST_NAME                 DEPARTMENT_ID     SALARY
------------------------- ------------- ----------
12*(SALARY+SALARY*NVL(COMMISSION_PCT,0))
----------------------------------------
Everett                              50       3900
                                   46800

Chung                                50       3800
                                   45600

Dilly                                50       3600
                                   43200




107 rows selected.

SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees ORDER BY department_id,salary DESC;

LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------
Whalen                               10       4400         52800


LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------


107 rows selected.




SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees ORDER BY department_id,salary DESC;



LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------
Faviet                              100       9000        108000
Chen                                100       8200         98400


107 rows selected.

SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees ORDER BY department_id,salary DESC;



LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------
Faviet                              100       9000        108000

Grant                                         7000         96600

107 rows selected.

SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees ORDER BY department_id,salary DESC;

LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY

Mallin                               50       3300         39600
Bissot                               50       3300         39600
Taylor                               50       3200         38400
Nayer                                50       3200         38400
Stiles                               50       3200         38400
McCain                               50       3200         38400
Davies                               50       3100         37200

OConnell                             50       2600         31200




107 rows selected.

SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees ORDER BY department_id,salary DESC where department_id=90 AND job_id='SA_REP AND salary>1000;
ERROR:
ORA-01756: quoted string not properly terminated





S

SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees where department_id=80 AND job_id='SA_REP' AND salary>1000 ORDER BY department_id,salary DESC;

LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------
Ozer                                 80      11500        172500
Abel                                 80      11000        171600
Vishney                              80      10500        157500



29 rows selected.


SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees where department_id=80 AND job_id='SA_REP' AND salary>1000 ORDER BY department_id,salary DESC;

LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------
Ozer                                 80      11500        172500
Abel                                 80      11000        171600
Vishney                              80      10500        157500
Tucke
McEwen                               80       9000        145800



29 rows selected.

SQL> select last_name,department_id,salary,12*(salary+salary*nvl(commission_pct,0)) "ANNUAL SALARY" from employees where department_id=80 AND job_id='SA_REP' AND salary>1000 ORDER BY department_id,"ANNUAL SALARY" DESC;

LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------
Ozer                                 80      11500        172500
A
LAST_NAME                 DEPARTMENT_ID     SALARY ANNUAL SALARY
------------------------- ------------- ---------- -------------
Hutt
Johnson                              80       6200         81840
Kumar                                80       6100         80520

29 rows selected.

SQL> describe employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> describe departments;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPARTMENT_ID                             NOT NULL NUMBER(4)
 DEPARTMENT_NAME                           NOT NULL VARCHAR2(30)
 MANAGER_ID                                         NUMBER(6)
 LOCATION_ID                                        NUMBER(4)









SQL> select employee_id, last_name, salary, department_id From employees where employee_id=&employee_num;
Enter value for employee_num: 100
old   1: select employee_id, last_name, salary, department_id From employees where employee_id=&employee_num
new   1: select employee_id, last_name, salary, department_id From employees where employee_id=100

EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_ID
----------- ------------------------- ---------- -------------
        100 King                           24000            90

SQL> select employee_id, last_name, 12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ;
Enter value for employee_num: 100
old   1: select employee_id, last_name, 12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num
new   1: select employee_id, last_name, 12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=100

EMPLOYEE_ID LAST_NAME                 Annual Salary
----------- ------------------------- -------------
        100 King                             288000

SQL> select last_name, 12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ;
Enter value for employee_num: 100
old   1: select last_name, 12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num
new   1: select last_name, 12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=100

LAST_NAME                 Annual Salary
------------------------- -------------
King                             288000

SQL> select &lastName,&Salary,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ORDER BY &condition;
Enter value for lastname: king
Enter value for salary: 123
Enter value for employee_num: 100
Enter value for condition: DESC
old   1: select &lastName,&Salary,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ORDER BY &condition
new   1: select king,123,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=100 ORDER BY DESC
select king,123,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=100 ORDER BY DESC
                                                                                                                       *
ERROR at line 1:
ORA-00936: missing expression


SQL> describe employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select salary from employees;

    SALARY
----------
     24000
     170
      4200
      4100
      3400
      3000

    SALARY


107 rows selected.

SQL> select employee_id from employees;

EMPLOYEE_ID
-----------
        100
        101
        102
        103


107 rows selected.

SQL> describe employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select department_id from employees;



 

107 rows selected.


old   1: select &&columnname,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ORDER BY &condition
new   1: select salary,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=50 ORDER BY last_name

no rows selected


SQL> select &&columnname,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ORDER BY &columnname;
Enter value for employee_num: 50
old   1: select &&columnname,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ORDER BY &columnname
new   1: select salary,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=50 ORDER BY salary

no rows selected

SQL> select &&columnname,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ORDER BY &columnname;
Enter value for employee_num: 100
old   1: select &&columnname,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=&employee_num ORDER BY &columnname
new   1: select salary,12*(salary+nvl(commission_pct,0)*salary) "Annual Salary" From employees where employee_id=100 ORDER BY salary

    SALARY Annual Salary
---------- -------------
     24000        288000

SQL>