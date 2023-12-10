-- join
select *
from table1,table2
where table1.id=table2.id;

-- inner join
select *
from table1 inner join table2
on table1.id=table2.id;

--natural join
select *
from table1 natural join table2;

-- left outer join
select *
from table1 left outer join table2
on table1.id=table2.id;

-- right outer join
select *
from table1 right outer join table2
on table1.name=table2.name;

-- full outer join
select *
from table1 full outer join table2
on table1.name=table2.name;

-- relation effect
select * from table1;
select * from table2;

update table2
set id=14
where id=12;