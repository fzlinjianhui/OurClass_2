--drop  table class_user;
--delete from class_user;
select * from class_user;
create table class_user (
	id varchar(50) not null,
	sex varchar(5) ,
	name varchar(20),
	studentNum varchar(50) not null,
	password varchar(50) not null,
	type varchar(5) not null,
	loginTimes bigint not null,
	belongClass varchar(50) not null,
	dept varchar(20),
	specialty varchar(20),
	belongSchool varchar(50) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
commit;
insert into class_user values(
	'000001','ÄÐ','ÁÖ½£»Ô','241192160','66cc7c8771858dd1acdbd3655aa39335','1','0','1','jsjgcx','wlgc','ygxy'
)