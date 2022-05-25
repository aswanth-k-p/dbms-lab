
SQL*Plus: Release 11.2.0.2.0 Production on Wed May 25 15:06:29 2022

Copyright (c) 1982, 2010, Oracle.  All rights reserved.

SQL> connect system
Enter password:
Connected.
SQL> SET SERVEROUTPUT ON;
SQL> Declare
  2  a number:=&x;
  3  b number:=&y;
  4  c number:=&z;
  5  begin
  6  if a>b AND a>c
  7  then
  8  dbms_output.put_line('a is greatest');
  9  else
 10  if b>a AND b>c
 11  then
 12  dbms_output.put_line('b is greatest');
 13  else
 14  dbms_output.put_line('c is greatest');
 15  end if;
 16  end if;
 17  end;
 18  /
Enter value for x: 2

Enter value for y: 3

Enter value for z: 4

z is greatest

PL/SQL procedure successfully completed.

SQL>