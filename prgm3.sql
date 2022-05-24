
SQL> connect system;
Enter password:
Connected.
SQL> create user aswanth identified by 098;

User created.

SQL> grant create session to aswanth;

Grant succeeded.

SQL> connect
Enter user-name: aswanth
Enter password:
Connected.
SQL> connect system;
Enter password:
Connected.
SQL> select* from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         3 aswanth                       1      55000

SQL> grant insert,select on employee to aswanth;

Grant succeeded.

SQL> connect
Enter user-name: aswanth
Enter password:
Connected.
SQL> select*from system.employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         3 aswanth                       1      55000

SQL> insert into system.employee values(4,'aleena',2,450000);

1 row created.

SQL> select*from system.employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 anit                          1      55000
         4 aleena                        2     450000
         3 aswanth                       1      55000

SQL> connect system
Enter password:
Connected.
SQL> revoke insert on employee from aswanth;

Revoke succeeded.

SQL> connect
Enter user-name: aswanth
Enter password:
Connected.
SQL> insert into system.employee values(4,'jayapal',3,3456);
insert into system.employee values(4,'jayapal',3,3456)
                   *
ERROR at line 1:
ORA-01031: insufficient privileges


SQL> commit;

Commit complete.

SQL>