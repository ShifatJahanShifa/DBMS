select distinct SNAME
from SAILORS,RESERVES
where SAILORS.SID=RESERVES.SID and BID=103;

select distinct SNAME
from SAILORS,RESERVES,BOATS
where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and COLOR='red';

select distinct COLOR
from SAILORS,RESERVES,BOATS
where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and SNAME='Lubber';

select distinct SNAME
from SAILORS,RESERVES
where SAILORS.SID=RESERVES.SID;

select distinct SNAME
from SAILORS,RESERVES,BOATS
where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and (COLOR='red' or COLOR='green');

select SNAME from SAILORS
where SID in
(
    select RESERVES.SID 
    from SAILORS,RESERVES,BOATS
    where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and (COLOR='red') and RESERVES.SID in
    (
        select RESERVES.SID 
        from SAILORS,RESERVES,BOATS
        where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and (COLOR='green')
    )
);

-- or jhamela ase

(select distinct SNAME
from SAILORS,RESERVES,BOATS
where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and (COLOR='red')) intersect 
(select distinct SNAME
from SAILORS,RESERVES,BOATS
where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and (COLOR='green'));

select distinct SNAME
from SAILORS,RESERVES,BOATS,RESERVES R,BOATS B
where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID 
and SAILORS.SID=R.SID and R.BID=B.BID 
and (BOATS.COLOR='red' and B.COLOR='green');

select SNAME from SAILORS
where SID in
(select distinct a.SID
from RESERVES a,RESERVES b 
where a.SID=b.SID and a.BID<>b.BID);

select SID from SAILORS
where AGE>20 and SID not in
(
select RESERVES.SID
from SAILORS,RESERVES,BOATS
where SAILORS.SID=RESERVES.SID and RESERVES.BID=BOATS.BID and COLOR='red' and AGE>20);

select SNAME from SAILORS
where SID in(
select distinct SID from RESERVES
minus
select SID from 
(select SID,BID from
(select distinct SID from RESERVES),(select BID from BOATS)
minus
select SID,BID from RESERVES
));

select SNAME,RATING 
from SAILORS,RESERVES a,RESERVES b 
where SAILORS.SID=a.SID and SAILORS.SID=b.SID
and a.day=b.day and a.BID<>b.BID;

select SID from SAILORS
where RATING > any
(select RATING from SAILORS
where SNAME='Horatio'
);

select SID from SAILORS
where rating in 
(select max(rating) from SAILORS);

select SNAME,AGE from SAILORS
where AGE in 
(select max(AGE) from SAILORS);

select min(AGE)
from SAILORS
where AGE>=18 
group by RATING
having count(*)>1;

select count(*)
from RESERVES,BOATS
where RESERVES.BID=BOATS.BID and COLOR='red'
group by BOATS.BID;

select avg(AGE)
from SAILORS
group by RATING
having count(*)>1;