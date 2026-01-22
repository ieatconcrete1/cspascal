Program Graphics;
uses Graph, Crt;
TYPE
  Triangle = ARRAY[1..4] OF PointType;
var
  Gd, Gm: Integer;
  c: Char;
  x, y, i : Integer;
  MyColor, NumColor : Word;
  MyTri : Triangle;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  x := 0;
  y := 0;
  NumColor := GetMaxColor;
  Randomize;
  REPEAT
    FOR i := 1 TO 3 DO
    BEGIN
      MyTri[i].X := Random(640);
      MyTri[i].Y := Random(480);
    END;
    MyColor := Random(NumColor);
    SetColor(MyColor);
    MyTri[4] := mytri[1];
    DrawPoly(4, MyTri);
  UNTIL KeyPressed;

  Repeat
    if KeyPressed then
    begin
      c := ReadKey;
      ClearDevice;
      CASE c OF
        'w': y := y - 5;
        's': y := y + 5;
        'a': x := x - 5;
        'd': x := x + 5;
      END;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.
