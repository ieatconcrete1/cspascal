PROGRAM RandList;
USES csp;
VAR
  myList : List;
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO 20 DO
    Append(myList, Random(67) + 1);
  PrintList(myList);
  Readln;
END.