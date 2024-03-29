/*
consult("Laba_2/Individual_tasks_3.pl").
Вариант 6
*/

/*
read_list(-InList:List)
Open write path for list.
Write "st." to end
*/
read_list([Head|Tail]):-read(X),X\==st,Head is X,read_list(Tail).
read_list([]):-!.

/*
write_list(+InList:List)
Write all elements of InList
*/
write_list([]):-nl, !.
write_list([Head|Tail]):-write(Head),write(''),write_list(Tail).

del_last([_], []).
del_last([H|T], [H|T1]) :-
    del_last(T, T1).

round_left([H|T], Ans) :- append([T], H, Ans).

shift_right([X|Xs], Shifted) :-
    last(Xs, Last),
    append([Last], Xs, ShiftedWithoutLast),
    append(ShiftedWithoutLast, [X], Shifted).

list_sled([_|[HN]], HN).
list_sled([_|[HN|_]], HN).

/*
Task 3.6
round_left(+List:List,-LeftList:List)
Return round LeftList of List
*/
:- discontiguous round3/3.
round3(Ans, Ans, 0) :- !.
round3([H|T], Ans) :- round3([H|T], Ans, 3).
round3([H|T], Ans, Iter) :- round_left([H|T], NAns), NIter is Iter - 1, round3(NAns, Ans, NIter).

main1(InList,Answer):- round3(InList,Answer).

task3_6_call:-read_list(InList),main1(InList,Answer),write('Answer is'),nl,write_list(Answer).

/*
Task 3.19
round_right(+List:List,-LeftList:List)
Return round LeftList of List
*/
main2(InList,Answer):- round_right(InList,Answer).

task3_19_call:-read_list(InList),main2(InList,Answer),write('Answer is'),nl,write_list(Answer).

/*
Task 3.33
round_right(+List:List,-LeftList:List)
Return round LeftList of List
*/
list_chek([_]) :- !.
list_chek([H|[S|T]]) :- (H * S < 0) -> list_chek([S|T]); fail.

main3(InList,Answer):- list_chek(InList) -> Answer is [t]; Answer is [f].

task3_33_call:-read_list(InList),main3(InList,Answer),write('Answer is'),nl,write_list(Answer).