DROP TABLE table1;
DROP TABLE table2;


CREATE TABLE table1 
(
id NUMBER (5), 
name VARCHAR2 (10), 
roll NUMBER (5),
CONSTRAINT table1_PK PRIMARY KEY (id)
);

CREATE TABLE table2
(
no NUMBER (5),
id NUMBER (5),
name VARCHAR2 (10),
amount NUMBER (5),
CONSTRAINT table2_PK PRIMARY KEY (no),
CONSTRAINT table2_id_FK FOREIGN KEY (id)
REFERENCES table1 (id)
);


insert into table1 values (10, 'abc', 1);
insert into table1 values (11, 'def', 2);
insert into table1 values (12, 'ghi', 3);
insert into table1 values (13, 'kjl', 4);
insert into table2 values (100,10, 'abc', 400);
insert into table2 values (110,11, 'efgh', 410);
insert into table2 values (120,12, 'ijkl', 420);
insert into table2 values (130,11, 'mnop', 430);
insert into table2 values (140,12, 'qrst', 440);