
SQL*Plus: Release 11.2.0.2.0 Production on Tue Apr 5 10:25:10 2022

Copyright (c) 1982, 2010, Oracle.  All rights reserved.

SQL> connect system
Enter password:
Connected.
SQL> create table item(itemid int primary key,name varchar(20),price varchar(10)
,expiry date,quantity int);
create table item(itemid int primary key,name varchar(20),price varchar(10),expi
ry date,quantity int)
             *
ERROR at line 1:



SQL> create table items(itemid int primary key,name varchar(20),
  price varchar(10),expiry date,quantity int);

Table created.

SQL> insert into items values(1,'pen',35,'20-april-22',10);

1 row created.


SQL> insert into items values(2,'soap',15,'22-may-22',30);

1 row created.

SQL> insert into items values(3,'brush',25,'10-june-22',40);

1 row created.

SQL> insert into items values(4,'paste',30,'11-may-22',10);

1 row created.

SQL> insert into items values(5,'shampoo',30,'2-april-22',20);

1 row created.


SQL> select * from items where quantity>20;

    ITEMID NAME                 PRICE      EXPIRY      QUANTITY
---------- -------------------- ---------- --------- ----------
         2 soap                 15         22-MAY-22         30
         3 brush                25         10-JUN-22         40

SQL> select * from items where expiry<sysdate;

    ITEMID NAME                 PRICE      EXPIRY      QUANTITY
---------- -------------------- ---------- --------- ----------
         5 shampoo              30         02-APR-22         20


SQL> select max(price) from items where price not in(select max(price)
from items);

MAX(PRICE)
----------
30

SQL>