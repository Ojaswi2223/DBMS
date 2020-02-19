/*
Display the grades of all the students from gpa
*/
declare
	g studenttable.gpa%Type;
	r studenttable.rollno%Type;

begin
	for r in 1..6 loop
	select gpa into g from studenttable where rollno=r;
	dbms_output.put_line('The gpa of the student is '|| to_char(g));
	if (g>0 and g<=4) then
		dbms_output.put_line('Grade := F ');
	elsif (g>4 and g<=5) then
		dbms_output.put_line('Grade := E ');
	elsif (g>5 and g<=6) then
		dbms_output.put_line('Grade := D ');
	elsif (g>6 and g<=7) then
		dbms_output.put_line('Grade := C ');
	elsif (g>7 and g<=8) then
		dbms_output.put_line('Grade := B ');
	elsif (g>8 and g<=9) then
		dbms_output.put_line('Grade := A ');
	else
		dbms_output.put_line('Grade := A+');
	end if;	
	end loop;
end;
/		
