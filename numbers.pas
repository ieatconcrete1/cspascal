PROGRAM userinput;
VAR
   times, i, n, sum : INTEGER;

FUNCTION GetValue : INTEGER;
  VAR
    num : INTEGER;
  FUNCTION Valid(a : INTEGER) : Boolean;
    BEGIN
      Valid := (a >= 0) AND (a <= 50);
    END;

  BEGIN
   REPEAT
    Write('Please enter a number between 0 - 50: ');
    Read(num);
    IF NOT Valid(num) THEN Writeln('Try again');
    UNTIL Valid(num);
    GetValue := num;
  END;

BEGIN
  Writeln('How many number will you enter?');
  Read(times);
  sum := 0
  FOR i := 1 TO times DO
  BEGIN
    n:= GetValue
    sum := sum + n;
  END;
END.