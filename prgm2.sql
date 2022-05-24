
SQL> drop table employee;

Table dropped.

SQL> create table employee(empid int,name varchar(20),deptid int,salary int);

Table created.

SQL> alter table employee add primary key(empid);

Table altered.

SQL> drop table department;

Table dropped.

SQL> create table department(deptid int primary key,deptname varchar(20));

Table created.

SQL> alter table employee add foreign key(deptid) references department(deptid);


Table altered.

SQL> alter table department add hod varchar(20);

Table altered.

SQL> insert into department values(1,'mca','mohanlal');

1 row created.

SQL> insert into department values(2,'mba','mammooty');

1 row created.

SQL> select*from department;

    DEPTID DEPTNAME             HOD
---------- -------------------- --------------------
         1 mca                  mohanlal
         2 mba                  mammooty

SQL> insert into employee values(01,'anit',1,50000);

1 row created.

SQL> insert into employee values(02,'aneeta',2,25000);

1 row created.

SQL> insert into employee values(03,'aswanth',1,30000);

1 row created.

SQL> commit;

Commit complete.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      50000
         2 aneeta                        2      25000
         3 aswanth                       1      30000

SQL> update employee set salary=55000 where deptid=1;

2 rows updated.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         2 aneeta                        2      25000
         3 aswanth                       1      55000

SQL> delete from employee where empid=2;

1 row deleted.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         3 aswanth                       1      55000

SQL>