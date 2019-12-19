MODULE Strs;
IMPORT Out, SYSTEM;
TYPE String* = ARRAY 256 OF CHAR;
 
PROCEDURE Length*(VAR s: String) : INTEGER;

VAR i : INTEGER;

BEGIN
i :=0;

REPEAT
INC(i);
UNTIL s[i]=0X;

RETURN i;
END Length;

PROCEDURE Append*(VAR s1, s2: String);

VAR
newstring : String;
i,j,k : INTEGER;

BEGIN
i :=0;
k :=0;
 
REPEAT
newstring[i] := s1[i];
INC(i);
UNTIL s1[i] = 0X;
 
REPEAT
newstring[i] := s2[k];
INC(i);
INC(k);
UNTIL s2[k] = 0X;
 
newstring[i] := 0X;
 
Out.String(newstring);Out.Int(Length(newstring),1);Out.Ln;
END Append;
 

PROCEDURE Assign*(src, dst: String);
BEGIN

END Assign;


PROCEDURE Insert*(src: String; pos: INTEGER; ins: String);
BEGIN

END Insert;

PROCEDURE Extract*(source: String; pos: INTEGER; n: INTEGER; VAR dest: String);
BEGIN

END Extract;

PROCEDURE Pos*(VAR source: String; ch: CHAR): INTEGER;
BEGIN

END Pos;

END Strs.