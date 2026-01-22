PROGRAM teststrings;
USES csp;
VAR
  s : STRING;
BEGIN
  IF prefix('hello', 10) = 'hello' THEN Writeln('pass bad prefix')
  ELSE Writeln('fail');
  IF substring('hello', 3, 10) = 'llo' THEN Writeln('pass bad string')
  ELSE Writeln('fail');
  IF substring('hello', 7, 3) = '' THEN Writeln('pass bad pre')
  ELSE Writeln('fail');
  Readln;
END.

