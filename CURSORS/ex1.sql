declare
	n varchar2(20);
	cursor c1 is select name from student;
begin
	open c1;
	loop
		fetch c1 into n;
		exit when c1%notfound;
		dbms_output.put_line('Hi '||n);
	end loop;
	close c1;
end;
/