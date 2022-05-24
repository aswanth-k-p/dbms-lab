
SQL> connect system
Enter password:
Connected.

SQL> create table employee(id int primary key,name varchar(20),age int,hometown
varchar(20),salary float);

Table created.

SQL> insert into employee values(1,'ramesh',32,'ahemedabad',2000);

1 row created.

SQL> insert into employee values(2,'khilan',25,'delhi',1500);

1 row created.

SQL> insert into employee values(3,'kaushik',23,'kota',2000);

1 row created.

SQL> insert into employee values(4,'chaitali',25,'mumbai',6500);

1 row created.

SQL> insert into employee values(5,'hardik',27,'bhopal',8500);

1 row created.

SQL> insert into employee values(6,'kamal',22,'mp',4500);

1 row created.

SQL> insert into employee values(7,'muffy',24,'indore',10000);

1 row created.

SQL> insert into employee values(8,'ramu',23,'delhi',6000);

1 row created.

SQL> insert into employee values(9,'rohit',24,'ahemedabad',5000);

1 row created.

SQL> insert into employee values(10,'shamli',23,'mumbai',10000);

1 row created.

SQL> select * from employee where id='4';

        ID NAME                        AGE HOMETOWN                 SALARY
---------- -------------------- ---------- -------------------- ----------
         4 chaitali                     25 mumbai                     6500

SQL> select distinct hometown from employee;

HOMETOWN
--------------------
bhopal
mp
delhi
mumbai
indore
ahemedabad
kota

7 rows selected.

SQL> select count(salary) from employee;

COUNT(SALARY)
-------------
           10

SQL> commit;

Commit complete.

SQL>