create table faculty(f_id int,f_fname varchar(30),f_lname varchar(40),f_addr varchar(70),c_id int,f_phono int,gender varchar(70));
insert into faculty values(55,'kurana','murali','vishakapatnam',78,8989897878,'Male');
insert into faculty values(60,'rakuana','ramprasad','vijaywada',78,6767678989,'Male');
insert into faculty values(65,'triska','dhania','chennai',78,9493343678,'Female');
insert into faculty values(70,'rakuana','ramprasad','nellore',78,8989565678,'Male');
insert into faculty values(75,'seepana','gayatri','srikakulam',78,9493343678,'Female');
insert into faculty values(80,'vakada','ramya','rajam',78,75699320288,'Female');
select* from faculty;

create table college(c_id int,c_name varchar(500),c_addr varchar(80),c_phno int);
insert into college values(78,'GMR Institute of Technology','rajam',7788997878);
select* from college;

create table course(co_id int,f_id int,co_name varchar(70));
insert into course values(89,55,'data structures');
insert into course values(90,60,'computer networks');
insert into course values(91,65,'microprocessors');
insert into course values(92,70,'diaster management');
insert into course values(93,75,'signals and systems');
insert into course values(94,80,'thermal energy');
select* from course;

select* 
from faculty;

select* 
from course
where co_id>=90;

select*
from course
where f_id between 60 and 75;

select f.f_fname,f.f_addr,co.co_id,co.co_name
from faculty f
join course co
on f.f_id=co.f_id;

create table job (f_id int,salary int ,branch varchar(70),no_of_experience int);
insert into job values(55,800000,'cse',8);
insert into job values(60,600000,'It',9);
insert into job values(65,500000,'ece',7);
insert into job values(70,700000,'civil',5);
insert into job values(75,1000000,'eee',10);
insert into job values(80,900000,'mechanical',12);
select*from job;

select salary,branch 
from job
where f_id in
  (select f_id from faculty);
  
select j.salary,j.branch,j.no_of_experience,f.f_fname,f.f_lname,co.co_id,co.co_name  
from job j
join faculty f
on j.f_id=f.f_id
join course co
on f.f_id=co.co_id;

update job
set salary='salary'+10000*salary
where no_of_experience >7;

select*
from job;

DELETE FROM college
WHERE c_name = 'rajam';

select*
from college;