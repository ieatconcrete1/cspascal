PROGRAM passbyreference;
VAR
  m, n : INTEGER;
  s1, s2 : STRING;
  c1, c2 : CHAR;
PROCEDURE myupcase(VAR c : CHAR);
  BEGIN
    IF (c >= 'a') AND (c <= 'z') THEN
      c := chr(ord(c) - 32);
  END;
BEGIN
  c1 := 'a';
  c2 := upcase(c1);
  Writeln(c1, '->', c2);
  myupcase(c1);
  Writeln(c1);
  Val('123', n, m);
  Writeln(n, ' + 1 = ', n + 1);
  Str(1022, s2);
  Writeln('Your number was ' + s2);
  Readln(m);
END.