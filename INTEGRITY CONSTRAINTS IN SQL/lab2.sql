create table Employee(emp_no number(5), emp_name varchar(20) not null, gender char(1) not null, 
salary number(6) not null, address varchar(5) not null, d_no number(5), primary key(emp_no), 
check(gender in('M', 'F')), foreign key(d_no) references Department(dept_no));

create table Department(dept_no number(5), dept_name varchar(5) not null,
unique(dept_name), primary key(dept_no));

insert into Employee values(1,'A','M',50000,'manipal',100);
insert into Employee values(2,'B','F',60000,'udipi',101);
insert into Employee values(3,'C','M',45000,'manipal',102);

insert into Employee values (11111, 'ABC', 'F', 20000,'Somewhere1', 30);

insert into department values(30, 'CSE');

alter table Employee drop constraint SYS_C00.135118;
alter table Employee modify(foreign key(d_no) references Department(dept_no) on delete cascade);

alter table Employee modify(salary number(6) default(10000));
insert into Employee(emp_no,emp_name,gender,address,d_no) values(5,'E','F','UDIDPI',102);

select name, dept_name from student;

select * from instructor where dept_name='Comp. Sci.';

select title from course where credits=3 and dept_name='Comp. Sci';

select course.course_id, title from takes,course where id=12345 and takes.course_id=course.course_id;

select name from instructor where salary between 40000 and 90000;

select id from instructor where id not in(select unique id from teaches);

select name, title, takes.year from student, takes, section, course where room_number='3128' and 
takes.course_id=section.course_id and section.course_id=course.course_id;

select name, t.course_id, title as "c-title" from takes t, student s, course c where t.year=2009 and
t.course_id=c.course_id and s.id=t.id; 

select name,salary as inst_salary from instructor where (salary>(select min(salary) from instructor where dept_name='Comp. Sci.'));

select name from instructor where dept_name like '%ci%';

select name,length(name) as length from student;

select dept_name,substr(dept_name,2,4) as substring from department;

select name,upper(name) as uppercase from instructor;

select nvl(grade,'F') from takes;

select salary,round(salary/3,-2) as avg from instructor;

select to_char(stu_dob,'DD-MON-YYYY') as dob from student;

select name,to_char(stu_dob,'YEAR') as year from student;

select name,to_char(stu_dob,'DAY') as day from student;

select name,to_char(stu_dob,'MONTH') as month from student;

select last_day(stu_dob) as last_date, to_char(last_day(stu_dob),'Day') as last_day from student where name='Zhang';

select round((to_date('22082020','DDMMYYYY')-stu_dob)/365.25,0) as age from student;

select next_day(stu_dob+60*365.25,'Saturday') as next_saturday from student;

select name from student where extract(YEAR from stu_dob)=2000;

select name from student where extract(YEAR from stu_dob)<=2001 and extract(YEAR from stu_dob)>=1999;

select name from student where extract(YEAR from stu_dob)+60=2060;
