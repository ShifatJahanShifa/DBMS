--sql query

select loan_number
from loan
where branch_name='Perryridge' and amount>1200;

select customer_name,borrower.loan_number,amount
from borrower,loan
where loan.loan_number=borrower.loan_number and branch_name='Perryridge';

-- 

select T.branch_name
from Branch T,Branch S
where T.assets>s.assets and s.branch_city='Brooklyn';

select customer_name
from borrower,loan
where loan.loan_number=borrower.loan_number and branch_name='Perryridge'
order by customer_name;

(select customer_name from borrower) 
union
(select customer_name from depositor);

(select customer_name from borrower) 
intersect
(select customer_name from depositor);

(select customer_name from borrower) 
minus
(select customer_name from depositor);

select avg(balance) 
from account
where branch_name='Perryridge';

select count(*) 
from customer;


select count(distinct customer_name) 
from depositor;

select count(distinct customer_name) 
from depositor,account
where depositor.account_number=account.account_number
group by branch_name;

select branch_name
from account
group by branch_name
having avg(balance)>200;

