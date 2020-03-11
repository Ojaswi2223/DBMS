/*
display instructor who teaches a particular course
*/
declare
	cursor c(cours teaches.course_id%type) is select * from instructor natural join teaches where course_id=cours;
	row student%rowtype;
	co teaches.course_id%type;
begin
	co := &co;
	for row in c(co)
	loop 
		dbms_output.put_line(row.name);
	end loop;
end;
/