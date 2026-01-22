PROGRAM testconcat;
USES csp;
VAR
  s : STRING;

BEGIN
  Writeln(Concat('Mr', 'Murry'));
  IF Concat('Mr', 'Murry') = 'MrMurry' THEN
    Writeln('Pass')
  ELSE
    Writeln('Fail');
  IF Concat('Hello', 'World') = 'Hello World' THEN
    Writeln('Pass')
  ELSE
    Writeln('Fail');
  IF Concat('Mcintosh', 'High School') = 'Mcintosh HighSchool' THEN
    Writeln('Pass')
  ELSE
    Writeln('Fail');
  Read(s);

END.