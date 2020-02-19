/*
Displaying gpa for given student
*/

declare
	g studenttable.gpa%Type;
	r studenttable.rollno%Type;

begin
	r :=&r;
	select gpa into g from studenttable where rollno=r;
	dbms_output.put_line('The gpa of the student is '|| to_char(g));
end;
/		
