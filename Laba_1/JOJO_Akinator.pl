/*
consult("Laba_1/JOJO_Akinator.pl").
*/

/*
Create persons
person(+Person: atom) is det
True, if all question(+Q_name: atom,+Answer:atom) are true
*/
person(jolyne_cujoh):-
    question(male, n),
    question(ggchar, y).

person(joseph_joestar):-
    question(male, y),
    question(ggchar, y),
    question(good, y),
    question(age,y).

person(yoshikage_kira):-
    question(male, y),
    question(ggchar, y),
    question(good, n),
    question(age, n).
    
person(trish_una):-
    question(male, n),
    question(ggchar, n),
    question(good, y),
    question(age, n).

person(josuke_higashikata):-
    question(male, y),
    question(ggchar, y),
    question(good, y),
    question(age, n),
    question(hair, y).

person(dio_brando):-
    question(male, y),
    question(ggchar, y),
    question(good, n),
    question(age, y),
    question(hair, n).

person(kars):-
    question(male, y),
    question(ggchar, y),
    question(good, n),
    question(age, y),
    question(hair, y).

person(noriaki_kakyoin):-
    question(male, y),
    question(ggchar, n),
    question(good, y),
    question(age, n),
    question(hair, y).

person(jean_pierre_polnareff):-
    question(male, y),
    question(ggchar, n),
    question(good, y),
    question(age, y),
    question(hair, y).

person(jonathan_joestar):-
    question(male, y),
    question(ggchar, y),
    question(good, y),
    question(age, n),
    question(hair, n),
    question(english, y).

person(robert_e_o_speedwagon):-
    question(male, y),
    question(ggchar, n),
    question(good, y),
    question(age, y),
    question(hair, n),
    question(english, y).

person(rudol_von_stroheim):-
    question(male, y),
    question(ggchar, n),
    question(good, y),
    question(age, y),
    question(hair, n),
    question(english, n).

person(suzi_q):-
    question(male, n),
    question(ggchar, n),
    question(good, y),
    question(age, y),
    question(hair, y),
    question(english, n).

person(jotaro_kujo):-
    question(male, y),
    question(ggchar, y),
    question(good, y),
    question(age, n),
    question(hair, n),
    question(english, n).

person(erina_pendleton):-
    question(male, n),
    question(ggchar, n),
    question(good, y),
    question(age, y),
    question(hair, n),
    question(english, y),
    question(erina, y).

person(lisa_lisa):-
    question(male, n),
    question(ggchar, n),
    question(good, y),
    question(age, y),
    question(hair, n),
    question(english, y),
    question(erina, n).

person(esidisi):-
    question(male, y),
    question(ggchar, n),
    question(good, n),
    question(age, y),
    question(hair, n),
    question(english, n),
    question(horn, n).

person(wamuu):-
    question(male, y),
    question(ggchar, n),
    question(good, n),
    question(age, y),
    question(hair, n),
    question(english, n),
    question(horn, y).


person(caesar_anthonio_zeppeli):-
    question(male, y),
    question(ggchar, n),
    question(good, y),
    question(age, n),
    question(hair, n),
    question(english, n),
    question(stone, y).

person(mohammed_avdol, 6):-
    question(male, y),
    question(ggchar, n),
    question(good, y),
    question(age, n),
    question(hair, n),
    question(english, n),
    question(stone, n).

/*
Create question
question(+Q_name: atom,+Answer:atom) is det
True, if query(Prompt,Answer) is true
*/
question(male,Answer):-query('Is the character male?',Answer).
question(ggchar,Answer):-query('This is the main character of the story?',Answer).
question(good,Answer):-query('Is this a good character?',Answer).
question(age,Answer):-query('Has the character lived long enough?',Answer).
question(hair,Answer):-query('Does the character have good hair?',Answer).
question(english,Answer):-query('Does the character speak English well?',Answer).
question(erina,Answer):-query('Character name Erina?',Answer).
question(horn,Answer):-query('Does the character have a horn?',Answer).
question(stone,Answer):-query('Did the character have problems with the stone?',Answer).


/*
main() is nondet
True if we find person by user answers
*/
main :-
    retractall(askFalseQuestions(_)),
    retractall(asked(_,_)),
    person(Character),
    !,
    nl,
    write('The character is '), write(Character), write(.), nl.

/*
main() is det
Works when we fail find the person
*/
main :-
    nl,
    write('I dont know this character.'), nl.

/*
check_persons() is always true
Check if only 1 person fits to current question
*/
check_persons:-(person(FirstPerson),person(SecondPerson),FirstPerson\==SecondPerson)->(retractall(askFalseQuestions(_)),true);true.

/*
Add answers into questions and check if input answer is equal to user_reply
query(+Prompt:atom, +Answer:atom) is det
True, if Answer is equal to Reply
or
True, if askFalseQuestions(1) is true
*/
query(Prompt,Answer) :-
    (   (asked(Prompt, Reply);askFalseQuestions(1))-> true
    ;   nl, write(Prompt), write(' (y/n)? '),
        read(X),(X = y -> Reply = y ; Reply = n),
        assert(askFalseQuestions(1)),
        assert(asked(Prompt, Reply)),
        check_persons
    ),
    (asked(Prompt,Reply))->(Reply=Answer);
    (askFalseQuestions(1)->true).

