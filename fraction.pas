PROGRAM review;
TYPE
  fraction = RECORD
               num : INTEGER;
               deno : INTEGER;
             END;
VAR
  f1, f2 : Fraction;
FUNCTION Frac2String(f : Fraction) : STRING;
VAR
  s1, s2 : STRING;
BEGIN
  Str(f.num, s1);
  Str(f.deno, s2);
  Frac2String := s1 + '/' + s2;
END;

BEGIN
  f1.num := 2;
  f1.deno := 3;
  f2.num := 4;
  f2.deno := 5;

  Writeln(Frac2String(f1));
  Writeln(Frac2String(f2));

  Writeln(f1.num * f2.num, '/', f1.deno * f2.deno);
  Writeln(f1.num * f2.deno + f2.num * f1.deno, '/', f1.deno * f2.deno);

  Readln;
END.