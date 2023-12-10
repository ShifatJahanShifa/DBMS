-- well, this is the first type question. where there is no remainder. the table is taken from geeksforgeeks

select sid
from dividend 
where pid in 
(select pid from divisor)
group by sid
having count(*)=(select count(*) from divisor);