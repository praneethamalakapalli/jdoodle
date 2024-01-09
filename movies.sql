create table movie(m_id int,m_title varchar(40),m_year int,m_lang varchar(70),mov_rel_state varchar(30));
create table director(d_id int,d_fname varchar(30),d_lname varchar(70),m_id int);
create table rating(m_id int,rev_id int,rev_stars int);
create table movie_direction(d_id int,m_id int);
insert into movie values(199,'mad',2023,'Telugu','Andhrapradesh');
insert into movie values(200,'nuvu nenu',2003,'Telugu','Nellore');
insert into movie values(205,'chandamama',2001,'Telugu','Andhrapradesh');
insert into movie values(210,'gab thak hai',2014,'Hindhi','Mumbai');
insert into movie values(215,'saath nibana sathi',2023,'Hindhi','Haryana');

select* from movie;

insert into director values(140,'jaganadh','puri',199);
insert into director values(145,'ramgopal','varma',200);
insert into director values(150,'trivikram','Akella',205);
insert into director values(155,'sreenu','boyapati',210);
insert into director values(157,'vinayaka','Gandrothu',215);
select* from director;

insert into rating values(199,120,5);
insert into rating values(200,125,4);
insert into rating values(205,130,4);
insert into rating values(210,135,3);
insert into rating values(215,140,3);
select* from rating;

insert into movie_direction values(199,140);
insert into movie_direction values(200,145);
insert into movie_direction values(205,150);
insert into movie_direction values(210,155);
insert into movie_direction values(215,157);
select* from movie_direction;

select m.m_id,m.m_title,m.mov_rel_state,r.rev_stars
from movie m
join rating r
on m.m_id=r.m_id;

select m_title,m_year
from movie
where m_id IN
(select m_id from rating
where rev_stars=4);

create table actor(a_id int,a_fname varchar(50),a_lname varchar(60),remuneration int,m_id int);
insert into actor values(32,'kajal','aggarwal',50000000000,199);
insert into actor values(35,'arjun','allu',8000000000,200);
insert into actor values(37,'tarakramarao','nandhamuri',900000000,205);
insert into actor values(39,'samantha','ruthuprabhu',4000000000,210);
insert into actor values(41,'maheshbabu','gattamaneni',100000000000,215);
select* from actor;


select m.m_title,m.m_lang,a.remuneration,a.a_fname,d.d_fname,r.rev_stars
from movie m
join actor a
on m.m_id=a.m_id
join director d
on a.m_id=d.m_id
join rating r
on d.m_id=r.m_id;

select a_fname,ROUND(AVG(remuneration)) avg_renumeration
from actor;

select a_fname,a_lname,MIN(remuneration) min_renumeration
from actor

select m_title,mov_rel_state
from movie
where m_year=2023
ORDER BY m_year ASC;