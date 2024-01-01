create table employees(e_id int,f_name varchar(50),l_name varchar(40),email varchar(40),d_id int,m_id int,salary int,job_id int);
insert into employees values(24,'malakapalli','praneetha','xyz@gmail.com',43,56,90000,78);
insert into employees values(25,'malakapalli','ashritha','xrz@gmail.com',44,57,82000,79);
insert into employees values(26,'kovvuru','dhanushvarma','xaz@gmail.com',45,58,85000,80);
insert into employees values(27,'seepana','gayatri','auz@gmail.com',46,59,80000,81);
insert into employees values(28,'vakada','ramya','ayz@gmail.com',47,60,75000,82);

create table department(d_id int,d_name varchar(40),m_id varchar(40),loc_id int);
insert into department values(43,'manager',56,67);
insert into department values(44,'ceo',57,68);
insert into department values(45,'HR',58,69);
insert into department values(46,'ceo',59,70);
insert into department values(47,'HR',60,71);

create table job_hist(j_id int,d_id int);

insert into job_hist values(72,45);
insert into job_hist values(73,46);
insert into job_hist values(74,47);
insert into job_hist values(75,48);
insert into job_hist values(76,49);

create table jobs(j_id int,j_title varchar(40),min_sal int,max_sal int);

insert into jobs values(72,'HR',60000,100000);

insert into jobs values(73,'manager',50000,90000);


insert into jobs values(74,'HR',60000,100000);


insert into jobs values(75,'ceo',80000,150000);


insert into jobs values(76,'manager',50000,90000);


select* from employees;
select* from department;

select f_name,email
from employees
where m_id=56;

select loc_id
from department
where d_id=45;

select l_name,f_name 
from employees
where e_id=28 and email='ayz@gmail.com';

UPDATE employees
SET 
   salary=salary*1.5
WHERE
   salary>80000;
   
select* from employees;

select d_name
from department
ORDER BY loc_id;

select e_id,f_name,l_name,salary
from employees
where salary BETWEEN 80000 and 140000
ORDER BY
salary DESC;

select d.loc_id,e.f_name,e.l_name
from employees e
join department d
on e.d_id=d.d_id;

select* from job_hist;

select*from jobs;

select j.j_id,d.d_name,e.email,e.salary
from jobs j
join department d
on j.j_id=d.d_id
join employees e
on d.d_id=e.d_id;

select f_name,l_name from employees where d_id IN
(select d_id from department where m_id=57);

update employees
set f_name='kovvuru'
WHERE d_id IN
(select d_id from department
 where d_name IN('manager'));
 
 create VIEW employeesVIEW as
 select f_name,l_name
 from employees
 WHERE m_id<60;
 
 