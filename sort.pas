PROGRAM sort;
USES csp;
VAR
  aList : LIST;
  i, j, temp : INTEGER;
BEGIN
  RandomList(aList, 10);
  Writeln('unsorted:');
  PrintList(aList);

  BubbleSort(aList);
  Writeln('Sorted:');
  PrintList(aList);

  Readln;
END.