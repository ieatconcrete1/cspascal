PROGRAM graphics;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');

  SetColor(6);
  Rectangle(150, 100, 400, 400);

  SetColor(2);
  Rectangle(200, 300, 260, 400);

  SetColor(10);
  Line(150, 100, 300, 50);

  SetColor(10);
  Line(300, 50, 400, 100);

  SetColor(1320);
  Rectangle(350, 250, 300, 160);
Readln(gd);
  CloseGraph;
END.








