PROGRAM listtest;
USES csp;
VAR
  mylist : List;
  i : INTEGER;

PROCEDURE PrintList(aList : LIST)
  BEGIN
    FOR i := 1 TO Length(aList) DO
      Writeln("Element #', 1,' =', myList);
  END;
BEGIN
  Writeln('Length of list = ', Length(myList));
  Append(myList, 5);
  Append(myList, 8);
  Writeln(myList[1], ' ', (myList[2]))

  Readln(i);

END.