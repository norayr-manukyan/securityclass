MODULE Test;
IMPORT Out, List;
 
VAR
  a, b,c : List.list;
  node1, node2, node3, node4, node5, node6, node7, node8, node9 : List.node;
  int1, int2, int3 : INTEGER;
BEGIN
  (*Creating linked lists*)
  a:= List.Newlist();
  b:= List.Newlist();
 
  (*Creating nodes for linked lists*)
  NEW(node1);
  node1.str := "node1";
 
  NEW(node2);
  node2.str := "node2";
 
  NEW(node3);
  node3.str := "node3";
 
  NEW(node4);
  node4.str := "node4";
 
  NEW(node5);
  node5.str := "node5";
 
  NEW(node6);
  node6.str := "node6";
 
  NEW(node8);
  node8.str := "node8";
  NEW(node9);
 
  (*Inserting nodes in linked lists*)
  List.Insert(a,1,node1);
  List.Insert(a,2,node2);
  List.Insert(a,3,node3);
 
  List.Insert(b,1,node4);
  List.Insert(b,2,node5);
 
  (*Get count *)
  Out.Int(List.Count(a),0);Out.Ln;
  Out.Int(List.Count(b),0);Out.Ln;
 
  List.Insert(b,3,node6);
  node7 := b.last;
  Out.Int(List.Count(b),0);Out.String(node7.str);Out.Ln;
 
  (*Get test*)
  node7 := List.Get(b,3);
  Out.String(node7.str);Out.Ln;
 
  (*Delete test*)
  List.Delete(b,node6);
  Out.Int(List.Count(b),0); Out.String(b.last.str); Out.Ln;
 
  (*InsetAfter test*)
  List.InsertAfter(b,node4,node6);
  node7 := List.Get(b,2);
  Out.String(node7.str);Out.Ln;
 
  (*InsertBefore test*)
  List.InsertBefore(b,node5,node8);
  node7 := List.Get(b,3);
  Out.Int(List.Count(b),0); Out.String(node7.str); Out.Ln;
 
  (*Next, Prev tests*)
  node7 := List.Next(node4);
  node9 := List.Prev(node6);
  Out.String(node7.str); Out.String(node9.str);Out.Ln;  
 
  (*Append test*)
  NEW(node9); node9.str := "node9";
  List.Append(b, node9);
  node7 := b.last;
  Out.String(node7.str);Out.Int(b.count,0);Out.Ln;
 node7:= List.Get(b,4);
Out.String("zzz");Out.String(node7.str);Out.Ln;
  (*AppendList test*)
  List.AppendList(a,b); node7 := List.Get(a,5);
  Out.Int(a.count,0);Out.String(node7.str);Out.Ln;
 
  (*Empty test*)
  List.Empty(b); node7 := List.Get(b,4);
  Out.Int(b.count,0); Out.String(node7.str);Out.Ln;
 
END Test.