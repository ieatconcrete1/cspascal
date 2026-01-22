PROGRAM probability;
VAR
  i : INTEGER;
  p : INTEGER;
BEGIN
  FOR i := 1 TO 20 DO
  BEGIN
  Randomize;
  p := Random(10);
  IF p >= 8 THEN Writeln('Red')
  ELSE IF p >= 3 THEN Writeln('Blue')
  ELSE Writeln('Yellow');
  END;
  Readln;
END.