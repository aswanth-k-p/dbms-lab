SQL> SET SERVEROUTPUT ON;
SQL> Declare
  2  x float;
  3  y float;
  4  z float;
  5  Begin
  6  x:=&x;
  7  y:=&y;
  8  z:=x+y;
  9  Dbms_output.put_line(z);
 10  End;
 11  /
Enter value for x: 2
Enter value for y: 3

5

PL/SQL procedure successfully completed.

