PROGRAM circles;  { Draw 10 circles with random center and random radius on screen }
USES graph;

VAR
  gm, gd, i : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  Randomize;

  FOR i := 1 TO 10000 DO
  BEGIN
  SetColor (Random(16) );
  Circle(Random(640), Random(480), Random(100));
  END;

  Read(i);
  CloseGraph;
END.
