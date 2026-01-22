UNIT csp;

INTERFACE

CONST
  SIZE = 255;

TYPE
  List = ARRAY[0..SIZE] OF INTEGER;

{ List function/procedures }
FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE PrintList(aList : LIST);
PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
FUNCTION Sum(aList : LIST) : INTEGER;
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
FUNCTION Smallest(aList : LIST) : INTEGER;
PROCEDURE BubbleSort(VAR aList : LIST);
FUNCTION Average(aList : LIST) : REAL;
FUNCTION Median(aList : LIST) : REAL;
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION Swap(VAR a, b : INTEGER) : BOOLEAN;
PROCEDURE SelectionSort(VAR aList : LIST);
PROCEDURE InsertionSort(VAR aList : LIST);

{ String functions }
FUNCTION Pow(n, p : INTEGER) : INTEGER;
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION Concat(s1, s2 : STRING) : STRING;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;

IMPLEMENTATION


FUNCTION Length(aList : LIST) : INTEGER;
  BEGIN
    Length := aList[0];
  END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
  BEGIN
    aList[0] := Length(aList) + 1;
    aList[ Length(aList) ] := value;
  END;

PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF i > Length(aList) THEN Append(aList, value)
    ELSE IF i > 0 THEN
  BEGIN
    aList[0] := Length(aList) + 1;
    FOR index := Length(aList) DOWNTO i DO
      aList[i] := aList[index - 1];
    aList[i] := value;
  END;
END;

PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF (i <= Length(aList)) AND (i > 0) THEN
  BEGIN
    FOR index := i TO Length(aList) - 1 DO
      aList[index] := aList[index + 1];
    aList[0] := Length(aList) - 1;
  END;
END;


FUNCTION Sum(aList : LIST) : INTEGER;
VAR
  i, total : INTEGER;
BEGIN
  total := 0;
  FOR i := 1 TO Length(aList) DO
      total := total + aList[i];
  Sum := total;
END;

FUNCTION Average(aList : LIST) : REAL;
BEGIN
  Average := Sum(aList)/Length(aList);
END;


FUNCTION Median(aList : LIST) : REAL;
VAR
  x, y, mid : INTEGER;
BEGIN
  IF Length(aList) MOD 2 = 0 THEN
    mid := aList[Length(aList) DIV 2] + aList[(Length(aList) DIV 2) + 1]
  ELSE
    mid := aList[(Length(aList) DIV 2) + 1];
  Median := mid;
END;


FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
VAR
  i : INTEGER;
  StillIncreasing : BOOLEAN;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
    IF aList[i] <= aList[i + 1] THEN
      StillIncreasing := true
    ELSE
    BEGIN
      StillIncreasing := False;
      Break;
    END;
END;


FUNCTION BinarySearch(aList : LIST; value : INTEGER)  : BOOLEAN;
VAR
  i, l, r, mid, count  : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  l := 1;
  r := length(aList);
  count := 0;
  REPEAT
    count := count + 1;
    mid := (l + r) DIV 2;
    IF aList[mid] = value THEN
    BEGIN
      Found := TRUE;
      Break;
    END
    ELSE IF aList[mid] < value THEN l := mid + 1
    ELSE r := mid - 1;
  UNTIL l > r;
  Writeln('SEARCH # : ', count);
  BinarySearch := Found;
END;


FUNCTion LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  i, count : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  count := 0;
  FOR i := 1 TO Length(aList) DO
  BEGIN
    count := count + 1;
    IF aList[i] = value THEN
    BEGIN
      Found := TRUE;
      Break;
    END;
  END;
  Writeln('SEARCH # : ', count);
  LinearSearch := Found;
END;

FUNCTION Swap(VAR a, b : INTEGER) : BOOLEAN;
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  b := a;
  b := temp;
END;


PROCEDURE SelectionSort(VAR aList : LIST);
VAR
  i, j, min : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    min := i;
    FOR j := i + 1 TO Length(aList) DO
    BEGIN
      IF aList[j] < aList[min] THEN min := j;
     END;
     Swap(aList[i], aList[min]);
  END;
END;


PROCEDURE InsertionSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
BEGIN
  FOR i := 2 TO Length(aList) DO
    FOR j := i DOWNTO 2 DO
      IF aList[j] < aList[j - 1] THEN
        Swap(aList[j], aList[j - 1])
      ELSE
        Break;
END;


PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO n DO
    Append(aList, Random(100));  { 0 <= Random(X) < X }
END;


PROCEDURE BubbleSort(VAR aList : LIST);
VAR
  i, j, temp : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    FOR j := 1 TO Length(aList) - i DO
    BEGIN
      IF aList[j] > aList[j + 1] THEN
      BEGIN
        temp := aList[j];
        aList[j] := aList[j + 1];
        aList[j + 1] := temp;
      END;
    END;
  END;
END;


FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
 min, i : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] < min THEN min := aList[i];
  Smallest := min;
END;


PROCEDURE PrintList(aList : LIST);
  VAR
    i : INTEGER;
  BEGIN
    FOR i := 1 TO Length(aList) DO
      Writeln('Element #', i, ' =', aList[i]);
  END;



{ String Functions }

FUNCTION Len(s : STRING) : INTEGER;
BEGIN
  Len := ord(s[0]);
END;

FUNCTION Concat(s1, s2 : STRING) : STRING;
  VAR
    temps : STRING;
    i : INTEGER;
BEGIN
    temps[0] := chr(Len(s1) + Len(s2));
    FOR i := 1 TO len(s1) DO
    temps[i] := s1[i];
    FOR i := 1 TO Len(s2) DO
    temps[Len(s1) + i] := s2[i];
    temps[0] := chr(Len(s1) + Len(s2));
    Concat := temps;
END;

FUNCTION Reverse(s : STRING) : STRING;
VAR
    temps : STRING;
    i : INTEGER;
BEGIN
  FOR i := 1 TO Len(s) DO
    temps[i] := s[Len(s) - i + 1];
  temps[0] := s[0];
  Reverse := temps;
END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
  VAR
    temps : STRING;
    i : INTEGER;
  BEGIN
  IF n > Len(s) THEN n := len(s);
  temps[0] := Chr(n);
    FOR i := 1 TO n DO
      temps[i] := s[i];
    Prefix := temps;
END;

FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  FOR i := 1 TO n DO
    temps[i] := s[start + i - 1];
  temps[0] := chr(n);
  Substring := temps;
END;

FUNCTION Pow(n, p : INTEGER) : INTEGER;
  VAR
    prod, i : INTEGER;
  BEGIN
    IF p < 0 THEN prod := 0
    ELSE
    BEGIN
      prod := 1;
      FOR i := 1 TO p DO
        prod := prod*n;
    END;
    Pow := prod;
  END;


END.

