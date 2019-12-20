MODULE test;
IMPORT Strs, Out;

VAR s, s1: Strs.String; z: INTEGER;

PROCEDURE testlength(VAR str: Strs.String; t: INTEGER);
VAR
  result: INTEGER;
BEGIN
  result:=Strs.Length(str);
  IF result # t THEN Out.String("Error"); Out.Ln(); ELSE Out.String("Ok"); Out.Ln();  END;
END testlength;


PROCEDURE testappend(VAR st1, st2, resultx : Strs.String);
VAR
  result0 : Strs.String;
BEGIN
  Strs.Append(st1, st2);
END testappend;

BEGIN

s :="abc";
s1 := "abcabc";
testlength(s, 30);
testappend(s,s,s1);

END test.
