PROGRAM SoftballHeihgts(input, output);
CONST
  MAXTEAM = 22;
TYPE
  List = array[1..MAXTEAM] of INTEGER;

VAR
  heights : List;
  teamNum : INTEGER;
  average : REAL;
  sum, i : INTEGER;
BEGIN
  Writeln('How many players are on the team?');
  Readln(teamNum);
  FOR i := 1 TO teamNum DO
  BEGIN
    Write('Enter height for player # ?', i, ': ');
    Readln(heights[i]);
  END;

  BEGIN
  FOR i := 1 TO teamNum DO
  Writeln(heights[i]);
END;


END.