/*
consult("Laba_2/Extra_tasks_7.pl").
Вариант 6
*/
:- use_module(library(lists)).

pr(1) :- !.
pr(2):-!.
pr(X):-pr1(X,2).
pr1(X,X):-!.
pr1(X,I):- Y is X mod I, Y\=0, I1 is I+1, pr1(X,I1).

/*
Task 7.1
*/
ave_list(List, Ans) :-  length(List, Col), sum_list(List, Sum), Ans is Sum / Col.

lower([], _):- !.
lower([H|T], Aver):-(H < Aver ->
                    write(H), nl; write('')),
                    lower(T, Aver).

main1(List):- ave_list(List, Aver), lower(List, Aver).

/*
Task 7.2
*/
find_in_range(List, A, B, Result) :-
findall(X, (member(X, List), X >= A, X =< B), Result).

main2(List, A, B):- find_in_range(List, A, B, Result), sum_list(Result, Sum), write(Sum).

/*
Task 7.3
*/
append_del(Num, List, Ans) :- append_del(Num, List, Num, Ans).
append_del(_, Ans, 0, Ans) :- !.
append_del(Num, List, Del, Ans) :- NDel is Del - 1, 
                            (
                            (Num mod Del =:= 0, pr(Del), \+memberchk(Del, List)) ->
                            (append([Del], List, NList), append_del(Num, NList, NDel, Ans));
                            append_del(Num, List, NDel, Ans)
                            ).

for_list(List, Ans) :- for_list(List, [1], Ans).
for_list([], Ans, Ans) :- !.
for_list([H|T], CAns, Ans) :- append_del(H, CAns, NCAns), for_list(T, NCAns, Ans).

/*
Task 7.4
*/
count(_, [], 0).
count(X, [X|Tail], N) :- 
    count(X, Tail, N1),
    N is N1 + 1.
count(X, [Y|Tail], N) :-
    X \= Y,
    count(X, Tail, N).

unik(Elem, List) :- count(Elem, List, X), X =:= 1.

list_iter(List, Ans) :- length(List, X), list_iter(List, X, [], Ans).
list_iter(_, 0, Ans, Ans) :- !.
list_iter(List, Iter, CAns, Ans) :- nth1(Iter, List, X), NIter is Iter - 1,
                                    (
                                    (X mod Iter =:= 0, unik(X, List)) ->
                                    append([X], CAns, NCAns), list_iter(List, NIter, NCAns, Ans);
                                    list_iter(List, NIter, CAns, Ans)
                                    ).


