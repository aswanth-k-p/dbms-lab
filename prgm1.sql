
SQL> create table studentdetails(rollno int,name varchar(20),course varchar(20),
year int);

Table created.

SQL> commit;

Commit complete.

SQL> insert into studentdetails values(1,'Aiswarya','mca',2021);

1 row created.

SQL> insert into studentdetails values(2,'Alen','mca',2021);

1 row created.

SQL> insert into studentdetails values(3,'Anakha','mca',2021);

1 row created.

SQL> insert into studentdetails values(4,'Aneeta','mca',2021);

1 row created.

SQL> insert into studentdetails values(5,'Anit','mca',2021);

1 row created.

SQL> commit;

Commit complete.

SQL> alter table studentdetails add primary key(rollno);

Table altered.

SQL> select*from studentdetails;

    ROLLNO NAME                 COURSE                     YEAR
---------- -------------------- -------------------- ----------
         1 Aiswarya             mca                        2021
         2 Alen                 mca                        2021
         3 Anakha               mca                        2021
         4 Aneeta               mca                        2021
         5 Anit                 mca                        2021

SQL>