-- well, this is an important example i have taken from website given by celko.🤍

drop table PilotSkills;
CREATE TABLE PilotSkills
(pilot CHAR(15) NOT NULL,
plane CHAR(15) NOT NULL,
PRIMARY KEY (pilot, plane));

insert into PilotSkills values('Celko','Piper Cub');
insert into PilotSkills values('Higgins','B-52 Bomber');
insert into PilotSkills values('Higgins','F-14 Fighter');
insert into PilotSkills values('Higgins','Piper Cub');
insert into PilotSkills values('Jones','B-52 Bomber');
insert into PilotSkills values('Jones','F-14 Fighter');
insert into PilotSkills values('Smith','B-1 Bomber');
insert into PilotSkills values('Smith','B-52 Bomber');
insert into PilotSkills values('Smith','F-14 Fighter');
insert into PilotSkills values('Wilson','B-1 Bomber');
insert into PilotSkills values('Wilson','B-52 Bomber');
insert into PilotSkills values('Wilson','F-14 Fighter');
insert into PilotSkills values('Wilson','F-17 Fighter');

CREATE TABLE Hangar
(plane CHAR(15) NOT NULL PRIMARY KEY);

insert into Hangar values('B-1 Bomber');
insert into Hangar values('B-52 Bomber');
insert into Hangar values('F-14 Fighter');
