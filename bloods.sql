create table donar(b_id int,org_id int,name varchar(50),blood_grp varchar(20),address varchar(40));
insert into donar values(14,143,'praneetha','A+','srikakulam');
insert into donar values(15,148,'ashritha','B+','hyderabad');
insert into donar values(16,150,'dhanalaxmi','AB+','shimala');
insert into donar values(17,152,'sivakumar','O+','banglore');
select* from donar;
create table blood_test(id int,b_id int,r_date date);
insert into blood_test values(21,14,05-07-2003);
insert into blood_test values(23,15,08-09-2003);
insert into blood_test values(25,16,09-12-2004);
insert into blood_test values(27,17,11-12-2002);
select* from blood_test;

select name,org_id from donar
where b_id IN
     (select b_id from blood_test where id=21);

select* from donar;

create table bloodbank(name varchar(30),b_id int,address varchar(30),phone_no int);
insert into bloodbank values('xyz',14,'srikakulam',7687989678);
insert into bloodbank values('yna',15,'hyderabad',6789678990);
insert into bloodbank values('trn',16,'shimala',89089089099);
insert into bloodbank values('mmn',17,'banglore',6786890900);
select* from bloodbank;

select d.blood_grp,d.name,bb.name
from donar d
join bloodbank bb
on d.b_id=bb.b_id;

select b.id,d.name,bb.phone_no
from blood_test b
join donar d
on b.b_id=d.b_id
join bloodbank bb
on b.b_id=bb.b_id;

select d.name,b.r_date,bb.name,bb.phone_no
from donar d
join bloodbank bb
on d.b_id=bb.b_id
join blood_test b
on bb.b_id=b.b_id;

select r_date,id from blood_test
where b_id IN
     (
     select blood_grp from donar where org_id=150
     );
     
select blood_grp,name
from donar
UNION
select name,phone_no
from bloodbank;
    
select blood_grp,name
from donar
UNION ALL
select name,phone_no
from bloodbank;

create table recipents(b_id int,r_id int,r_name varchar(20),r_bloodgrp varchar(30),r_date Date);
insert into recipents values(14,40,'dhanush','A+',5-07-2003);
insert into recipents values(15,41,'vardhan','B+',8-09-2003);
insert into recipents values(16,42,'gayatri','AB+',9-12-2004);
insert into recipents values(17,43,'ramya','O+',11-12-2002);
select* from recipents;

create VIEW r_bloodgrp AS
select d.name,d.blood_grp,r.r_name,r.r_bloodgrp
from donor d
join 
recipents r
on d.b_id=r.b_id;


select bb.name,r.r_name,d.name
from bloodbank bb
join recipents r
on bb.b_id=r.b_id
join donar d
on r.b_id =d.b_id
where r.r_date=9-12-2004;




     
     
       
       