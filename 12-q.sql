select student from taken minus select student from(
select student,course from (select student from taken),required minus (select student,course from taken));

select sid from 

