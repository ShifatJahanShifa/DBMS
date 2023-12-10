DECLARE 
    a number;
    b number;
    c number;

BEGIN
    a:=5;
    b:=10;

    mul(a,b,c);
    dbms_output.put_line('The result is: ' || c);

ENd;
/

