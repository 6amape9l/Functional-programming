/*
consult("Laba_2/Extra_tasks_5.pl").
Вариант 6
*/

pr(2):-!.
pr(X):-pr1(X,2).
pr1(X,X):-!.
pr1(X,I):- Y is X mod I, Y\=0, I1 is I+1, pr1(X,I1).

vs_simple(_,1):- !.
vs_simple(X,Y):-0 is X mod Y,!,fail.
vs_simple(X,Y):-NewY is X mod Y, NewX is Y, vs_simple(NewX,NewY).

sum_chis(Num, Ans):- sum_chis(Num, 0, Ans).
sum_chis(0, Ans, Ans):- !.
sum_chis(Num, CAns, Ans):- NCAns is (CAns + (Num mod 10)), NNum is Num //10, sum_chis(NNum, NCAns, Ans).

/*
Task 5.1
Tail rec
*/
sum_npr_del(Num, X) :- sum_npr_del(Num, 0, X, Num).
sum_npr_del(_, X, CX, 1) :- CX is X + 1, !.
sum_npr_del(Num, CSum, Sum, Del):- 
        (pr(Del) ->
        (NCSum is CSum);
        (NCSum is CSum + Del)),
        NDel is Del - 1, sum_npr_del(Num, NCSum, Sum, NDel).

/*
Task 5.2
Дано число, сколько сущ чисел НЕ делителей, Не взаимно простых, Взаимопрост с суммой чисел исходного
Tail rec
*/

task_5_2(Num, Ans) :- col_chis(Num, 0, Num, Ans).
col_chis(_,Col,1,Col) :- !.
col_chis(Num, CCol, Del, Ans) :- ((Num mod Del =\= 0, vs_simple(Del, Num), 
                                sum_chis(Num, SNum), vs_simple(SNum, Del)) ->
                                NCCol is CCol + 1 ; NCCol is CCol),
                                NDel is Del - 1, col_chis(Num, NCCol, NDel, Ans).