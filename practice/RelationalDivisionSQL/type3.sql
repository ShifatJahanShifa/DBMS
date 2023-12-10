-- well this is  of third type a. here i want the exact division. this is actually tricky question😫

select m.player
from matches m 
left outer join
russia r
on (m.shakhmatist=r.shakhmatist)
group by m.player
having count(*)=(select count(*) from russia) and 
count(r.shakhmatist)=(select count(*) from russia);

-- actually i dont know why the last and clause is used here! 

-- this is type-3(b). this is a good example.

select ps.pilot
from PilotSkills ps 
left outer join 
Hangar h 
on (ps.plane=h.plane) 
group by ps.pilot
having count(ps.plane)=(select count(*) from Hangar) and
count(h.plane)=(select count(*) from Hangar);

-- testing......

select *
from PilotSkills ps 
left outer join 
Hangar h 
on (ps.plane=h.plane);

-- this debugging made me happy
--ps.pilot,h.plane