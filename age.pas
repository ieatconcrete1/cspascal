PROGRAM AgeClassifier(Input, Output);
VAR
  age : INTEGER;
  class : CHAR;

FUNCTION ClassifyAge(age : INTEGER) : CHAR;
  BEGIN

    IF (age > 12) AND (age < 20) THEN ClassifyAge := 't'
    ELSE IF (age < 13) THEN ClassifyAge := 'c'
    ELSE ClassifyAge := 'a';

  END;

PROCEDURE PrintAgeClass(class : CHAR);
  BEGIN

    IF class = 'c' THEN Writeln('You are a child')
    ELSE IF class = 't' THEN Writeln('You are a teen')
    ELSE Writeln('You are an adult');

  END;

BEGIN
  Writeln('..');
  Read(age);
  class := ClassifyAge(age);
  PrintAgeClass(class);
  Read(age);
END.