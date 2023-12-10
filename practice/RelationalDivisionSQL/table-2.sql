-- well this table  i have taken from linkedin 
drop table matches;
drop table russia;

create table matches
(
    shakhmatist varchar2(25),
    player varchar2(25)
);

create table russia
(
    shakhmatist varchar2(25)
);

insert into matches values('Garry Kasparov','Bobby Fischer');
insert into matches values('Garry Kasparov','Paul Morphy');
insert into matches values('Mikhail Tal','Bobby Fischer');
insert into matches values('Mikhail Tal','Paul Morphy');
insert into matches values('Anatoly Karpov','Bobby Fischer');

insert into russia values('Garry Kasparov');
insert into russia values('Mikhail Tal');