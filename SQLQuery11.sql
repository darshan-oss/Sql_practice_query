Use DMART

CREATE TABLE EMPLOYEE
(EMPNO varchar(10),
EMP_NAME varchar(20),
DEPT varchar(20),
SALARY  varchar(20),
DOJ date,
BRANCH varchar(20));

insert INTO EMPLOYEE
VALUES(101,'AMIT','PRODUCTION',45000,'2000-03-12','BANGLORE');
insert INTO EMPLOYEE
VALUES(102,'AMIT','HR',70000,'2002-07-03','BANGLORE');
insert INTO EMPLOYEE
VALUES(103,'SUNITA','MANAGER',120000,'2001-01-11','MYSORE');
insert INTO EMPLOYEE
VALUES(105,'SUNITA','IT',67000,'2001-08-01','MYSORE');
insert INTO EMPLOYEE
VALUES(108,'ANIL','IT',165000,'2006-09-19','PUNE');

Delete from EMPLOYEE where EMPNO = 108
Update EMPLOYEE set EMPNO = 107 where EMP_NAME= 'GOPAL';

Alter table EMPLOYEE add MANAGER INT

select*from EMPLOYEE;

--Employee with respectuve department

Select e.EMPNO,m.EMP_NAME, e.DEPT from EMPLOYEE e 
 join EMPLOYEE m on
e.EMPNO = m.EMPNO AND e.DEPT = 'HR'


Select * from EMPLOYEE where MANAGER IS NOT NULL

select*from EMPLOYEE;

-- Manager and empolyee to reporting them
Select 
e.EMP_NAME as Manager,
m.EMP_NAME as Employee
from EMPLOYEE e 
join EMPLOYEE m on
e.EMPNO = m.MANAGER



