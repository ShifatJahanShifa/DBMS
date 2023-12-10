-- well, this is of second type where there is remainder. the table for this problem is taken from linkedin😎

select player
from matches
where shakhmatist in
(select shakhmatist from russia)
group by player
having count(*)=(select count(*) from russia);

-- in the celko given table

select pilot
from PilotSkills
where plane in 
(select plane from Hangar)
group by pilot
having count(*)=(select count(*) from Hangar);