create table train(t_id varchar(20),t_name varchar(20),t_dest varchar(30),t_desc varchar(40),arrival_time varchar(50));
insert into train values(1022,'AshamExpress','Kolkata','ThirdClass','21:30:00');
insert into train values(1024,'sathbdiExpress','Allahabad','SecondClass','21:30:00');
insert into train values(1026,'Delhi jaipur Double Decker','Madras','FirstClass','18:30:00');
insert into train values(1028,'FrontierExpress','Kolkata','ThirdClass','20:20:00');
insert into train values(1030,'hyderbad nellore express','hyderabad','FirstClass','05:30:00');
insert into train values(1032,'AshamExpress','Kolkata','SecondClass','12:00:00');
select*from train;

create table user(ID int, First_Name varchar(50) , Last_Name varchar(50), Gender varchar(70), Age int, Mobile_No int, City varchar(50), State varchar(50), Pin_Code int(20),t_id int);
insert into user values(24,'praneetha','malakapalli','f',20,9898787890,'srikakulam','andhrapradesh',5232001,1022);
insert into user values(25 ,'Harshita' ,'Prajapati' ,'f',19 ,9022336765 ,'Roshanara','Delhi',110007,1024);
insert into user values(26,'praneeth','chinada','M',20,98987670,'nellore','andhrapradesh',5232004,1026);
insert into user values(27,'ashritha','malakapalli','f',19,989878566,'khanpur','delhi',5232011,1028);
insert into user values(28,'dhanush','kovvuru','m',18,7788990078,'dwarka','punjab',5232003,1030);
insert into user values(29,'gayatri','seepana','f',20,9898989900,'srikakulam','andhrapradesh',5232001,1032);
select*from user;


select t.t_id,t.t_name,u.First_Name
from train t
join user u
on t.t_id=u.t_id;

select t.t_id,t.t_name,u.First_Name
from train t
right join user u
on t.t_id=u.t_id;

select t_name,t_desc
from train
where t_id IN
   (select t_id from user 
   where Pin_code=532001);
   
select t_desc,t_dest from train
where t_id IN
    (select t_id from user where Last_name='kovvuru');
    
create table station(T_id int, s_id int p, Name varchar(50),Arrival_Time varchar(50),Departure varchar(50));
insert into station values(1022,101,'delhi','10:00:00','21:05:00');
insert into station values(1024,103,'jaipur','08:00:00','21:05:00');
insert into station values(1026,105,'punjab','07:00:00','14:05:00');
insert into station values(1028,107,'Madras','21:00:00','08:05:00');
insert into station values(1030,109,'rajasthan','16:00:00','22:05:00');
insert into station values(1032,111,'patna','18:00:00','21:05:00');

select*from station;

select s.s_id ,s.Arrival_Time,u.First_Name,t.t_desc
from station s
join user u
on s.t_id=u.t_id
join train t
on u.t_id=t.t_id;
   
select s_id,s   
   