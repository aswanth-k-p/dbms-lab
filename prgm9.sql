create table sailor(sid int primary key,sname varchar(25),rating int,age float);
Table created.
insert into sailor values(22,'Dustin',7,45);
1 row inserted.
insert into sailor values(29,'Brutus',1,33);
1 row inserted.
insert into sailor values(31,'Lubber',8,55.5);
1 row inserted.
insert into sailor values(32,'Andy',8,25.5);
1 row inserted.
insert into sailor values(58,'Rusty',10,35);
1 row inserted.
insert into sailor values(64,'Horataio',7,35);
1 row inserted.
insert into sailor values(71,'Zorba',10,16);
1 row inserted.
insert into sailor values(74,'Horataio',9,35);
1 row inserted.
insert into sailor values(85,'Art',3,25.5);
1 row inserted.
insert into sailor values(95,'Bob',3,63.5);
1 row inserted.
create table boat(bid int primary key,bname varchar(25),color varchar(25));
Table created.
insert into boat values(101,'Interlake','blue'); 
1 row inserted.                                          
insert into boat values(102,'Interlake','red'); 
1 row inserted.                                            
insert into boat values(103,'Clipper','green');      
1 row inserted.                                     
insert into boat values(104,'Marine','red');
1 row inserted.
select * from boat;
create table reserve(sid int,bid int,day date,foreign key(sid) references sailor(sid),foreign key(bid) references boat(bid)); 
Table created.  
insert into reserve values(22,101,'10-OCT-98'); 
1 row inserted.
insert into reserve values(22,102,'10-OCT-98');
1 row inserted.
insert into reserve values(22,103,'08-OCT-98');
1 row inserted. 
insert into reserve values(22,104,'07-OCT-98');
1 row inserted.
insert into reserve values(31,102,'10-NOV-98'); 
1 row inserted.
insert into reserve values(31,103,'06-NOV-98'); 
1 row inserted.
insert into reserve values(31,104,'12-NOV-98'); 
1 row inserted.
insert into reserve values(64,101,'05-SEP-98'); 
1 row inserted.
insert into reserve values(64,102,'08-SEP-98'); 
1 row inserted.
insert into reserve values(74,103,'08-SEP-98');
1 row inserted.
select * from sailor;

SID	SNAME	RATING	AGE
--- -----  -------  ----
22	Dustin	7	45
29	Brutus	1	33
31	Lubber	8	55.5
32	Andy	8	25.5
58	Rusty	10	35
64	Horataio	7	35
71	Zorba	10	16
74	Horataio	9	35
85	Art	3	25.5
95	Bob	3	63.5
10 rows selected.
select * from boat;
BID	BNAME	COLOR
--- -----   ------
101	Interlake	blue
102	Interlake	red
103	Clipper	green
104	Marine	red
4 rows selected.
select * from reserve;
SID	BID	DAY
--- --- ---------
22	101	10-OCT-98
22	102	10-OCT-98
22	103	08-OCT-98
22	104	07-OCT-98
31	102	10-NOV-98
31	103	06-NOV-98
31	104	12-NOV-98
64	101	05-SEP-98
64	102	08-SEP-98
74	103	08-SEP-98
10 rows selected.


a)select distinct sid from reserve where bid IN(select bid from boat where color='red' or color='green');

SID
----
64
31
22
74
4 rows selected.

b)select sname from sailor where sid in(select sid from reserve where bid=103);

SNAME
------
Dustin
Lubber
Horataio
3 rows selected.

c)select sname,age from sailor where age in(select min(age) from sailor);

SNAME	AGE
Zorba	16

d)SELECT S.sname FROM sailor S WHERE NOT EXISTS (SELECT B.bid FROM boat B EXCEPT SELECT R.bid FROM reserve R WHERE R.sid=S.sid );

SNAME
------
Dustin