/* 
increase the salary of instructors by 5% and store it in a seperate table 
*/

DROP TABLE Salary_Raise;
CREATE TABLE Salary_Raise (iid varchar(20), rdate date, raise numeric(8, 2));

declare
	cursor curse is select * from instructor;
	raiseamt numeric(8, 2);
begin
	for sal in curse loop
		raiseamt := sal.salary * 1.05;
		update instructor set salary = salary * 1.05;
		insert into Salary_Raise values (sal.ID, CURRENT_DATE, raiseamt);
	end loop;
end;
/
