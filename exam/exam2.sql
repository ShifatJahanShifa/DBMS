select distinct customer_name 
from depositor
minus
(select distinct customer_name from
(select * from 
(select distinct customer_name from depositor),(select branch_name from Branch where branch_city='Brooklyn')
minus
(select customer_name,branch_name from depositor,account
where depositor.account_number=account.account_number)
));

select customer_name from
(select * from depositor,account
where depositor.account_number=account.account_number)
where branch_name in 
(select branch_name from Branch
where branch_city='Brooklyn')
group by customer_name
having count (*)=(select count(*) from (select branch_name from Branch
where branch_city='Brooklyn'));