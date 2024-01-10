create table bus(b_id int,b_num varchar(40),b_seats int, d_id int);
create table driver(d_id int,d_name varchar(50),b_id int);
create table customer(c_id int,fname varchar(60),lname varchar(60),gender varchar(40),age int,contact int);
create table payment(p_id int,c_id int,res_id int,res_place varchar(60));

insert into bus values(140,'AP3445',24,450);
insert into bus values(142,'AP4556',26,452);
insert into bus values(144,'AP4789',28,454);
insert into bus values(146,'AP7890',30,456);
insert into bus values(148,'AP1279',32,458);
insert into bus values(150,'AP1347',34,460);
select*from bus;

insert into driver values(450,'RamaKrishna',140);
insert into driver values(452,'Suresh',142);
insert into driver values(454,'krishna',144);
insert into driver values(456,'ravi',146);
insert into driver values(458,'shiva',148);
insert into driver values(460,'mouli',150);
select*from driver;

insert into customer values(110,'malakapalli','praneetha','F',20,9090903454);
insert into customer values(112,'malakapalli','ashritha','F',29,9094503434);
insert into customer values(114,'kovvuru','dhanush','F',21,9090904534);
insert into customer values(116,'kovvuru','gayatri','F',17,9095553434);
insert into customer values(118,'seepana','gayatri','F',18,9096703434);
insert into customer values(120,'labudubariki','abhisek','F',22,9056090343);
select* from customer;

insert into payment values(12,110,56,'hyderabad');
insert into payment values(14,112,58,'vizag');
insert into payment values(16,114,60,'hyderabad');
insert into payment values(18,116,62,'palsa');
insert into payment values(20,118,64,'banglore');
insert into payment values(22,120,66,'chennai');
select* from payment;

select d_name,d_id
from driver 
where b_id between 144 and 150;

select res_place,res_id 
from payment
where c_id IN
   (select c_id
    from customer);
    
select b_num,b_seats from bus 
where b_id in
   (select b_id from driver
    where d_name='ramakrishna');
    
 select b.b_id,b_num,b.b_seats,d.d_name
 from bus b
 join driver d
 on b.b_id=d.b_id;
 
 select fname,lname, age 
 from customer
 where c_id in
 (select c_id
  from payment
  where p_id>16);
  
create VIEW busView As
select b_id,b_num,b_seats
from bus
where d_id>452;
select* from busView;

create VIEW customerView AS
select customer.c_id,customer.fname,customer.lname,payment.res_place
from customer,payment
where customer.c_id=payment.c_id;
select* from customerView;

delete from payment where res_id=58;
COMMIT;
  
