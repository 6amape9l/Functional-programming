/*country
consult("JOJO_Akinator.pl").
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

person(caesar_anthonio_zeppeli, 1):-
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
unik_chek1(will_a_zeppel, 1).
unik_chek1(rudol_von_stroheim,2).
unik_chek1(esidisi,3).
unik_chek1(lisa_lisa,1).
consult("JOJO_Akinator.pl").
*/



