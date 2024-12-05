/************************************assigment 5***************************/
/*
author :mariem ossama hussien
*/


use demo;
--1
select *
from employees;


--2
select distinct department_id
from employees;


--3
create table students (
id numeric primary key,
 First_Name varchar(10) not null,
 Last_Name varchar(10) default 'Unknown',
 Address varchar(50) default 'N/A',
 City varchar(50) default 'N/A', 
 Birth_Date date );
 
 drop table students;

 --4
 insert into students
 values(123,'Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');

 update students 
 set address='Garden City'
 where  First_Name ='Ahmed';
 

 --5
 begin transaction;

 delete from students
 where city='cairo';

 rollback transaction;