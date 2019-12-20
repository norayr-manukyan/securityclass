MODULE Test;
IMPORT Out, SYSTEM, Mathematics;

VAR a , b, e,f,g :INTEGER;

PROCEDURE testfactorial(VAR n, result: INTEGER);
BEGIN
  IF Mathematics.Fac(n) = result THEN
    Out.String("ok");Out.Ln;
  ELSE
    Out.Int(Mathematics.Fac(n),1 );Out.Ln;
  END
END testfactorial;

PROCEDURE testpower(VAR c, d, res : INTEGER);
BEGIN
  IF Mathematics.Pow(c,d) = res THEN
    Out.String("Ok");Out.Ln;
  ELSE
  Out.Int(Mathematics.Pow(c,d),1);Out.Ln;
  END
END testpower;

BEGIN

a:= 5;
b:= 120;
e := 2;
f := 3;
g := 8;
testfactorial(a,b);
testpower(e,f,g);


END Test.
