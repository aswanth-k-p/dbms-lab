

SQL> create table studentdata(rollno int not null ,name varchar(20),cgpa int,
gender varchar(20),age int);

Table created.

SQL> insert into studentdata values(1,'aiswarya',8,'female',21);

1 row created.

SQL> insert into studentdata values(2,'alen',8,'male',22);

1 row created.

SQL> insert into studentdata values(3,'anakha',7,'female',22);

1 row created.

SQL> insert into studentdata values(4,'aswanth',7,'male',22);

1 row created.

SQL> select*from studentdata where gender='female';

    ROLLNO NAME                       CGPA GENDER                      AGE
---------- -------------------- ---------- -------------------- ----------
         1 aiswarya                      8 female                       21
         3 anakha                        7 female                       22


SQL> select name,cgpa from studentdata where cgpa>6 and gender='male' order by
name;

NAME                       CGPA
-------------------- ----------
alen                          8
aswanth                       7

SQL> select name from studentdata where cgpa=(select max(cgpa)from studentdata);


NAME
--------------------
aiswarya
alen

SQL> select name from studentdata where age=(select min(age)from studentdata);

NAME
--------------------
aiswarya

SQL> select name from studentdata where age=(select min(age)from studentdata)
and gender='male';

no rows selected


SQL> commit;

Commit complete.

SQL>