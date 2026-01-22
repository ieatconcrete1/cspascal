PROGRAM Conditionals;
VAR
  num, guess, i : INTEGER;
BEGIN
  Randomize;
  num := Random(10);

  REPEAT
    Write('Guess a number between 0 and 10: ');
    Read(guess);
    IF guess < num THEN Writeln('incorrect, too low')
    ELSE IF guess > num THEN Writeln('incorrect, too high')
    ELSE Writeln('Tha is correct');
  UNTIL num = guess;

  Read(guess);
END.