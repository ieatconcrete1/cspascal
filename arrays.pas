PROGRAM Arrays;
TYPE
  List = Array[1..10]  of INTEGER;
VAR
  myList : List;
  i : INTEGER;
  max, min : INTEGER;

FUNCTION minList(aList : List) : INTEGER;
  VAR
    min, i : INTEGER;
  BEGIN
    min := myList[1];
    FOR i := 2 TO 10 DO
      IF min > myList[i]  THEN min := myList[i];

    minList := min;
  END;

BEGIN
  Randomize;
  FOR i := 1 TO 10 DO
    Readln(myList[i]);

  max := myList[1];
  min := myList[1];

  FOR i := 1 TO 10 DO
  BEGIN
    IF max < myList[i] THEN max := myList[i];
    Write(myList[i], ' ');
    END;
    Writeln(' ');
    Writeln('Max of list is = ', max);
    Writeln('Min of list is = ', minList(myList) );
  Readln(i);
END.