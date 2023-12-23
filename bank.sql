
create table bank(b_id int,b_name varchar(40),b_address varchar(45),b_phno int);
insert into bank values(1456,'SBI','srikakulam',6789560354);
insert into bank values(1478,'ANDHRA','vizag',4567685804);
insert into bank values(1678,'KOTAK','vijaynagram',9346860199);
insert into bank values(4546,'AXIS','srikakulam',8906784569);
insert into bank values(5678,'CANERA','srikakulam',9078563423);
select* from bank;

select b_address
from bank
where b_id=1478;
CREATE TABLE customer
   (
       custid VARCHAR(6),
       fname VARCHAR(30),
       ltname VARCHAR(30),
       city VARCHAR(15),
       mobileno VARCHAR(10),
       occupation VARCHAR(10),
       dob DATE
   );
insert into customer values(13,'praneetha','malakapalli','srikakulam',9346860199,'student',5-07-2003);
insert into customer values(14,'ashritha','malakapalli','vizag',7890789067,'student',3-11-2004);
insert into customer values(15,'dhanalaxmi','dudala','srikakulam',6787980954,'teacher',9-02-1980);
insert into customer values(24,'sivakumar','malakapalli','nadagam',9898997586,'Realestate',18-09-1976);
insert into customer values(45,'dhanush','kovvuru','srikakulam',7890790679,'student',11-12-2002);
select* from customer;

create table account(acno int,custid varchar(30),b_id int,op_balnc int,aod DATE,a_type varchar(30),status varchar(40));
insert into account values(111222333444,13,1456,1000,5-11-2023,'saving','active');
insert into account values(234234234234,14,1478,1000,9-11-2023,'saving','active');
insert into account values(234234234567,15,1678,1000,12-11-2023,'saving','suspended');
insert into account values(234454234236,24,4546,1000,11-11-2023,'saving','terminated');
insert into account values(444555888000,45,5678,1000,14-11-2023,'saving','active');
select*from account;

create table transdetails(t_no varchar(50),acno int,dot date,m_of_trans varchar(60),trans_type varchar(50),trans_amnt int);
insert into transdetails values('T0001',111222333444,'3-01-2024','cheque','Deposit',2000);
insert into transdetails values('T0002',234234234234,'6-01-2024','cheque','Deposit',4000);
insert into transdetails values('T0004',234234234567,'12-01-2024','cash','withdrawal',7000);
insert into transdetails values('T0005',234454234236,'13-04-2024','cash','withdrawal',6000);
insert into transdetails values('T0006',444555888000,'23-01-2024','cheque','Deposit',8000);
select* from transdetails;

create table loan(custid int(50),b_id int(50),loan_amount int);
insert into loan values(13,1456,200000);
insert into loan values(14,1478,300000);
insert into loan values(15,1678,400000);
insert into loan values(24,4546,500000);
insert into loan values(45,5678,800000);
select* from loan;

select mobileno,fname,dob
from customer
order by dob AND fname ASC;

select custid,ltname,fname as cust_name
from customer;

select a.acno,c.mobileno,c.fname,c.ltname,a.aod
from account a
JOIN customer c
on a.custid=c.custid;

select COUNT(*) as cust_Count
from customer
where city='srikakulam';


select c.mobileno,c.fname,a.acno
from customer c
join account a
on c.custid=a.custid
where a.aod>9;

select c.fname,c.city,a.acno
from customer c
join account a
on c.custid=a.custid
where c.occupation NOT IN('student','Realestate');

select count(*) AS count_bank,b_address
from bank
group by b_address;

select a.acno,c.mobileno,c.fname,c.ltname,a.aod
from account a
join customer c
on a.custid=c.custid;

select a.acno,c.fname,c.ltname
from account a
join customer c
on a.custid=c.custid
where a.status='activa';

select c.custid,c.fname,l.b_id,l.loan_amount
from customer c
join loan l on c.custid=l.custid;

select c.custid,c.fname,a.acno
from customer c
join account a
on c.custid=a.custid
where a.status='terminated';