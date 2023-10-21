--drop table Branch;
--drop table customer;
--drop table loan;
--rop table borrower;
--drop table account;
--drop table depositor;

-- 

create table Branch
(branch_name varchar2(30),
branch_city varchar2(30),
assets number,
constraint branch_branchName_PK PRIMARY KEY(branch_name));

create table customer
(customer_name varchar2(70),
loan_number varchar2(60),
amoun number,
constraint customer_customerName_PK PRIMARY KEY(customer_name),
constraint customer_loan_loanNumber_FK FOREIGN KEY(loan_number) REFERENCES loan(loan_number));

create table loan
(loan_number varchar2(60),
branch_name varchar2(30),
amount number,
constraint loan_loanNumber_PK PRIMARY KEY(loan_number),
constraint loan_branch_branchName_fk FOREIGN KEY(branch_name) REFERENCES Branch(branch_name));

create table borrower
(customer_name varchar2(70),
loan_number varchar2(60),
CONSTRAINT borrower_pk PRIMARY KEY (customer_name, loan_number));

create table account
(account_number varchar2(40),
branch_name varchar2(30),
balance number,
constraint account_accountNumber_PK PRIMARY KEY(account_number),
constraint account_branch_branchName_fk FOREIGN KEY(branch_name) REFERENCES Branch(branch_name));

create table depositor
(customer_name varchar2(70),
account_number varchar2(40),
constraint depositor_PK PRIMARY KEY(customer_name,account_number));