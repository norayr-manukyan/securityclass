MODULE Test;
IMPORT Out, Stack;
 
VAR
  a, b,c : Stack.stack;
  node1, node2, node3 : Stack.node;
  int1, int2, int3 : INTEGER;
BEGIN
  (*Creating stack*)
  a:= Stack.Newstack();
  b:= Stack.Newstack();
 
  (*Insert nodes to stack*)
  NEW(node1); NEW(node2);
  node1.str := "node1str"; node2.str := "node2str";
  Stack.Push(a, node1);
  Stack.Push(a, node2);
 
  (*Peek test*)
  node3 := Stack.Peek(a);
  Out.String(node3.str); Out.Ln;
 
  (*Pop test*)
  Stack.Pop(a);
  node3 := Stack.Peek(a);
  Out.String(node3.str);Out.Ln;
END Test.