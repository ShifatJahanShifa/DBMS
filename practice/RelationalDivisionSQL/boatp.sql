-- well this is a problem which i didn't solve in the class time.

select sname 
from SAILORS
where sid=
(select sid
from RESERVES 
group by sid 
having count(*)=(select count(*) from BOATS));

--- another approach--

select sname 
from SAILORS
where sid=
(select distinct(sid)
from RESERVES
minus 
select distinct(sid)
from 
((select sid,bid 
from 
(select distinct(sid) from RESERVES),BOATS)
minus
(select sid,bid from RESERVES))); 




