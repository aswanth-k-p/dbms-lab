SQL> SET SERVEROUTPUT ON;
SQL> Declare
  2  n integer:=&n;
  3  begin
  4  if mod(n,2)=0
  5  then
  6  dbms_output.put_line('number is even');
  7  else
  8  dbms_output.put_line('number is odd');
  9  end if;
 10  end;
 11  /
Enter value for n: 5
old   2: n integer:=&n;
new   2: n integer:=5;
number is odd

PL/SQL procedure successfully completed.

