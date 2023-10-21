insert into Branch values('Brighton','Brooklyn',7100000);
insert into Branch values('Downtown','Brooklyn',9000000);
insert into Branch values('Mianus','Horseneck',400000);
insert into Branch values('North Town','Rye',3700000);
insert into Branch values('Perryridge','Horseneck',1700000);
insert into Branch values('Pownal','Bennington',300000);
insert into Branch values('Redwood','Polo Alto',2100000);
insert into Branch values('Round Hill','Horseneck',8000000);

insert into loan values('L-11','Round Hill',900);
insert into loan values('L-14','Downtown',1500);
insert into loan values('L-15','Perryridge',1500);
insert into loan values('L-16','Perryridge',1300);
insert into loan values('L-17','Downtown',1000);
insert into loan values('L-23','Redwood',2000);
insert into loan values('L-93','Mianus',500);

insert into borrower values ('Adams','L-26');
insert into borrower values ('Curry','L-93');
insert into borrower values ('Hayes','L-15');
insert into borrower values ('Jackson','L-14');
insert into borrower values ('Jones','L-17');
insert into borrower values ('Smith','L-11');
insert into borrower values ('Smith','L-23');
insert into borrower values ('Williams','L-17');

insert into customer values ('Adams','L-16',1300);
insert into customer values ('Curry','L-93',500);
insert into customer values ('Hayes','L-15',1500);
insert into customer values ('Jackson','L-14',1500);
insert into customer values ('Jones','L-17',1000);
insert into customer values ('Smith','L-23',2000);
insert into customer values ('Smith','L-11',1300);
insert into customer values ('Williams','L-17',1000);

insert into account values ('A-101','Downtown','500');
insert into account values ('A-102','Perryridge','400');
insert into account values ('A-201','Brighton','900');
insert into account values ('A-215','Mianus','700');
insert into account values ('A-217','Brighton','750');
insert into account values ('A-222','Redwood','700');
insert into account values ('A-305','Round Hill','350');

insert into depositor values ('Hayes','A-102');
insert into depositor values ('Johnson','A-101');
insert into depositor values ('johnson','A-201');
insert into depositor values ('Jones','A-217');
insert into depositor values ('Lindsay','A-222');
insert into depositor values ('Smith','A-215');
insert into depositor values ('Turner','A-305');