MODULE Mathematics;
IMPORT Out, SYSTEM;

PROCEDURE Fac*(VAR n: INTEGER) : INTEGER;
 VAR i : INTEGER;
BEGIN
 IF n = 0 THEN  RETURN 1; END;
 i := n - 1 ;
 RETURN n * Fac(i);
END Fac;


PROCEDURE Pow*(VAR a, b : INTEGER) : INTEGER;
VAR
  result, i : INTEGER;
BEGIN
  result := 1;
  FOR i := 1 TO b DO
    result := result * a;
  END;
  RETURN result;
END Pow;

END Mathematics.