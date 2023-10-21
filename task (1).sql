SELECT sname from sailors
WHERE sid IN (SELECT sid FROM reserves
GROUP BY sid 
HAVING COUNT(bid) = (SELECT COUNT(bid) FROM boats));

SELECT sid from sailors 
WHERE sid IN (SELECT sid FROM reserves) group by sid;

