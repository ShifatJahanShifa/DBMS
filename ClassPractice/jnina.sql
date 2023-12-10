SELECT Student FROM Taken 
EXCEPT SELECT 
Student FROM ( SELECT Student,Course FROM (select Student FROM Taken),Required 
EXCEPT SELECT Student,Course FROM Taken);