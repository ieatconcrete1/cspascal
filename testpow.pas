PROGRAM testpow;
USES csp;
VAR
  s : STRING;
BEGIN
  Writeln('Pow(2,2) = ', Pow(2,2));
  Writeln('Pow(3,2) = ', Pow(3,2));
  Writeln('Pow(3,3) = ', Pow(3,3));
  Writeln('Pow(4,2) = ', Pow(4,2));
  Writeln('Pow(5,1) = ', Pow(5,1));
  Writeln('Pow(2,0) = ', Pow(2,0));
  Writeln('Pow(2,-2) = ',Pow(2,-2));
  read(s);
END.