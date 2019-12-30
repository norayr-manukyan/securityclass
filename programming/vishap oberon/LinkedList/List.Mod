MODULE List;
 
TYPE
   node* = POINTER TO nodeDesc;
   nodeDesc* = RECORD
     str* :  ARRAY 16 OF CHAR;
     next*, prev*: node;
   END;
 
   list* = POINTER TO listDesc;
   listDesc* = RECORD
      first*, last* : node;
      count* : INTEGER;
   END;
 
PROCEDURE Newlist*(): list;
  VAR l : list;
  BEGIN
    NEW(l);
    l.first := NIL; l.last := NIL;
    l.count :=0 ;
    RETURN l;
END Newlist;
 
(*---------------------------------------*)
 
PROCEDURE Count*(VAR l: list): INTEGER;
  BEGIN
    RETURN l.count;
END Count;
 
(*---------------------------------------*)
 
PROCEDURE Prev*(VAR n : node): node;
  BEGIN
    IF n.prev = NIL THEN
      NEW(n.prev); RETURN n.prev;
    ELSE
      RETURN n.prev;
    END;
END Prev;
 
(*-----------------------------------------*)
 
PROCEDURE Next*(VAR n: node): node;
  VAR i: INTEGER;
  BEGIN
    IF n.next = NIL THEN
      NEW(n.next); RETURN n.next;
    ELSE
      RETURN n.next;
    END;
  END Next;
 
(*-----------------------------------------*)
 
PROCEDURE Insert*(VAR l: list; index: INTEGER; VAR n: node);
  VAR i :INTEGER; temp1: node;
  BEGIN
    IF l.first = NIL THEN
      NEW(l.first); NEW(l.last); l.first := n; l.last := n; INC(l.count);
    ELSIF (index = l.count +1) & (l.count >0) THEN
      temp1 := l.last;
      l.last := n;
      temp1.next := l.last;
      l.last.prev := temp1;
      INC(l.count);  
    ELSIF index = 1 THEN
      temp1 := l.first;
      l.first := n;
      l.first.next := temp1;
      temp1.prev := l.first;
      INC(l.count);
    ELSE
        temp1 := l.first;
        FOR i:=1 TO index-1 DO
          temp1 := Next(temp1);
        END;
        n.next := temp1.next; temp1.next := n; n.prev := temp1;
        INC(l.count);
    END;
END Insert;
 
(*----------------------------------------------*)
 
PROCEDURE Append*(VAR l: list; VAR n: node);
  VAR tmp1 :node;
  BEGIN
    tmp1 := l.last;
    tmp1.next := n;
    l.last := n;
    l.last.prev := tmp1;
    INC(l.count);
END Append;
 
(*----------------------------------------------*)
 
PROCEDURE AppendList*(VAR l0, l1: list);
  VAR i,j: INTEGER;  tmp1: node;
  BEGIN
    tmp1 := l1.first;
    FOR i:=1 TO l1.count DO
      Append(l0, tmp1);
      tmp1 := Next(tmp1);
    END;
   
END AppendList;
 
(*-----------------------------------------------*)
 
PROCEDURE Get*(VAR l: list; i: INTEGER): node;
  VAR
    temp2: node; j : INTEGER;
  BEGIN
    IF i = 1 THEN RETURN l.first;
    ELSIF i = l.count THEN RETURN l.last;
    ELSE
      temp2:= l.first;
      FOR j:=2 TO i DO
        temp2 := Next(temp2);
      END;
      RETURN temp2;
    END;
END Get;
 
(*----------------------------------------------*)
 
PROCEDURE Delete*(VAR l: list; n: node);
  VAR prev1, next1 : node;
  BEGIN
    IF n = l.last THEN prev1 := Prev(l.last); l.last := prev1; l.last.next := NIL; NEW(l.last.next);
    ELSIF n = l.first THEN  l.first := Get(l,2);
    ELSE
          prev1 := Prev(n);
          next1 := Next(n);
          n.prev := NIL; n.next := NIL;  n.str := "" (*I cant NIL it becouse it is string*);
          prev1.next := next1;
          next1.prev := prev1;
    END;
    DEC(l.count);
END Delete;
 
(*--------------------------------------*)
 
PROCEDURE Empty*(VAR l :list);
  VAR i: INTEGER; next1, tmp1: node;
  BEGIN
    next1 := l.first;
    FOR i:=1 TO l.count DO
      next1:= Next(next1);
      tmp1 := Prev(next1);
      Delete(l,tmp1);
    END;
    Delete(l,l.last);Delete(l,l.first); l.count :=0;
END Empty;
 
(*----------------------------------------------------------*)
 
PROCEDURE InsertAfter*(VAR l: list; VAR n0, n1: node);
  VAR next1, prev1, tmp1 : node;
  BEGIN
    IF n0 = l.last THEN
      tmp1 := l.last;
      l.last := n1;
      n1.prev := tmp1;
      tmp1.next := n1;
    ELSE
      next1:= n0.next;
      n0.next := n1;
      n1.prev := n0;
      n1.next := next1;
      next1.prev := n1;
    END;
INC(l.count);
END InsertAfter;
 
(*------------------------------------------------------------*)
 
PROCEDURE InsertBefore*(VAR l: list; VAR n0, n1: node);
   VAR tmp1, next1, prev1: node;
   BEGIN
    IF n0 = l.first  THEN
      tmp1 := l.first;
      l.first := n1;
      l.first.next := tmp1;
      tmp1.prev := l.first;
    ELSE
      prev1 := n0.prev;
      next1 := n0.next;
      prev1.next := n1;
      next1.prev := n1;
      n1.prev := prev1;
      n1.next := next1;
    END;
    INC(l.count);
END InsertBefore;
 
END List.