DECLARE 
	v_first_num number:=0;
	v_last_num number:=1;
	v_new_num number;
	v_count number:=0;

BEGIN
	dbms_output.put_line('loop');
	dbms_output.put_line(v_first_num);
	dbms_output.put_line(v_last_num);
	loop 
	v_new_num:=v_first_num+v_last_num;
	dbms_output.put_line(v_new_num||' ');
	v_count:=v_count+1;
	v_first_num:=v_last_num;
	v_last_num:=v_new_num;
	if v_count>5 
	then exit;
	end if;
	end loop;
	
	v_count:=0;
	dbms_output.put_line('while loop');
	v_first_num :=0;
	v_last_num :=1;
	dbms_output.put_line(v_first_num);
	dbms_output.put_line(v_last_num);
	while v_count<6
	loop 
	v_new_num:=v_first_num+v_last_num;
	dbms_output.put_line(v_new_num||' ');
	v_count:=v_count+1;
	v_first_num:=v_last_num;
	v_last_num:=v_new_num;
	end loop;

	v_count:=0;
	dbms_output.put_line('for loop');
	v_first_num :=0;
	v_last_num :=1;
	dbms_output.put_line(v_first_num);
	dbms_output.put_line(v_last_num);
	for v_count in 1..6
	loop 
	v_new_num:=v_first_num+v_last_num;
	dbms_output.put_line(v_new_num||' ');
	v_first_num:=v_last_num;
	v_last_num:=v_new_num;
	end loop;
END;
/