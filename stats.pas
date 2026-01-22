PROGRAM stats;
USES csp;
VAR
  myList : LIST;                                            1`
  n : INTEGER;
BEGIN
  REPEAT
  Writeln('How many elements:');
  Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
    Writeln('Please use a valid number');
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  BubbleSort(myList);
  PrintList(myList);
  Writeln('Sum of list = ', Sum(myList));
  Writeln('The average = ', Average(myList):2:3);
  Writeln('The median = ', Median(myList):3:2);
  Readln;
END.