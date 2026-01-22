PROGRAM GradeClassifier(Input, Output);
VAR
  grade : INTEGER;
  class : CHAR;

FUNCTION ClassifyGrade(grade : INTEGER) : CHAR;
  BEGIN

    IF (89 < grade) AND (grade <= 100) THEN ClassifyGrade := 'A'
    ELSE IF (79 < grade) AND (grade <= 89) THEN ClassifyGrade := 'B'
    ELSE IF (69 < grade) AND (grade <= 79) THEN ClassifyGrade := 'C'
    ELSE IF (grade <= 69) THEN ClassifyGrade := 'F';

  END;

PROCEDURE PrintGradeClass(class : CHAR);
  BEGIN

    IF class = 'A' THEN Writeln('You got an A')
    ELSE IF class = 'B' THEN Writeln('You got a B')
    ELSE If class = 'C' THEN Writeln('You got an C')
    ELSE if class = 'F' THEN Writeln('you got and F');

  END;
FUNCTION GetGrade : INTEGER;
VAR
  grade : INTEGER;
BEGIN
  REPEAT
  Writeln('Enter your grade');
  Read(grade);
  IF (grade < -1) OR (grade > 100) THEN Writeln('Please enter a grade between 0 - 100')
  UNTIL (grade >= -1) AND (grade <= 100);
 GetGrade := grade;
 END;

BEGIN
REPEAT
  grade := GetGrade;
  class := ClassifyGrade(grade);
  PrintGradeClass(class);
 UNTIL grade = -1;
  Read(grade);
END.

