Program test;
USES csp;
VAR
  s : STRING;
BEGIN
  Writeln('Add3(1,2,3) = ', Add3(1,2,3));
  Writeln('Add3(4,5,6) = ', Add3(4,5,6));
  Writeln('Pow(2,2) = ', Pow(2,2));
  Writeln('Pow(3,2) = ', Pow(3,2));
  Writeln('Pow(3,3) = ', Pow(3,3));
  Writeln('Pow(4,2) = ', Pow(4,2));
  Writeln('Pow(5,1) = ', Pow(5,1));
  readln(s);
END.