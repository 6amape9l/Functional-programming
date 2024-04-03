/*
consult("Spasi.pl").
Специальное задание
*/

main(Ans):- add_digit(Ans,FourDNums), find_numbers(FourDNums, Numbers),
            print(FourDNums), print(' : '), print(Numbers), nl, fail.

find_numbers(Answer, Numbers) :-
    findall(Number, (
        resum(Number, Answer)
    ), Numbers).

resum(Num, Ans):- 
    member(D1, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(D2, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(D3, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(D4, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    Num is (D1*1000 + D2*100 + D3*10 + D4),

    sum_chis(Num, X), Ans is Num - X.

sum_chis(Num, Ans):- sum_chis(Num, 0, Ans).
sum_chis(0, Ans, Ans):- !.
sum_chis(Num, CAns, Ans):-  Temp is Num mod 10, NCAns is CAns + Temp,
                            NNum is Num //10, sum_chis(NNum, NCAns, Ans).
                            
add_digit1(ThreeDigitNumber, FourDigitNumber) :-

    number_codes(ThreeDigitNumber, [D1, D2, D3]),
    member(Digit, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    number_codes(Digit, UDigit),

    append(UDigit, [D1,D2,D3], Temp),

    number_codes(FourDigitNumber, Temp),
    FourDigitNumber \= ThreeDigitNumber.

add_digit2(ThreeDigitNumber, FourDigitNumber) :-

    number_codes(ThreeDigitNumber, [D1, D2, D3]),
    member(Digit, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    number_codes(Digit, UDigit),

    append([D1], UDigit, P1),
    append(P1, [D2,D3], Temp),

    number_codes(FourDigitNumber, Temp),
    FourDigitNumber \= ThreeDigitNumber.

add_digit3(ThreeDigitNumber, FourDigitNumber) :-

    number_codes(ThreeDigitNumber, [D1, D2, D3]),
    member(Digit, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    number_codes(Digit, UDigit),

    append([D1, D2], UDigit, P1),
    append(P1, [D3], Temp),

    number_codes(FourDigitNumber, Temp),
    FourDigitNumber \= ThreeDigitNumber.

add_digit4(ThreeDigitNumber, FourDigitNumber) :-

    number_codes(ThreeDigitNumber, [D1, D2, D3]),
    member(Digit, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    number_codes(Digit, UDigit),

    append([D1, D2, D3], UDigit, Temp),

    number_codes(FourDigitNumber, Temp),
    FourDigitNumber \= ThreeDigitNumber.

add_digit(ThreeDigitNumber, FourDigitNumber):- 
            add_digit1(ThreeDigitNumber, FourDigitNumber);
            add_digit2(ThreeDigitNumber, FourDigitNumber);
            add_digit3(ThreeDigitNumber, FourDigitNumber);
            add_digit4(ThreeDigitNumber, FourDigitNumber).