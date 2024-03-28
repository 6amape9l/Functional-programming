/*
consult("Laba_2/Individual_tasks_2.pl").
Вариант 6
*/


/*
Task 2.1
Find minimum in list
min_el(+List:list of int, -Answer:int) is nondet
Head rec
*/
min_el([Min], Min) :- ! .
min_el([H|T], Min) :- min_el(T, TMin), min(H,TMin,Min).
min_el([H|_], H).

min(Y,U,Y):-Y<U,!.
min(_,U,U).

/*
Tail rec
*/
min_elt(List, Min) :- min_elt(List, 1000, Min).
min_elt([], Min, Min) :- ! .
min_elt([H|T], CMin, Min) :- min(H,CMin,NMin), min_elt(T, NMin, Min).

/*
Task 2.2
Count el in numb that < 3
count(+Number:int, -Sum:int) is nondet
Head rec
*/
count(0, 0) :- !.
count(Num, Sum) :- NNum is Num // 10, count(NNum, NSum), ((Num mod 10 < 3) -> (Sum is NSum); (Sum is NSum + 1)).
count(Num, 0) :- Num mod 10 < 3.
count(_, 1).

/*
Tail rec
*/
countt(Num, Sum):- countt(Num, 0, Sum).
countt(0, Sum, Sum):-!.
countt(Num, CSum, Sum):- ((Num mod 10 < 3) -> (NSum is CSum); (NSum is CSum + 1)), NNum is Num // 10, countt(NNum, NSum, Sum).

/*
Task 2.3
Find number of del
count(+Number:int, -Col:int) is nondet
Head rec
*/
col_del(Num, X) :- col_del(Num, X, Num).
col_del(_, 1, 1) :- !.
col_del(Num, Col, Del) :- NDel is Del - 1, col_del(Num, NCol, NDel), (Num mod Del =:= 0 -> (Col is NCol + 1); (Col is NCol)).

/*
Tail rec
*/
col_delt(Num, X) :- col_delt(Num, 0, X, Num).
col_delt(_, X, X, 0) :- !.
col_delt(Num, CCol, Col, Del):- (Num mod Del =:= 0 -> (NCCol is CCol + 1); (NCCol is CCol)), NDel is Del - 1, col_delt(Num, NCCol, Col, NDel).