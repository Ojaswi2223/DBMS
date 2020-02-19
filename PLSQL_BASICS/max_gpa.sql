/*
Maximum gpa of students
*/
declare
	g studenttable.gpa%Type;
	r studenttable.rollno%Type;
	m studenttable.gpa%Type;

begin
	m := 0;
	for r in 1..6 loop
	select gpa into g from studenttable where rollno=r;	
	if (g>=m) then
		m:=g;
	end if;	
	end loop;
	dbms_output.put_line('The gpa of the student is '|| to_char(m));
end;
/