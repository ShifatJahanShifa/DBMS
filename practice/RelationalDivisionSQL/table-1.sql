-- this table is taken from geeksforgeeks 
DROP table dividend;
drop table divisor;

create table dividend
(
    sid NUMBER,
    pid NUMBER
);

create table divisor
(
    pid NUMBER
);

insert into dividend values(101,1);
insert into dividend values(102,1);
insert into dividend values(101,3);
insert into dividend values(103,2);
insert into dividend values(102,2);
insert into dividend values(102,3);
insert into dividend values(102,4);
insert into dividend values(102,5);

insert into divisor values(1);
insert into divisor values(2);
insert into divisor values(3);
insert into divisor values(4);
insert into divisor values(5);