MODULE Cat;
IMPORT Out, Files, Args;
VAR
	str, fn : ARRAY 32 OF CHAR;
	i : INTEGER;
	f: Files.File;
	r: Files.Rider;
	ch : CHAR;
BEGIN

Args.Get(0, str);
Out.String(str); Out.Ln;
Out.String ("number of arguments: "); Out.Int(Args.argc, 0); Out.Ln;
 REPEAT
 	INC(i);
 	Args.Get(i, fn);
 	Out.Int(i, 0); Out.Char(' '); Out.String(fn); Out.Ln;
 	f := Files.Old(fn);
 	IF f # NIL THEN
 		Files.Set(r, f, 0);
 		REPEAT
 		Files.Read(r, ch);
 		Out.Char(ch);
 		UNTIL r.eof;
 	ELSE 
 		Out.String("File "); Out.String(fn); Out.String(" not found"); Out.Ln;
 	END;
 UNTIL i = Args.argc - 1;
 
END Cat.