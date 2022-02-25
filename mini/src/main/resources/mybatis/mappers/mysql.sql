show databases;
create database mydb;
use mydb;
CREATE TABLE  t_member(
 id varchar(10) primary key ,
 pwd varchar(10),
 name varchar(50),
 email varchar(50),
 joinDate date default (current_date));


 INSERT INTO t_member
 VALUES('hong', '1212', '홍길동', 'hong@gmail.com', current_date());
 
 INSERT INTO t_member
 VALUES('lee','1212','이순신', 'lee@test.com', current_date());
 
 INSERT INTO t_member
 VALUES('kim', '1212', '김유신', 'kim@jweb.com', current_date());
 
  SELECT * FROM t_member;