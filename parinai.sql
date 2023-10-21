DECLARE
	a number;
	b number;
	c number;

BEGIN
a:=5;
b:=10;

multi(a,b,c);
dbms_output.put_line('answer '||c);

END;