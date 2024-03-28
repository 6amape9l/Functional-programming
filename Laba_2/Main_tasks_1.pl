/*
consult("Laba_2/Main_tasks_1.pl").
*/

/*
Find max between 3 digits
max3(+X:int, +Y:int, +U:int, -Z:int) is nondet
*/
max3(X,Y,U,X):-X>Y,X>U,!.
max3(_,Y,U,Y):-Y>U,!.
max3(_,_,U,U).

/*
Find factorial
fact(+Number:int, -Answer:int) is nondet
Head
*/
fact(0,1):-!.
fact(N,X):-N1 is N-1,fact(N1,X1), X is N*X1.

/*
Find factorial
fact(+Number:int, -Answer:int) is nondet
Tail
*/
fact1(N,X):-fact2(0,1,N,X).
fact2(N,Y,N,Y):-!.
fact2(N,_,N,_):-!,fail.
fact2(I,Y,N,X):-I1 is I+1, Y1 is Y*I1, fact2(I1,Y1,N,X).

/*
Find summ of cifr el
max_summ_cifr_el(+Cifr_list:list, -Sum:int) is nondet
Head
*/
max_summ_cifr_el([A], A) :- !.
max_summ_cifr_el([CurEl|Tail], Res1) :-
	summ_cifr(CurEl,SCCurEl), max_summ_cifr_el(Tail, Res1),
	summ_cifr(Res1, ScRes1), SCCurEl < ScRes1, !. 
max_summ_cifr_el([CurEl|Tail], CurEl).

sum_el([], 0) :- !.
sum_el([H|T],Sum) :- sum_el(T, SumT), Sum is H + SumT.

sum_el_down(List, Sum) :- sum_el_down(List, 0, Sum).
sum_el_down([], Sum, Sum) :- !.
sum_el_down([H|T],CurSum, Sum) :- NewSum is CurSum + H, 
	sum_el_down(T, NewSum, Sum).

sum_pr_el_down(List, Sum) :- sum_pr_el_down(List, 0, Sum).
sum_pr_el_down([], Sum, Sum) :- !.
sum_pr_el_down([H|T],CurSum, Sum) :- pr(H), NewSum is CurSum + H, 
	sum_pr_el_down(T, NewSum, Sum), !.
sum_pr_el_down([_|T],CurSum, Sum) :-  
	sum_pr_el_down(T, CurSum, Sum).

append1([], L, L):-!.
append1([H|T], L, [H|R]) :- append1(T, L, R).

pr(2):-!.
pr(X):-pr1(X,2).
pr1(X,X):-!.
pr1(X,I):- Y is X mod I, Y\=0, I1 is I+1, pr1(X,I1).

summ_cifr(0,0):-!.
summ_cifr(X,SummCifr):-X1 is X // 10, Ost is X mod 10, 
	summ_cifr(X1, SummCifr1), SummCifr is SummCifr1 + Ost.

summ_cifr_down(N,X):- summ_cifr(N,0,X).
summ_cifr(0,X,X):-!.
summ_cifr(N,CurX,X):-N1 is N // 10, Ost is N mod 10,
	NewX is CurX + Ost, summ_cifr(N1, NewX, X).


fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N1 is N-1, N2 is N-2, fib(N1,X1), fib(N2,X2), X is X1+X2.

fib1(N,X):-fib2(1,1,2,N,X).
fib2(_,B,N,N,B):-!.
fib2(A,B,I,N,X):- I1 is I+1, C is A+B, fib2(B,C,I1,N,X).


n_pr(N,X):-npr(N,N,X).
npr(N,I,I):- Y is N mod I, Y=0, pr(I),!.
npr(N,I,X):- I1 is I-1, npr(N,I1,X).