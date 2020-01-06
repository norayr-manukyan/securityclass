MODULE Stack;
 
TYPE
   node* = POINTER TO nodeDesc;
   nodeDesc* = RECORD
     str* :  ARRAY 16 OF CHAR;
     next*, prev*: node;
   END;
 
   stack* = POINTER TO stackDesc;
   stackDesc* = RECORD
      first*, last* : node;
   END;
 
PROCEDURE Newstack*(): stack;
  VAR l : stack;
  BEGIN
    NEW(l);
    l.last := NIL;
    RETURN l;
END Newstack;
 
(*----------------------------------------------*)
 
PROCEDURE Push*(VAR l: stack; VAR n: node);
  VAR tmp1 :node;
  BEGIN
    IF l.last = NIL THEN
      NEW(l.last);
      l.last := n;
    ELSE
      tmp1 := l.last;
      tmp1.next := n;
      l.last := n;
      l.last.prev := tmp1;
    END;
   
END Push;
 
(*----------------------------------------------*)
 
PROCEDURE Pop*(VAR l: stack);
  VAR newlast : node;
  BEGIN
    newlast := l.last.prev;
    NEW(l.last);
    NEW(newlast.next);
    l.last := newlast;
END Pop;
 
(*----------------------------------------------*)
 
PROCEDURE Peek*(VAR l: stack): node;
  BEGIN
    RETURN l.last;
END Peek;
 
END Stack.