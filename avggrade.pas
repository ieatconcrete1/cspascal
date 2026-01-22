PROGRAM calcGrade;

CONST
  MAXSIZE = 20;
TYPE
  List = array[1..MAXSIZE] OF REAL;
VAR
  grades : List;
  average : REAL;
  numGrades, i : INTEGER;

FUNCTION CalculateAverage(gradeList : List; num : INTEGER) : REAL
 VAR sum: REAL
 BEGIN
  sum := 0;
  FOR  i := 1 TO MAXSIZE DO sum := sum + grades[i]
  CalculateAverage := sum/num
 END;

 FUNcTION ClassifyGrade(avg : REAL) : CHAR
 VAR letter := CHAR
 IF average >= 89.5 THEN letter := 'A'
  ELSE If average >= 79.5 THEN letter := 'B'
  ELSE IF average >= 70.5 THEN letter := 'C'
  ELSE IF average >= 69.5 THEN letter := 'D'
  ELSE letter := 'F'

BEGIN
  Writeln('How many assignments do you have in the class?');
  Readln(numGrades);
  FOR i := 1 TO numGrades DO
    BEGIN
      Write('What is the grade on assignment #', i, ': ');
      Read(grades[i]);
    END;
  average := CalculateAverage(grades, numGrades);
  Write('Average = ,' average);

  letter



  Readln(i);

END.