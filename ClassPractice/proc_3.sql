CREATE OR REPLACE PROCEDURE format_phone(
    p_phone_no in out VARCHAR2
)

IS
BEGIN

p_phone_no:='('||substr(p_phone_no,1,3)||')'||substr(p_phone_no,4,3)||'-'||substr(p_phone_no,7);

END format_phone;
/

DECLARE
    phone_num VARCHAR2(20):='8006330575';

BEGIN

    dbms_output.put_line('before the call '||phone_num);
    format_phone(phone_num);
    dbms_output.put_line('after the call '||phone_num);

END;
/
