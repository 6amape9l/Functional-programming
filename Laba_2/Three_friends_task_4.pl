/*
consult("Laba_2/Three_friends_task_4.pl").
Вариант 6
*/

in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).

pr_friends:- 

    Info=[_,_,_],

    in_list(Info,[michael,basket,better,_]),
    in_list(Info,[simon,_,_,israel]),
    in_list(Info,[_,_,_,australia]),
    in_list(Info,[richard,_,_,_]),
    in_list(Info,[_,cricket,best,_]),
    in_list(Info,[_,tennis,_,_]),
    in_list(Info,[_,_,_,usa]),
    in_list(Info,[_,_,worst,_]),


    write(Info), !, fail.