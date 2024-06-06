/*
consult("Laba_2/Funny_numbers_task_6.pl").
Вариант 6

145 is funny, 145 = 1! + 4! + 5!

*/

fac(0,1).
fac(1,1).
fac(2,2).
fac(3,6).
fac(4,24).
fac(5,120).
fac(6,720).
fac(7, 5040).
fac(8, 40320).
fac(9, 362 880).

fsum_chis(Num, Ans):- fsum_chis(Num, 0, Ans).
fsum_chis(0, Ans, Ans):- !.
fsum_chis(Num, CAns, Ans):- Temp is Num mod 10, fac(Temp, X), NCAns is CAns + X,
                             NNum is Num //10, fsum_chis(NNum, NCAns, Ans).

main:- main(1000000).
main(2):- !.
main(Num):- fsum_chis(Num, X), NNum is Num - 1,
            (X =:= Num ->
            (write(Num), nl, main(NNum));
            main(NNum)).