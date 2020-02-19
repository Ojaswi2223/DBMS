/*
Input in-date and return date to find fine 
*/

declare
	doi date := '18-JUN-2015';
	dor date := '30-JUN-2015';
	latedays int;
	fine float;
	erro varchar (20) := 'the fine is rs ';
	nd varchar (50) := 'number of late days is ';

begin
	latedays := dor - doi;	
	if latedays <= 7 then
		fine := 0;
	elsif latedays <=15 then
		fine := 1.00;
	elsif latedays <=30 then
		fine := 2.00;
	else
		fine := 5.00;
	end if;
	dbms_output.put_line(nd || latedays);
	dbms_output.put_line(erro || fine);
end;
/