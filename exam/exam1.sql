select distinct S.customer_name 
from depositor S
where not exists (
(select branch_name 
from Branch
where branch_city = 'Brooklyn')
minus
(select R.branch_name
from depositor T, account R
where T.account_number = R.account_number and S.customer_name = T.customer_name )
);


