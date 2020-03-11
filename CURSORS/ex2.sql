declare
	n varchar2(20);
	cursor c1 is select name from student;
begin
	for r in c1
	loop
		dbms_output.put_line(r.name);
	end loop;
end;
/