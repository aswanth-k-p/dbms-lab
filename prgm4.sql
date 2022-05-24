
SQL> connect system;
Enter password:
Connected.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         4 aleena                        2     450000
         3 aswanth                       1      55000

SQL> commit;

Commit complete.

SQL> delete from employee where empid=3;

1 row deleted.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         4 aleena                        2     450000

SQL> rollback;

Rollback complete.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         4 aleena                        2     450000
         3 aswanth                       1      55000

SQL> delete from employee where empid=3;

1 row deleted.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         4 aleena                        2     450000

SQL> savepoint s2;

Savepoint created.

SQL> delete from employee where empid=1;

1 row deleted.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         4 aleena                        2     450000

SQL> rollback to s2;

Rollback complete.

SQL> select*from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         4 aleena                        2     450000

SQL>