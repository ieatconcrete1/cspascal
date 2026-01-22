PROGRAM cspreview;
CONST
  SIZE = 20;
TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;
VAR
  myList, myList2 : LIST;
  i, j, n : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO SIZE DO
    myList[i] := Random(50);
  myList[0] := SIZE;

  FOR i := 1 TO SIZE DO
    Writeln('myList[', i, '] ', myList[i]);

  n := 0;
  FOR i := 1 TO SIZE DO
    n := n + myList[i];
  Writeln(n);

  Readln;
END.