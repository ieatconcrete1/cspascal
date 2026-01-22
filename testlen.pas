PROGRAM testlen;
USES csp;
VAR
  s : STRING;
BEGIN
  Writeln('Len(Murry) = ', Len('Murry'));
  Writeln('Len(mcintosh) = ', Len('mcintosh'));
  Writeln('Len() = ', Len(''));
  Read(s);
END.