PROGRAM randarray(output);

CONST
  SIZE = 500;
TYPE
  List = ARRAY[1..SIZE] OF INTEGER;
VAR
  arr : List;
  i, sum : INTEGER;
BEGIN
  Randomize;

  FOR i := 1 TO SIZE DO arr[i] := Random(100);

  FOR i := 1 TO SIZE DO Writeln(arr[i]);

  sum := 0;
  FOR i := 1 TO SIZE DO sum := sum + arr[i];

  Writeln('sum = ', sum);

  Read(arr[1]);
END.