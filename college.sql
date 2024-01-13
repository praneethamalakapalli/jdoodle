create table college(c_id int,c_name varchar(200),c_add varchar(70),c_state varchar(70),c_pincode int);
insert into college values(144,'Gmr institute of technology','rajam','vijaynagram',532001);
select*from college;

create table branch(b_id int, c_id int,b_name varchar(500),b_pincode int);
insert into branch values(566,144,'Information Technology',1270);
insert into branch values(599,144,'computer science',0567);
insert into branch values(580,144,'Electronics and Communication Engineering.',6790);
insert into branch values(585,144,'electronics  and electrical engineering',5690);
insert into branch values(590,144,'civil engineering',0556);
insert into branch values(598,144,'Mechanical engineering',0044);
insert into branch values(600,144,'chemical engineerinng',2901);
select* from branch;

create table library(l_id int,c_id int,bo_name varchar(600),b_author varchar(500),s_id int);
insert  into  library values(999,144,'Datastructures','k.ramakrishna kumar',4545);
insert  into library values(999,144,'computer networks','mr.morrismunda',4549);
insert into library values(999,144,'microprocessor','m.praneetharani',4578);
insert into library values(999,144,'hydrology','k.dhanushkumar',6789);
insert into library values(999,144,'signals and system','m.k.raniraju',9990);
insert into library values(999,144,'thermal energy','rakumunda ravikishrore',8989);
insert into library values(999,144,'chemical alchol','malakapalli sivakumar',2345);
select* from library;

create table students(s_id int,b_id int,c_id int,b_pincode int,s_fname varchar(60),s_lname varchar(70),b_name varchar(890),s_fee int);
insert into students values(4545,566,144,1270,'malakapalli','praneetha','information technology',800000);
insert into students values(4549,585,144,5690,'kovvuru','dhanush','electronics and electrical engineering',1000000);
insert into students values(4578,580,144,6790,'siripuram','venumadhav','electonics and communications',800000);
insert into students values(6789,566,144,1270,'rayavarapu','pranathi','information technology',1000000);
insert into students values(9990,598,144,0044,'dummala','sandeep','mechanical engineering',800000);
insert into students values(8989,600,144,2901,'rakina','chaitanya','civilengineering',1000000);
insert into students values(2345,599,144,0567,'karvarm','pujitha','computer science',90000);
select* from students;

select s_id,b_pincode s_lname from students 
where b_id>=5690;

select b_id,b_name,b_pincode
from branch
where c_id IN
    (select c_id from college);

select* from college; 

select* from students;

select c.c_id,c.c_name,b.b_id,b.b_name,l.l_id,l.bo_name,s.s_id,s.s_fname,s.s_lname,s.s_fee
from college c
join branch b
on c.c_id=b.c_id
join library l
on b.c_id=l.c_id
join students s
on l.c_id=s.c_id;
    
select b.b_id,b.b_branch,s.s_fname,s.s_lname
from branch b
right join
students s
on b.b_id=s.s_id;
    
    
create table faculty(f_id int,c_id int,f_lname varchar(60),f_fname varchar(50),b_id int,f_sub varchar(70),b_name);
insert into faculty values(345,144,'sahu','santhoshi',1270,'webdevolpment','Information technology');
insert into faculty values(348,144,'tanav','daniya',0567,'datastructures','computer science');
insert into faculty values(351,144,'nermuli','murali',6790,'computer networks','electrical and communications');
insert into faculty values(354,144,'balivada','hemanth',5690,'signals and sysyems','electrical and electronics');
insert into faculty values(357,144,'relaka','ravikishore',1270,'database management','Information technology');
insert into faculty values(360,144,'rena','ravi',0566,'fluid mechanics','civil enginering');
select* from faculty;

    
    