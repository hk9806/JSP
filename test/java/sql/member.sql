CREATE table testmember(
 id VARCHAR(10) NOT NULL,
 password VARCHAR(10) NOT NULL,
 name VARCHAR(10) NOT NULL,
 gender VARCHAR(4),
 birth VARCHAR(10),
 mail VARCHAR(30),
 phone VARCHAR(20),
 address VARCHAR(90),
 regist_day VARCHAR(50),
 PRIMARY KEY(id)
)default CHARSET=utf8;

select * from testmember

drop table testmember